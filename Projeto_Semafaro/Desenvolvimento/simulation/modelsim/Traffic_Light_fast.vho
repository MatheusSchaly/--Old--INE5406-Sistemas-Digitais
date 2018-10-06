-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/05/2018 22:17:05"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BC IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	s1 : IN std_logic;
	s45 : IN std_logic;
	s50 : IN std_logic;
	s55 : IN std_logic;
	s100 : IN std_logic;
	s105 : IN std_logic;
	s110 : IN std_logic;
	s135 : IN std_logic;
	s140 : IN std_logic;
	ecktimer : OUT std_logic;
	rstcktimer : OUT std_logic;
	rsttime : OUT std_logic;
	etime : OUT std_logic;
	eNS : OUT std_logic;
	cMuxP : OUT std_logic;
	eP : OUT std_logic;
	eEW : OUT std_logic;
	cMuxNS : OUT std_logic_vector(1 DOWNTO 0);
	cMuxEW : OUT std_logic_vector(1 DOWNTO 0)
	);
END BC;

-- Design Ports Information
-- ecktimer	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rstcktimer	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rsttime	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- etime	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eNS	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxP	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eP	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- eEW	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxNS[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxNS[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxEW[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxEW[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s55	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s100	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s110	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s140	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s135	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s45	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s50	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s105	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s45 : std_logic;
SIGNAL ww_s50 : std_logic;
SIGNAL ww_s55 : std_logic;
SIGNAL ww_s100 : std_logic;
SIGNAL ww_s105 : std_logic;
SIGNAL ww_s110 : std_logic;
SIGNAL ww_s135 : std_logic;
SIGNAL ww_s140 : std_logic;
SIGNAL ww_ecktimer : std_logic;
SIGNAL ww_rstcktimer : std_logic;
SIGNAL ww_rsttime : std_logic;
SIGNAL ww_etime : std_logic;
SIGNAL ww_eNS : std_logic;
SIGNAL ww_cMuxP : std_logic;
SIGNAL ww_eP : std_logic;
SIGNAL ww_eEW : std_logic;
SIGNAL ww_cMuxNS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cMuxEW : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \currentState.S7~regout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \nextState.S7~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \currentState.S7~feeder_combout\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \s110~combout\ : std_logic;
SIGNAL \s55~combout\ : std_logic;
SIGNAL \s140~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s105~combout\ : std_logic;
SIGNAL \s50~combout\ : std_logic;
SIGNAL \s45~combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \currentState.S2~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \currentState.S2~regout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \currentState.S0~regout\ : std_logic;
SIGNAL \ecktimer$latch~combout\ : std_logic;
SIGNAL \Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \currentState.init~feeder_combout\ : std_logic;
SIGNAL \currentState.init~regout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \rstcktimer$latch~combout\ : std_logic;
SIGNAL \nextState.S8~0_combout\ : std_logic;
SIGNAL \currentState.S8~regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \rsttime$latch~combout\ : std_logic;
SIGNAL \etime$latch~combout\ : std_logic;
SIGNAL \s135~combout\ : std_logic;
SIGNAL \NSL~0_combout\ : std_logic;
SIGNAL \s100~combout\ : std_logic;
SIGNAL \nextState.S5~0_combout\ : std_logic;
SIGNAL \nextState.S4~0_combout\ : std_logic;
SIGNAL \currentState.S4~regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \eNS$latch~combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \cMuxP$latch~combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \eP$latch~combout\ : std_logic;
SIGNAL \nextState.S6~0_combout\ : std_logic;
SIGNAL \currentState.S6~regout\ : std_logic;
SIGNAL \nextState.S5~1_combout\ : std_logic;
SIGNAL \currentState.S5~regout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \eEW$latch~combout\ : std_logic;
SIGNAL \nextState.S3~0_combout\ : std_logic;
SIGNAL \currentState.S3~regout\ : std_logic;
SIGNAL \cMuxNS[0]$latch~combout\ : std_logic;
SIGNAL \cMuxNS[1]$latch~combout\ : std_logic;
SIGNAL \cMuxEW[0]$latch~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_s1 <= s1;
ww_s45 <= s45;
ww_s50 <= s50;
ww_s55 <= s55;
ww_s100 <= s100;
ww_s105 <= s105;
ww_s110 <= s110;
ww_s135 <= s135;
ww_s140 <= s140;
ecktimer <= ww_ecktimer;
rstcktimer <= ww_rstcktimer;
rsttime <= ww_rsttime;
etime <= ww_etime;
eNS <= ww_eNS;
cMuxP <= ww_cMuxP;
eP <= ww_eP;
eEW <= ww_eEW;
cMuxNS <= ww_cMuxNS;
cMuxEW <= ww_cMuxEW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\Selector0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector0~0_combout\);

-- Location: LCFF_X29_Y35_N7
\currentState.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \currentState.S7~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S7~regout\);

-- Location: LCCOMB_X30_Y35_N2
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\s1~combout\ & (!\currentState.S0~regout\ & ((!\s135~combout\) # (!\currentState.S2~regout\)))) # (!\s1~combout\ & (((!\s135~combout\)) # (!\currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \currentState.S2~regout\,
	datac => \s135~combout\,
	datad => \currentState.S0~regout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X30_Y35_N24
\nextState.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S7~0_combout\ = (!\s140~combout\ & (\s110~combout\ & \currentState.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s140~combout\,
	datab => \s110~combout\,
	datad => \currentState.S2~regout\,
	combout => \nextState.S7~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y35_N6
\currentState.S7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentState.S7~feeder_combout\ = \nextState.S7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nextState.S7~0_combout\,
	combout => \currentState.S7~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s1,
	combout => \s1~combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s110~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s110,
	combout => \s110~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s55~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s55,
	combout => \s55~combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s140~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s140,
	combout => \s140~combout\);

-- Location: LCCOMB_X30_Y35_N10
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\s100~combout\ & (!\s110~combout\ & (!\s55~combout\ & !\s140~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s100~combout\,
	datab => \s110~combout\,
	datac => \s55~combout\,
	datad => \s140~combout\,
	combout => \Selector2~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s105~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s105,
	combout => \s105~combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s50,
	combout => \s50~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s45~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s45,
	combout => \s45~combout\);

-- Location: LCCOMB_X30_Y35_N20
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\s105~combout\ & (!\s50~combout\ & !\s45~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s105~combout\,
	datac => \s50~combout\,
	datad => \s45~combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X30_Y35_N28
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\currentState.S0~regout\) # (!\s1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~combout\,
	datad => \currentState.S0~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y35_N30
\currentState.S2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentState.S2~0_combout\ = !\Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector0~0_combout\,
	combout => \currentState.S2~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X30_Y35_N31
\currentState.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \currentState.S2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S2~regout\);

-- Location: LCCOMB_X30_Y35_N12
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~1_combout\ & (((\Selector2~0_combout\ & \Selector2~2_combout\)) # (!\currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector2~2_combout\,
	datad => \currentState.S2~regout\,
	combout => \Selector2~3_combout\);

-- Location: LCFF_X30_Y35_N13
\currentState.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Selector2~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S0~regout\);

-- Location: LCCOMB_X30_Y35_N26
\ecktimer$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ecktimer$latch~combout\ = (\currentState.S0~regout\ & ((\ecktimer$latch~combout\) # (!\s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~combout\,
	datac => \currentState.S0~regout\,
	datad => \ecktimer$latch~combout\,
	combout => \ecktimer$latch~combout\);

-- Location: CLKCTRL_G10
\Selector0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y35_N14
\currentState.init~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \currentState.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \currentState.init~feeder_combout\);

-- Location: LCFF_X29_Y35_N15
\currentState.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \currentState.init~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.init~regout\);

-- Location: LCCOMB_X29_Y35_N28
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\currentState.S8~regout\) # ((\currentState.S2~regout\) # (!\currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S8~regout\,
	datac => \currentState.init~regout\,
	datad => \currentState.S2~regout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X29_Y35_N26
\rstcktimer$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \rstcktimer$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\WideOr0~combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\rstcktimer$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rstcktimer$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr0~combout\,
	combout => \rstcktimer$latch~combout\);

-- Location: LCCOMB_X29_Y35_N24
\nextState.S8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S8~0_combout\ = (\s140~combout\ & \currentState.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s140~combout\,
	datad => \currentState.S2~regout\,
	combout => \nextState.S8~0_combout\);

-- Location: LCFF_X29_Y35_N25
\currentState.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nextState.S8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S8~regout\);

