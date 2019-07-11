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

-- DATE "07/10/2019 20:58:11"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RISC_UNI IS
    PORT (
	pc2 : OUT std_logic_vector(31 DOWNTO 0);
	instr2 : OUT std_logic_vector(31 DOWNTO 0);
	clock : IN std_logic
	);
END RISC_UNI;

-- Design Ports Information
-- pc2[0]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[1]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[2]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[3]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[4]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[5]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[6]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[7]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[8]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[9]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[10]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[11]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[12]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[13]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[14]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[15]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[16]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[17]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[18]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[19]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[20]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[21]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[22]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[23]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[24]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[25]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[26]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[27]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[28]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[29]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[30]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc2[31]	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[0]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[1]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[3]	=>  Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[4]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[5]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[6]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[7]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[8]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[9]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[10]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[11]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[12]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[13]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[14]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[15]	=>  Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[16]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[17]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[18]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[19]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[20]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[21]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[22]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[23]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[24]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[25]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[26]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[27]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[28]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[29]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[30]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instr2[31]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RISC_UNI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instr2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \PC[2]~30_combout\ : std_logic;
SIGNAL \PC[2]~31\ : std_logic;
SIGNAL \PC[3]~32_combout\ : std_logic;
SIGNAL \PC[3]~33\ : std_logic;
SIGNAL \PC[4]~34_combout\ : std_logic;
SIGNAL \PC[4]~35\ : std_logic;
SIGNAL \PC[5]~36_combout\ : std_logic;
SIGNAL \PC[5]~37\ : std_logic;
SIGNAL \PC[6]~38_combout\ : std_logic;
SIGNAL \PC[6]~39\ : std_logic;
SIGNAL \PC[7]~40_combout\ : std_logic;
SIGNAL \PC[7]~41\ : std_logic;
SIGNAL \PC[8]~42_combout\ : std_logic;
SIGNAL \PC[8]~43\ : std_logic;
SIGNAL \PC[9]~44_combout\ : std_logic;
SIGNAL \PC[9]~45\ : std_logic;
SIGNAL \PC[10]~46_combout\ : std_logic;
SIGNAL \PC[10]~47\ : std_logic;
SIGNAL \PC[11]~48_combout\ : std_logic;
SIGNAL \PC[11]~49\ : std_logic;
SIGNAL \PC[12]~50_combout\ : std_logic;
SIGNAL \PC[12]~51\ : std_logic;
SIGNAL \PC[13]~52_combout\ : std_logic;
SIGNAL \PC[13]~53\ : std_logic;
SIGNAL \PC[14]~54_combout\ : std_logic;
SIGNAL \PC[14]~55\ : std_logic;
SIGNAL \PC[15]~56_combout\ : std_logic;
SIGNAL \PC[15]~57\ : std_logic;
SIGNAL \PC[16]~58_combout\ : std_logic;
SIGNAL \PC[16]~59\ : std_logic;
SIGNAL \PC[17]~60_combout\ : std_logic;
SIGNAL \PC[17]~61\ : std_logic;
SIGNAL \PC[18]~62_combout\ : std_logic;
SIGNAL \PC[18]~63\ : std_logic;
SIGNAL \PC[19]~64_combout\ : std_logic;
SIGNAL \PC[19]~65\ : std_logic;
SIGNAL \PC[20]~66_combout\ : std_logic;
SIGNAL \PC[20]~67\ : std_logic;
SIGNAL \PC[21]~68_combout\ : std_logic;
SIGNAL \PC[21]~69\ : std_logic;
SIGNAL \PC[22]~70_combout\ : std_logic;
SIGNAL \PC[22]~71\ : std_logic;
SIGNAL \PC[23]~72_combout\ : std_logic;
SIGNAL \PC[23]~73\ : std_logic;
SIGNAL \PC[24]~74_combout\ : std_logic;
SIGNAL \PC[24]~75\ : std_logic;
SIGNAL \PC[25]~76_combout\ : std_logic;
SIGNAL \PC[25]~77\ : std_logic;
SIGNAL \PC[26]~78_combout\ : std_logic;
SIGNAL \PC[26]~79\ : std_logic;
SIGNAL \PC[27]~80_combout\ : std_logic;
SIGNAL \PC[27]~81\ : std_logic;
SIGNAL \PC[28]~82_combout\ : std_logic;
SIGNAL \PC[28]~83\ : std_logic;
SIGNAL \PC[29]~84_combout\ : std_logic;
SIGNAL \PC[29]~85\ : std_logic;
SIGNAL \PC[30]~86_combout\ : std_logic;
SIGNAL \PC[30]~87\ : std_logic;
SIGNAL \PC[31]~88_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mem_i|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL PC : std_logic_vector(31 DOWNTO 0);

