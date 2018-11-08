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

-- DATE "11/07/2018 23:28:30"

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
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END traffic_light_top;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo_map|Rcktimer|currentState[1]~25_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[16]~55_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[18]~59_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[21]~65_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[24]~72\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[25]~73_combout\ : std_logic;
SIGNAL \bc_map|Selector0~2_combout\ : std_logic;
SIGNAL \bc_map|Selector0~5_combout\ : std_logic;
SIGNAL \bo_map|Cs45|Equal0~1_combout\ : std_logic;
SIGNAL \bc_map|NSL~1_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[0]~75_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[1]~7_combout\ : std_logic;
SIGNAL \bc_map|currentState.init~feeder_combout\ : std_logic;
SIGNAL \bc_map|currentState.init~regout\ : std_logic;
SIGNAL \bc_map|rstcktimer~0_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[1]~8\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[2]~9_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[2]~10\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[3]~11_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[3]~12\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[4]~13_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[0]~21_combout\ : std_logic;
SIGNAL \bo_map|Cs140|Equal0~0_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[4]~14\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[5]~15_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[5]~16\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[6]~18\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[7]~19_combout\ : std_logic;
SIGNAL \bo_map|Cs140|Equal0~1_combout\ : std_logic;
SIGNAL \bc_map|nextState.S8~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S8~regout\ : std_logic;
SIGNAL \bc_map|currentState.S2~feeder_combout\ : std_logic;
SIGNAL \bc_map|currentState.S2~regout\ : std_logic;
SIGNAL \bc_map|rstcktimer~combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[1]~26\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[2]~28\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[3]~29_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[3]~30\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[4]~31_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[4]~32\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[5]~33_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[5]~34\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[6]~35_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[6]~36\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[7]~37_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[7]~38\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[8]~39_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[8]~40\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[9]~41_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[9]~42\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[10]~43_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[10]~44\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[11]~45_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[11]~46\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[12]~47_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[12]~48\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[13]~49_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[13]~feeder_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[13]~50\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[14]~51_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[14]~52\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[15]~53_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[15]~54\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[16]~56\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[17]~57_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[17]~58\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[18]~60\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[19]~62\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[20]~63_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[20]~64\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[21]~66\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[22]~67_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[19]~61_combout\ : std_logic;
SIGNAL \bc_map|Selector0~6_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[22]~68\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[23]~69_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[23]~70\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[24]~71_combout\ : std_logic;
SIGNAL \bc_map|Selector0~7_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState[2]~27_combout\ : std_logic;
SIGNAL \bc_map|Selector0~0_combout\ : std_logic;
SIGNAL \bc_map|Selector0~3_combout\ : std_logic;
SIGNAL \bc_map|Selector0~1_combout\ : std_logic;
SIGNAL \bc_map|Selector0~4_combout\ : std_logic;
SIGNAL \bc_map|Selector0~8_combout\ : std_logic;
SIGNAL \bo_map|Rtime|currentState[6]~17_combout\ : std_logic;
SIGNAL \bo_map|Cs55|Equal0~0_combout\ : std_logic;
SIGNAL \bo_map|Cs100|Equal0~0_combout\ : std_logic;
SIGNAL \bo_map|Cs55|Equal0~1_combout\ : std_logic;
SIGNAL \bo_map|Cs110|Equal0~0_combout\ : std_logic;
SIGNAL \bc_map|Selector0~10_combout\ : std_logic;
SIGNAL \bo_map|Cs100|Equal0~1_combout\ : std_logic;
SIGNAL \bo_map|Cs100|Equal0~2_combout\ : std_logic;
SIGNAL \bo_map|Cs45|Equal0~0_combout\ : std_logic;
SIGNAL \bc_map|NSL~0_combout\ : std_logic;
SIGNAL \bc_map|NSL~2_combout\ : std_logic;
SIGNAL \bc_map|NSL~3_combout\ : std_logic;
SIGNAL \bc_map|Selector0~9_combout\ : std_logic;
SIGNAL \bc_map|Selector0~11_combout\ : std_logic;
SIGNAL \bc_map|currentState.S0~regout\ : std_logic;
SIGNAL \bc_map|nextState.S7~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S7~regout\ : std_logic;
SIGNAL \bc_map|cMuxP~0_combout\ : std_logic;
SIGNAL \bo_map|RP|currentState[0]~0_combout\ : std_logic;
SIGNAL \bo_map|RP|currentState[1]~feeder_combout\ : std_logic;
SIGNAL \bc_map|nextState.S5~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S5~regout\ : std_logic;
SIGNAL \bo_map|MEW|Equal2~0_combout\ : std_logic;
SIGNAL \bc_map|nextState.S6~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S6~regout\ : std_logic;
SIGNAL \bo_map|MEW|Equal2~1_combout\ : std_logic;
SIGNAL \bc_map|nextState.S3~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S3~regout\ : std_logic;
SIGNAL \bc_map|nextState.S4~0_combout\ : std_logic;
SIGNAL \bc_map|currentState.S4~regout\ : std_logic;
SIGNAL \bo_map|MNS|Equal2~0_combout\ : std_logic;
SIGNAL \bo_map|MNS|Equal2~1_combout\ : std_logic;
SIGNAL \bo_map|MNS|Equal2~2_combout\ : std_logic;
SIGNAL \bo_map|Rcktimer|currentState\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bo_map|Rtime|currentState\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo_map|RNS|currentState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bo_map|RP|currentState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \bo_map|REW|currentState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X61_Y4_N9
\bo_map|Rcktimer|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[1]~25_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(1));

-- Location: LCFF_X61_Y3_N7
\bo_map|Rcktimer|currentState[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[16]~55_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(16));

-- Location: LCFF_X61_Y3_N11
\bo_map|Rcktimer|currentState[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[18]~59_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(18));

-- Location: LCFF_X61_Y3_N17
\bo_map|Rcktimer|currentState[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[21]~65_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(21));

-- Location: LCFF_X61_Y3_N25
\bo_map|Rcktimer|currentState[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[25]~73_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(25));