-- Location: LCCOMB_X29_Y35_N30
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\currentState.init~regout\ & !\currentState.S8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.init~regout\,
	datad => \currentState.S8~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\rsttime$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \rsttime$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((!\WideOr0~0_combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\rsttime$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rsttime$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr0~0_combout\,
	combout => \rsttime$latch~combout\);

-- Location: LCCOMB_X29_Y35_N2
\etime$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \etime$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\currentState.S2~regout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\etime$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \etime$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \currentState.S2~regout\,
	combout => \etime$latch~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s135~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s135,
	combout => \s135~combout\);

-- Location: LCCOMB_X30_Y35_N14
\NSL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NSL~0_combout\ = (\s105~combout\) # ((\s50~combout\) # (\s135~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s105~combout\,
	datac => \s50~combout\,
	datad => \s135~combout\,
	combout => \NSL~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s100~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s100,
	combout => \s100~combout\);

-- Location: LCCOMB_X30_Y35_N18
\nextState.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S5~0_combout\ = (!\s140~combout\ & (!\s110~combout\ & (!\s100~combout\ & \currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s140~combout\,
	datab => \s110~combout\,
	datac => \s100~combout\,
	datad => \currentState.S2~regout\,
	combout => \nextState.S5~0_combout\);

-- Location: LCCOMB_X30_Y35_N6
\nextState.S4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S4~0_combout\ = (\NSL~0_combout\ & (!\s55~combout\ & \nextState.S5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NSL~0_combout\,
	datac => \s55~combout\,
	datad => \nextState.S5~0_combout\,
	combout => \nextState.S4~0_combout\);

-- Location: LCFF_X30_Y35_N7
\currentState.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nextState.S4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S4~regout\);

-- Location: LCCOMB_X29_Y35_N10
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\currentState.S3~regout\) # (((\currentState.S8~regout\) # (\currentState.S4~regout\)) # (!\currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S3~regout\,
	datab => \currentState.init~regout\,
	datac => \currentState.S8~regout\,
	datad => \currentState.S4~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X29_Y35_N20
\eNS$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \eNS$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\WideOr4~0_combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\eNS$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eNS$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr4~0_combout\,
	combout => \eNS$latch~combout\);

