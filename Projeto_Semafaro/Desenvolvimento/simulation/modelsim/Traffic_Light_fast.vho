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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/06/2018 20:12:52"

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
	cMuxP : IN std_logic_vector(1 DOWNTO 0);
	cMuxNS : IN std_logic_vector(1 DOWNTO 0);
	cMuxEW : IN std_logic_vector(1 DOWNTO 0);
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
-- s1	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s45	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s50	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s55	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s100	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s105	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s110	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s135	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s140	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[0]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[1]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[2]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[1]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cMuxP[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ecktimer	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rstcktimer	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rsttime	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- etime	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxNS[0]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxNS[1]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eNS	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxEW[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxEW[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eEW	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- eP	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cMuxP[0]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_cMuxP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cMuxNS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cMuxEW : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \rstcktimer~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rsttime~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rcktimer|currentState[1]~26_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[5]~34_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[18]~60_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[23]~70_combout\ : std_logic;
SIGNAL \Cs1|Equal0~3_combout\ : std_logic;
SIGNAL \ecktimer~combout\ : std_logic;
SIGNAL \Rcktimer|currentState[0]~25_combout\ : std_logic;
SIGNAL \rstcktimer~combout\ : std_logic;
SIGNAL \rstcktimer~clkctrl_outclk\ : std_logic;
SIGNAL \Rcktimer|currentState[1]~27\ : std_logic;
SIGNAL \Rcktimer|currentState[2]~29\ : std_logic;
SIGNAL \Rcktimer|currentState[3]~31\ : std_logic;
SIGNAL \Rcktimer|currentState[4]~32_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[4]~33\ : std_logic;
SIGNAL \Rcktimer|currentState[5]~35\ : std_logic;
SIGNAL \Rcktimer|currentState[6]~36_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[6]~37\ : std_logic;
SIGNAL \Rcktimer|currentState[7]~39\ : std_logic;
SIGNAL \Rcktimer|currentState[8]~40_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[8]~41\ : std_logic;
SIGNAL \Rcktimer|currentState[9]~43\ : std_logic;
SIGNAL \Rcktimer|currentState[10]~44_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[10]~45\ : std_logic;
SIGNAL \Rcktimer|currentState[11]~46_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[11]~47\ : std_logic;
SIGNAL \Rcktimer|currentState[12]~48_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[12]~49\ : std_logic;
SIGNAL \Rcktimer|currentState[13]~50_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[13]~51\ : std_logic;
SIGNAL \Rcktimer|currentState[14]~52_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[14]~53\ : std_logic;
SIGNAL \Rcktimer|currentState[15]~54_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[15]~55\ : std_logic;
SIGNAL \Rcktimer|currentState[16]~57\ : std_logic;
SIGNAL \Rcktimer|currentState[17]~58_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[17]~59\ : std_logic;
SIGNAL \Rcktimer|currentState[18]~61\ : std_logic;
SIGNAL \Rcktimer|currentState[19]~63\ : std_logic;
SIGNAL \Rcktimer|currentState[20]~64_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[20]~65\ : std_logic;
SIGNAL \Rcktimer|currentState[21]~66_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[21]~67\ : std_logic;
SIGNAL \Rcktimer|currentState[22]~68_combout\ : std_logic;
SIGNAL \Cs1|Equal0~6_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[22]~69\ : std_logic;
SIGNAL \Rcktimer|currentState[23]~71\ : std_logic;
SIGNAL \Rcktimer|currentState[24]~72_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[24]~73\ : std_logic;
SIGNAL \Rcktimer|currentState[25]~74_combout\ : std_logic;
SIGNAL \Cs1|Equal0~7_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[9]~42_combout\ : std_logic;
SIGNAL \Cs1|Equal0~2_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[7]~38_combout\ : std_logic;
SIGNAL \Cs1|Equal0~1_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[2]~28_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[3]~30_combout\ : std_logic;
SIGNAL \Cs1|Equal0~0_combout\ : std_logic;
SIGNAL \Cs1|Equal0~4_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[19]~62_combout\ : std_logic;
SIGNAL \Rcktimer|currentState[16]~56_combout\ : std_logic;
SIGNAL \Cs1|Equal0~5_combout\ : std_logic;
SIGNAL \Cs1|Equal0~8_combout\ : std_logic;
SIGNAL \etime~combout\ : std_logic;
SIGNAL \Rtime|currentState[0]~21_combout\ : std_logic;
SIGNAL \rsttime~combout\ : std_logic;
SIGNAL \rsttime~clkctrl_outclk\ : std_logic;
SIGNAL \Rtime|currentState[1]~7_combout\ : std_logic;
SIGNAL \Rtime|currentState[1]~8\ : std_logic;
SIGNAL \Rtime|currentState[2]~9_combout\ : std_logic;
SIGNAL \Rtime|currentState[2]~10\ : std_logic;
SIGNAL \Rtime|currentState[3]~11_combout\ : std_logic;
SIGNAL \Cs105|Equal0~0_combout\ : std_logic;
SIGNAL \Rtime|currentState[3]~12\ : std_logic;
SIGNAL \Rtime|currentState[4]~14\ : std_logic;
SIGNAL \Rtime|currentState[5]~15_combout\ : std_logic;
SIGNAL \Rtime|currentState[5]~16\ : std_logic;
SIGNAL \Rtime|currentState[6]~18\ : std_logic;
SIGNAL \Rtime|currentState[7]~19_combout\ : std_logic;
SIGNAL \Rtime|currentState[4]~13_combout\ : std_logic;
SIGNAL \Cs110|Equal0~0_combout\ : std_logic;
SIGNAL \Rtime|currentState[6]~17_combout\ : std_logic;
SIGNAL \Cs45|Equal0~0_combout\ : std_logic;
SIGNAL \Cs55|Equal0~0_combout\ : std_logic;
SIGNAL \Cs55|Equal0~1_combout\ : std_logic;
SIGNAL \Cs50|Equal0~0_combout\ : std_logic;
SIGNAL \Cs55|Equal0~2_combout\ : std_logic;
SIGNAL \Cs110|Equal0~1_combout\ : std_logic;
SIGNAL \Cs100|Equal0~0_combout\ : std_logic;
SIGNAL \Cs105|Equal0~1_combout\ : std_logic;
SIGNAL \Cs105|Equal0~2_combout\ : std_logic;
SIGNAL \Cs110|Equal0~2_combout\ : std_logic;
SIGNAL \Cs140|Equal0~0_combout\ : std_logic;
SIGNAL \Cs140|Equal0~1_combout\ : std_logic;
SIGNAL \Cs135|Equal0~0_combout\ : std_logic;
SIGNAL \Cs140|Equal0~2_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \MNS|Add0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \eNS~combout\ : std_logic;
SIGNAL \RNS|currentState[1]~1_combout\ : std_logic;
SIGNAL \MNS|Mux0~0_combout\ : std_logic;
SIGNAL \MEW|Add0~0_combout\ : std_logic;
SIGNAL \eEW~combout\ : std_logic;
SIGNAL \REW|currentState[1]~1_combout\ : std_logic;
SIGNAL \MEW|Mux0~0_combout\ : std_logic;
SIGNAL \eP~combout\ : std_logic;
SIGNAL \RP|currentState[0]~0_combout\ : std_logic;
SIGNAL \REW|currentState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Rcktimer|currentState\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Rtime|currentState\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RNS|currentState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RP|currentState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cMuxP~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cMuxNS~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cMuxEW~combout\ : std_logic_vector(1 DOWNTO 0);

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
ww_cMuxP <= cMuxP;
ww_cMuxNS <= cMuxNS;
ww_cMuxEW <= cMuxEW;
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

\rstcktimer~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rstcktimer~combout\);

\rsttime~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rsttime~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X2_Y7_N9
\Rcktimer|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[1]~26_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(1));

-- Location: LCFF_X2_Y7_N17
\Rcktimer|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[5]~34_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(5));