-- Location: LCCOMB_X61_Y4_N8
\bo_map|Rcktimer|currentState[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[1]~25_combout\ = (\bo_map|Rcktimer|currentState\(1) & (\bo_map|Rcktimer|currentState\(0) $ (VCC))) # (!\bo_map|Rcktimer|currentState\(1) & (\bo_map|Rcktimer|currentState\(0) & VCC))
-- \bo_map|Rcktimer|currentState[1]~26\ = CARRY((\bo_map|Rcktimer|currentState\(1) & \bo_map|Rcktimer|currentState\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(1),
	datab => \bo_map|Rcktimer|currentState\(0),
	datad => VCC,
	combout => \bo_map|Rcktimer|currentState[1]~25_combout\,
	cout => \bo_map|Rcktimer|currentState[1]~26\);

-- Location: LCCOMB_X61_Y3_N6
\bo_map|Rcktimer|currentState[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[16]~55_combout\ = (\bo_map|Rcktimer|currentState\(16) & (!\bo_map|Rcktimer|currentState[15]~54\)) # (!\bo_map|Rcktimer|currentState\(16) & ((\bo_map|Rcktimer|currentState[15]~54\) # (GND)))
-- \bo_map|Rcktimer|currentState[16]~56\ = CARRY((!\bo_map|Rcktimer|currentState[15]~54\) # (!\bo_map|Rcktimer|currentState\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(16),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[15]~54\,
	combout => \bo_map|Rcktimer|currentState[16]~55_combout\,
	cout => \bo_map|Rcktimer|currentState[16]~56\);

-- Location: LCCOMB_X61_Y3_N10
\bo_map|Rcktimer|currentState[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[18]~59_combout\ = (\bo_map|Rcktimer|currentState\(18) & (!\bo_map|Rcktimer|currentState[17]~58\)) # (!\bo_map|Rcktimer|currentState\(18) & ((\bo_map|Rcktimer|currentState[17]~58\) # (GND)))
-- \bo_map|Rcktimer|currentState[18]~60\ = CARRY((!\bo_map|Rcktimer|currentState[17]~58\) # (!\bo_map|Rcktimer|currentState\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(18),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[17]~58\,
	combout => \bo_map|Rcktimer|currentState[18]~59_combout\,
	cout => \bo_map|Rcktimer|currentState[18]~60\);

-- Location: LCCOMB_X61_Y3_N16
\bo_map|Rcktimer|currentState[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[21]~65_combout\ = (\bo_map|Rcktimer|currentState\(21) & (\bo_map|Rcktimer|currentState[20]~64\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(21) & (!\bo_map|Rcktimer|currentState[20]~64\ & VCC))
-- \bo_map|Rcktimer|currentState[21]~66\ = CARRY((\bo_map|Rcktimer|currentState\(21) & !\bo_map|Rcktimer|currentState[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(21),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[20]~64\,
	combout => \bo_map|Rcktimer|currentState[21]~65_combout\,
	cout => \bo_map|Rcktimer|currentState[21]~66\);

-- Location: LCCOMB_X61_Y3_N22
\bo_map|Rcktimer|currentState[24]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[24]~71_combout\ = (\bo_map|Rcktimer|currentState\(24) & (!\bo_map|Rcktimer|currentState[23]~70\)) # (!\bo_map|Rcktimer|currentState\(24) & ((\bo_map|Rcktimer|currentState[23]~70\) # (GND)))
-- \bo_map|Rcktimer|currentState[24]~72\ = CARRY((!\bo_map|Rcktimer|currentState[23]~70\) # (!\bo_map|Rcktimer|currentState\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(24),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[23]~70\,
	combout => \bo_map|Rcktimer|currentState[24]~71_combout\,
	cout => \bo_map|Rcktimer|currentState[24]~72\);

-- Location: LCCOMB_X61_Y3_N24
\bo_map|Rcktimer|currentState[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[25]~73_combout\ = \bo_map|Rcktimer|currentState\(25) $ (!\bo_map|Rcktimer|currentState[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(25),
	cin => \bo_map|Rcktimer|currentState[24]~72\,
	combout => \bo_map|Rcktimer|currentState[25]~73_combout\);

-- Location: LCCOMB_X61_Y4_N0
\bc_map|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~2_combout\ = (\bo_map|Rcktimer|currentState\(9)) # ((\bo_map|Rcktimer|currentState\(7)) # ((\bo_map|Rcktimer|currentState\(10)) # (!\bo_map|Rcktimer|currentState\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(9),
	datab => \bo_map|Rcktimer|currentState\(7),
	datac => \bo_map|Rcktimer|currentState\(8),
	datad => \bo_map|Rcktimer|currentState\(10),
	combout => \bc_map|Selector0~2_combout\);

-- Location: LCCOMB_X61_Y3_N30
\bc_map|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~5_combout\ = (((!\bo_map|Rcktimer|currentState\(16)) # (!\bo_map|Rcktimer|currentState\(15))) # (!\bo_map|Rcktimer|currentState\(17))) # (!\bo_map|Rcktimer|currentState\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(18),
	datab => \bo_map|Rcktimer|currentState\(17),
	datac => \bo_map|Rcktimer|currentState\(15),
	datad => \bo_map|Rcktimer|currentState\(16),
	combout => \bc_map|Selector0~5_combout\);

-- Location: LCCOMB_X62_Y4_N6
\bo_map|Cs45|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs45|Equal0~1_combout\ = (\bo_map|Rtime|currentState\(2) & (\bo_map|Rtime|currentState\(0) & !\bo_map|Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(2),
	datab => \bo_map|Rtime|currentState\(0),
	datad => \bo_map|Rtime|currentState\(6),
	combout => \bo_map|Cs45|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y4_N20
\bc_map|NSL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~1_combout\ = (\bo_map|Rtime|currentState\(6) & (\bo_map|Rtime|currentState\(0) & (!\bo_map|Rtime|currentState\(2) & !\bo_map|Rtime|currentState\(4)))) # (!\bo_map|Rtime|currentState\(6) & ((\bo_map|Rtime|currentState\(2) $ 
-- (\bo_map|Rtime|currentState\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datab => \bo_map|Rtime|currentState\(0),
	datac => \bo_map|Rtime|currentState\(2),
	datad => \bo_map|Rtime|currentState\(4),
	combout => \bc_map|NSL~1_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y4_N4
\bo_map|Rcktimer|currentState[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[0]~75_combout\ = !\bo_map|Rcktimer|currentState\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo_map|Rcktimer|currentState\(0),
	combout => \bo_map|Rcktimer|currentState[0]~75_combout\);

-- Location: LCCOMB_X63_Y4_N0
\bo_map|Rtime|currentState[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[1]~7_combout\ = (\bo_map|Rtime|currentState\(0) & (\bo_map|Rtime|currentState\(1) $ (VCC))) # (!\bo_map|Rtime|currentState\(0) & (\bo_map|Rtime|currentState\(1) & VCC))
-- \bo_map|Rtime|currentState[1]~8\ = CARRY((\bo_map|Rtime|currentState\(0) & \bo_map|Rtime|currentState\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(0),
	datab => \bo_map|Rtime|currentState\(1),
	datad => VCC,
	combout => \bo_map|Rtime|currentState[1]~7_combout\,
	cout => \bo_map|Rtime|currentState[1]~8\);

-- Location: LCCOMB_X62_Y4_N24
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

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X62_Y4_N25
\bc_map|currentState.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|currentState.init~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.init~regout\);

-- Location: LCCOMB_X63_Y4_N26
\bc_map|rstcktimer~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|rstcktimer~0_combout\ = (\bc_map|currentState.S8~regout\) # (!\bc_map|currentState.init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S8~regout\,
	datad => \bc_map|currentState.init~regout\,
	combout => \bc_map|rstcktimer~0_combout\);

-- Location: LCFF_X63_Y4_N1
\bo_map|Rtime|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[1]~7_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(1));

-- Location: LCCOMB_X63_Y4_N2
\bo_map|Rtime|currentState[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[2]~9_combout\ = (\bo_map|Rtime|currentState\(2) & (!\bo_map|Rtime|currentState[1]~8\)) # (!\bo_map|Rtime|currentState\(2) & ((\bo_map|Rtime|currentState[1]~8\) # (GND)))
-- \bo_map|Rtime|currentState[2]~10\ = CARRY((!\bo_map|Rtime|currentState[1]~8\) # (!\bo_map|Rtime|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(2),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[1]~8\,
	combout => \bo_map|Rtime|currentState[2]~9_combout\,
	cout => \bo_map|Rtime|currentState[2]~10\);

-- Location: LCFF_X63_Y4_N3
\bo_map|Rtime|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[2]~9_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(2));

-- Location: LCCOMB_X63_Y4_N4
\bo_map|Rtime|currentState[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[3]~11_combout\ = (\bo_map|Rtime|currentState\(3) & (\bo_map|Rtime|currentState[2]~10\ $ (GND))) # (!\bo_map|Rtime|currentState\(3) & (!\bo_map|Rtime|currentState[2]~10\ & VCC))
-- \bo_map|Rtime|currentState[3]~12\ = CARRY((\bo_map|Rtime|currentState\(3) & !\bo_map|Rtime|currentState[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(3),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[2]~10\,
	combout => \bo_map|Rtime|currentState[3]~11_combout\,
	cout => \bo_map|Rtime|currentState[3]~12\);

-- Location: LCFF_X63_Y4_N5
\bo_map|Rtime|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[3]~11_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(3));

-- Location: LCCOMB_X63_Y4_N6
\bo_map|Rtime|currentState[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[4]~13_combout\ = (\bo_map|Rtime|currentState\(4) & (!\bo_map|Rtime|currentState[3]~12\)) # (!\bo_map|Rtime|currentState\(4) & ((\bo_map|Rtime|currentState[3]~12\) # (GND)))
-- \bo_map|Rtime|currentState[4]~14\ = CARRY((!\bo_map|Rtime|currentState[3]~12\) # (!\bo_map|Rtime|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(4),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[3]~12\,
	combout => \bo_map|Rtime|currentState[4]~13_combout\,
	cout => \bo_map|Rtime|currentState[4]~14\);

-- Location: LCFF_X63_Y4_N7
\bo_map|Rtime|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[4]~13_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(4));

-- Location: LCCOMB_X64_Y4_N16
\bo_map|Rtime|currentState[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[0]~21_combout\ = !\bo_map|Rtime|currentState\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo_map|Rtime|currentState\(0),
	combout => \bo_map|Rtime|currentState[0]~21_combout\);

-- Location: LCFF_X63_Y4_N23
\bo_map|Rtime|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \bo_map|Rtime|currentState[0]~21_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(0));

-- Location: LCCOMB_X64_Y4_N28
\bo_map|Cs140|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs140|Equal0~0_combout\ = (\bo_map|Rtime|currentState\(2) & (\bo_map|Rtime|currentState\(3) & (!\bo_map|Rtime|currentState\(4) & !\bo_map|Rtime|currentState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(2),
	datab => \bo_map|Rtime|currentState\(3),
	datac => \bo_map|Rtime|currentState\(4),
	datad => \bo_map|Rtime|currentState\(0),
	combout => \bo_map|Cs140|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y4_N8
\bo_map|Rtime|currentState[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[5]~15_combout\ = (\bo_map|Rtime|currentState\(5) & (\bo_map|Rtime|currentState[4]~14\ $ (GND))) # (!\bo_map|Rtime|currentState\(5) & (!\bo_map|Rtime|currentState[4]~14\ & VCC))
-- \bo_map|Rtime|currentState[5]~16\ = CARRY((\bo_map|Rtime|currentState\(5) & !\bo_map|Rtime|currentState[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rtime|currentState\(5),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[4]~14\,
	combout => \bo_map|Rtime|currentState[5]~15_combout\,
	cout => \bo_map|Rtime|currentState[5]~16\);

-- Location: LCFF_X63_Y4_N9
\bo_map|Rtime|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[5]~15_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(5));

-- Location: LCCOMB_X63_Y4_N10
\bo_map|Rtime|currentState[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[6]~17_combout\ = (\bo_map|Rtime|currentState\(6) & (!\bo_map|Rtime|currentState[5]~16\)) # (!\bo_map|Rtime|currentState\(6) & ((\bo_map|Rtime|currentState[5]~16\) # (GND)))
-- \bo_map|Rtime|currentState[6]~18\ = CARRY((!\bo_map|Rtime|currentState[5]~16\) # (!\bo_map|Rtime|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datad => VCC,
	cin => \bo_map|Rtime|currentState[5]~16\,
	combout => \bo_map|Rtime|currentState[6]~17_combout\,
	cout => \bo_map|Rtime|currentState[6]~18\);

-- Location: LCCOMB_X63_Y4_N12
\bo_map|Rtime|currentState[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rtime|currentState[7]~19_combout\ = \bo_map|Rtime|currentState[6]~18\ $ (!\bo_map|Rtime|currentState\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo_map|Rtime|currentState\(7),
	cin => \bo_map|Rtime|currentState[6]~18\,
	combout => \bo_map|Rtime|currentState[7]~19_combout\);

-- Location: LCFF_X63_Y4_N13
\bo_map|Rtime|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[7]~19_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(7));

-- Location: LCCOMB_X64_Y4_N14
\bo_map|Cs140|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs140|Equal0~1_combout\ = (!\bo_map|Rtime|currentState\(6) & (!\bo_map|Rtime|currentState\(5) & (!\bo_map|Rtime|currentState\(1) & \bo_map|Rtime|currentState\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datab => \bo_map|Rtime|currentState\(5),
	datac => \bo_map|Rtime|currentState\(1),
	datad => \bo_map|Rtime|currentState\(7),
	combout => \bo_map|Cs140|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y4_N14
\bc_map|nextState.S8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S8~0_combout\ = (\bc_map|currentState.S2~regout\ & (\bo_map|Cs140|Equal0~0_combout\ & \bo_map|Cs140|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S2~regout\,
	datac => \bo_map|Cs140|Equal0~0_combout\,
	datad => \bo_map|Cs140|Equal0~1_combout\,
	combout => \bc_map|nextState.S8~0_combout\);

-- Location: LCFF_X62_Y4_N15
\bc_map|currentState.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S8~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S8~regout\);

-- Location: LCCOMB_X62_Y4_N26
\bc_map|currentState.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|currentState.S2~feeder_combout\ = \bc_map|Selector0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc_map|Selector0~8_combout\,
	combout => \bc_map|currentState.S2~feeder_combout\);

-- Location: LCFF_X62_Y4_N27
\bc_map|currentState.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|currentState.S2~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S2~regout\);

-- Location: LCCOMB_X62_Y4_N16
\bc_map|rstcktimer\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|rstcktimer~combout\ = (\bc_map|currentState.S8~regout\) # ((\bc_map|currentState.S2~regout\) # (!\bc_map|currentState.init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.S8~regout\,
	datac => \bc_map|currentState.init~regout\,
	datad => \bc_map|currentState.S2~regout\,
	combout => \bc_map|rstcktimer~combout\);

-- Location: LCFF_X61_Y4_N5
\bo_map|Rcktimer|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[0]~75_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(0));

-- Location: LCCOMB_X61_Y4_N10
\bo_map|Rcktimer|currentState[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[2]~27_combout\ = (\bo_map|Rcktimer|currentState\(2) & (!\bo_map|Rcktimer|currentState[1]~26\)) # (!\bo_map|Rcktimer|currentState\(2) & ((\bo_map|Rcktimer|currentState[1]~26\) # (GND)))
-- \bo_map|Rcktimer|currentState[2]~28\ = CARRY((!\bo_map|Rcktimer|currentState[1]~26\) # (!\bo_map|Rcktimer|currentState\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(2),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[1]~26\,
	combout => \bo_map|Rcktimer|currentState[2]~27_combout\,
	cout => \bo_map|Rcktimer|currentState[2]~28\);

-- Location: LCCOMB_X61_Y4_N12
\bo_map|Rcktimer|currentState[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[3]~29_combout\ = (\bo_map|Rcktimer|currentState\(3) & (\bo_map|Rcktimer|currentState[2]~28\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(3) & (!\bo_map|Rcktimer|currentState[2]~28\ & VCC))
-- \bo_map|Rcktimer|currentState[3]~30\ = CARRY((\bo_map|Rcktimer|currentState\(3) & !\bo_map|Rcktimer|currentState[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(3),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[2]~28\,
	combout => \bo_map|Rcktimer|currentState[3]~29_combout\,
	cout => \bo_map|Rcktimer|currentState[3]~30\);

-- Location: LCFF_X61_Y4_N13
\bo_map|Rcktimer|currentState[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[3]~29_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(3));

-- Location: LCCOMB_X61_Y4_N14
\bo_map|Rcktimer|currentState[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[4]~31_combout\ = (\bo_map|Rcktimer|currentState\(4) & (!\bo_map|Rcktimer|currentState[3]~30\)) # (!\bo_map|Rcktimer|currentState\(4) & ((\bo_map|Rcktimer|currentState[3]~30\) # (GND)))
-- \bo_map|Rcktimer|currentState[4]~32\ = CARRY((!\bo_map|Rcktimer|currentState[3]~30\) # (!\bo_map|Rcktimer|currentState\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(4),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[3]~30\,
	combout => \bo_map|Rcktimer|currentState[4]~31_combout\,
	cout => \bo_map|Rcktimer|currentState[4]~32\);

-- Location: LCFF_X61_Y4_N15
\bo_map|Rcktimer|currentState[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[4]~31_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(4));

-- Location: LCCOMB_X61_Y4_N16
\bo_map|Rcktimer|currentState[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[5]~33_combout\ = (\bo_map|Rcktimer|currentState\(5) & (\bo_map|Rcktimer|currentState[4]~32\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(5) & (!\bo_map|Rcktimer|currentState[4]~32\ & VCC))
-- \bo_map|Rcktimer|currentState[5]~34\ = CARRY((\bo_map|Rcktimer|currentState\(5) & !\bo_map|Rcktimer|currentState[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(5),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[4]~32\,
	combout => \bo_map|Rcktimer|currentState[5]~33_combout\,
	cout => \bo_map|Rcktimer|currentState[5]~34\);

-- Location: LCFF_X61_Y4_N17
\bo_map|Rcktimer|currentState[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[5]~33_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(5));

-- Location: LCCOMB_X61_Y4_N18
\bo_map|Rcktimer|currentState[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[6]~35_combout\ = (\bo_map|Rcktimer|currentState\(6) & (!\bo_map|Rcktimer|currentState[5]~34\)) # (!\bo_map|Rcktimer|currentState\(6) & ((\bo_map|Rcktimer|currentState[5]~34\) # (GND)))
-- \bo_map|Rcktimer|currentState[6]~36\ = CARRY((!\bo_map|Rcktimer|currentState[5]~34\) # (!\bo_map|Rcktimer|currentState\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(6),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[5]~34\,
	combout => \bo_map|Rcktimer|currentState[6]~35_combout\,
	cout => \bo_map|Rcktimer|currentState[6]~36\);

-- Location: LCFF_X61_Y4_N19
\bo_map|Rcktimer|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[6]~35_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(6));

-- Location: LCCOMB_X61_Y4_N20
\bo_map|Rcktimer|currentState[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[7]~37_combout\ = (\bo_map|Rcktimer|currentState\(7) & (\bo_map|Rcktimer|currentState[6]~36\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(7) & (!\bo_map|Rcktimer|currentState[6]~36\ & VCC))
-- \bo_map|Rcktimer|currentState[7]~38\ = CARRY((\bo_map|Rcktimer|currentState\(7) & !\bo_map|Rcktimer|currentState[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(7),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[6]~36\,
	combout => \bo_map|Rcktimer|currentState[7]~37_combout\,
	cout => \bo_map|Rcktimer|currentState[7]~38\);

-- Location: LCFF_X61_Y4_N21
\bo_map|Rcktimer|currentState[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[7]~37_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(7));

-- Location: LCCOMB_X61_Y4_N22
\bo_map|Rcktimer|currentState[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[8]~39_combout\ = (\bo_map|Rcktimer|currentState\(8) & (!\bo_map|Rcktimer|currentState[7]~38\)) # (!\bo_map|Rcktimer|currentState\(8) & ((\bo_map|Rcktimer|currentState[7]~38\) # (GND)))
-- \bo_map|Rcktimer|currentState[8]~40\ = CARRY((!\bo_map|Rcktimer|currentState[7]~38\) # (!\bo_map|Rcktimer|currentState\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(8),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[7]~38\,
	combout => \bo_map|Rcktimer|currentState[8]~39_combout\,
	cout => \bo_map|Rcktimer|currentState[8]~40\);

-- Location: LCFF_X61_Y4_N23
\bo_map|Rcktimer|currentState[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[8]~39_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(8));

-- Location: LCCOMB_X61_Y4_N24
\bo_map|Rcktimer|currentState[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[9]~41_combout\ = (\bo_map|Rcktimer|currentState\(9) & (\bo_map|Rcktimer|currentState[8]~40\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(9) & (!\bo_map|Rcktimer|currentState[8]~40\ & VCC))
-- \bo_map|Rcktimer|currentState[9]~42\ = CARRY((\bo_map|Rcktimer|currentState\(9) & !\bo_map|Rcktimer|currentState[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(9),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[8]~40\,
	combout => \bo_map|Rcktimer|currentState[9]~41_combout\,
	cout => \bo_map|Rcktimer|currentState[9]~42\);

-- Location: LCFF_X61_Y4_N25
\bo_map|Rcktimer|currentState[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[9]~41_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(9));

-- Location: LCCOMB_X61_Y4_N26
\bo_map|Rcktimer|currentState[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[10]~43_combout\ = (\bo_map|Rcktimer|currentState\(10) & (!\bo_map|Rcktimer|currentState[9]~42\)) # (!\bo_map|Rcktimer|currentState\(10) & ((\bo_map|Rcktimer|currentState[9]~42\) # (GND)))
-- \bo_map|Rcktimer|currentState[10]~44\ = CARRY((!\bo_map|Rcktimer|currentState[9]~42\) # (!\bo_map|Rcktimer|currentState\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(10),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[9]~42\,
	combout => \bo_map|Rcktimer|currentState[10]~43_combout\,
	cout => \bo_map|Rcktimer|currentState[10]~44\);

-- Location: LCFF_X61_Y4_N27
\bo_map|Rcktimer|currentState[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[10]~43_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(10));

-- Location: LCCOMB_X61_Y4_N28
\bo_map|Rcktimer|currentState[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[11]~45_combout\ = (\bo_map|Rcktimer|currentState\(11) & (\bo_map|Rcktimer|currentState[10]~44\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(11) & (!\bo_map|Rcktimer|currentState[10]~44\ & VCC))
-- \bo_map|Rcktimer|currentState[11]~46\ = CARRY((\bo_map|Rcktimer|currentState\(11) & !\bo_map|Rcktimer|currentState[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(11),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[10]~44\,
	combout => \bo_map|Rcktimer|currentState[11]~45_combout\,
	cout => \bo_map|Rcktimer|currentState[11]~46\);

-- Location: LCFF_X61_Y4_N29
\bo_map|Rcktimer|currentState[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[11]~45_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(11));

-- Location: LCCOMB_X61_Y4_N30
\bo_map|Rcktimer|currentState[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[12]~47_combout\ = (\bo_map|Rcktimer|currentState\(12) & (!\bo_map|Rcktimer|currentState[11]~46\)) # (!\bo_map|Rcktimer|currentState\(12) & ((\bo_map|Rcktimer|currentState[11]~46\) # (GND)))
-- \bo_map|Rcktimer|currentState[12]~48\ = CARRY((!\bo_map|Rcktimer|currentState[11]~46\) # (!\bo_map|Rcktimer|currentState\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(12),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[11]~46\,
	combout => \bo_map|Rcktimer|currentState[12]~47_combout\,
	cout => \bo_map|Rcktimer|currentState[12]~48\);

-- Location: LCFF_X61_Y4_N31
\bo_map|Rcktimer|currentState[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[12]~47_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(12));

-- Location: LCCOMB_X61_Y3_N0
\bo_map|Rcktimer|currentState[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[13]~49_combout\ = (\bo_map|Rcktimer|currentState\(13) & (\bo_map|Rcktimer|currentState[12]~48\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(13) & (!\bo_map|Rcktimer|currentState[12]~48\ & VCC))
-- \bo_map|Rcktimer|currentState[13]~50\ = CARRY((\bo_map|Rcktimer|currentState\(13) & !\bo_map|Rcktimer|currentState[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(13),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[12]~48\,
	combout => \bo_map|Rcktimer|currentState[13]~49_combout\,
	cout => \bo_map|Rcktimer|currentState[13]~50\);

-- Location: LCCOMB_X62_Y4_N0
\bo_map|Rcktimer|currentState[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[13]~feeder_combout\ = \bo_map|Rcktimer|currentState[13]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo_map|Rcktimer|currentState[13]~49_combout\,
	combout => \bo_map|Rcktimer|currentState[13]~feeder_combout\);

-- Location: LCFF_X62_Y4_N1
\bo_map|Rcktimer|currentState[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[13]~feeder_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(13));

-- Location: LCCOMB_X61_Y3_N2
\bo_map|Rcktimer|currentState[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[14]~51_combout\ = (\bo_map|Rcktimer|currentState\(14) & (!\bo_map|Rcktimer|currentState[13]~50\)) # (!\bo_map|Rcktimer|currentState\(14) & ((\bo_map|Rcktimer|currentState[13]~50\) # (GND)))
-- \bo_map|Rcktimer|currentState[14]~52\ = CARRY((!\bo_map|Rcktimer|currentState[13]~50\) # (!\bo_map|Rcktimer|currentState\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(14),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[13]~50\,
	combout => \bo_map|Rcktimer|currentState[14]~51_combout\,
	cout => \bo_map|Rcktimer|currentState[14]~52\);

-- Location: LCFF_X61_Y3_N3
\bo_map|Rcktimer|currentState[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[14]~51_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(14));

-- Location: LCCOMB_X61_Y3_N4
\bo_map|Rcktimer|currentState[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[15]~53_combout\ = (\bo_map|Rcktimer|currentState\(15) & (\bo_map|Rcktimer|currentState[14]~52\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(15) & (!\bo_map|Rcktimer|currentState[14]~52\ & VCC))
-- \bo_map|Rcktimer|currentState[15]~54\ = CARRY((\bo_map|Rcktimer|currentState\(15) & !\bo_map|Rcktimer|currentState[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(15),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[14]~52\,
	combout => \bo_map|Rcktimer|currentState[15]~53_combout\,
	cout => \bo_map|Rcktimer|currentState[15]~54\);

-- Location: LCFF_X61_Y3_N5
\bo_map|Rcktimer|currentState[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[15]~53_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(15));

-- Location: LCCOMB_X61_Y3_N8
\bo_map|Rcktimer|currentState[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[17]~57_combout\ = (\bo_map|Rcktimer|currentState\(17) & (\bo_map|Rcktimer|currentState[16]~56\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(17) & (!\bo_map|Rcktimer|currentState[16]~56\ & VCC))
-- \bo_map|Rcktimer|currentState[17]~58\ = CARRY((\bo_map|Rcktimer|currentState\(17) & !\bo_map|Rcktimer|currentState[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(17),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[16]~56\,
	combout => \bo_map|Rcktimer|currentState[17]~57_combout\,
	cout => \bo_map|Rcktimer|currentState[17]~58\);

-- Location: LCFF_X61_Y3_N9
\bo_map|Rcktimer|currentState[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[17]~57_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(17));

-- Location: LCCOMB_X61_Y3_N12
\bo_map|Rcktimer|currentState[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[19]~61_combout\ = (\bo_map|Rcktimer|currentState\(19) & (\bo_map|Rcktimer|currentState[18]~60\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(19) & (!\bo_map|Rcktimer|currentState[18]~60\ & VCC))
-- \bo_map|Rcktimer|currentState[19]~62\ = CARRY((\bo_map|Rcktimer|currentState\(19) & !\bo_map|Rcktimer|currentState[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(19),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[18]~60\,
	combout => \bo_map|Rcktimer|currentState[19]~61_combout\,
	cout => \bo_map|Rcktimer|currentState[19]~62\);

-- Location: LCCOMB_X61_Y3_N14
\bo_map|Rcktimer|currentState[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[20]~63_combout\ = (\bo_map|Rcktimer|currentState\(20) & (!\bo_map|Rcktimer|currentState[19]~62\)) # (!\bo_map|Rcktimer|currentState\(20) & ((\bo_map|Rcktimer|currentState[19]~62\) # (GND)))
-- \bo_map|Rcktimer|currentState[20]~64\ = CARRY((!\bo_map|Rcktimer|currentState[19]~62\) # (!\bo_map|Rcktimer|currentState\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(20),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[19]~62\,
	combout => \bo_map|Rcktimer|currentState[20]~63_combout\,
	cout => \bo_map|Rcktimer|currentState[20]~64\);

-- Location: LCFF_X61_Y3_N15
\bo_map|Rcktimer|currentState[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[20]~63_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(20));

-- Location: LCCOMB_X61_Y3_N18
\bo_map|Rcktimer|currentState[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[22]~67_combout\ = (\bo_map|Rcktimer|currentState\(22) & (!\bo_map|Rcktimer|currentState[21]~66\)) # (!\bo_map|Rcktimer|currentState\(22) & ((\bo_map|Rcktimer|currentState[21]~66\) # (GND)))
-- \bo_map|Rcktimer|currentState[22]~68\ = CARRY((!\bo_map|Rcktimer|currentState[21]~66\) # (!\bo_map|Rcktimer|currentState\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo_map|Rcktimer|currentState\(22),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[21]~66\,
	combout => \bo_map|Rcktimer|currentState[22]~67_combout\,
	cout => \bo_map|Rcktimer|currentState[22]~68\);

-- Location: LCFF_X61_Y3_N19
\bo_map|Rcktimer|currentState[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[22]~67_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(22));

-- Location: LCFF_X61_Y3_N13
\bo_map|Rcktimer|currentState[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[19]~61_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(19));

-- Location: LCCOMB_X61_Y3_N28
\bc_map|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~6_combout\ = (\bo_map|Rcktimer|currentState\(21)) # ((\bo_map|Rcktimer|currentState\(22)) # ((\bo_map|Rcktimer|currentState\(20)) # (\bo_map|Rcktimer|currentState\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(21),
	datab => \bo_map|Rcktimer|currentState\(22),
	datac => \bo_map|Rcktimer|currentState\(20),
	datad => \bo_map|Rcktimer|currentState\(19),
	combout => \bc_map|Selector0~6_combout\);

-- Location: LCCOMB_X61_Y3_N20
\bo_map|Rcktimer|currentState[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Rcktimer|currentState[23]~69_combout\ = (\bo_map|Rcktimer|currentState\(23) & (\bo_map|Rcktimer|currentState[22]~68\ $ (GND))) # (!\bo_map|Rcktimer|currentState\(23) & (!\bo_map|Rcktimer|currentState[22]~68\ & VCC))
-- \bo_map|Rcktimer|currentState[23]~70\ = CARRY((\bo_map|Rcktimer|currentState\(23) & !\bo_map|Rcktimer|currentState[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(23),
	datad => VCC,
	cin => \bo_map|Rcktimer|currentState[22]~68\,
	combout => \bo_map|Rcktimer|currentState[23]~69_combout\,
	cout => \bo_map|Rcktimer|currentState[23]~70\);

-- Location: LCFF_X61_Y3_N21
\bo_map|Rcktimer|currentState[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[23]~69_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(23));

-- Location: LCFF_X61_Y3_N23
\bo_map|Rcktimer|currentState[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[24]~71_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(24));

-- Location: LCCOMB_X61_Y3_N26
\bc_map|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~7_combout\ = (\bo_map|Rcktimer|currentState\(25)) # ((\bo_map|Rcktimer|currentState\(23)) # (\bo_map|Rcktimer|currentState\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(25),
	datac => \bo_map|Rcktimer|currentState\(23),
	datad => \bo_map|Rcktimer|currentState\(24),
	combout => \bc_map|Selector0~7_combout\);

-- Location: LCFF_X61_Y4_N11
\bo_map|Rcktimer|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rcktimer|currentState[2]~27_combout\,
	aclr => \bc_map|rstcktimer~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rcktimer|currentState\(2));

-- Location: LCCOMB_X62_Y4_N2
\bc_map|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~0_combout\ = (\bo_map|Rcktimer|currentState\(1)) # ((\bo_map|Rcktimer|currentState\(0)) # ((\bo_map|Rcktimer|currentState\(2)) # (!\bc_map|currentState.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(1),
	datab => \bo_map|Rcktimer|currentState\(0),
	datac => \bc_map|currentState.S0~regout\,
	datad => \bo_map|Rcktimer|currentState\(2),
	combout => \bc_map|Selector0~0_combout\);

-- Location: LCCOMB_X62_Y4_N20
\bc_map|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~3_combout\ = (\bo_map|Rcktimer|currentState\(12)) # ((\bo_map|Rcktimer|currentState\(11)) # ((\bo_map|Rcktimer|currentState\(14)) # (!\bo_map|Rcktimer|currentState\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(12),
	datab => \bo_map|Rcktimer|currentState\(11),
	datac => \bo_map|Rcktimer|currentState\(13),
	datad => \bo_map|Rcktimer|currentState\(14),
	combout => \bc_map|Selector0~3_combout\);

-- Location: LCCOMB_X61_Y4_N2
\bc_map|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~1_combout\ = (\bo_map|Rcktimer|currentState\(4)) # ((\bo_map|Rcktimer|currentState\(3)) # ((\bo_map|Rcktimer|currentState\(6)) # (!\bo_map|Rcktimer|currentState\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rcktimer|currentState\(4),
	datab => \bo_map|Rcktimer|currentState\(3),
	datac => \bo_map|Rcktimer|currentState\(5),
	datad => \bo_map|Rcktimer|currentState\(6),
	combout => \bc_map|Selector0~1_combout\);

-- Location: LCCOMB_X62_Y4_N10
\bc_map|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~4_combout\ = (\bc_map|Selector0~2_combout\) # ((\bc_map|Selector0~0_combout\) # ((\bc_map|Selector0~3_combout\) # (\bc_map|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|Selector0~2_combout\,
	datab => \bc_map|Selector0~0_combout\,
	datac => \bc_map|Selector0~3_combout\,
	datad => \bc_map|Selector0~1_combout\,
	combout => \bc_map|Selector0~4_combout\);

-- Location: LCCOMB_X62_Y4_N28
\bc_map|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~8_combout\ = (!\bc_map|Selector0~5_combout\ & (!\bc_map|Selector0~6_combout\ & (!\bc_map|Selector0~7_combout\ & !\bc_map|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|Selector0~5_combout\,
	datab => \bc_map|Selector0~6_combout\,
	datac => \bc_map|Selector0~7_combout\,
	datad => \bc_map|Selector0~4_combout\,
	combout => \bc_map|Selector0~8_combout\);

-- Location: LCFF_X63_Y4_N11
\bo_map|Rtime|currentState[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|Rtime|currentState[6]~17_combout\,
	aclr => \bc_map|rstcktimer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|Rtime|currentState\(6));

-- Location: LCCOMB_X64_Y4_N24
\bo_map|Cs55|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs55|Equal0~0_combout\ = (\bo_map|Rtime|currentState\(2) & (\bo_map|Rtime|currentState\(0) & (!\bo_map|Rtime|currentState\(3) & !\bo_map|Rtime|currentState\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(2),
	datab => \bo_map|Rtime|currentState\(0),
	datac => \bo_map|Rtime|currentState\(3),
	datad => \bo_map|Rtime|currentState\(6),
	combout => \bo_map|Cs55|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\bo_map|Cs100|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs100|Equal0~0_combout\ = (\bo_map|Rtime|currentState\(5) & !\bo_map|Rtime|currentState\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(5),
	datad => \bo_map|Rtime|currentState\(7),
	combout => \bo_map|Cs100|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\bo_map|Cs55|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs55|Equal0~1_combout\ = (\bo_map|Rtime|currentState\(1) & (\bo_map|Rtime|currentState\(4) & (\bo_map|Cs55|Equal0~0_combout\ & \bo_map|Cs100|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(1),
	datab => \bo_map|Rtime|currentState\(4),
	datac => \bo_map|Cs55|Equal0~0_combout\,
	datad => \bo_map|Cs100|Equal0~0_combout\,
	combout => \bo_map|Cs55|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y4_N20
\bo_map|Cs110|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs110|Equal0~0_combout\ = (\bo_map|Rtime|currentState\(6) & (\bo_map|Cs100|Equal0~0_combout\ & (\bo_map|Rtime|currentState\(1) & \bo_map|Cs140|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datab => \bo_map|Cs100|Equal0~0_combout\,
	datac => \bo_map|Rtime|currentState\(1),
	datad => \bo_map|Cs140|Equal0~0_combout\,
	combout => \bo_map|Cs110|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y4_N16
\bc_map|Selector0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~10_combout\ = (!\bo_map|Cs55|Equal0~1_combout\ & (!\bo_map|Cs110|Equal0~0_combout\ & ((!\bo_map|Cs140|Equal0~1_combout\) # (!\bo_map|Cs140|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs140|Equal0~0_combout\,
	datab => \bo_map|Cs140|Equal0~1_combout\,
	datac => \bo_map|Cs55|Equal0~1_combout\,
	datad => \bo_map|Cs110|Equal0~0_combout\,
	combout => \bc_map|Selector0~10_combout\);

-- Location: LCCOMB_X63_Y4_N22
\bo_map|Cs100|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs100|Equal0~1_combout\ = (\bo_map|Rtime|currentState\(6) & (!\bo_map|Rtime|currentState\(3) & (!\bo_map|Rtime|currentState\(0) & \bo_map|Rtime|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datab => \bo_map|Rtime|currentState\(3),
	datac => \bo_map|Rtime|currentState\(0),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bo_map|Cs100|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y4_N30
\bo_map|Cs100|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs100|Equal0~2_combout\ = (!\bo_map|Rtime|currentState\(4) & (!\bo_map|Rtime|currentState\(1) & (\bo_map|Cs100|Equal0~1_combout\ & \bo_map|Cs100|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(4),
	datab => \bo_map|Rtime|currentState\(1),
	datac => \bo_map|Cs100|Equal0~1_combout\,
	datad => \bo_map|Cs100|Equal0~0_combout\,
	combout => \bo_map|Cs100|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y4_N24
\bo_map|Cs45|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|Cs45|Equal0~0_combout\ = (!\bo_map|Rtime|currentState\(4) & (!\bo_map|Rtime|currentState\(1) & (\bo_map|Rtime|currentState\(3) & \bo_map|Cs100|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(4),
	datab => \bo_map|Rtime|currentState\(1),
	datac => \bo_map|Rtime|currentState\(3),
	datad => \bo_map|Cs100|Equal0~0_combout\,
	combout => \bo_map|Cs45|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y4_N18
\bc_map|NSL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~0_combout\ = (\bo_map|Rtime|currentState\(7) & (\bo_map|Rtime|currentState\(0) & (!\bo_map|Rtime|currentState\(5) & \bo_map|Rtime|currentState\(2)))) # (!\bo_map|Rtime|currentState\(7) & (!\bo_map|Rtime|currentState\(0) & 
-- (\bo_map|Rtime|currentState\(5) & !\bo_map|Rtime|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(7),
	datab => \bo_map|Rtime|currentState\(0),
	datac => \bo_map|Rtime|currentState\(5),
	datad => \bo_map|Rtime|currentState\(2),
	combout => \bc_map|NSL~0_combout\);

-- Location: LCCOMB_X63_Y4_N14
\bc_map|NSL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~2_combout\ = (\bo_map|Rtime|currentState\(1) & (((!\bo_map|Rtime|currentState\(3) & \bc_map|NSL~0_combout\)))) # (!\bo_map|Rtime|currentState\(1) & (\bo_map|Rtime|currentState\(6) & (\bo_map|Rtime|currentState\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Rtime|currentState\(6),
	datab => \bo_map|Rtime|currentState\(1),
	datac => \bo_map|Rtime|currentState\(3),
	datad => \bc_map|NSL~0_combout\,
	combout => \bc_map|NSL~2_combout\);

-- Location: LCCOMB_X63_Y4_N28
\bc_map|NSL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|NSL~3_combout\ = (\bc_map|NSL~1_combout\ & (\bc_map|NSL~2_combout\ & ((\bc_map|NSL~0_combout\) # (\bo_map|Cs100|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|NSL~1_combout\,
	datab => \bc_map|NSL~0_combout\,
	datac => \bc_map|NSL~2_combout\,
	datad => \bo_map|Cs100|Equal0~0_combout\,
	combout => \bc_map|NSL~3_combout\);

-- Location: LCCOMB_X62_Y4_N30
\bc_map|Selector0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~9_combout\ = (!\bo_map|Cs100|Equal0~2_combout\ & (!\bc_map|NSL~3_combout\ & ((!\bo_map|Cs45|Equal0~0_combout\) # (!\bo_map|Cs45|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs45|Equal0~1_combout\,
	datab => \bo_map|Cs100|Equal0~2_combout\,
	datac => \bo_map|Cs45|Equal0~0_combout\,
	datad => \bc_map|NSL~3_combout\,
	combout => \bc_map|Selector0~9_combout\);

-- Location: LCCOMB_X62_Y4_N12
\bc_map|Selector0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|Selector0~11_combout\ = (!\bc_map|Selector0~8_combout\ & (((\bc_map|Selector0~10_combout\ & \bc_map|Selector0~9_combout\)) # (!\bc_map|currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S2~regout\,
	datab => \bc_map|Selector0~8_combout\,
	datac => \bc_map|Selector0~10_combout\,
	datad => \bc_map|Selector0~9_combout\,
	combout => \bc_map|Selector0~11_combout\);

-- Location: LCFF_X62_Y4_N13
\bc_map|currentState.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|Selector0~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S0~regout\);

-- Location: LCCOMB_X64_Y4_N12
\bc_map|nextState.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S7~0_combout\ = (\bo_map|Cs110|Equal0~0_combout\ & \bc_map|currentState.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo_map|Cs110|Equal0~0_combout\,
	datad => \bc_map|currentState.S2~regout\,
	combout => \bc_map|nextState.S7~0_combout\);

-- Location: LCFF_X64_Y4_N13
\bc_map|currentState.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S7~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S7~regout\);

-- Location: LCCOMB_X63_Y3_N2
\bc_map|cMuxP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|cMuxP~0_combout\ = (\bc_map|currentState.S0~regout\) # ((\bc_map|currentState.S2~regout\) # (\bc_map|currentState.S7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.S0~regout\,
	datac => \bc_map|currentState.S2~regout\,
	datad => \bc_map|currentState.S7~regout\,
	combout => \bc_map|cMuxP~0_combout\);

-- Location: LCCOMB_X63_Y3_N0
\bo_map|RP|currentState[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|RP|currentState[0]~0_combout\ = !\bc_map|cMuxP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc_map|cMuxP~0_combout\,
	combout => \bo_map|RP|currentState[0]~0_combout\);

-- Location: LCFF_X63_Y3_N1
\bo_map|RP|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|RP|currentState[0]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RP|currentState\(0));

-- Location: LCCOMB_X63_Y3_N10
\bo_map|RP|currentState[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|RP|currentState[1]~feeder_combout\ = \bc_map|cMuxP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc_map|cMuxP~0_combout\,
	combout => \bo_map|RP|currentState[1]~feeder_combout\);

-- Location: LCFF_X63_Y3_N11
\bo_map|RP|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|RP|currentState[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RP|currentState\(1));

-- Location: LCCOMB_X64_Y4_N22
\bc_map|nextState.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S5~0_combout\ = (\bc_map|currentState.S2~regout\ & \bo_map|Cs55|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Cs55|Equal0~1_combout\,
	combout => \bc_map|nextState.S5~0_combout\);

-- Location: LCFF_X64_Y4_N23
\bc_map|currentState.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S5~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S5~regout\);

-- Location: LCCOMB_X63_Y3_N24
\bo_map|MEW|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MEW|Equal2~0_combout\ = (!\bc_map|currentState.S6~regout\ & (!\bc_map|currentState.S0~regout\ & (!\bc_map|currentState.S2~regout\ & !\bc_map|currentState.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S6~regout\,
	datab => \bc_map|currentState.S0~regout\,
	datac => \bc_map|currentState.S2~regout\,
	datad => \bc_map|currentState.S5~regout\,
	combout => \bo_map|MEW|Equal2~0_combout\);

-- Location: LCFF_X63_Y3_N25
\bo_map|REW|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|MEW|Equal2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(0));

-- Location: LCCOMB_X62_Y4_N8
\bc_map|nextState.S6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S6~0_combout\ = (\bc_map|currentState.S2~regout\ & \bo_map|Cs100|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Cs100|Equal0~2_combout\,
	combout => \bc_map|nextState.S6~0_combout\);

-- Location: LCFF_X62_Y4_N9
\bc_map|currentState.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S6~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S6~regout\);

-- Location: LCFF_X63_Y3_N23
\bo_map|REW|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \bc_map|currentState.S6~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(1));

-- Location: LCCOMB_X63_Y3_N20
\bo_map|MEW|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MEW|Equal2~1_combout\ = (!\bc_map|currentState.S6~regout\ & ((\bc_map|currentState.S0~regout\) # ((\bc_map|currentState.S2~regout\) # (\bc_map|currentState.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S6~regout\,
	datab => \bc_map|currentState.S0~regout\,
	datac => \bc_map|currentState.S2~regout\,
	datad => \bc_map|currentState.S5~regout\,
	combout => \bo_map|MEW|Equal2~1_combout\);

-- Location: LCFF_X63_Y3_N21
\bo_map|REW|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|MEW|Equal2~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|REW|currentState\(2));

-- Location: LCCOMB_X62_Y4_N18
\bc_map|nextState.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc_map|nextState.S3~0_combout\ = (\bo_map|Cs45|Equal0~1_combout\ & (\bc_map|currentState.S2~regout\ & \bo_map|Cs45|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo_map|Cs45|Equal0~1_combout\,
	datac => \bc_map|currentState.S2~regout\,
	datad => \bo_map|Cs45|Equal0~0_combout\,
	combout => \bc_map|nextState.S3~0_combout\);

-- Location: LCFF_X62_Y4_N19
\bc_map|currentState.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S3~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S3~regout\);

-- Location: LCCOMB_X62_Y4_N4
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

-- Location: LCFF_X62_Y4_N5
\bc_map|currentState.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bc_map|nextState.S4~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc_map|currentState.S4~regout\);

-- Location: LCCOMB_X63_Y3_N12
\bo_map|MNS|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MNS|Equal2~0_combout\ = (!\bc_map|currentState.S5~regout\ & (!\bc_map|currentState.S4~regout\ & (!\bc_map|currentState.S6~regout\ & !\bc_map|currentState.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc_map|currentState.S5~regout\,
	datab => \bc_map|currentState.S4~regout\,
	datac => \bc_map|currentState.S6~regout\,
	datad => \bc_map|currentState.S7~regout\,
	combout => \bo_map|MNS|Equal2~0_combout\);

-- Location: LCCOMB_X63_Y3_N26
\bo_map|MNS|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MNS|Equal2~1_combout\ = (!\bc_map|currentState.S3~regout\ & !\bo_map|MNS|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S3~regout\,
	datad => \bo_map|MNS|Equal2~0_combout\,
	combout => \bo_map|MNS|Equal2~1_combout\);

-- Location: LCFF_X63_Y3_N27
\bo_map|RNS|currentState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|MNS|Equal2~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(0));

-- Location: LCFF_X62_Y4_N7
\bo_map|RNS|currentState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \bc_map|currentState.S3~regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(1));

-- Location: LCCOMB_X63_Y3_N8
\bo_map|MNS|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo_map|MNS|Equal2~2_combout\ = (!\bc_map|currentState.S3~regout\ & \bo_map|MNS|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc_map|currentState.S3~regout\,
	datad => \bo_map|MNS|Equal2~0_combout\,
	combout => \bo_map|MNS|Equal2~2_combout\);

-- Location: LCFF_X63_Y3_N9
\bo_map|RNS|currentState[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \bo_map|MNS|Equal2~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo_map|RNS|currentState\(2));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \bo_map|RP|currentState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
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
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
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
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
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
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
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
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
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
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
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
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
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
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
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
	padio => ww_LEDR(17));
END structure;


