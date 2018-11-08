create_clock -name clkin_50  -period 20 [get_ports clkin_50]
create_clock -name clkin_125 -period  8 [get_ports clkin_125]

derive_pll_clocks
derive_clock_uncertainty

set Top_clkin_50                clkin_50
set Top_clkin_125               clkin_125

## HPDDR3 generated clocks
#set HalfRate_Clock              *|clk|half_rate.pll|altpll_component|auto_generated|*|clk[0]
#set FullRate_Clock              *|clk|half_rate.pll|altpll_component|auto_generated|*|clk[1]

## UniphyDDR3 generated clocks
#set Pll_Afi_Clock 				*|sdram|p0|*sdram_p0_pll_afi_clk
#set Pll_Afi_Half_Clock 			*|sdram|p0|*sdram_p0_pll_afi_half_clk
set DDR_clock				*|pll|altpll_component|auto_generated|*|clk[0]

set PLL_clock_0 *|altpll|*|*|clk[0]
set PLL_clock_1 *|altpll|*|*|clk[1]
set PLL_clock_2 *|altpll|*|*|clk[2]


## Constrain SGMII interface clocks
set TseSgmii_lvds_1250_Clock    *|ALTLVDS_RX_component|auto_generated|*|clk[0]
set TseSgmii_lvds_125_Clock     *|ALTLVDS_RX_component|auto_generated|*|clk[1]
set TseSgmii_lvds_rx_Clock      *|ALTLVDS_RX_component|auto_generated|rx[0]|clk0

set_clock_groups -exclusive -group [get_clocks $Top_clkin_50 ] -group [get_clocks $Top_clkin_125 ] -group [get_clocks $DDR_clock ] -group [get_clocks $PLL_clock_0 ] -group [get_clocks $PLL_clock_1 ] -group [get_clocks $PLL_clock_2 ] -group [get_clocks $TseSgmii_lvds_1250_Clock ] -group [get_clocks $TseSgmii_lvds_125_Clock ] -group [get_clocks $TseSgmii_lvds_rx_Clock ]


