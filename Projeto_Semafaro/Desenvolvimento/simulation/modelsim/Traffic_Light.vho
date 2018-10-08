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

-- DATE "10/08/2018 14:47:18"

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

ENTITY 	BO IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	ecktimer : IN std_logic;
	rstcktimer : IN std_logic;
	rsttime : IN std_logic;
	etime : IN std_logic;
	eNS : IN std_logic;
	eP : IN std_logic;
	eEW : IN std_logic;
	cMuxNS : IN std_logic_vector(1 DOWNTO 0);
	cMuxEW : IN std_logic_vector(1 DOWNTO 0);
	cMuxP : IN std_logic_vector(0 DOWNTO 0);
	s1 : OUT std_logic;
	s45 : OUT std_logic;
	s50 : OUT std_logic;
	s55 : OUT std_logic;
	s100 : OUT std_logic;
	s105 : OUT std_logic;
	s110 : OUT std_logic;
	s135 : OUT std_logic;
	s140 : OUT std_logic;
	NS : OUT std_logic_vector(2 DOWNTO 0);
	EW : OUT std_logic_vector(2 DOWNTO 0);
	P : OUT std_logic_vector(1 DOWNTO 0)
	);
END BO;

-- Design Ports Information
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ecktimer	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rstcktimer	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eNS	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eP	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eEW	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxNS[0]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxNS[1]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxEW[0]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxEW[1]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxP[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s1	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s45	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s50	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s55	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s100	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s105	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s110	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s135	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s140	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[0]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[1]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[2]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[1]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[2]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[0]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rsttime	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- etime	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BO IS
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
SIGNAL ww_ecktimer : std_logic;
SIGNAL ww_rstcktimer : std_logic;
SIGNAL ww_rsttime : std_logic;
SIGNAL ww_etime : std_logic;
SIGNAL ww_eNS : std_logic;
SIGNAL ww_eP : std_logic;
SIGNAL ww_eEW : std_logic;
SIGNAL ww_cMuxNS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cMuxEW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cMuxP : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s45 : std_logic;
SIGNAL ww_s50 : std_logic;
SIGNAL ww_s55 : std_logic;
SIGNAL ww_s100 : std_logic;
SIGNAL ww_s105 : std_logic;
SIGNAL ww_s110 : std_logic;
SIGNAL ww_s135 : std_logic;
SIGNAL ww_s140 : std_logic;
SIGNAL ww_NS : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_EW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rsttime~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Rtime|currentState[1]~7_combout\ : std_logic;
SIGNAL \rsttime~combout\ : std_logic;
SIGNAL \rsttime~clkctrl_outclk\ : std_logic;
SIGNAL \etime~combout\ : std_logic;
SIGNAL \Rtime|currentState[1]~8\ : std_logic;
SIGNAL \Rtime|currentState[2]~10\ : std_logic;
SIGNAL \Rtime|currentState[3]~11_combout\ : std_logic;
SIGNAL \Cs105|Equal0~1_combout\ : std_logic;
SIGNAL \Rtime|currentState[3]~12\ : std_logic;
SIGNAL \Rtime|currentState[4]~14\ : std_logic;
SIGNAL \Rtime|currentState[5]~15_combout\ : std_logic;
SIGNAL \Rtime|currentState[5]~16\ : std_logic;
SIGNAL \Rtime|currentState[6]~17_combout\ : std_logic;
SIGNAL \Rtime|currentState[2]~9_combout\ : std_logic;
SIGNAL \Rtime|currentState[4]~13_combout\ : std_logic;
SIGNAL \Rtime|currentState[6]~18\ : std_logic;
SIGNAL \Rtime|currentState[7]~19_combout\ : std_logic;
SIGNAL \Cs105|Equal0~0_combout\ : std_logic;
SIGNAL \Cs45|Equal0~0_combout\ : std_logic;
SIGNAL \Cs55|Equal0~1_combout\ : std_logic;
SIGNAL \Rtime|currentState[0]~21_combout\ : std_logic;
SIGNAL \Cs55|Equal0~0_combout\ : std_logic;
SIGNAL \Cs50|Equal0~0_combout\ : std_logic;
SIGNAL \Cs55|Equal0~2_combout\ : std_logic;
SIGNAL \Cs100|Equal0~0_combout\ : std_logic;
SIGNAL \Cs100|Equal0~1_combout\ : std_logic;
SIGNAL \Cs105|Equal0~2_combout\ : std_logic;
SIGNAL \Cs110|Equal0~0_combout\ : std_logic;
SIGNAL \Cs140|Equal0~0_combout\ : std_logic;
SIGNAL \Cs140|Equal0~1_combout\ : std_logic;
SIGNAL \Cs135|Equal0~0_combout\ : std_logic;
SIGNAL \Cs140|Equal0~2_combout\ : std_logic;
SIGNAL \Rtime|currentState\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_ecktimer <= ecktimer;
ww_rstcktimer <= rstcktimer;
ww_rsttime <= rsttime;
ww_etime <= etime;
ww_eNS <= eNS;
ww_eP <= eP;
ww_eEW <= eEW;
ww_cMuxNS <= cMuxNS;
ww_cMuxEW <= cMuxEW;
ww_cMuxP <= cMuxP;
s1 <= ww_s1;
s45 <= ww_s45;
s50 <= ww_s50;
s55 <= ww_s55;
s100 <= ww_s100;
s105 <= ww_s105;
s110 <= ww_s110;
s135 <= ww_s135;
s140 <= ww_s140;
NS <= ww_NS;
EW <= ww_EW;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\rsttime~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rsttime~combout\);

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

