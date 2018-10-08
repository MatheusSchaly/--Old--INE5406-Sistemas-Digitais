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

-- DATE "10/07/2018 21:27:35"

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

ENTITY 	traffic_light_top IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	NS : OUT std_logic_vector(2 DOWNTO 0);
	EW : OUT std_logic_vector(2 DOWNTO 0);
	P : OUT std_logic_vector(1 DOWNTO 0)
	);
END traffic_light_top;

-- Design Ports Information
-- NS[0]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[1]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NS[2]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EW[2]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P[1]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF traffic_light_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_NS : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_EW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo_map|Rtime|currentState[6]~18\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[7]~19_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[1]~26_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[2]~28_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[3]~30_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[7]~38_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[18]~60_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[21]~66_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[22]~69\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[23]~70_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[23]~71\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[24]~72_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[24]~73\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[25]~74_combout\ : std_logic;
SIGNAL \bc_map|currentState.S5~regout\ : std_logic;
SIGNAL \bc_map|currentState.S7~regout\ : std_logic;
SIGNAL \bo_map|Cs110|Equal0~0_combout\ : std_logic;
SIGNAL \bo_map|Cs140|Equal0~1_combout\ : std_logic;
SIGNAL \bo_map|Cs55|Equal0~1_combout\ : std_logic;
SIGNAL \bc_map|nextState.S5~0_combout\ : std_logic;
SIGNAL \bc_map|nextState.S7~0_combout\ : std_logic;
SIGNAL \bc_map|Selector1~0_combout\ : std_logic;
SIGNAL \bc_map|Selector1~7_combout\ : std_logic;
SIGNAL \bo_map|Cs55|Equal0~2_combout\ : std_logic;
SIGNAL \bc_map|Selector0~1_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[0]~21_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[1]~8\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[2]~10\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[3]~11_combout\ : std_logic;
SIGNAL \bo_map|Cs140|Equal0~0_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[3]~12\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[4]~13_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[4]~14\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[5]~16\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[6]~17_combout\ : std_logic;
SIGNAL \bo_map|Cs140|Equal0~2_combout\ : std_logic;
SIGNAL \bc_map|nextState.S8~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc_map|currentState.S8~regout\ : std_logic;
SIGNAL \bc_map|currentState.init~feeder_combout\ : std_logic;
SIGNAL \bc_map|currentState.init~regout\ : std_logic;
SIGNAL \bc_map|rsttime~0_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[1]~7_combout\ : std_logic;
SIGNAL \bo_map|Cs110|Equal0~1_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[5]~15_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[2]~9_combout\ : std_logic;
SIGNAL \bc_map|NSL~0_combout\ : std_logic;
SIGNAL \bc_map|NSL~1_combout\ : std_logic;
SIGNAL \bo_map|Cs55|Equal0~0_combout\ : std_logic;
SIGNAL \bc_map|NSL~2_combout\ : std_logic;
SIGNAL \bc_map|NSL~3_combout\ : std_logic;
SIGNAL \bc_map|Selector0~0_combout\ : std_logic;
SIGNAL \bc_map|Selector0~2_combout\ : std_logic;
SIGNAL \bc_map|currentState.S0~regout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[0]~25_combout\ : std_logic;
SIGNAL \bc_map|rstcktimer~combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[1]~27\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[2]~29\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[3]~31\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[4]~32_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[4]~33\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[5]~35\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[6]~36_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[6]~37\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[7]~39\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[8]~40_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[8]~41\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[9]~43\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[10]~44_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[10]~45\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[11]~46_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[11]~47\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[12]~48_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[12]~49\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[13]~50_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[13]~51\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[14]~52_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[14]~53\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[15]~54_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[15]~55\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[16]~57\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[17]~58_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[16]~56_combout\ : std_logic;
SIGNAL \bc_map|Selector1~5_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[17]~59\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[18]~61\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[19]~63\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[20]~64_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[20]~65\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[21]~67\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[22]~68_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[19]~62_combout\ : std_logic;
SIGNAL \bc_map|Selector1~6_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[5]~34_combout\ : std_logic;
SIGNAL \bc_map|Selector1~1_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[9]~42_combout\ : std_logic;
SIGNAL \bc_map|Selector1~2_combout\ : std_logic;
SIGNAL \bc_map|Selector1~3_combout\ : std_logic;
SIGNAL \bc_map|Selector1~4_combout\ : std_logic;
SIGNAL \bc_map|Selector1~8_combout\ : std_logic;
SIGNAL \bc_map|currentState.S2~regout\ : std_logic;
SIGNAL \bo_map|Cs45|Equal0~0_combout\ : std_logic;
SIGNAL \bc_map|nextState.S3~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S3~regout\ : std_logic;
SIGNAL \bc_map|nextState.S4~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S4~regout\ : std_logic;
SIGNAL \bo_map|MNS|Mux2~0_combout\ : std_logic;
SIGNAL \bc_map|eNS~0_combout\ : std_logic;
SIGNAL \bo_map|MNS|Mux0~0_combout\ : std_logic;
SIGNAL \bc_map|nextState.S6~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S6~regout\ : std_logic;
SIGNAL \bc_map|eEW~0_combout\ : std_logic;
SIGNAL \bc_map|eEW~combout\ : std_logic;
SIGNAL \bo_map|MEW|Mux0~0_combout\ : std_logic;
SIGNAL \bo_map|RP|currentState[0]~0_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bo_map|Rtime|currentState\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo_map|RNS|currentState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bo_map|RP|currentState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \bo_map|REW|currentState\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clock <= clock;
NS <= ww_NS;
EW <= ww_EW;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X29_Y4_N21
\bo_map|Rtime|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[7]~19_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(7));

-- Location: LCFF_X31_Y4_N9
\bo_map|Rcktimer|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[1]~26_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(1));

-- Location: LCFF_X31_Y4_N11
\bo_map|Rcktimer|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[2]~28_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(2));

-- Location: LCFF_X31_Y4_N13
\bo_map|Rcktimer|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[3]~30_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(3));

-- Location: LCFF_X31_Y4_N21
\bo_map|Rcktimer|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[7]~38_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(7));

-- Location: LCFF_X31_Y3_N11
\bo_map|Rcktimer|currentState[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[18]~60_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(18));

-- Location: LCFF_X31_Y3_N17
\bo_map|Rcktimer|currentState[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[21]~66_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(21));

-- Location: LCFF_X31_Y3_N21
\bo_map|Rcktimer|currentState[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[23]~70_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(23));

-- Location: LCFF_X31_Y3_N25
\bo_map|Rcktimer|currentState[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[25]~74_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(25));

