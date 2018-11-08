//
//  Nios2  Triple Speed Ethernet Reference Design top-level verilog module for 3C120 design variant.
//  
//

module top_level
(
  input           clkin_50,
  input           clkin_125,

  input           cpu_reset_n,

  output  [12:0]  ddr2bot_a,
  output          ddr2bot_active,
  output  [1:0]   ddr2bot_ba,
  output          ddr2bot_casn,
  output          ddr2bot_cke,
  output          ddr2bot_csn,
  output          ddr2bot_odt,
  output          ddr2bot_rasn,
  output          ddr2bot_wen,

  inout           ddr2_ck_n,
  inout           ddr2_ck_p,
  inout   [31:0]  ddr2_dq,
  inout   [3:0]   ddr2_dqs,
  output  [3:0]   ddr2_dm,

  input           enet_led_link1000,
  output          enet_mdc,
  inout           enet_mdio,
  output          enet_resetn,
  input           enet_rx_clk,
  input           enet_rx_dv,
  input   [3:0]   enet_rxd,
  output          enet_gtx_clk,
  output          enet_tx_en,
  output  [3:0]   enet_txd,

  output          flash_cen,
  output          flash_oen,
  input           flash_rdybsyn,
  output          flash_resetn,
  output          flash_wen,
  output  [24:0]  fsa,
  inout   [15:0]  fsd,

  output  [7:0]   user_led,
  input   [3:0]   user_pb
     
);

//
// Declare a localparam for the number of reset sources that exist in this design.
// This parameter will be used by the global_reset_generator module.
//
localparam RESET_SOURCES_COUNT = 3;

//
// define the wires required for the top level stitching
//

reg [(RESET_SOURCES_COUNT - 1):0]   resetn_sources;

wire            global_reset_n_to_the_ddr2_bot;
wire            reset_phy_clk_n_from_the_ddr2_bot;
wire            locked_from_the_enet_pll;

wire    [25:0]  address_to_the_cfi_flash_64m;

wire            mdio_oen_from_the_tse_mac;
wire            mdio_out_from_the_tse_mac;
wire            eth_mode_from_the_tse_mac;
wire            ena_10_from_the_tse_mac;
wire            enet_tx_125;
wire            enet_tx_25;
wire            enet_tx_2p5;

wire            tx_clk_to_the_tse_mac;
wire            global_resetn;

//
// Shift the flash byte address from the SOPC system down one bit for the 16-bit flash device.
//
assign fsa  =   address_to_the_cfi_flash_64m[25:1];
assign flash_resetn =   global_resetn;

//
// These assignments should illuminate the ddr active LEDs.
//
assign ddr2bot_active   =   0;

//
// Ethernet interface assignments
//
assign enet_resetn  =   global_resetn;