-- Location: LCCOMB_X43_Y35_N14
\Rtime|currentState[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[1]~7_combout\ = (\Rtime|currentState\(0) & (\Rtime|currentState\(1) $ (VCC))) # (!\Rtime|currentState\(0) & (\Rtime|currentState\(1) & VCC))
-- \Rtime|currentState[1]~8\ = CARRY((\Rtime|currentState\(0) & \Rtime|currentState\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(0),
	datab => \Rtime|currentState\(1),
	datad => VCC,
	combout => \Rtime|currentState[1]~7_combout\,
	cout => \Rtime|currentState[1]~8\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_rsttime,
	combout => \rsttime~combout\);

-- Location: CLKCTRL_G1
\rsttime~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rsttime~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rsttime~clkctrl_outclk\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_etime,
	combout => \etime~combout\);

-- Location: LCFF_X43_Y35_N15
\Rtime|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[1]~7_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(1));

-- Location: LCCOMB_X43_Y35_N16
\Rtime|currentState[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[2]~9_combout\ = (\Rtime|currentState\(2) & (!\Rtime|currentState[1]~8\)) # (!\Rtime|currentState\(2) & ((\Rtime|currentState[1]~8\) # (GND)))
-- \Rtime|currentState[2]~10\ = CARRY((!\Rtime|currentState[1]~8\) # (!\Rtime|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datad => VCC,
	cin => \Rtime|currentState[1]~8\,
	combout => \Rtime|currentState[2]~9_combout\,
	cout => \Rtime|currentState[2]~10\);

-- Location: LCCOMB_X43_Y35_N18
\Rtime|currentState[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[3]~11_combout\ = (\Rtime|currentState\(3) & (\Rtime|currentState[2]~10\ $ (GND))) # (!\Rtime|currentState\(3) & (!\Rtime|currentState[2]~10\ & VCC))
-- \Rtime|currentState[3]~12\ = CARRY((\Rtime|currentState\(3) & !\Rtime|currentState[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rtime|currentState\(3),
	datad => VCC,
	cin => \Rtime|currentState[2]~10\,
	combout => \Rtime|currentState[3]~11_combout\,
	cout => \Rtime|currentState[3]~12\);

-- Location: LCFF_X43_Y35_N19
\Rtime|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[3]~11_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(3));

-- Location: LCCOMB_X42_Y35_N24
\Cs105|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~1_combout\ = (\Rtime|currentState\(0) & (!\Rtime|currentState\(1) & \Rtime|currentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(0),
	datac => \Rtime|currentState\(1),
	datad => \Rtime|currentState\(3),
	combout => \Cs105|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y35_N20
\Rtime|currentState[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[4]~13_combout\ = (\Rtime|currentState\(4) & (!\Rtime|currentState[3]~12\)) # (!\Rtime|currentState\(4) & ((\Rtime|currentState[3]~12\) # (GND)))
-- \Rtime|currentState[4]~14\ = CARRY((!\Rtime|currentState[3]~12\) # (!\Rtime|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(4),
	datad => VCC,
	cin => \Rtime|currentState[3]~12\,
	combout => \Rtime|currentState[4]~13_combout\,
	cout => \Rtime|currentState[4]~14\);

-- Location: LCCOMB_X43_Y35_N22
\Rtime|currentState[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[5]~15_combout\ = (\Rtime|currentState\(5) & (\Rtime|currentState[4]~14\ $ (GND))) # (!\Rtime|currentState\(5) & (!\Rtime|currentState[4]~14\ & VCC))
-- \Rtime|currentState[5]~16\ = CARRY((\Rtime|currentState\(5) & !\Rtime|currentState[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rtime|currentState\(5),
	datad => VCC,
	cin => \Rtime|currentState[4]~14\,
	combout => \Rtime|currentState[5]~15_combout\,
	cout => \Rtime|currentState[5]~16\);

-- Location: LCFF_X43_Y35_N23
\Rtime|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[5]~15_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(5));

-- Location: LCCOMB_X43_Y35_N24
\Rtime|currentState[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[6]~17_combout\ = (\Rtime|currentState\(6) & (!\Rtime|currentState[5]~16\)) # (!\Rtime|currentState\(6) & ((\Rtime|currentState[5]~16\) # (GND)))
-- \Rtime|currentState[6]~18\ = CARRY((!\Rtime|currentState[5]~16\) # (!\Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(6),
	datad => VCC,
	cin => \Rtime|currentState[5]~16\,
	combout => \Rtime|currentState[6]~17_combout\,
	cout => \Rtime|currentState[6]~18\);

-- Location: LCFF_X43_Y35_N25
\Rtime|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[6]~17_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(6));

-- Location: LCFF_X43_Y35_N17
\Rtime|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[2]~9_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(2));

-- Location: LCFF_X43_Y35_N21
\Rtime|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[4]~13_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(4));

-- Location: LCCOMB_X43_Y35_N26
\Rtime|currentState[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[7]~19_combout\ = \Rtime|currentState[6]~18\ $ (!\Rtime|currentState\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Rtime|currentState\(7),
	cin => \Rtime|currentState[6]~18\,
	combout => \Rtime|currentState[7]~19_combout\);

-- Location: LCFF_X43_Y35_N27
\Rtime|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[7]~19_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(7));

-- Location: LCCOMB_X43_Y35_N4
\Cs105|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~0_combout\ = (\Rtime|currentState\(5) & (!\Rtime|currentState\(4) & !\Rtime|currentState\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rtime|currentState\(5),
	datac => \Rtime|currentState\(4),
	datad => \Rtime|currentState\(7),
	combout => \Cs105|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y35_N22
\Cs45|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs45|Equal0~0_combout\ = (\Cs105|Equal0~1_combout\ & (!\Rtime|currentState\(6) & (\Rtime|currentState\(2) & \Cs105|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs105|Equal0~1_combout\,
	datab => \Rtime|currentState\(6),
	datac => \Rtime|currentState\(2),
	datad => \Cs105|Equal0~0_combout\,
	combout => \Cs45|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N30
\Cs55|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~1_combout\ = (\Rtime|currentState\(4) & !\Rtime|currentState\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(4),
	datac => \Rtime|currentState\(6),
	combout => \Cs55|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y35_N6
\Rtime|currentState[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[0]~21_combout\ = \Rtime|currentState\(0) $ (\etime~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rtime|currentState\(0),
	datad => \etime~combout\,
	combout => \Rtime|currentState[0]~21_combout\);

-- Location: LCFF_X43_Y35_N7
\Rtime|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[0]~21_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(0));

-- Location: LCCOMB_X43_Y35_N12
\Cs55|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~0_combout\ = (\Rtime|currentState\(1) & (\Rtime|currentState\(5) & (!\Rtime|currentState\(3) & !\Rtime|currentState\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(1),
	datab => \Rtime|currentState\(5),
	datac => \Rtime|currentState\(3),
	datad => \Rtime|currentState\(7),
	combout => \Cs55|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N0
\Cs50|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs50|Equal0~0_combout\ = (!\Rtime|currentState\(2) & (\Cs55|Equal0~1_combout\ & (!\Rtime|currentState\(0) & \Cs55|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Cs55|Equal0~1_combout\,
	datac => \Rtime|currentState\(0),
	datad => \Cs55|Equal0~0_combout\,
	combout => \Cs50|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N2
\Cs55|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~2_combout\ = (\Rtime|currentState\(2) & (\Cs55|Equal0~1_combout\ & (\Rtime|currentState\(0) & \Cs55|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Cs55|Equal0~1_combout\,
	datac => \Rtime|currentState\(0),
	datad => \Cs55|Equal0~0_combout\,
	combout => \Cs55|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y35_N12
\Cs100|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs100|Equal0~0_combout\ = (!\Rtime|currentState\(0) & (\Rtime|currentState\(2) & \Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(0),
	datac => \Rtime|currentState\(2),
	datad => \Rtime|currentState\(6),
	combout => \Cs100|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y35_N18
\Cs100|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs100|Equal0~1_combout\ = (\Cs100|Equal0~0_combout\ & (!\Rtime|currentState\(3) & (!\Rtime|currentState\(1) & \Cs105|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs100|Equal0~0_combout\,
	datab => \Rtime|currentState\(3),
	datac => \Rtime|currentState\(1),
	datad => \Cs105|Equal0~0_combout\,
	combout => \Cs100|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y35_N16
\Cs105|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~2_combout\ = (\Cs105|Equal0~1_combout\ & (\Rtime|currentState\(6) & (!\Rtime|currentState\(2) & \Cs105|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs105|Equal0~1_combout\,
	datab => \Rtime|currentState\(6),
	datac => \Rtime|currentState\(2),
	datad => \Cs105|Equal0~0_combout\,
	combout => \Cs105|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y35_N10
\Cs110|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs110|Equal0~0_combout\ = (\Cs100|Equal0~0_combout\ & (\Rtime|currentState\(3) & (\Rtime|currentState\(1) & \Cs105|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs100|Equal0~0_combout\,
	datab => \Rtime|currentState\(3),
	datac => \Rtime|currentState\(1),
	datad => \Cs105|Equal0~0_combout\,
	combout => \Cs110|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N8
\Cs140|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~0_combout\ = (!\Rtime|currentState\(4) & (\Rtime|currentState\(2) & (!\Rtime|currentState\(6) & !\Rtime|currentState\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(4),
	datab => \Rtime|currentState\(2),
	datac => \Rtime|currentState\(6),
	datad => \Rtime|currentState\(5),
	combout => \Cs140|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N28
\Cs140|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~1_combout\ = (\Cs140|Equal0~0_combout\ & \Rtime|currentState\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cs140|Equal0~0_combout\,
	datad => \Rtime|currentState\(7),
	combout => \Cs140|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y35_N0
\Cs135|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs135|Equal0~0_combout\ = (\Cs140|Equal0~1_combout\ & (!\Rtime|currentState\(3) & (\Rtime|currentState\(1) & \Rtime|currentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs140|Equal0~1_combout\,
	datab => \Rtime|currentState\(3),
	datac => \Rtime|currentState\(1),
	datad => \Rtime|currentState\(0),
	combout => \Cs135|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y35_N10
\Cs140|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~2_combout\ = (!\Rtime|currentState\(1) & (\Rtime|currentState\(3) & (!\Rtime|currentState\(0) & \Cs140|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(1),
	datab => \Rtime|currentState\(3),
	datac => \Rtime|currentState\(0),
	datad => \Cs140|Equal0~1_combout\,
	combout => \Cs140|Equal0~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_reset);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ecktimer);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_rstcktimer);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eNS);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eP);

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eEW);

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxNS(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxNS(1));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxEW(0));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxEW(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cMuxP[0]~I\ : cycloneii_io
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
	padio => ww_cMuxP(0));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs45|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s45);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs50|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s50);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs55|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s55);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs100|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s100);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs105|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s105);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs110|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s110);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs135|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s135);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Cs140|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s140);

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NS[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(0));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NS[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(1));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NS[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EW[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(0));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EW[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(1));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EW[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(2));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(0));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\P[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(1));
END structure;