-- Location: LCFF_X31_Y3_N23
\bo_map|Rcktimer|currentState[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[24]~72_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(24));

-- Location: LCCOMB_X29_Y4_N18
\bo_map|Rtime|currentState[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[6]~17_combout\ = (\bo_map|Rtime|currentState\(6) & (!\bo_map|Rtime|currentState[5]~16\)) # (!\bo_map|Rtime|currentState\(6) & ((\bo_map|Rtime|currentState[5]~16\) # (GND)))
-- \bo_map|Rtime|currentState[6]~18\ = CARRY((!\bo_map|Rtime|currentState[5]~16\) # (!\bo_map|Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(6),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[5]~16\,
	combout => \bo_map|Rtime|currentState[6]~17_combout\,
	cout => \bo_map|Rtime|currentState[6]~18\);

-- Location: LCCOMB_X29_Y4_N20
\bo_map|Rtime|currentState[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[7]~19_combout\ = \bo_map|Rtime|currentState\(7) $ (!\bo_map|Rtime|currentState[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(7),
	cin => \bo_map|Rtime|currentState[6]~18\,
	combout => \bo_map|Rtime|currentState[7]~19_combout\);

-- Location: LCCOMB_X31_Y4_N8
\bo_map|Rcktimer|currentState[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[1]~26_combout\ = (\bo_map|Rcktimer|currentState\(1) & (\bo_map|Rcktimer|currentState\(0) $ (VCC))) # (!\bo_map|Rcktimer|currentState\(1) & (\bo_map|Rcktimer|currentState\(0) & VCC))
-- \bo_map|Rcktimer|currentState[1]~27\ = CARRY((\bo_map|Rcktimer|currentState\(1) & \bo_map|Rcktimer|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(1),
	datab => \bo_map|Rcktimer|currentState\(0),
	datad => VCC,
	combout => \bo_map|Rcktimer|currentState[1]~26_combout\,
	cout => \bo_map|Rcktimer|currentState[1]~27\);

-- Location: LCCOMB_X31_Y4_N10
\bo_map|Rcktimer|currentState[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[2]~28_combout\ = (\bo_map|Rcktimer|currentState\(2) & (!\bo_map|Rcktimer|currentState[1]~27\)) # (!\bo_map|Rcktimer|currentState\(2) & ((\bo_map|Rcktimer|currentState[1]~27\) # (GND)))
-- \bo_map|Rcktimer|currentState[2]~29\ = CARRY((!\bo_map|Rcktimer|currentState[1]~27\) # (!\bo_map|Rcktimer|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(2),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[1]~27\,
	combout => \bo_map|Rcktimer|currentState[2]~28_combout\,
	cout => \bo_map|Rcktimer|currentState[2]~29\);

-- Location: LCCOMB_X31_Y4_N12
\bo_map|Rcktimer|currentState[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[3]~30_combout\ = (\bo_map|Rcktimer|currentState\(3) & (\bo_map|Rcktimer|currentState[2]~29\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(3) & (!\bo_map|Rcktimer|currentState[2]~29\ & VCC))
-- \bo_map|Rcktimer|currentState[3]~31\ = CARRY((\bo_map|Rcktimer|currentState\(3) & !\bo_map|Rcktimer|currentState[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(3),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[2]~29\,
	combout => \bo_map|Rcktimer|currentState[3]~30_combout\,
	cout => \bo_map|Rcktimer|currentState[3]~31\);

-- Location: LCCOMB_X31_Y4_N20
\bo_map|Rcktimer|currentState[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[7]~38_combout\ = (\bo_map|Rcktimer|currentState\(7) & (\bo_map|Rcktimer|currentState[6]~37\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(7) & (!\bo_map|Rcktimer|currentState[6]~37\ & VCC))
-- \bo_map|Rcktimer|currentState[7]~39\ = CARRY((\bo_map|Rcktimer|currentState\(7) & !\bo_map|Rcktimer|currentState[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(7),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[6]~37\,
	combout => \bo_map|Rcktimer|currentState[7]~38_combout\,
	cout => \bo_map|Rcktimer|currentState[7]~39\);

-- Location: LCCOMB_X31_Y3_N10
\bo_map|Rcktimer|currentState[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[18]~60_combout\ = (\bo_map|Rcktimer|currentState\(18) & (!\bo_map|Rcktimer|currentState[17]~59\)) # (!\bo_map|Rcktimer|currentState\(18) & ((\bo_map|Rcktimer|currentState[17]~59\) # (GND)))
-- \bo_map|Rcktimer|currentState[18]~61\ = CARRY((!\bo_map|Rcktimer|currentState[17]~59\) # (!\bo_map|Rcktimer|currentState\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(18),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[17]~59\,
	combout => \bo_map|Rcktimer|currentState[18]~60_combout\,
	cout => \bo_map|Rcktimer|currentState[18]~61\);

-- Location: LCCOMB_X31_Y3_N16
\bo_map|Rcktimer|currentState[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[21]~66_combout\ = (\bo_map|Rcktimer|currentState\(21) & (\bo_map|Rcktimer|currentState[20]~65\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(21) & (!\bo_map|Rcktimer|currentState[20]~65\ & VCC))
-- \bo_map|Rcktimer|currentState[21]~67\ = CARRY((\bo_map|Rcktimer|currentState\(21) & !\bo_map|Rcktimer|currentState[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(21),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[20]~65\,
	combout => \bo_map|Rcktimer|currentState[21]~66_combout\,
	cout => \bo_map|Rcktimer|currentState[21]~67\);

-- Location: LCCOMB_X31_Y3_N18
\bo_map|Rcktimer|currentState[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[22]~68_combout\ = (\bo_map|Rcktimer|currentState\(22) & (!\bo_map|Rcktimer|currentState[21]~67\)) # (!\bo_map|Rcktimer|currentState\(22) & ((\bo_map|Rcktimer|currentState[21]~67\) # (GND)))
-- \bo_map|Rcktimer|currentState[22]~69\ = CARRY((!\bo_map|Rcktimer|currentState[21]~67\) # (!\bo_map|Rcktimer|currentState\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(22),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[21]~67\,
	combout => \bo_map|Rcktimer|currentState[22]~68_combout\,
	cout => \bo_map|Rcktimer|currentState[22]~69\);

-- Location: LCCOMB_X31_Y3_N20
\bo_map|Rcktimer|currentState[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[23]~70_combout\ = (\bo_map|Rcktimer|currentState\(23) & (\bo_map|Rcktimer|currentState[22]~69\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(23) & (!\bo_map|Rcktimer|currentState[22]~69\ & VCC))
-- \bo_map|Rcktimer|currentState[23]~71\ = CARRY((\bo_map|Rcktimer|currentState\(23) & !\bo_map|Rcktimer|currentState[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(23),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[22]~69\,
	combout => \bo_map|Rcktimer|currentState[23]~70_combout\,
	cout => \bo_map|Rcktimer|currentState[23]~71\);

-- Location: LCCOMB_X31_Y3_N22
\bo_map|Rcktimer|currentState[24]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[24]~72_combout\ = (\bo_map|Rcktimer|currentState\(24) & (!\bo_map|Rcktimer|currentState[23]~71\)) # (!\bo_map|Rcktimer|currentState\(24) & ((\bo_map|Rcktimer|currentState[23]~71\) # (GND)))
-- \bo_map|Rcktimer|currentState[24]~73\ = CARRY((!\bo_map|Rcktimer|currentState[23]~71\) # (!\bo_map|Rcktimer|currentState\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(24),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[23]~71\,
	combout => \bo_map|Rcktimer|currentState[24]~72_combout\,
	cout => \bo_map|Rcktimer|currentState[24]~73\);

-- Location: LCCOMB_X31_Y3_N24
\bo_map|Rcktimer|currentState[25]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[25]~74_combout\ = \bo_map|Rcktimer|currentState\(25) $ (!\bo_map|Rcktimer|currentState[24]~73\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(25),
	cin => \bo_map|Rcktimer|currentState[24]~73\,
	combout => \bo_map|Rcktimer|currentState[25]~74_combout\);

-- Location: LCFF_X30_Y4_N31
\bc_map|currentState.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S5~regout\);

-- Location: LCFF_X30_Y4_N5
\bc_map|currentState.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S7~regout\);

-- Location: LCCOMB_X29_Y4_N2
\bo_map|Cs110|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs110|Equal0~0_combout\ = (\bo_map|Rtime|currentState\(5) & (!\bo_map|Rtime|currentState\(4) & (!\bo_map|Rtime|currentState\(7) & \bo_map|Rtime|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(5),
	datab => \bo_map|Rtime|currentState\(4),
	datac => \bo_map|Rtime|currentState\(7),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bo_map|Cs110|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y4_N0
\bo_map|Cs140|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs140|Equal0~1_combout\ = (!\bo_map|Rtime|currentState\(5) & (!\bo_map|Rtime|currentState\(4) & (\bo_map|Rtime|currentState\(7) & \bo_map|Rtime|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(5),
	datab => \bo_map|Rtime|currentState\(4),
	datac => \bo_map|Rtime|currentState\(7),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bo_map|Cs140|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y4_N6
\bo_map|Cs55|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs55|Equal0~1_combout\ = (!\bo_map|Rtime|currentState\(7) & (\bo_map|Rtime|currentState\(5) & (\bo_map|Rtime|currentState\(0) & \bo_map|Rtime|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(7),
	datab => \bo_map|Rtime|currentState\(5),
	datac => \bo_map|Rtime|currentState\(0),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bo_map|Cs55|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y4_N30
\bc_map|nextState.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S5~0_combout\ = (\bo_map|Rtime|currentState\(4) & (\bo_map|Cs55|Equal0~0_combout\ & (\bo_map|Cs55|Equal0~1_combout\ & \bc_map|currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(4),
	datab => \bo_map|Cs55|Equal0~0_combout\,
	datac => \bo_map|Cs55|Equal0~1_combout\,
	datad => \bc_map|currentState.S2~regout\,
	combout => \bc_map|nextState.S5~0_combout\);

-- Location: LCCOMB_X30_Y4_N4
\bc_map|nextState.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S7~0_combout\ = (\bo_map|Rtime|currentState\(1) & (\bc_map|currentState.S2~regout\ & (\bo_map|Cs110|Equal0~1_combout\ & \bo_map|Rtime|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datab => \bc_map|currentState.S2~regout\,
	datac => \bo_map|Cs110|Equal0~1_combout\,
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bc_map|nextState.S7~0_combout\);

-- Location: LCCOMB_X31_Y4_N6
\bc_map|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~0_combout\ = (!\bo_map|Rcktimer|currentState\(2) & (!\bo_map|Rcktimer|currentState\(1) & (!\bo_map|Rcktimer|currentState\(0) & \bc_map|currentState.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(2),
	datab => \bo_map|Rcktimer|currentState\(1),
	datac => \bo_map|Rcktimer|currentState\(0),
	datad => \bc_map|currentState.S0~regout\,
	combout => \bc_map|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y3_N0
\bc_map|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~7_combout\ = (\bo_map|Rcktimer|currentState\(25) & (!\bo_map|Rcktimer|currentState\(24) & \bo_map|Rcktimer|currentState\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(25),
	datac => \bo_map|Rcktimer|currentState\(24),
	datad => \bo_map|Rcktimer|currentState\(23),
	combout => \bc_map|Selector1~7_combout\);

-- Location: LCCOMB_X30_Y4_N26
\bo_map|Cs55|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs55|Equal0~2_combout\ = (\bo_map|Rtime|currentState\(1) & (!\bo_map|Rtime|currentState\(6) & (\bo_map|Rtime|currentState\(4) & !\bo_map|Rtime|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datab => \bo_map|Rtime|currentState\(6),
	datac => \bo_map|Rtime|currentState\(4),
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bo_map|Cs55|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y4_N12
\bc_map|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~1_combout\ = (!\bo_map|Cs45|Equal0~0_combout\ & (!\bo_map|Cs140|Equal0~2_combout\ & ((!\bo_map|Cs55|Equal0~1_combout\) # (!\bo_map|Cs55|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs55|Equal0~2_combout\,
	datab => \bo_map|Cs55|Equal0~1_combout\,
	datac => \bo_map|Cs45|Equal0~0_combout\,
	datad => \bo_map|Cs140|Equal0~2_combout\,
	combout => \bc_map|Selector0~1_combout\);

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

-- Location: LCCOMB_X28_Y4_N20
\bo_map|Rtime|currentState[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[0]~21_combout\ = \bc_map|currentState.S2~regout\ $ (\bo_map|Rtime|currentState\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Rtime|currentState\(0),
	combout => \bo_map|Rtime|currentState[0]~21_combout\);

-- Location: LCCOMB_X29_Y4_N8
\bo_map|Rtime|currentState[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[1]~7_combout\ = (\bo_map|Rtime|currentState\(1) & (\bo_map|Rtime|currentState\(0) $ (VCC))) # (!\bo_map|Rtime|currentState\(1) & (\bo_map|Rtime|currentState\(0) & VCC))
-- \bo_map|Rtime|currentState[1]~8\ = CARRY((\bo_map|Rtime|currentState\(1) & \bo_map|Rtime|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datab => \bo_map|Rtime|currentState\(0),
	datad => VCC,
	combout => \bo_map|Rtime|currentState[1]~7_combout\,
	cout => \bo_map|Rtime|currentState[1]~8\);

-- Location: LCCOMB_X29_Y4_N10
\bo_map|Rtime|currentState[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[2]~9_combout\ = (\bo_map|Rtime|currentState\(2) & (!\bo_map|Rtime|currentState[1]~8\)) # (!\bo_map|Rtime|currentState\(2) & ((\bo_map|Rtime|currentState[1]~8\) # (GND)))
-- \bo_map|Rtime|currentState[2]~10\ = CARRY((!\bo_map|Rtime|currentState[1]~8\) # (!\bo_map|Rtime|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(2),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[1]~8\,
	combout => \bo_map|Rtime|currentState[2]~9_combout\,
	cout => \bo_map|Rtime|currentState[2]~10\);

-- Location: LCCOMB_X29_Y4_N12
\bo_map|Rtime|currentState[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[3]~11_combout\ = (\bo_map|Rtime|currentState\(3) & (\bo_map|Rtime|currentState[2]~10\ $ (GND))) # (!\bo_map|Rtime|currentState\(3) & (!\bo_map|Rtime|currentState[2]~10\ & VCC))
-- \bo_map|Rtime|currentState[3]~12\ = CARRY((\bo_map|Rtime|currentState\(3) & !\bo_map|Rtime|currentState[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(3),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[2]~10\,
	combout => \bo_map|Rtime|currentState[3]~11_combout\,
	cout => \bo_map|Rtime|currentState[3]~12\);

-- Location: LCFF_X29_Y4_N13
\bo_map|Rtime|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[3]~11_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(3));

-- Location: LCCOMB_X30_Y4_N22
\bo_map|Cs140|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs140|Equal0~0_combout\ = (!\bo_map|Rtime|currentState\(1) & \bo_map|Rtime|currentState\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bo_map|Cs140|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y4_N14
\bo_map|Rtime|currentState[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[4]~13_combout\ = (\bo_map|Rtime|currentState\(4) & (!\bo_map|Rtime|currentState[3]~12\)) # (!\bo_map|Rtime|currentState\(4) & ((\bo_map|Rtime|currentState[3]~12\) # (GND)))
-- \bo_map|Rtime|currentState[4]~14\ = CARRY((!\bo_map|Rtime|currentState[3]~12\) # (!\bo_map|Rtime|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(4),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[3]~12\,
	combout => \bo_map|Rtime|currentState[4]~13_combout\,
	cout => \bo_map|Rtime|currentState[4]~14\);

-- Location: LCFF_X29_Y4_N15
\bo_map|Rtime|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[4]~13_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(4));

-- Location: LCCOMB_X29_Y4_N16
\bo_map|Rtime|currentState[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[5]~15_combout\ = (\bo_map|Rtime|currentState\(5) & (\bo_map|Rtime|currentState[4]~14\ $ (GND))) # (!\bo_map|Rtime|currentState\(5) & (!\bo_map|Rtime|currentState[4]~14\ & VCC))
-- \bo_map|Rtime|currentState[5]~16\ = CARRY((\bo_map|Rtime|currentState\(5) & !\bo_map|Rtime|currentState[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(5),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[4]~14\,
	combout => \bo_map|Rtime|currentState[5]~15_combout\,
	cout => \bo_map|Rtime|currentState[5]~16\);

-- Location: LCFF_X29_Y4_N19
\bo_map|Rtime|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[6]~17_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(6));

-- Location: LCCOMB_X30_Y4_N2
\bo_map|Cs140|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs140|Equal0~2_combout\ = (\bo_map|Cs140|Equal0~1_combout\ & (!\bo_map|Rtime|currentState\(0) & (\bo_map|Cs140|Equal0~0_combout\ & !\bo_map|Rtime|currentState\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs140|Equal0~1_combout\,
	datab => \bo_map|Rtime|currentState\(0),
	datac => \bo_map|Cs140|Equal0~0_combout\,
	datad => \bo_map|Rtime|currentState\(6),
	combout => \bo_map|Cs140|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y4_N8
\bc_map|nextState.S8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S8~0_combout\ = (\bc_map|currentState.S2~regout\ & \bo_map|Cs140|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Cs140|Equal0~2_combout\,
	combout => \bc_map|nextState.S8~0_combout\);

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

-- Location: LCFF_X30_Y4_N9
\bc_map|currentState.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S8~regout\);

-- Location: LCCOMB_X30_Y4_N18
\bc_map|currentState.init~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|currentState.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bc_map|currentState.init~feeder_combout\);

-- Location: LCFF_X30_Y4_N19
\bc_map|currentState.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|currentState.init~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.init~regout\);

-- Location: LCCOMB_X29_Y4_N6
\bc_map|rsttime~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|rsttime~0_combout\ = (\bc_map|currentState.S8~regout\) # (!\bc_map|currentState.init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S8~regout\,
	datad => \bc_map|currentState.init~regout\,
	combout => \bc_map|rsttime~0_combout\);

-- Location: LCFF_X29_Y4_N5
\bo_map|Rtime|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \bo_map|Rtime|currentState[0]~21_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(0));

-- Location: LCFF_X29_Y4_N9
\bo_map|Rtime|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[1]~7_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(1));

-- Location: LCCOMB_X30_Y4_N24
\bo_map|Cs110|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs110|Equal0~1_combout\ = (\bo_map|Cs110|Equal0~0_combout\ & (!\bo_map|Rtime|currentState\(0) & \bo_map|Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs110|Equal0~0_combout\,
	datab => \bo_map|Rtime|currentState\(0),
	datad => \bo_map|Rtime|currentState\(6),
	combout => \bo_map|Cs110|Equal0~1_combout\);

-- Location: LCFF_X29_Y4_N17
\bo_map|Rtime|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[5]~15_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(5));

-- Location: LCFF_X29_Y4_N11
\bo_map|Rtime|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[2]~9_combout\,
	aclr => \bc_map|rsttime~0_combout\,
	ena => \bc_map|currentState.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(2));

-- Location: LCCOMB_X29_Y4_N4
\bc_map|NSL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~0_combout\ = (\bo_map|Rtime|currentState\(7) & (!\bo_map|Rtime|currentState\(5) & \bo_map|Rtime|currentState\(2))) # (!\bo_map|Rtime|currentState\(7) & (\bo_map|Rtime|currentState\(5) & !\bo_map|Rtime|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(7),
	datab => \bo_map|Rtime|currentState\(5),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bc_map|NSL~0_combout\);

-- Location: LCCOMB_X29_Y4_N30
\bc_map|NSL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~1_combout\ = (\bo_map|Rtime|currentState\(6) & (!\bo_map|Rtime|currentState\(1) & \bo_map|Rtime|currentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(6),
	datac => \bo_map|Rtime|currentState\(1),
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bc_map|NSL~1_combout\);

-- Location: LCCOMB_X29_Y4_N26
\bo_map|Cs55|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs55|Equal0~0_combout\ = (!\bo_map|Rtime|currentState\(6) & (\bo_map|Rtime|currentState\(1) & !\bo_map|Rtime|currentState\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(6),
	datac => \bo_map|Rtime|currentState\(1),
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bo_map|Cs55|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y4_N28
\bc_map|NSL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~2_combout\ = (\bo_map|Rtime|currentState\(2) & (((\bo_map|Rtime|currentState\(0) & \bo_map|Cs55|Equal0~0_combout\)))) # (!\bo_map|Rtime|currentState\(2) & ((\bo_map|Rtime|currentState\(0) & (\bc_map|NSL~1_combout\)) # 
-- (!\bo_map|Rtime|currentState\(0) & ((\bo_map|Cs55|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(2),
	datab => \bc_map|NSL~1_combout\,
	datac => \bo_map|Rtime|currentState\(0),
	datad => \bo_map|Cs55|Equal0~0_combout\,
	combout => \bc_map|NSL~2_combout\);

-- Location: LCCOMB_X29_Y4_N22
\bc_map|NSL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~3_combout\ = (\bc_map|NSL~0_combout\ & (\bc_map|NSL~2_combout\ & (\bo_map|Rtime|currentState\(0) $ (\bo_map|Rtime|currentState\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(0),
	datab => \bo_map|Rtime|currentState\(4),
	datac => \bc_map|NSL~0_combout\,
	datad => \bc_map|NSL~2_combout\,
	combout => \bc_map|NSL~3_combout\);

-- Location: LCCOMB_X30_Y4_N28
\bc_map|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~0_combout\ = (!\bc_map|NSL~3_combout\ & ((\bo_map|Rtime|currentState\(3) $ (\bo_map|Rtime|currentState\(1))) # (!\bo_map|Cs110|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(3),
	datab => \bo_map|Rtime|currentState\(1),
	datac => \bo_map|Cs110|Equal0~1_combout\,
	datad => \bc_map|NSL~3_combout\,
	combout => \bc_map|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y4_N16
\bc_map|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~2_combout\ = (!\bc_map|Selector1~8_combout\ & (((\bc_map|Selector0~1_combout\ & \bc_map|Selector0~0_combout\)) # (!\bc_map|currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|Selector0~1_combout\,
	datab => \bc_map|currentState.S2~regout\,
	datac => \bc_map|Selector1~8_combout\,
	datad => \bc_map|Selector0~0_combout\,
	combout => \bc_map|Selector0~2_combout\);

-- Location: LCFF_X30_Y4_N17
\bc_map|currentState.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|Selector0~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S0~regout\);

-- Location: LCCOMB_X31_Y4_N4
\bo_map|Rcktimer|currentState[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[0]~25_combout\ = \bo_map|Rcktimer|currentState\(0) $ (\bc_map|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo_map|Rcktimer|currentState\(0),
	datad => \bc_map|currentState.S0~regout\,
	combout => \bo_map|Rcktimer|currentState[0]~25_combout\);

-- Location: LCCOMB_X30_Y4_N10
\bc_map|rstcktimer\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|rstcktimer~combout\ = ((\bc_map|currentState.S8~regout\) # (\bc_map|currentState.S2~regout\)) # (!\bc_map|currentState.init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.init~regout\,
	datac => \bc_map|currentState.S8~regout\,
	datad => \bc_map|currentState.S2~regout\,
	combout => \bc_map|rstcktimer~combout\);

-- Location: LCFF_X31_Y4_N5
\bo_map|Rcktimer|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[0]~25_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(0));

-- Location: LCCOMB_X31_Y4_N14
\bo_map|Rcktimer|currentState[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[4]~32_combout\ = (\bo_map|Rcktimer|currentState\(4) & (!\bo_map|Rcktimer|currentState[3]~31\)) # (!\bo_map|Rcktimer|currentState\(4) & ((\bo_map|Rcktimer|currentState[3]~31\) # (GND)))
-- \bo_map|Rcktimer|currentState[4]~33\ = CARRY((!\bo_map|Rcktimer|currentState[3]~31\) # (!\bo_map|Rcktimer|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(4),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[3]~31\,
	combout => \bo_map|Rcktimer|currentState[4]~32_combout\,
	cout => \bo_map|Rcktimer|currentState[4]~33\);

-- Location: LCFF_X31_Y4_N15
\bo_map|Rcktimer|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[4]~32_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(4));

-- Location: LCCOMB_X31_Y4_N16
\bo_map|Rcktimer|currentState[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[5]~34_combout\ = (\bo_map|Rcktimer|currentState\(5) & (\bo_map|Rcktimer|currentState[4]~33\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(5) & (!\bo_map|Rcktimer|currentState[4]~33\ & VCC))
-- \bo_map|Rcktimer|currentState[5]~35\ = CARRY((\bo_map|Rcktimer|currentState\(5) & !\bo_map|Rcktimer|currentState[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(5),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[4]~33\,
	combout => \bo_map|Rcktimer|currentState[5]~34_combout\,
	cout => \bo_map|Rcktimer|currentState[5]~35\);

-- Location: LCCOMB_X31_Y4_N18
\bo_map|Rcktimer|currentState[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[6]~36_combout\ = (\bo_map|Rcktimer|currentState\(6) & (!\bo_map|Rcktimer|currentState[5]~35\)) # (!\bo_map|Rcktimer|currentState\(6) & ((\bo_map|Rcktimer|currentState[5]~35\) # (GND)))
-- \bo_map|Rcktimer|currentState[6]~37\ = CARRY((!\bo_map|Rcktimer|currentState[5]~35\) # (!\bo_map|Rcktimer|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(6),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[5]~35\,
	combout => \bo_map|Rcktimer|currentState[6]~36_combout\,
	cout => \bo_map|Rcktimer|currentState[6]~37\);

-- Location: LCFF_X31_Y4_N19
\bo_map|Rcktimer|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[6]~36_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(6));

-- Location: LCCOMB_X31_Y4_N22
\bo_map|Rcktimer|currentState[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[8]~40_combout\ = (\bo_map|Rcktimer|currentState\(8) & (!\bo_map|Rcktimer|currentState[7]~39\)) # (!\bo_map|Rcktimer|currentState\(8) & ((\bo_map|Rcktimer|currentState[7]~39\) # (GND)))
-- \bo_map|Rcktimer|currentState[8]~41\ = CARRY((!\bo_map|Rcktimer|currentState[7]~39\) # (!\bo_map|Rcktimer|currentState\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(8),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[7]~39\,
	combout => \bo_map|Rcktimer|currentState[8]~40_combout\,
	cout => \bo_map|Rcktimer|currentState[8]~41\);

-- Location: LCFF_X31_Y4_N23
\bo_map|Rcktimer|currentState[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[8]~40_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(8));

-- Location: LCCOMB_X31_Y4_N24
\bo_map|Rcktimer|currentState[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[9]~42_combout\ = (\bo_map|Rcktimer|currentState\(9) & (\bo_map|Rcktimer|currentState[8]~41\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(9) & (!\bo_map|Rcktimer|currentState[8]~41\ & VCC))
-- \bo_map|Rcktimer|currentState[9]~43\ = CARRY((\bo_map|Rcktimer|currentState\(9) & !\bo_map|Rcktimer|currentState[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(9),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[8]~41\,
	combout => \bo_map|Rcktimer|currentState[9]~42_combout\,
	cout => \bo_map|Rcktimer|currentState[9]~43\);

-- Location: LCCOMB_X31_Y4_N26
\bo_map|Rcktimer|currentState[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[10]~44_combout\ = (\bo_map|Rcktimer|currentState\(10) & (!\bo_map|Rcktimer|currentState[9]~43\)) # (!\bo_map|Rcktimer|currentState\(10) & ((\bo_map|Rcktimer|currentState[9]~43\) # (GND)))
-- \bo_map|Rcktimer|currentState[10]~45\ = CARRY((!\bo_map|Rcktimer|currentState[9]~43\) # (!\bo_map|Rcktimer|currentState\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(10),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[9]~43\,
	combout => \bo_map|Rcktimer|currentState[10]~44_combout\,
	cout => \bo_map|Rcktimer|currentState[10]~45\);

-- Location: LCFF_X31_Y4_N27
\bo_map|Rcktimer|currentState[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[10]~44_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(10));

-- Location: LCCOMB_X31_Y4_N28
\bo_map|Rcktimer|currentState[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[11]~46_combout\ = (\bo_map|Rcktimer|currentState\(11) & (\bo_map|Rcktimer|currentState[10]~45\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(11) & (!\bo_map|Rcktimer|currentState[10]~45\ & VCC))
-- \bo_map|Rcktimer|currentState[11]~47\ = CARRY((\bo_map|Rcktimer|currentState\(11) & !\bo_map|Rcktimer|currentState[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(11),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[10]~45\,
	combout => \bo_map|Rcktimer|currentState[11]~46_combout\,
	cout => \bo_map|Rcktimer|currentState[11]~47\);

-- Location: LCFF_X31_Y4_N29
\bo_map|Rcktimer|currentState[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[11]~46_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(11));

-- Location: LCCOMB_X31_Y4_N30
\bo_map|Rcktimer|currentState[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[12]~48_combout\ = (\bo_map|Rcktimer|currentState\(12) & (!\bo_map|Rcktimer|currentState[11]~47\)) # (!\bo_map|Rcktimer|currentState\(12) & ((\bo_map|Rcktimer|currentState[11]~47\) # (GND)))
-- \bo_map|Rcktimer|currentState[12]~49\ = CARRY((!\bo_map|Rcktimer|currentState[11]~47\) # (!\bo_map|Rcktimer|currentState\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(12),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[11]~47\,
	combout => \bo_map|Rcktimer|currentState[12]~48_combout\,
	cout => \bo_map|Rcktimer|currentState[12]~49\);

-- Location: LCFF_X31_Y4_N31
\bo_map|Rcktimer|currentState[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[12]~48_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(12));

-- Location: LCCOMB_X31_Y3_N0
\bo_map|Rcktimer|currentState[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[13]~50_combout\ = (\bo_map|Rcktimer|currentState\(13) & (\bo_map|Rcktimer|currentState[12]~49\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(13) & (!\bo_map|Rcktimer|currentState[12]~49\ & VCC))
-- \bo_map|Rcktimer|currentState[13]~51\ = CARRY((\bo_map|Rcktimer|currentState\(13) & !\bo_map|Rcktimer|currentState[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(13),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[12]~49\,
	combout => \bo_map|Rcktimer|currentState[13]~50_combout\,
	cout => \bo_map|Rcktimer|currentState[13]~51\);

-- Location: LCFF_X31_Y3_N1
\bo_map|Rcktimer|currentState[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[13]~50_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(13));

-- Location: LCCOMB_X31_Y3_N2
\bo_map|Rcktimer|currentState[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[14]~52_combout\ = (\bo_map|Rcktimer|currentState\(14) & (!\bo_map|Rcktimer|currentState[13]~51\)) # (!\bo_map|Rcktimer|currentState\(14) & ((\bo_map|Rcktimer|currentState[13]~51\) # (GND)))
-- \bo_map|Rcktimer|currentState[14]~53\ = CARRY((!\bo_map|Rcktimer|currentState[13]~51\) # (!\bo_map|Rcktimer|currentState\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(14),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[13]~51\,
	combout => \bo_map|Rcktimer|currentState[14]~52_combout\,
	cout => \bo_map|Rcktimer|currentState[14]~53\);

-- Location: LCFF_X31_Y3_N3
\bo_map|Rcktimer|currentState[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[14]~52_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(14));

-- Location: LCCOMB_X31_Y3_N4
\bo_map|Rcktimer|currentState[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[15]~54_combout\ = (\bo_map|Rcktimer|currentState\(15) & (\bo_map|Rcktimer|currentState[14]~53\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(15) & (!\bo_map|Rcktimer|currentState[14]~53\ & VCC))
-- \bo_map|Rcktimer|currentState[15]~55\ = CARRY((\bo_map|Rcktimer|currentState\(15) & !\bo_map|Rcktimer|currentState[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(15),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[14]~53\,
	combout => \bo_map|Rcktimer|currentState[15]~54_combout\,
	cout => \bo_map|Rcktimer|currentState[15]~55\);

-- Location: LCFF_X31_Y3_N5
\bo_map|Rcktimer|currentState[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[15]~54_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(15));

-- Location: LCCOMB_X31_Y3_N6
\bo_map|Rcktimer|currentState[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[16]~56_combout\ = (\bo_map|Rcktimer|currentState\(16) & (!\bo_map|Rcktimer|currentState[15]~55\)) # (!\bo_map|Rcktimer|currentState\(16) & ((\bo_map|Rcktimer|currentState[15]~55\) # (GND)))
-- \bo_map|Rcktimer|currentState[16]~57\ = CARRY((!\bo_map|Rcktimer|currentState[15]~55\) # (!\bo_map|Rcktimer|currentState\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(16),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[15]~55\,
	combout => \bo_map|Rcktimer|currentState[16]~56_combout\,
	cout => \bo_map|Rcktimer|currentState[16]~57\);

-- Location: LCCOMB_X31_Y3_N8
\bo_map|Rcktimer|currentState[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[17]~58_combout\ = (\bo_map|Rcktimer|currentState\(17) & (\bo_map|Rcktimer|currentState[16]~57\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(17) & (!\bo_map|Rcktimer|currentState[16]~57\ & VCC))
-- \bo_map|Rcktimer|currentState[17]~59\ = CARRY((\bo_map|Rcktimer|currentState\(17) & !\bo_map|Rcktimer|currentState[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(17),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[16]~57\,
	combout => \bo_map|Rcktimer|currentState[17]~58_combout\,
	cout => \bo_map|Rcktimer|currentState[17]~59\);

-- Location: LCFF_X31_Y3_N9
\bo_map|Rcktimer|currentState[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[17]~58_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(17));

-- Location: LCFF_X31_Y3_N7
\bo_map|Rcktimer|currentState[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[16]~56_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(16));

-- Location: LCCOMB_X31_Y3_N28
\bc_map|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~5_combout\ = (!\bo_map|Rcktimer|currentState\(18) & (\bo_map|Rcktimer|currentState\(17) & (\bo_map|Rcktimer|currentState\(15) & !\bo_map|Rcktimer|currentState\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(18),
	datab => \bo_map|Rcktimer|currentState\(17),
	datac => \bo_map|Rcktimer|currentState\(15),
	datad => \bo_map|Rcktimer|currentState\(16),
	combout => \bc_map|Selector1~5_combout\);

-- Location: LCCOMB_X31_Y3_N12
\bo_map|Rcktimer|currentState[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[19]~62_combout\ = (\bo_map|Rcktimer|currentState\(19) & (\bo_map|Rcktimer|currentState[18]~61\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(19) & (!\bo_map|Rcktimer|currentState[18]~61\ & VCC))
-- \bo_map|Rcktimer|currentState[19]~63\ = CARRY((\bo_map|Rcktimer|currentState\(19) & !\bo_map|Rcktimer|currentState[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(19),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[18]~61\,
	combout => \bo_map|Rcktimer|currentState[19]~62_combout\,
	cout => \bo_map|Rcktimer|currentState[19]~63\);

-- Location: LCCOMB_X31_Y3_N14
\bo_map|Rcktimer|currentState[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[20]~64_combout\ = (\bo_map|Rcktimer|currentState\(20) & (!\bo_map|Rcktimer|currentState[19]~63\)) # (!\bo_map|Rcktimer|currentState\(20) & ((\bo_map|Rcktimer|currentState[19]~63\) # (GND)))
-- \bo_map|Rcktimer|currentState[20]~65\ = CARRY((!\bo_map|Rcktimer|currentState[19]~63\) # (!\bo_map|Rcktimer|currentState\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(20),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[19]~63\,
	combout => \bo_map|Rcktimer|currentState[20]~64_combout\,
	cout => \bo_map|Rcktimer|currentState[20]~65\);

-- Location: LCFF_X31_Y3_N15
\bo_map|Rcktimer|currentState[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[20]~64_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(20));

-- Location: LCFF_X31_Y3_N19
\bo_map|Rcktimer|currentState[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[22]~68_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(22));

-- Location: LCFF_X31_Y3_N13
\bo_map|Rcktimer|currentState[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[19]~62_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(19));

-- Location: LCCOMB_X31_Y3_N30
\bc_map|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~6_combout\ = (\bo_map|Rcktimer|currentState\(21) & (\bo_map|Rcktimer|currentState\(22) & (\bo_map|Rcktimer|currentState\(20) & \bo_map|Rcktimer|currentState\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(21),
	datab => \bo_map|Rcktimer|currentState\(22),
	datac => \bo_map|Rcktimer|currentState\(20),
	datad => \bo_map|Rcktimer|currentState\(19),
	combout => \bc_map|Selector1~6_combout\);

-- Location: LCFF_X31_Y4_N17
\bo_map|Rcktimer|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[5]~34_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(5));

-- Location: LCCOMB_X31_Y4_N0
\bc_map|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~1_combout\ = (!\bo_map|Rcktimer|currentState\(3) & (!\bo_map|Rcktimer|currentState\(4) & (!\bo_map|Rcktimer|currentState\(5) & !\bo_map|Rcktimer|currentState\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(3),
	datab => \bo_map|Rcktimer|currentState\(4),
	datac => \bo_map|Rcktimer|currentState\(5),
	datad => \bo_map|Rcktimer|currentState\(6),
	combout => \bc_map|Selector1~1_combout\);

-- Location: LCFF_X31_Y4_N25
\bo_map|Rcktimer|currentState[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[9]~42_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	ena => \bc_map|currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(9));

-- Location: LCCOMB_X32_Y4_N8
\bc_map|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~2_combout\ = (\bo_map|Rcktimer|currentState\(7) & (!\bo_map|Rcktimer|currentState\(10) & (!\bo_map|Rcktimer|currentState\(8) & !\bo_map|Rcktimer|currentState\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(7),
	datab => \bo_map|Rcktimer|currentState\(10),
	datac => \bo_map|Rcktimer|currentState\(8),
	datad => \bo_map|Rcktimer|currentState\(9),
	combout => \bc_map|Selector1~2_combout\);

-- Location: LCCOMB_X31_Y3_N26
\bc_map|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~3_combout\ = (\bo_map|Rcktimer|currentState\(14) & (\bo_map|Rcktimer|currentState\(13) & (\bo_map|Rcktimer|currentState\(12) & !\bo_map|Rcktimer|currentState\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(14),
	datab => \bo_map|Rcktimer|currentState\(13),
	datac => \bo_map|Rcktimer|currentState\(12),
	datad => \bo_map|Rcktimer|currentState\(11),
	combout => \bc_map|Selector1~3_combout\);

-- Location: LCCOMB_X31_Y4_N2
\bc_map|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~4_combout\ = (\bc_map|Selector1~0_combout\ & (\bc_map|Selector1~1_combout\ & (\bc_map|Selector1~2_combout\ & \bc_map|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|Selector1~0_combout\,
	datab => \bc_map|Selector1~1_combout\,
	datac => \bc_map|Selector1~2_combout\,
	datad => \bc_map|Selector1~3_combout\,
	combout => \bc_map|Selector1~4_combout\);

-- Location: LCCOMB_X30_Y4_N14
\bc_map|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector1~8_combout\ = (\bc_map|Selector1~7_combout\ & (\bc_map|Selector1~5_combout\ & (\bc_map|Selector1~6_combout\ & \bc_map|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|Selector1~7_combout\,
	datab => \bc_map|Selector1~5_combout\,
	datac => \bc_map|Selector1~6_combout\,
	datad => \bc_map|Selector1~4_combout\,
	combout => \bc_map|Selector1~8_combout\);

-- Location: LCFF_X30_Y4_N23
\bc_map|currentState.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \bc_map|Selector1~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S2~regout\);

-- Location: LCCOMB_X30_Y4_N20
\bo_map|Cs45|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs45|Equal0~0_combout\ = (\bo_map|Cs110|Equal0~0_combout\ & (\bo_map|Rtime|currentState\(0) & (\bo_map|Cs140|Equal0~0_combout\ & !\bo_map|Rtime|currentState\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs110|Equal0~0_combout\,
	datab => \bo_map|Rtime|currentState\(0),
	datac => \bo_map|Cs140|Equal0~0_combout\,
	datad => \bo_map|Rtime|currentState\(6),
	combout => \bo_map|Cs45|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y4_N30
\bc_map|nextState.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S3~0_combout\ = (\bc_map|currentState.S2~regout\ & \bo_map|Cs45|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Cs45|Equal0~0_combout\,
	combout => \bc_map|nextState.S3~0_combout\);

-- Location: LCFF_X27_Y4_N31
\bc_map|currentState.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S3~regout\);

-- Location: LCCOMB_X29_Y4_N24
\bc_map|nextState.S4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S4~0_combout\ = (\bc_map|currentState.S2~regout\ & \bc_map|NSL~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S2~regout\,
	datad => \bc_map|NSL~3_combout\,
	combout => \bc_map|nextState.S4~0_combout\);

-- Location: LCFF_X29_Y4_N25
\bc_map|currentState.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S4~regout\);

-- Location: LCCOMB_X28_Y4_N24
\bo_map|MNS|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MNS|Mux2~0_combout\ = (!\bc_map|currentState.S3~regout\ & !\bc_map|currentState.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S3~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bo_map|MNS|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\bc_map|eNS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|eNS~0_combout\ = (\bc_map|currentState.S8~regout\) # (((\bc_map|currentState.S3~regout\) # (\bc_map|currentState.S4~regout\)) # (!\bc_map|currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S8~regout\,
	datab => \bc_map|currentState.init~regout\,
	datac => \bc_map|currentState.S3~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bc_map|eNS~0_combout\);

-- Location: LCFF_X28_Y4_N25
\bo_map|RNS|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|MNS|Mux2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \bc_map|eNS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(0));

-- Location: LCFF_X28_Y4_N27
\bo_map|RNS|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \bc_map|currentState.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \bc_map|eNS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(1));

-- Location: LCCOMB_X28_Y4_N8
\bo_map|MNS|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MNS|Mux0~0_combout\ = (!\bc_map|currentState.S3~regout\ & \bc_map|currentState.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S3~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bo_map|MNS|Mux0~0_combout\);

-- Location: LCFF_X28_Y4_N9
\bo_map|RNS|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|MNS|Mux0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \bc_map|eNS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(2));

-- Location: LCCOMB_X30_Y4_N0
\bc_map|nextState.S6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S6~0_combout\ = (!\bo_map|Rtime|currentState\(1) & (\bc_map|currentState.S2~regout\ & (\bo_map|Cs110|Equal0~1_combout\ & !\bo_map|Rtime|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datab => \bc_map|currentState.S2~regout\,
	datac => \bo_map|Cs110|Equal0~1_combout\,
	datad => \bo_map|Rtime|currentState\(3),
	combout => \bc_map|nextState.S6~0_combout\);

-- Location: LCFF_X30_Y4_N1
\bc_map|currentState.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|nextState.S6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S6~regout\);

-- Location: LCCOMB_X28_Y4_N10
\bc_map|eEW~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|eEW~0_combout\ = (\bc_map|currentState.init~regout\ & (!\bc_map|currentState.S6~regout\ & !\bc_map|currentState.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.init~regout\,
	datac => \bc_map|currentState.S6~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bc_map|eEW~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\bc_map|eEW\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|eEW~combout\ = (\bc_map|currentState.S5~regout\) # (((\bc_map|currentState.S6~regout\) # (\bc_map|currentState.S4~regout\)) # (!\bc_map|currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S5~regout\,
	datab => \bc_map|currentState.init~regout\,
	datac => \bc_map|currentState.S6~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bc_map|eEW~combout\);

-- Location: LCFF_X28_Y4_N11
\bo_map|REW|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc_map|eEW~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \bc_map|eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(0));

-- Location: LCFF_X28_Y4_N13
\bo_map|REW|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \bc_map|currentState.S6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \bc_map|eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(1));

-- Location: LCCOMB_X28_Y4_N22
\bo_map|MEW|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MEW|Mux0~0_combout\ = (!\bc_map|currentState.S6~regout\ & ((\bc_map|currentState.S4~regout\) # (!\bc_map|currentState.init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.init~regout\,
	datac => \bc_map|currentState.S6~regout\,
	datad => \bc_map|currentState.S4~regout\,
	combout => \bo_map|MEW|Mux0~0_combout\);

-- Location: LCFF_X28_Y4_N23
\bo_map|REW|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|MEW|Mux0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \bc_map|eEW~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(2));

-- Location: LCCOMB_X27_Y4_N8
\bo_map|RP|currentState[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|RP|currentState[0]~0_combout\ = (!\bc_map|currentState.S4~regout\ & (\bc_map|currentState.init~regout\ & ((\bc_map|currentState.S7~regout\) # (\bo_map|RP|currentState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S7~regout\,
	datab => \bc_map|currentState.S4~regout\,
	datac => \bo_map|RP|currentState\(0),
	datad => \bc_map|currentState.init~regout\,
	combout => \bo_map|RP|currentState[0]~0_combout\);

-- Location: LCFF_X27_Y4_N9
\bo_map|RP|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo_map|RP|currentState[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RP|currentState\(0));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|RNS|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(0));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|RNS|currentState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(1));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|RNS|currentState\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NS(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|REW|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|REW|currentState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(1));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|REW|currentState\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EW(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo_map|RP|currentState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P(0));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