altddio_out     altddio_out_component (
                    .outclock ( tx_clk_to_the_tse_mac ),
                    .dataout ( enet_gtx_clk ),
                    .aclr (!global_resetn),
                    .datain_h (1'b1),
                    .datain_l (1'b0),
                    .outclocken (1'b1),
                    .aset (1'b0),
                    .sclr (1'b0),
                    .sset (1'b0),
                    .oe_out (),
                    .oe (1'b1)
                    );
defparam
                altddio_out_component.extend_oe_disable = "UNUSED",
                altddio_out_component.intended_device_family = "Cyclone III",
                altddio_out_component.invert_output = "OFF",
                altddio_out_component.lpm_type = "altddio_out",
                altddio_out_component.oe_reg = "UNUSED",
                altddio_out_component.width = 1;


assign tx_clk_to_the_tse_mac    =   (eth_mode_from_the_tse_mac) ? (enet_tx_125) :       // GbE Mode = 125MHz clock
                                    (ena_10_from_the_tse_mac) ? (enet_tx_2p5) :         // 10Mb Mode = 2.5MHz clock
                                    (enet_tx_25);                                       // 100Mb Mode = 25MHz clock
                        
assign enet_mdio    =   (!mdio_oen_from_the_tse_mac) ? (mdio_out_from_the_tse_mac) : (1'bz);


//
// Tie the reset sources from the system into the global_reset_generator module.
// The reset counter width of 16 should provide a 2^16 clock assertion of global reset
// which at 50MHz should be 1.31ms long.
//
  always @ (*) begin
        resetn_sources[(RESET_SOURCES_COUNT - 1)]   <=  cpu_reset_n;
        resetn_sources[(RESET_SOURCES_COUNT - 2)]   <=  locked_from_the_enet_pll;
        resetn_sources[(RESET_SOURCES_COUNT - 3)]   <=  reset_phy_clk_n_from_the_ddr2_bot;
  end

global_reset_generator 
#(
  .RESET_SOURCES_WIDTH  (RESET_SOURCES_COUNT),
  .RESET_COUNTER_WIDTH  (16)
) global_reset_generator_inst
(
  .clk            (clkin_50),
  .resetn_sources (resetn_sources),
  .global_resetn  (global_resetn),
  .pll_resetn     (global_reset_n_to_the_ddr2_bot)
);

//
// The SOPC system instantiation.
//
eth_std_main_system  eth_std_main_system_inst
(
  // 1) global signals:
  .clk_in_clk                                                 (clkin_50),

  .altpll_c0_clk                                          	  (enet_tx_125),
  .altpll_c1_clk                                          	  (enet_tx_25),
  .altpll_c2_clk                                          	  (enet_tx_2p5),
  .clk_clk_in_reset_reset_n                                   (global_resetn),

  // the_user_led_pio_8out
  .led_pio_external_connection_export                         (user_led),

  // the_user_pb_pio_4in
  .button_pio_external_connection_export                      (user_pb),

  // the_cfi_flash_atb_avalon_slave
  .flash_tristate_bridge_out_tcm_address_out                          (address_to_the_cfi_flash_64m),
  .flash_tristate_bridge_out_tcm_data_out                             (fsd),
  .flash_tristate_bridge_out_tcm_read_n_out                           (flash_oen),
  .flash_tristate_bridge_out_tcm_chipselect_n_out                     (flash_cen),
  .flash_tristate_bridge_out_tcm_write_n_out                          (flash_wen),

  // the_ddr2_bot
  .sdram_memory_mem_addr                         (ddr2bot_a),
  .sdram_memory_mem_ba                           (ddr2bot_ba),
  .sdram_memory_mem_cas_n                        (ddr2bot_casn),
  .sdram_memory_mem_cke                          (ddr2bot_cke),
  .sdram_memory_mem_clk_n                        (ddr2_ck_n),
  .sdram_memory_mem_clk                          (ddr2_ck_p),
  .sdram_memory_mem_cs_n                         (ddr2bot_csn),
  .sdram_memory_mem_dm                           (ddr2_dm),
  .sdram_memory_mem_dq                           (ddr2_dq),
  .sdram_memory_mem_dqs                          (ddr2_dqs),
  .sdram_memory_mem_odt                          (ddr2bot_odt),
  .sdram_memory_mem_ras_n                        (ddr2bot_rasn),
  .sdram_memory_mem_we_n                         (ddr2bot_wen),

  // the_altpll
  .altpll_locked_conduit_export                               (locked_from_the_enet_pll),

  // the_tse_mac
  .tse_conduit_connection_ena_10                              (ena_10_from_the_tse_mac),
  .tse_conduit_connection_eth_mode                            (eth_mode_from_the_tse_mac),
  .tse_conduit_connection_mdc                                 (enet_mdc),
  .tse_conduit_connection_mdio_in                             (enet_mdio),
  .tse_conduit_connection_mdio_oen                            (mdio_oen_from_the_tse_mac),
  .tse_conduit_connection_mdio_out                            (mdio_out_from_the_tse_mac),
  .tse_conduit_connection_rgmii_in                            (enet_rxd),
  .tse_conduit_connection_rgmii_out                           (enet_txd),
  .tse_conduit_connection_rx_clk                              (enet_rx_clk),
  .tse_conduit_connection_rx_control                          (enet_rx_dv),
  .tse_conduit_connection_set_1000                            (),
  .tse_conduit_connection_set_10                              (),
  .tse_conduit_connection_tx_clk                              (tx_clk_to_the_tse_mac),
  .tse_conduit_connection_tx_control                          (enet_tx_en)

);

endmodule