BEGIN

pc2 <= ww_pc2;
instr2 <= ww_instr2;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (PC(9) & PC(8) & PC(7) & PC(6) & PC(5) & PC(4) & PC(3) & PC(2));

\mem_i|altsyncram_component|auto_generated|q_a\(0) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_i|altsyncram_component|auto_generated|q_a\(1) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_i|altsyncram_component|auto_generated|q_a\(2) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_i|altsyncram_component|auto_generated|q_a\(3) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_i|altsyncram_component|auto_generated|q_a\(4) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_i|altsyncram_component|auto_generated|q_a\(5) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_i|altsyncram_component|auto_generated|q_a\(6) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_i|altsyncram_component|auto_generated|q_a\(7) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_i|altsyncram_component|auto_generated|q_a\(8) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem_i|altsyncram_component|auto_generated|q_a\(9) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem_i|altsyncram_component|auto_generated|q_a\(10) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem_i|altsyncram_component|auto_generated|q_a\(11) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem_i|altsyncram_component|auto_generated|q_a\(12) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem_i|altsyncram_component|auto_generated|q_a\(13) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem_i|altsyncram_component|auto_generated|q_a\(14) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem_i|altsyncram_component|auto_generated|q_a\(15) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\mem_i|altsyncram_component|auto_generated|q_a\(16) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\mem_i|altsyncram_component|auto_generated|q_a\(17) <= \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (PC(9) & PC(8) & PC(7) & PC(6) & PC(5) & PC(4) & PC(3) & PC(2));