-- Location: LCCOMB_X29_Y35_N0
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\currentState.init~regout\ & !\currentState.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.init~regout\,
	datad => \currentState.S4~regout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X29_Y35_N18
\cMuxP$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \cMuxP$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((!\WideOr4~1_combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\cMuxP$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cMuxP$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr4~1_combout\,
	combout => \cMuxP$latch~combout\);

-- Location: LCCOMB_X29_Y35_N12
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\currentState.S7~regout\) # ((\currentState.S4~regout\) # (!\currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S7~regout\,
	datac => \currentState.init~regout\,
	datad => \currentState.S4~regout\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X29_Y35_N8
\eP$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \eP$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\WideOr9~combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\eP$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eP$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr9~combout\,
	combout => \eP$latch~combout\);

-- Location: LCCOMB_X30_Y35_N8
\nextState.S6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S6~0_combout\ = (\s100~combout\ & (\currentState.S2~regout\ & (!\s110~combout\ & !\s140~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s100~combout\,
	datab => \currentState.S2~regout\,
	datac => \s110~combout\,
	datad => \s140~combout\,
	combout => \nextState.S6~0_combout\);

-- Location: LCFF_X30_Y35_N9
\currentState.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nextState.S6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S6~regout\);

-- Location: LCCOMB_X30_Y35_N16
\nextState.S5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S5~1_combout\ = (\s55~combout\ & \nextState.S5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s55~combout\,
	datad => \nextState.S5~0_combout\,
	combout => \nextState.S5~1_combout\);

-- Location: LCFF_X30_Y35_N17
\currentState.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nextState.S5~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S5~regout\);

-- Location: LCCOMB_X30_Y35_N22
\WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\currentState.S4~regout\) # ((\currentState.S6~regout\) # ((\currentState.S5~regout\) # (!\currentState.init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S4~regout\,
	datab => \currentState.S6~regout\,
	datac => \currentState.S5~regout\,
	datad => \currentState.init~regout\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X30_Y35_N0
\eEW$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \eEW$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\WideOr12~0_combout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\eEW$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eEW$latch~combout\,
	datac => \Selector0~0clkctrl_outclk\,
	datad => \WideOr12~0_combout\,
	combout => \eEW$latch~combout\);

-- Location: LCCOMB_X29_Y35_N16
\nextState.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nextState.S3~0_combout\ = (!\s55~combout\ & (!\NSL~0_combout\ & (\s45~combout\ & \nextState.S5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s55~combout\,
	datab => \NSL~0_combout\,
	datac => \s45~combout\,
	datad => \nextState.S5~0_combout\,
	combout => \nextState.S3~0_combout\);

-- Location: LCFF_X29_Y35_N17
\currentState.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nextState.S3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \currentState.S3~regout\);

-- Location: LCCOMB_X29_Y35_N22
\cMuxNS[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \cMuxNS[0]$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & ((\currentState.S3~regout\))) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & (\cMuxNS[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cMuxNS[0]$latch~combout\,
	datac => \currentState.S3~regout\,
	datad => \Selector0~0clkctrl_outclk\,
	combout => \cMuxNS[0]$latch~combout\);

-- Location: LCCOMB_X30_Y35_N4
\cMuxNS[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \cMuxNS[1]$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & (\currentState.S4~regout\)) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & ((\cMuxNS[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S4~regout\,
	datac => \cMuxNS[1]$latch~combout\,
	datad => \Selector0~0clkctrl_outclk\,
	combout => \cMuxNS[1]$latch~combout\);

-- Location: LCCOMB_X31_Y35_N8
\cMuxEW[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \cMuxEW[0]$latch~combout\ = (GLOBAL(\Selector0~0clkctrl_outclk\) & (\currentState.S6~regout\)) # (!GLOBAL(\Selector0~0clkctrl_outclk\) & ((\cMuxEW[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.S6~regout\,
	datac => \cMuxEW[0]$latch~combout\,
	datad => \Selector0~0clkctrl_outclk\,
	combout => \cMuxEW[0]$latch~combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ecktimer~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ecktimer$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ecktimer);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rstcktimer~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rstcktimer$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rstcktimer);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rsttime~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rsttime$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rsttime);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\etime~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \etime$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_etime);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eNS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \eNS$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eNS);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cMuxP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cMuxP$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cMuxP);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \eP$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eP);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\eEW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \eEW$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_eEW);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cMuxNS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cMuxNS[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cMuxNS(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cMuxNS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cMuxNS[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cMuxNS(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cMuxEW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cMuxEW[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cMuxEW(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cMuxEW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cMuxP$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cMuxEW(1));
END structure;