-- Location: LCFF_X2_Y6_N11
\Rcktimer|currentState[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[18]~60_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(18));

-- Location: LCFF_X2_Y6_N21
\Rcktimer|currentState[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[23]~70_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(23));

-- Location: LCCOMB_X2_Y7_N8
\Rcktimer|currentState[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[1]~26_combout\ = (\Rcktimer|currentState\(1) & (\Rcktimer|currentState\(0) $ (VCC))) # (!\Rcktimer|currentState\(1) & (\Rcktimer|currentState\(0) & VCC))
-- \Rcktimer|currentState[1]~27\ = CARRY((\Rcktimer|currentState\(1) & \Rcktimer|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(1),
	datab => \Rcktimer|currentState\(0),
	datad => VCC,
	combout => \Rcktimer|currentState[1]~26_combout\,
	cout => \Rcktimer|currentState[1]~27\);

-- Location: LCCOMB_X2_Y7_N16
\Rcktimer|currentState[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[5]~34_combout\ = (\Rcktimer|currentState\(5) & (\Rcktimer|currentState[4]~33\ $ (GND))) # (!\Rcktimer|currentState\(5) & (!\Rcktimer|currentState[4]~33\ & VCC))
-- \Rcktimer|currentState[5]~35\ = CARRY((\Rcktimer|currentState\(5) & !\Rcktimer|currentState[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(5),
	datad => VCC,
	cin => \Rcktimer|currentState[4]~33\,
	combout => \Rcktimer|currentState[5]~34_combout\,
	cout => \Rcktimer|currentState[5]~35\);

-- Location: LCCOMB_X2_Y6_N10
\Rcktimer|currentState[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[18]~60_combout\ = (\Rcktimer|currentState\(18) & (!\Rcktimer|currentState[17]~59\)) # (!\Rcktimer|currentState\(18) & ((\Rcktimer|currentState[17]~59\) # (GND)))
-- \Rcktimer|currentState[18]~61\ = CARRY((!\Rcktimer|currentState[17]~59\) # (!\Rcktimer|currentState\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(18),
	datad => VCC,
	cin => \Rcktimer|currentState[17]~59\,
	combout => \Rcktimer|currentState[18]~60_combout\,
	cout => \Rcktimer|currentState[18]~61\);

-- Location: LCCOMB_X2_Y6_N20
\Rcktimer|currentState[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[23]~70_combout\ = (\Rcktimer|currentState\(23) & (\Rcktimer|currentState[22]~69\ $ (GND))) # (!\Rcktimer|currentState\(23) & (!\Rcktimer|currentState[22]~69\ & VCC))
-- \Rcktimer|currentState[23]~71\ = CARRY((\Rcktimer|currentState\(23) & !\Rcktimer|currentState[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(23),
	datad => VCC,
	cin => \Rcktimer|currentState[22]~69\,
	combout => \Rcktimer|currentState[23]~70_combout\,
	cout => \Rcktimer|currentState[23]~71\);

-- Location: LCCOMB_X2_Y6_N30
\Cs1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~3_combout\ = (\Rcktimer|currentState\(12) & (\Rcktimer|currentState\(14) & (\Rcktimer|currentState\(15) & \Rcktimer|currentState\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(12),
	datab => \Rcktimer|currentState\(14),
	datac => \Rcktimer|currentState\(15),
	datad => \Rcktimer|currentState\(13),
	combout => \Cs1|Equal0~3_combout\);

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ecktimer,
	combout => \ecktimer~combout\);

-- Location: LCCOMB_X2_Y7_N4
\Rcktimer|currentState[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[0]~25_combout\ = \Rcktimer|currentState\(0) $ (\ecktimer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rcktimer|currentState\(0),
	datad => \ecktimer~combout\,
	combout => \Rcktimer|currentState[0]~25_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_rstcktimer,
	combout => \rstcktimer~combout\);

-- Location: CLKCTRL_G1
\rstcktimer~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstcktimer~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstcktimer~clkctrl_outclk\);

-- Location: LCFF_X2_Y7_N5
\Rcktimer|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[0]~25_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(0));

-- Location: LCCOMB_X2_Y7_N10
\Rcktimer|currentState[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[2]~28_combout\ = (\Rcktimer|currentState\(2) & (!\Rcktimer|currentState[1]~27\)) # (!\Rcktimer|currentState\(2) & ((\Rcktimer|currentState[1]~27\) # (GND)))
-- \Rcktimer|currentState[2]~29\ = CARRY((!\Rcktimer|currentState[1]~27\) # (!\Rcktimer|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(2),
	datad => VCC,
	cin => \Rcktimer|currentState[1]~27\,
	combout => \Rcktimer|currentState[2]~28_combout\,
	cout => \Rcktimer|currentState[2]~29\);

-- Location: LCCOMB_X2_Y7_N12
\Rcktimer|currentState[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[3]~30_combout\ = (\Rcktimer|currentState\(3) & (\Rcktimer|currentState[2]~29\ $ (GND))) # (!\Rcktimer|currentState\(3) & (!\Rcktimer|currentState[2]~29\ & VCC))
-- \Rcktimer|currentState[3]~31\ = CARRY((\Rcktimer|currentState\(3) & !\Rcktimer|currentState[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(3),
	datad => VCC,
	cin => \Rcktimer|currentState[2]~29\,
	combout => \Rcktimer|currentState[3]~30_combout\,
	cout => \Rcktimer|currentState[3]~31\);

-- Location: LCCOMB_X2_Y7_N14
\Rcktimer|currentState[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[4]~32_combout\ = (\Rcktimer|currentState\(4) & (!\Rcktimer|currentState[3]~31\)) # (!\Rcktimer|currentState\(4) & ((\Rcktimer|currentState[3]~31\) # (GND)))
-- \Rcktimer|currentState[4]~33\ = CARRY((!\Rcktimer|currentState[3]~31\) # (!\Rcktimer|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(4),
	datad => VCC,
	cin => \Rcktimer|currentState[3]~31\,
	combout => \Rcktimer|currentState[4]~32_combout\,
	cout => \Rcktimer|currentState[4]~33\);

-- Location: LCFF_X2_Y7_N15
\Rcktimer|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[4]~32_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(4));

-- Location: LCCOMB_X2_Y7_N18
\Rcktimer|currentState[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[6]~36_combout\ = (\Rcktimer|currentState\(6) & (!\Rcktimer|currentState[5]~35\)) # (!\Rcktimer|currentState\(6) & ((\Rcktimer|currentState[5]~35\) # (GND)))
-- \Rcktimer|currentState[6]~37\ = CARRY((!\Rcktimer|currentState[5]~35\) # (!\Rcktimer|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(6),
	datad => VCC,
	cin => \Rcktimer|currentState[5]~35\,
	combout => \Rcktimer|currentState[6]~36_combout\,
	cout => \Rcktimer|currentState[6]~37\);

-- Location: LCFF_X2_Y7_N19
\Rcktimer|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[6]~36_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(6));

-- Location: LCCOMB_X2_Y7_N20
\Rcktimer|currentState[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[7]~38_combout\ = (\Rcktimer|currentState\(7) & (\Rcktimer|currentState[6]~37\ $ (GND))) # (!\Rcktimer|currentState\(7) & (!\Rcktimer|currentState[6]~37\ & VCC))
-- \Rcktimer|currentState[7]~39\ = CARRY((\Rcktimer|currentState\(7) & !\Rcktimer|currentState[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(7),
	datad => VCC,
	cin => \Rcktimer|currentState[6]~37\,
	combout => \Rcktimer|currentState[7]~38_combout\,
	cout => \Rcktimer|currentState[7]~39\);

-- Location: LCCOMB_X2_Y7_N22
\Rcktimer|currentState[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[8]~40_combout\ = (\Rcktimer|currentState\(8) & (!\Rcktimer|currentState[7]~39\)) # (!\Rcktimer|currentState\(8) & ((\Rcktimer|currentState[7]~39\) # (GND)))
-- \Rcktimer|currentState[8]~41\ = CARRY((!\Rcktimer|currentState[7]~39\) # (!\Rcktimer|currentState\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(8),
	datad => VCC,
	cin => \Rcktimer|currentState[7]~39\,
	combout => \Rcktimer|currentState[8]~40_combout\,
	cout => \Rcktimer|currentState[8]~41\);

-- Location: LCFF_X2_Y7_N23
\Rcktimer|currentState[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[8]~40_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(8));

-- Location: LCCOMB_X2_Y7_N24
\Rcktimer|currentState[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[9]~42_combout\ = (\Rcktimer|currentState\(9) & (\Rcktimer|currentState[8]~41\ $ (GND))) # (!\Rcktimer|currentState\(9) & (!\Rcktimer|currentState[8]~41\ & VCC))
-- \Rcktimer|currentState[9]~43\ = CARRY((\Rcktimer|currentState\(9) & !\Rcktimer|currentState[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(9),
	datad => VCC,
	cin => \Rcktimer|currentState[8]~41\,
	combout => \Rcktimer|currentState[9]~42_combout\,
	cout => \Rcktimer|currentState[9]~43\);

-- Location: LCCOMB_X2_Y7_N26
\Rcktimer|currentState[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[10]~44_combout\ = (\Rcktimer|currentState\(10) & (!\Rcktimer|currentState[9]~43\)) # (!\Rcktimer|currentState\(10) & ((\Rcktimer|currentState[9]~43\) # (GND)))
-- \Rcktimer|currentState[10]~45\ = CARRY((!\Rcktimer|currentState[9]~43\) # (!\Rcktimer|currentState\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(10),
	datad => VCC,
	cin => \Rcktimer|currentState[9]~43\,
	combout => \Rcktimer|currentState[10]~44_combout\,
	cout => \Rcktimer|currentState[10]~45\);

-- Location: LCFF_X2_Y7_N27
\Rcktimer|currentState[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[10]~44_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(10));

-- Location: LCCOMB_X2_Y7_N28
\Rcktimer|currentState[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[11]~46_combout\ = (\Rcktimer|currentState\(11) & (\Rcktimer|currentState[10]~45\ $ (GND))) # (!\Rcktimer|currentState\(11) & (!\Rcktimer|currentState[10]~45\ & VCC))
-- \Rcktimer|currentState[11]~47\ = CARRY((\Rcktimer|currentState\(11) & !\Rcktimer|currentState[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(11),
	datad => VCC,
	cin => \Rcktimer|currentState[10]~45\,
	combout => \Rcktimer|currentState[11]~46_combout\,
	cout => \Rcktimer|currentState[11]~47\);

-- Location: LCFF_X2_Y7_N29
\Rcktimer|currentState[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[11]~46_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(11));

-- Location: LCCOMB_X2_Y7_N30
\Rcktimer|currentState[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[12]~48_combout\ = (\Rcktimer|currentState\(12) & (!\Rcktimer|currentState[11]~47\)) # (!\Rcktimer|currentState\(12) & ((\Rcktimer|currentState[11]~47\) # (GND)))
-- \Rcktimer|currentState[12]~49\ = CARRY((!\Rcktimer|currentState[11]~47\) # (!\Rcktimer|currentState\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(12),
	datad => VCC,
	cin => \Rcktimer|currentState[11]~47\,
	combout => \Rcktimer|currentState[12]~48_combout\,
	cout => \Rcktimer|currentState[12]~49\);

-- Location: LCFF_X2_Y7_N31
\Rcktimer|currentState[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[12]~48_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(12));

-- Location: LCCOMB_X2_Y6_N0
\Rcktimer|currentState[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[13]~50_combout\ = (\Rcktimer|currentState\(13) & (\Rcktimer|currentState[12]~49\ $ (GND))) # (!\Rcktimer|currentState\(13) & (!\Rcktimer|currentState[12]~49\ & VCC))
-- \Rcktimer|currentState[13]~51\ = CARRY((\Rcktimer|currentState\(13) & !\Rcktimer|currentState[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(13),
	datad => VCC,
	cin => \Rcktimer|currentState[12]~49\,
	combout => \Rcktimer|currentState[13]~50_combout\,
	cout => \Rcktimer|currentState[13]~51\);

-- Location: LCFF_X2_Y6_N1
\Rcktimer|currentState[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[13]~50_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(13));

-- Location: LCCOMB_X2_Y6_N2
\Rcktimer|currentState[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[14]~52_combout\ = (\Rcktimer|currentState\(14) & (!\Rcktimer|currentState[13]~51\)) # (!\Rcktimer|currentState\(14) & ((\Rcktimer|currentState[13]~51\) # (GND)))
-- \Rcktimer|currentState[14]~53\ = CARRY((!\Rcktimer|currentState[13]~51\) # (!\Rcktimer|currentState\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(14),
	datad => VCC,
	cin => \Rcktimer|currentState[13]~51\,
	combout => \Rcktimer|currentState[14]~52_combout\,
	cout => \Rcktimer|currentState[14]~53\);

-- Location: LCFF_X2_Y6_N3
\Rcktimer|currentState[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[14]~52_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(14));

-- Location: LCCOMB_X2_Y6_N4
\Rcktimer|currentState[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[15]~54_combout\ = (\Rcktimer|currentState\(15) & (\Rcktimer|currentState[14]~53\ $ (GND))) # (!\Rcktimer|currentState\(15) & (!\Rcktimer|currentState[14]~53\ & VCC))
-- \Rcktimer|currentState[15]~55\ = CARRY((\Rcktimer|currentState\(15) & !\Rcktimer|currentState[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(15),
	datad => VCC,
	cin => \Rcktimer|currentState[14]~53\,
	combout => \Rcktimer|currentState[15]~54_combout\,
	cout => \Rcktimer|currentState[15]~55\);

-- Location: LCFF_X2_Y6_N5
\Rcktimer|currentState[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[15]~54_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(15));

-- Location: LCCOMB_X2_Y6_N6
\Rcktimer|currentState[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[16]~56_combout\ = (\Rcktimer|currentState\(16) & (!\Rcktimer|currentState[15]~55\)) # (!\Rcktimer|currentState\(16) & ((\Rcktimer|currentState[15]~55\) # (GND)))
-- \Rcktimer|currentState[16]~57\ = CARRY((!\Rcktimer|currentState[15]~55\) # (!\Rcktimer|currentState\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(16),
	datad => VCC,
	cin => \Rcktimer|currentState[15]~55\,
	combout => \Rcktimer|currentState[16]~56_combout\,
	cout => \Rcktimer|currentState[16]~57\);

-- Location: LCCOMB_X2_Y6_N8
\Rcktimer|currentState[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[17]~58_combout\ = (\Rcktimer|currentState\(17) & (\Rcktimer|currentState[16]~57\ $ (GND))) # (!\Rcktimer|currentState\(17) & (!\Rcktimer|currentState[16]~57\ & VCC))
-- \Rcktimer|currentState[17]~59\ = CARRY((\Rcktimer|currentState\(17) & !\Rcktimer|currentState[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(17),
	datad => VCC,
	cin => \Rcktimer|currentState[16]~57\,
	combout => \Rcktimer|currentState[17]~58_combout\,
	cout => \Rcktimer|currentState[17]~59\);

-- Location: LCFF_X2_Y6_N9
\Rcktimer|currentState[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[17]~58_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(17));

-- Location: LCCOMB_X2_Y6_N12
\Rcktimer|currentState[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[19]~62_combout\ = (\Rcktimer|currentState\(19) & (\Rcktimer|currentState[18]~61\ $ (GND))) # (!\Rcktimer|currentState\(19) & (!\Rcktimer|currentState[18]~61\ & VCC))
-- \Rcktimer|currentState[19]~63\ = CARRY((\Rcktimer|currentState\(19) & !\Rcktimer|currentState[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(19),
	datad => VCC,
	cin => \Rcktimer|currentState[18]~61\,
	combout => \Rcktimer|currentState[19]~62_combout\,
	cout => \Rcktimer|currentState[19]~63\);

-- Location: LCCOMB_X2_Y6_N14
\Rcktimer|currentState[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[20]~64_combout\ = (\Rcktimer|currentState\(20) & (!\Rcktimer|currentState[19]~63\)) # (!\Rcktimer|currentState\(20) & ((\Rcktimer|currentState[19]~63\) # (GND)))
-- \Rcktimer|currentState[20]~65\ = CARRY((!\Rcktimer|currentState[19]~63\) # (!\Rcktimer|currentState\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(20),
	datad => VCC,
	cin => \Rcktimer|currentState[19]~63\,
	combout => \Rcktimer|currentState[20]~64_combout\,
	cout => \Rcktimer|currentState[20]~65\);

-- Location: LCFF_X2_Y6_N15
\Rcktimer|currentState[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[20]~64_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(20));

-- Location: LCCOMB_X2_Y6_N16
\Rcktimer|currentState[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[21]~66_combout\ = (\Rcktimer|currentState\(21) & (\Rcktimer|currentState[20]~65\ $ (GND))) # (!\Rcktimer|currentState\(21) & (!\Rcktimer|currentState[20]~65\ & VCC))
-- \Rcktimer|currentState[21]~67\ = CARRY((\Rcktimer|currentState\(21) & !\Rcktimer|currentState[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(21),
	datad => VCC,
	cin => \Rcktimer|currentState[20]~65\,
	combout => \Rcktimer|currentState[21]~66_combout\,
	cout => \Rcktimer|currentState[21]~67\);

-- Location: LCFF_X2_Y6_N17
\Rcktimer|currentState[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[21]~66_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(21));

-- Location: LCCOMB_X2_Y6_N18
\Rcktimer|currentState[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[22]~68_combout\ = (\Rcktimer|currentState\(22) & (!\Rcktimer|currentState[21]~67\)) # (!\Rcktimer|currentState\(22) & ((\Rcktimer|currentState[21]~67\) # (GND)))
-- \Rcktimer|currentState[22]~69\ = CARRY((!\Rcktimer|currentState[21]~67\) # (!\Rcktimer|currentState\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(22),
	datad => VCC,
	cin => \Rcktimer|currentState[21]~67\,
	combout => \Rcktimer|currentState[22]~68_combout\,
	cout => \Rcktimer|currentState[22]~69\);

-- Location: LCFF_X2_Y6_N19
\Rcktimer|currentState[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[22]~68_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(22));

-- Location: LCCOMB_X2_Y6_N26
\Cs1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~6_combout\ = (\Rcktimer|currentState\(23) & (\Rcktimer|currentState\(20) & (\Rcktimer|currentState\(21) & \Rcktimer|currentState\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(23),
	datab => \Rcktimer|currentState\(20),
	datac => \Rcktimer|currentState\(21),
	datad => \Rcktimer|currentState\(22),
	combout => \Cs1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y6_N22
\Rcktimer|currentState[24]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[24]~72_combout\ = (\Rcktimer|currentState\(24) & (!\Rcktimer|currentState[23]~71\)) # (!\Rcktimer|currentState\(24) & ((\Rcktimer|currentState[23]~71\) # (GND)))
-- \Rcktimer|currentState[24]~73\ = CARRY((!\Rcktimer|currentState[23]~71\) # (!\Rcktimer|currentState\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(24),
	datad => VCC,
	cin => \Rcktimer|currentState[23]~71\,
	combout => \Rcktimer|currentState[24]~72_combout\,
	cout => \Rcktimer|currentState[24]~73\);

-- Location: LCFF_X2_Y6_N23
\Rcktimer|currentState[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[24]~72_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(24));

-- Location: LCCOMB_X2_Y6_N24
\Rcktimer|currentState[25]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rcktimer|currentState[25]~74_combout\ = \Rcktimer|currentState\(25) $ (!\Rcktimer|currentState[24]~73\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(25),
	cin => \Rcktimer|currentState[24]~73\,
	combout => \Rcktimer|currentState[25]~74_combout\);

-- Location: LCFF_X2_Y6_N25
\Rcktimer|currentState[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[25]~74_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(25));

-- Location: LCCOMB_X1_Y6_N0
\Cs1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~7_combout\ = (!\Rcktimer|currentState\(24) & \Rcktimer|currentState\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rcktimer|currentState\(24),
	datad => \Rcktimer|currentState\(25),
	combout => \Cs1|Equal0~7_combout\);

-- Location: LCFF_X2_Y7_N25
\Rcktimer|currentState[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[9]~42_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(9));

-- Location: LCCOMB_X2_Y7_N6
\Cs1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~2_combout\ = (!\Rcktimer|currentState\(10) & (!\Rcktimer|currentState\(11) & (!\Rcktimer|currentState\(9) & !\Rcktimer|currentState\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(10),
	datab => \Rcktimer|currentState\(11),
	datac => \Rcktimer|currentState\(9),
	datad => \Rcktimer|currentState\(8),
	combout => \Cs1|Equal0~2_combout\);

-- Location: LCFF_X2_Y7_N21
\Rcktimer|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[7]~38_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(7));

-- Location: LCCOMB_X2_Y7_N0
\Cs1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~1_combout\ = (!\Rcktimer|currentState\(5) & (!\Rcktimer|currentState\(4) & (\Rcktimer|currentState\(7) & !\Rcktimer|currentState\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(5),
	datab => \Rcktimer|currentState\(4),
	datac => \Rcktimer|currentState\(7),
	datad => \Rcktimer|currentState\(6),
	combout => \Cs1|Equal0~1_combout\);

-- Location: LCFF_X2_Y7_N11
\Rcktimer|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[2]~28_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(2));

-- Location: LCFF_X2_Y7_N13
\Rcktimer|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[3]~30_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(3));

-- Location: LCCOMB_X2_Y7_N2
\Cs1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~0_combout\ = (!\Rcktimer|currentState\(1) & (!\Rcktimer|currentState\(2) & (!\Rcktimer|currentState\(0) & !\Rcktimer|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(1),
	datab => \Rcktimer|currentState\(2),
	datac => \Rcktimer|currentState\(0),
	datad => \Rcktimer|currentState\(3),
	combout => \Cs1|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y7_N16
\Cs1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~4_combout\ = (\Cs1|Equal0~3_combout\ & (\Cs1|Equal0~2_combout\ & (\Cs1|Equal0~1_combout\ & \Cs1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs1|Equal0~3_combout\,
	datab => \Cs1|Equal0~2_combout\,
	datac => \Cs1|Equal0~1_combout\,
	datad => \Cs1|Equal0~0_combout\,
	combout => \Cs1|Equal0~4_combout\);

-- Location: LCFF_X2_Y6_N13
\Rcktimer|currentState[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[19]~62_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(19));

-- Location: LCFF_X2_Y6_N7
\Rcktimer|currentState[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rcktimer|currentState[16]~56_combout\,
	aclr => \rstcktimer~clkctrl_outclk\,
	ena => \ecktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rcktimer|currentState\(16));

-- Location: LCCOMB_X2_Y6_N28
\Cs1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~5_combout\ = (!\Rcktimer|currentState\(18) & (\Rcktimer|currentState\(19) & (\Rcktimer|currentState\(17) & !\Rcktimer|currentState\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rcktimer|currentState\(18),
	datab => \Rcktimer|currentState\(19),
	datac => \Rcktimer|currentState\(17),
	datad => \Rcktimer|currentState\(16),
	combout => \Cs1|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y6_N30
\Cs1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs1|Equal0~8_combout\ = (\Cs1|Equal0~6_combout\ & (\Cs1|Equal0~7_combout\ & (\Cs1|Equal0~4_combout\ & \Cs1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs1|Equal0~6_combout\,
	datab => \Cs1|Equal0~7_combout\,
	datac => \Cs1|Equal0~4_combout\,
	datad => \Cs1|Equal0~5_combout\,
	combout => \Cs1|Equal0~8_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y30_N30
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCFF_X2_Y30_N31
\Rtime|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[0]~21_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(0));

-- Location: LCCOMB_X2_Y30_N0
\Rtime|currentState[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[1]~7_combout\ = (\Rtime|currentState\(1) & (\Rtime|currentState\(0) $ (VCC))) # (!\Rtime|currentState\(1) & (\Rtime|currentState\(0) & VCC))
-- \Rtime|currentState[1]~8\ = CARRY((\Rtime|currentState\(1) & \Rtime|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(1),
	datab => \Rtime|currentState\(0),
	datad => VCC,
	combout => \Rtime|currentState[1]~7_combout\,
	cout => \Rtime|currentState[1]~8\);

-- Location: LCFF_X2_Y30_N1
\Rtime|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[1]~7_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(1));

-- Location: LCCOMB_X2_Y30_N2
\Rtime|currentState[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rtime|currentState[2]~9_combout\ = (\Rtime|currentState\(2) & (!\Rtime|currentState[1]~8\)) # (!\Rtime|currentState\(2) & ((\Rtime|currentState[1]~8\) # (GND)))
-- \Rtime|currentState[2]~10\ = CARRY((!\Rtime|currentState[1]~8\) # (!\Rtime|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Rtime|currentState\(2),
	datad => VCC,
	cin => \Rtime|currentState[1]~8\,
	combout => \Rtime|currentState[2]~9_combout\,
	cout => \Rtime|currentState[2]~10\);

-- Location: LCFF_X2_Y30_N3
\Rtime|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[2]~9_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(2));

-- Location: LCCOMB_X2_Y30_N4
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

-- Location: LCFF_X2_Y30_N5
\Rtime|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[3]~11_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(3));

-- Location: LCCOMB_X1_Y30_N10
\Cs105|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~0_combout\ = (\Rtime|currentState\(0) & (!\Rtime|currentState\(1) & \Rtime|currentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rtime|currentState\(0),
	datac => \Rtime|currentState\(1),
	datad => \Rtime|currentState\(3),
	combout => \Cs105|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y30_N6
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

-- Location: LCCOMB_X2_Y30_N8
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

-- Location: LCFF_X2_Y30_N9
\Rtime|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[5]~15_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(5));

-- Location: LCCOMB_X2_Y30_N10
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

-- Location: LCCOMB_X2_Y30_N12
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

-- Location: LCFF_X2_Y30_N13
\Rtime|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[7]~19_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(7));

-- Location: LCFF_X2_Y30_N7
\Rtime|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[4]~13_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(4));

-- Location: LCCOMB_X1_Y30_N4
\Cs110|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs110|Equal0~0_combout\ = (\Rtime|currentState\(2) & (\Rtime|currentState\(5) & (!\Rtime|currentState\(7) & !\Rtime|currentState\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Rtime|currentState\(5),
	datac => \Rtime|currentState\(7),
	datad => \Rtime|currentState\(4),
	combout => \Cs110|Equal0~0_combout\);

-- Location: LCFF_X2_Y30_N11
\Rtime|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rtime|currentState[6]~17_combout\,
	aclr => \rsttime~clkctrl_outclk\,
	ena => \etime~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rtime|currentState\(6));

-- Location: LCCOMB_X1_Y30_N24
\Cs45|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs45|Equal0~0_combout\ = (\Cs105|Equal0~0_combout\ & (\Cs110|Equal0~0_combout\ & !\Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cs105|Equal0~0_combout\,
	datab => \Cs110|Equal0~0_combout\,
	datac => \Rtime|currentState\(6),
	combout => \Cs45|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N26
\Cs55|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~0_combout\ = (\Rtime|currentState\(1) & (\Rtime|currentState\(5) & (!\Rtime|currentState\(7) & !\Rtime|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(1),
	datab => \Rtime|currentState\(5),
	datac => \Rtime|currentState\(7),
	datad => \Rtime|currentState\(3),
	combout => \Cs55|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N16
\Cs55|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~1_combout\ = (\Rtime|currentState\(4) & (!\Rtime|currentState\(6) & \Cs55|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(4),
	datac => \Rtime|currentState\(6),
	datad => \Cs55|Equal0~0_combout\,
	combout => \Cs55|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y30_N22
\Cs50|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs50|Equal0~0_combout\ = (!\Rtime|currentState\(2) & (!\Rtime|currentState\(0) & \Cs55|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Rtime|currentState\(0),
	datac => \Cs55|Equal0~1_combout\,
	combout => \Cs50|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N12
\Cs55|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs55|Equal0~2_combout\ = (\Rtime|currentState\(2) & (\Rtime|currentState\(0) & \Cs55|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Rtime|currentState\(0),
	datac => \Cs55|Equal0~1_combout\,
	combout => \Cs55|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y30_N6
\Cs110|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs110|Equal0~1_combout\ = (\Rtime|currentState\(6) & !\Rtime|currentState\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rtime|currentState\(6),
	datad => \Rtime|currentState\(0),
	combout => \Cs110|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y30_N28
\Cs100|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs100|Equal0~0_combout\ = (!\Rtime|currentState\(3) & (\Cs110|Equal0~0_combout\ & (!\Rtime|currentState\(1) & \Cs110|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(3),
	datab => \Cs110|Equal0~0_combout\,
	datac => \Rtime|currentState\(1),
	datad => \Cs110|Equal0~1_combout\,
	combout => \Cs100|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N18
\Cs105|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~1_combout\ = (\Rtime|currentState\(5) & (\Rtime|currentState\(6) & (!\Rtime|currentState\(7) & !\Rtime|currentState\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(5),
	datab => \Rtime|currentState\(6),
	datac => \Rtime|currentState\(7),
	datad => \Rtime|currentState\(4),
	combout => \Cs105|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y30_N20
\Cs105|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs105|Equal0~2_combout\ = (!\Rtime|currentState\(2) & (\Cs105|Equal0~1_combout\ & \Cs105|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Cs105|Equal0~1_combout\,
	datad => \Cs105|Equal0~0_combout\,
	combout => \Cs105|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y30_N30
\Cs110|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs110|Equal0~2_combout\ = (\Rtime|currentState\(3) & (\Cs110|Equal0~0_combout\ & (\Rtime|currentState\(1) & \Cs110|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(3),
	datab => \Cs110|Equal0~0_combout\,
	datac => \Rtime|currentState\(1),
	datad => \Cs110|Equal0~1_combout\,
	combout => \Cs110|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y30_N8
\Cs140|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~0_combout\ = (\Rtime|currentState\(2) & (!\Rtime|currentState\(5) & (!\Rtime|currentState\(6) & !\Rtime|currentState\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(2),
	datab => \Rtime|currentState\(5),
	datac => \Rtime|currentState\(6),
	datad => \Rtime|currentState\(4),
	combout => \Cs140|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N2
\Cs140|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~1_combout\ = (\Cs140|Equal0~0_combout\ & \Rtime|currentState\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cs140|Equal0~0_combout\,
	datac => \Rtime|currentState\(7),
	combout => \Cs140|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y30_N0
\Cs135|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs135|Equal0~0_combout\ = (!\Rtime|currentState\(3) & (\Rtime|currentState\(0) & (\Rtime|currentState\(1) & \Cs140|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(3),
	datab => \Rtime|currentState\(0),
	datac => \Rtime|currentState\(1),
	datad => \Cs140|Equal0~1_combout\,
	combout => \Cs135|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y30_N14
\Cs140|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Cs140|Equal0~2_combout\ = (\Rtime|currentState\(3) & (!\Rtime|currentState\(0) & (!\Rtime|currentState\(1) & \Cs140|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rtime|currentState\(3),
	datab => \Rtime|currentState\(0),
	datac => \Rtime|currentState\(1),
	datad => \Cs140|Equal0~1_combout\,
	combout => \Cs140|Equal0~2_combout\);

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

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxNS(0),
	combout => \cMuxNS~combout\(0));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxNS(1),
	combout => \cMuxNS~combout\(1));

-- Location: LCCOMB_X35_Y1_N16
\MNS|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MNS|Add0~0_combout\ = \cMuxNS~combout\(0) $ (!\cMuxNS~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cMuxNS~combout\(0),
	datad => \cMuxNS~combout\(1),
	combout => \MNS|Add0~0_combout\);

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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G11
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

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eNS,
	combout => \eNS~combout\);

-- Location: LCFF_X35_Y1_N17
\RNS|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \MNS|Add0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eNS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RNS|currentState\(0));

-- Location: LCCOMB_X35_Y1_N18
\RNS|currentState[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RNS|currentState[1]~1_combout\ = !\cMuxNS~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cMuxNS~combout\(1),
	combout => \RNS|currentState[1]~1_combout\);

-- Location: LCFF_X35_Y1_N19
\RNS|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RNS|currentState[1]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eNS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RNS|currentState\(1));

-- Location: LCCOMB_X35_Y1_N4
\MNS|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MNS|Mux0~0_combout\ = (!\cMuxNS~combout\(0) & \cMuxNS~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cMuxNS~combout\(0),
	datad => \cMuxNS~combout\(1),
	combout => \MNS|Mux0~0_combout\);

-- Location: LCFF_X35_Y1_N5
\RNS|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \MNS|Mux0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eNS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RNS|currentState\(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxEW(0),
	combout => \cMuxEW~combout\(0));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxEW(1),
	combout => \cMuxEW~combout\(1));

-- Location: LCCOMB_X16_Y35_N0
\MEW|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEW|Add0~0_combout\ = \cMuxEW~combout\(0) $ (!\cMuxEW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cMuxEW~combout\(0),
	datad => \cMuxEW~combout\(1),
	combout => \MEW|Add0~0_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eEW,
	combout => \eEW~combout\);

-- Location: LCFF_X16_Y35_N1
\REW|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \MEW|Add0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REW|currentState\(0));

-- Location: LCCOMB_X16_Y35_N22
\REW|currentState[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \REW|currentState[1]~1_combout\ = !\cMuxEW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cMuxEW~combout\(1),
	combout => \REW|currentState[1]~1_combout\);

-- Location: LCFF_X16_Y35_N23
\REW|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \REW|currentState[1]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REW|currentState\(1));

-- Location: LCCOMB_X16_Y35_N28
\MEW|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MEW|Mux0~0_combout\ = (!\cMuxEW~combout\(0) & \cMuxEW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cMuxEW~combout\(0),
	datad => \cMuxEW~combout\(1),
	combout => \MEW|Mux0~0_combout\);

-- Location: LCFF_X16_Y35_N29
\REW|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \MEW|Mux0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REW|currentState\(2));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_eP,
	combout => \eP~combout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_cMuxP(0),
	combout => \cMuxP~combout\(0));

-- Location: LCCOMB_X40_Y1_N0
\RP|currentState[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RP|currentState[0]~0_combout\ = (\eP~combout\ & ((!\cMuxP~combout\(0)))) # (!\eP~combout\ & (\RP|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eP~combout\,
	datac => \RP|currentState\(0),
	datad => \cMuxP~combout\(0),
	combout => \RP|currentState[0]~0_combout\);

-- Location: LCFF_X40_Y1_N1
\RP|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RP|currentState[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RP|currentState\(0));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Cs1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Cs100|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s100);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Cs110|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s110);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RNS|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RNS|currentState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(1));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RNS|currentState\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REW|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REW|currentState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REW|currentState\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(2));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \RP|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(0));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cMuxP[1]~I\ : cycloneii_io
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
	padio => ww_cMuxP(1));
END structure;