\mem_i|altsyncram_component|auto_generated|q_a\(18) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\mem_i|altsyncram_component|auto_generated|q_a\(19) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\mem_i|altsyncram_component|auto_generated|q_a\(20) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\mem_i|altsyncram_component|auto_generated|q_a\(21) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\mem_i|altsyncram_component|auto_generated|q_a\(22) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\mem_i|altsyncram_component|auto_generated|q_a\(23) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\mem_i|altsyncram_component|auto_generated|q_a\(24) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\mem_i|altsyncram_component|auto_generated|q_a\(25) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\mem_i|altsyncram_component|auto_generated|q_a\(26) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\mem_i|altsyncram_component|auto_generated|q_a\(27) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\mem_i|altsyncram_component|auto_generated|q_a\(28) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\mem_i|altsyncram_component|auto_generated|q_a\(29) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\mem_i|altsyncram_component|auto_generated|q_a\(30) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\mem_i|altsyncram_component|auto_generated|q_a\(31) <= \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y14_N2
\PC[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[2]~30_combout\ = PC(2) $ (VCC)
-- \PC[2]~31\ = CARRY(PC(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	combout => \PC[2]~30_combout\,
	cout => \PC[2]~31\);

-- Location: LCFF_X1_Y14_N3
\PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(2));

-- Location: LCCOMB_X1_Y14_N4
\PC[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[3]~32_combout\ = (PC(3) & (!\PC[2]~31\)) # (!PC(3) & ((\PC[2]~31\) # (GND)))
-- \PC[3]~33\ = CARRY((!\PC[2]~31\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~31\,
	combout => \PC[3]~32_combout\,
	cout => \PC[3]~33\);

-- Location: LCFF_X1_Y14_N5
\PC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(3));

-- Location: LCCOMB_X1_Y14_N6
\PC[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[4]~34_combout\ = (PC(4) & (\PC[3]~33\ $ (GND))) # (!PC(4) & (!\PC[3]~33\ & VCC))
-- \PC[4]~35\ = CARRY((PC(4) & !\PC[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datad => VCC,
	cin => \PC[3]~33\,
	combout => \PC[4]~34_combout\,
	cout => \PC[4]~35\);

-- Location: LCFF_X1_Y14_N7
\PC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(4));

-- Location: LCCOMB_X1_Y14_N8
\PC[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[5]~36_combout\ = (PC(5) & (!\PC[4]~35\)) # (!PC(5) & ((\PC[4]~35\) # (GND)))
-- \PC[5]~37\ = CARRY((!\PC[4]~35\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~35\,
	combout => \PC[5]~36_combout\,
	cout => \PC[5]~37\);

-- Location: LCFF_X1_Y14_N9
\PC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(5));

-- Location: LCCOMB_X1_Y14_N10
\PC[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[6]~38_combout\ = (PC(6) & (\PC[5]~37\ $ (GND))) # (!PC(6) & (!\PC[5]~37\ & VCC))
-- \PC[6]~39\ = CARRY((PC(6) & !\PC[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datad => VCC,
	cin => \PC[5]~37\,
	combout => \PC[6]~38_combout\,
	cout => \PC[6]~39\);

-- Location: LCFF_X1_Y14_N11
\PC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(6));

-- Location: LCCOMB_X1_Y14_N12
\PC[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[7]~40_combout\ = (PC(7) & (!\PC[6]~39\)) # (!PC(7) & ((\PC[6]~39\) # (GND)))
-- \PC[7]~41\ = CARRY((!\PC[6]~39\) # (!PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datad => VCC,
	cin => \PC[6]~39\,
	combout => \PC[7]~40_combout\,
	cout => \PC[7]~41\);

-- Location: LCFF_X1_Y14_N13
\PC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(7));

-- Location: LCCOMB_X1_Y14_N14
\PC[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[8]~42_combout\ = (PC(8) & (\PC[7]~41\ $ (GND))) # (!PC(8) & (!\PC[7]~41\ & VCC))
-- \PC[8]~43\ = CARRY((PC(8) & !\PC[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(8),
	datad => VCC,
	cin => \PC[7]~41\,
	combout => \PC[8]~42_combout\,
	cout => \PC[8]~43\);

-- Location: LCFF_X1_Y14_N15
\PC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(8));

-- Location: LCCOMB_X1_Y14_N16
\PC[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[9]~44_combout\ = (PC(9) & (!\PC[8]~43\)) # (!PC(9) & ((\PC[8]~43\) # (GND)))
-- \PC[9]~45\ = CARRY((!\PC[8]~43\) # (!PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(9),
	datad => VCC,
	cin => \PC[8]~43\,
	combout => \PC[9]~44_combout\,
	cout => \PC[9]~45\);

-- Location: LCFF_X1_Y14_N17
\PC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(9));

-- Location: LCCOMB_X1_Y14_N18
\PC[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[10]~46_combout\ = (PC(10) & (\PC[9]~45\ $ (GND))) # (!PC(10) & (!\PC[9]~45\ & VCC))
-- \PC[10]~47\ = CARRY((PC(10) & !\PC[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(10),
	datad => VCC,
	cin => \PC[9]~45\,
	combout => \PC[10]~46_combout\,
	cout => \PC[10]~47\);

-- Location: LCFF_X1_Y14_N19
\PC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(10));

-- Location: LCCOMB_X1_Y14_N20
\PC[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[11]~48_combout\ = (PC(11) & (!\PC[10]~47\)) # (!PC(11) & ((\PC[10]~47\) # (GND)))
-- \PC[11]~49\ = CARRY((!\PC[10]~47\) # (!PC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(11),
	datad => VCC,
	cin => \PC[10]~47\,
	combout => \PC[11]~48_combout\,
	cout => \PC[11]~49\);

-- Location: LCFF_X1_Y14_N21
\PC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(11));

-- Location: LCCOMB_X1_Y14_N22
\PC[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[12]~50_combout\ = (PC(12) & (\PC[11]~49\ $ (GND))) # (!PC(12) & (!\PC[11]~49\ & VCC))
-- \PC[12]~51\ = CARRY((PC(12) & !\PC[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(12),
	datad => VCC,
	cin => \PC[11]~49\,
	combout => \PC[12]~50_combout\,
	cout => \PC[12]~51\);

-- Location: LCFF_X1_Y14_N23
\PC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(12));

-- Location: LCCOMB_X1_Y14_N24
\PC[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[13]~52_combout\ = (PC(13) & (!\PC[12]~51\)) # (!PC(13) & ((\PC[12]~51\) # (GND)))
-- \PC[13]~53\ = CARRY((!\PC[12]~51\) # (!PC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(13),
	datad => VCC,
	cin => \PC[12]~51\,
	combout => \PC[13]~52_combout\,
	cout => \PC[13]~53\);

-- Location: LCFF_X1_Y14_N25
\PC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(13));

-- Location: LCCOMB_X1_Y14_N26
\PC[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[14]~54_combout\ = (PC(14) & (\PC[13]~53\ $ (GND))) # (!PC(14) & (!\PC[13]~53\ & VCC))
-- \PC[14]~55\ = CARRY((PC(14) & !\PC[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(14),
	datad => VCC,
	cin => \PC[13]~53\,
	combout => \PC[14]~54_combout\,
	cout => \PC[14]~55\);

-- Location: LCFF_X1_Y14_N27
\PC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(14));

-- Location: LCCOMB_X1_Y14_N28
\PC[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[15]~56_combout\ = (PC(15) & (!\PC[14]~55\)) # (!PC(15) & ((\PC[14]~55\) # (GND)))
-- \PC[15]~57\ = CARRY((!\PC[14]~55\) # (!PC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(15),
	datad => VCC,
	cin => \PC[14]~55\,
	combout => \PC[15]~56_combout\,
	cout => \PC[15]~57\);

-- Location: LCFF_X1_Y14_N29
\PC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(15));

-- Location: LCCOMB_X1_Y14_N30
\PC[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[16]~58_combout\ = (PC(16) & (\PC[15]~57\ $ (GND))) # (!PC(16) & (!\PC[15]~57\ & VCC))
-- \PC[16]~59\ = CARRY((PC(16) & !\PC[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(16),
	datad => VCC,
	cin => \PC[15]~57\,
	combout => \PC[16]~58_combout\,
	cout => \PC[16]~59\);

-- Location: LCFF_X1_Y14_N31
\PC[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(16));

-- Location: LCCOMB_X1_Y13_N0
\PC[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[17]~60_combout\ = (PC(17) & (!\PC[16]~59\)) # (!PC(17) & ((\PC[16]~59\) # (GND)))
-- \PC[17]~61\ = CARRY((!\PC[16]~59\) # (!PC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(17),
	datad => VCC,
	cin => \PC[16]~59\,
	combout => \PC[17]~60_combout\,
	cout => \PC[17]~61\);

-- Location: LCFF_X1_Y13_N1
\PC[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(17));

-- Location: LCCOMB_X1_Y13_N2
\PC[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[18]~62_combout\ = (PC(18) & (\PC[17]~61\ $ (GND))) # (!PC(18) & (!\PC[17]~61\ & VCC))
-- \PC[18]~63\ = CARRY((PC(18) & !\PC[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(18),
	datad => VCC,
	cin => \PC[17]~61\,
	combout => \PC[18]~62_combout\,
	cout => \PC[18]~63\);

-- Location: LCFF_X1_Y13_N3
\PC[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(18));

-- Location: LCCOMB_X1_Y13_N4
\PC[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[19]~64_combout\ = (PC(19) & (!\PC[18]~63\)) # (!PC(19) & ((\PC[18]~63\) # (GND)))
-- \PC[19]~65\ = CARRY((!\PC[18]~63\) # (!PC(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(19),
	datad => VCC,
	cin => \PC[18]~63\,
	combout => \PC[19]~64_combout\,
	cout => \PC[19]~65\);

-- Location: LCFF_X1_Y13_N5
\PC[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(19));

-- Location: LCCOMB_X1_Y13_N6
\PC[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[20]~66_combout\ = (PC(20) & (\PC[19]~65\ $ (GND))) # (!PC(20) & (!\PC[19]~65\ & VCC))
-- \PC[20]~67\ = CARRY((PC(20) & !\PC[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(20),
	datad => VCC,
	cin => \PC[19]~65\,
	combout => \PC[20]~66_combout\,
	cout => \PC[20]~67\);

-- Location: LCFF_X1_Y13_N7
\PC[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(20));

-- Location: LCCOMB_X1_Y13_N8
\PC[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[21]~68_combout\ = (PC(21) & (!\PC[20]~67\)) # (!PC(21) & ((\PC[20]~67\) # (GND)))
-- \PC[21]~69\ = CARRY((!\PC[20]~67\) # (!PC(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(21),
	datad => VCC,
	cin => \PC[20]~67\,
	combout => \PC[21]~68_combout\,
	cout => \PC[21]~69\);

-- Location: LCFF_X1_Y13_N9
\PC[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(21));

-- Location: LCCOMB_X1_Y13_N10
\PC[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[22]~70_combout\ = (PC(22) & (\PC[21]~69\ $ (GND))) # (!PC(22) & (!\PC[21]~69\ & VCC))
-- \PC[22]~71\ = CARRY((PC(22) & !\PC[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(22),
	datad => VCC,
	cin => \PC[21]~69\,
	combout => \PC[22]~70_combout\,
	cout => \PC[22]~71\);

-- Location: LCFF_X1_Y13_N11
\PC[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(22));

-- Location: LCCOMB_X1_Y13_N12
\PC[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[23]~72_combout\ = (PC(23) & (!\PC[22]~71\)) # (!PC(23) & ((\PC[22]~71\) # (GND)))
-- \PC[23]~73\ = CARRY((!\PC[22]~71\) # (!PC(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(23),
	datad => VCC,
	cin => \PC[22]~71\,
	combout => \PC[23]~72_combout\,
	cout => \PC[23]~73\);

-- Location: LCFF_X1_Y13_N13
\PC[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(23));

-- Location: LCCOMB_X1_Y13_N14
\PC[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[24]~74_combout\ = (PC(24) & (\PC[23]~73\ $ (GND))) # (!PC(24) & (!\PC[23]~73\ & VCC))
-- \PC[24]~75\ = CARRY((PC(24) & !\PC[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(24),
	datad => VCC,
	cin => \PC[23]~73\,
	combout => \PC[24]~74_combout\,
	cout => \PC[24]~75\);

-- Location: LCFF_X1_Y13_N15
\PC[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(24));

-- Location: LCCOMB_X1_Y13_N16
\PC[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[25]~76_combout\ = (PC(25) & (!\PC[24]~75\)) # (!PC(25) & ((\PC[24]~75\) # (GND)))
-- \PC[25]~77\ = CARRY((!\PC[24]~75\) # (!PC(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(25),
	datad => VCC,
	cin => \PC[24]~75\,
	combout => \PC[25]~76_combout\,
	cout => \PC[25]~77\);

-- Location: LCFF_X1_Y13_N17
\PC[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(25));

-- Location: LCCOMB_X1_Y13_N18
\PC[26]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[26]~78_combout\ = (PC(26) & (\PC[25]~77\ $ (GND))) # (!PC(26) & (!\PC[25]~77\ & VCC))
-- \PC[26]~79\ = CARRY((PC(26) & !\PC[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(26),
	datad => VCC,
	cin => \PC[25]~77\,
	combout => \PC[26]~78_combout\,
	cout => \PC[26]~79\);

-- Location: LCFF_X1_Y13_N19
\PC[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(26));

-- Location: LCCOMB_X1_Y13_N20
\PC[27]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[27]~80_combout\ = (PC(27) & (!\PC[26]~79\)) # (!PC(27) & ((\PC[26]~79\) # (GND)))
-- \PC[27]~81\ = CARRY((!\PC[26]~79\) # (!PC(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(27),
	datad => VCC,
	cin => \PC[26]~79\,
	combout => \PC[27]~80_combout\,
	cout => \PC[27]~81\);

-- Location: LCFF_X1_Y13_N21
\PC[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(27));

-- Location: LCCOMB_X1_Y13_N22
\PC[28]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[28]~82_combout\ = (PC(28) & (\PC[27]~81\ $ (GND))) # (!PC(28) & (!\PC[27]~81\ & VCC))
-- \PC[28]~83\ = CARRY((PC(28) & !\PC[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(28),
	datad => VCC,
	cin => \PC[27]~81\,
	combout => \PC[28]~82_combout\,
	cout => \PC[28]~83\);

-- Location: LCFF_X1_Y13_N23
\PC[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(28));

-- Location: LCCOMB_X1_Y13_N24
\PC[29]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[29]~84_combout\ = (PC(29) & (!\PC[28]~83\)) # (!PC(29) & ((\PC[28]~83\) # (GND)))
-- \PC[29]~85\ = CARRY((!\PC[28]~83\) # (!PC(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(29),
	datad => VCC,
	cin => \PC[28]~83\,
	combout => \PC[29]~84_combout\,
	cout => \PC[29]~85\);

-- Location: LCFF_X1_Y13_N25
\PC[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(29));

-- Location: LCCOMB_X1_Y13_N26
\PC[30]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[30]~86_combout\ = (PC(30) & (\PC[29]~85\ $ (GND))) # (!PC(30) & (!\PC[29]~85\ & VCC))
-- \PC[30]~87\ = CARRY((PC(30) & !\PC[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(30),
	datad => VCC,
	cin => \PC[29]~85\,
	combout => \PC[30]~86_combout\,
	cout => \PC[30]~87\);

-- Location: LCFF_X1_Y13_N27
\PC[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(30));

-- Location: LCCOMB_X1_Y13_N28
\PC[31]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC[31]~88_combout\ = \PC[30]~87\ $ (PC(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(31),
	cin => \PC[30]~87\,
	combout => \PC[31]~88_combout\);

-- Location: LCFF_X1_Y13_N29
\PC[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PC[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(31));

-- Location: LCCOMB_X16_Y7_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M4K_X17_Y7
\mem_i|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C4C0293",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MEM_INST.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MEM_INST:mem_i|altsyncram:altsyncram_component|altsyncram_n5d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clock~clkctrl_outclk\,
	portadatain => \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y8
\mem_i|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040014",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MEM_INST.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MEM_INST:mem_i|altsyncram:altsyncram_component|altsyncram_n5d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clock~clkctrl_outclk\,
	portadatain => \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_i|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[0]~I\ : cycloneii_io
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
	padio => ww_pc2(0));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[1]~I\ : cycloneii_io
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
	padio => ww_pc2(1));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[2]~I\ : cycloneii_io
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
	datain => PC(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(2));

-- Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[3]~I\ : cycloneii_io
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
	datain => PC(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(3));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[4]~I\ : cycloneii_io
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
	datain => PC(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(4));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[5]~I\ : cycloneii_io
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
	datain => PC(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(5));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[6]~I\ : cycloneii_io
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
	datain => PC(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(6));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[7]~I\ : cycloneii_io
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
	datain => PC(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(7));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[8]~I\ : cycloneii_io
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
	datain => PC(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(8));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[9]~I\ : cycloneii_io
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
	datain => PC(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(9));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[10]~I\ : cycloneii_io
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
	datain => PC(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(10));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[11]~I\ : cycloneii_io
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
	datain => PC(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(11));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[12]~I\ : cycloneii_io
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
	datain => PC(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(12));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[13]~I\ : cycloneii_io
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
	datain => PC(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(13));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[14]~I\ : cycloneii_io
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
	datain => PC(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(14));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[15]~I\ : cycloneii_io
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
	datain => PC(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(15));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[16]~I\ : cycloneii_io
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
	datain => PC(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(16));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[17]~I\ : cycloneii_io
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
	datain => PC(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(17));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[18]~I\ : cycloneii_io
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
	datain => PC(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(18));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[19]~I\ : cycloneii_io
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
	datain => PC(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(19));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[20]~I\ : cycloneii_io
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
	datain => PC(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(20));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[21]~I\ : cycloneii_io
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
	datain => PC(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(21));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[22]~I\ : cycloneii_io
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
	datain => PC(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(22));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[23]~I\ : cycloneii_io
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
	datain => PC(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(23));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[24]~I\ : cycloneii_io
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
	datain => PC(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(24));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[25]~I\ : cycloneii_io
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
	datain => PC(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(25));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[26]~I\ : cycloneii_io
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
	datain => PC(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(26));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[27]~I\ : cycloneii_io
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
	datain => PC(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(27));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[28]~I\ : cycloneii_io
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
	datain => PC(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(28));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[29]~I\ : cycloneii_io
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
	datain => PC(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(29));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[30]~I\ : cycloneii_io
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
	datain => PC(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(30));

-- Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc2[31]~I\ : cycloneii_io
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
	datain => PC(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pc2(31));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[0]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(0));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[1]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[2]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(2));

-- Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[3]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(3));

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[4]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(4));

-- Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[5]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(5));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[6]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(6));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[7]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(7));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[8]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(8));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[9]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(9));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[10]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(10));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[11]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(11));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[12]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(12));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[13]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(13));

-- Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[14]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(14));

-- Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[15]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(15));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[16]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(16));

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[17]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(17));

-- Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[18]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(18));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[19]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(19));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[20]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(20));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[21]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(21));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[22]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(22));

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[23]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(23));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[24]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(24));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[25]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(25));

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[26]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(26));

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[27]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(27));

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[28]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(28));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[29]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(29));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[30]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(30));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instr2[31]~I\ : cycloneii_io
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
	datain => \mem_i|altsyncram_component|auto_generated|q_a\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instr2(31));
END structure;


