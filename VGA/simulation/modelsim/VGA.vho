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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/06/2017 02:03:12"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C1|LessThan7~1_cout\ : std_logic;
SIGNAL \C1|LessThan7~3_cout\ : std_logic;
SIGNAL \C1|LessThan7~5_cout\ : std_logic;
SIGNAL \C1|LessThan7~7_cout\ : std_logic;
SIGNAL \C1|LessThan7~9_cout\ : std_logic;
SIGNAL \C1|LessThan7~11_cout\ : std_logic;
SIGNAL \C1|LessThan7~13_cout\ : std_logic;
SIGNAL \C1|LessThan7~15_cout\ : std_logic;
SIGNAL \C1|LessThan7~17_cout\ : std_logic;
SIGNAL \C1|LessThan7~18_combout\ : std_logic;
SIGNAL \C1|LessThan3~1_cout\ : std_logic;
SIGNAL \C1|LessThan3~3_cout\ : std_logic;
SIGNAL \C1|LessThan3~5_cout\ : std_logic;
SIGNAL \C1|LessThan3~7_cout\ : std_logic;
SIGNAL \C1|LessThan3~9_cout\ : std_logic;
SIGNAL \C1|LessThan3~11_cout\ : std_logic;
SIGNAL \C1|LessThan3~13_cout\ : std_logic;
SIGNAL \C1|LessThan3~15_cout\ : std_logic;
SIGNAL \C1|LessThan3~17_cout\ : std_logic;
SIGNAL \C1|LessThan3~18_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_cout\ : std_logic;
SIGNAL \C1|LessThan1~3_cout\ : std_logic;
SIGNAL \C1|LessThan1~5_cout\ : std_logic;
SIGNAL \C1|LessThan1~7_cout\ : std_logic;
SIGNAL \C1|LessThan1~9_cout\ : std_logic;
SIGNAL \C1|LessThan1~11_cout\ : std_logic;
SIGNAL \C1|LessThan1~13_cout\ : std_logic;
SIGNAL \C1|LessThan1~15_cout\ : std_logic;
SIGNAL \C1|LessThan1~17_cout\ : std_logic;
SIGNAL \C1|LessThan1~19_cout\ : std_logic;
SIGNAL \C1|LessThan1~20_combout\ : std_logic;
SIGNAL \C1|Add15~0_combout\ : std_logic;
SIGNAL \C1|Add15~21\ : std_logic;
SIGNAL \C1|Add15~22_combout\ : std_logic;
SIGNAL \C1|Add17~1\ : std_logic;
SIGNAL \C1|Add17~0_combout\ : std_logic;
SIGNAL \C1|Add17~3\ : std_logic;
SIGNAL \C1|Add17~2_combout\ : std_logic;
SIGNAL \C1|Add17~5\ : std_logic;
SIGNAL \C1|Add17~4_combout\ : std_logic;
SIGNAL \C1|Add17~7\ : std_logic;
SIGNAL \C1|Add17~6_combout\ : std_logic;
SIGNAL \C1|Add17~9\ : std_logic;
SIGNAL \C1|Add17~8_combout\ : std_logic;
SIGNAL \C1|Add17~11\ : std_logic;
SIGNAL \C1|Add17~10_combout\ : std_logic;
SIGNAL \C1|Add17~13\ : std_logic;
SIGNAL \C1|Add17~12_combout\ : std_logic;
SIGNAL \C1|Add17~15\ : std_logic;
SIGNAL \C1|Add17~14_combout\ : std_logic;
SIGNAL \C1|Add17~17\ : std_logic;
SIGNAL \C1|Add17~16_combout\ : std_logic;
SIGNAL \C1|Add17~19\ : std_logic;
SIGNAL \C1|Add17~18_combout\ : std_logic;
SIGNAL \C1|Add17~20_combout\ : std_logic;
SIGNAL \C1|LessThan207~1_cout\ : std_logic;
SIGNAL \C1|LessThan207~3_cout\ : std_logic;
SIGNAL \C1|LessThan207~5_cout\ : std_logic;
SIGNAL \C1|LessThan207~7_cout\ : std_logic;
SIGNAL \C1|LessThan207~9_cout\ : std_logic;
SIGNAL \C1|LessThan207~11_cout\ : std_logic;
SIGNAL \C1|LessThan207~13_cout\ : std_logic;
SIGNAL \C1|LessThan207~15_cout\ : std_logic;
SIGNAL \C1|LessThan207~17_cout\ : std_logic;
SIGNAL \C1|LessThan207~18_combout\ : std_logic;
SIGNAL \C1|LessThan208~1_cout\ : std_logic;
SIGNAL \C1|LessThan208~3_cout\ : std_logic;
SIGNAL \C1|LessThan208~5_cout\ : std_logic;
SIGNAL \C1|LessThan208~7_cout\ : std_logic;
SIGNAL \C1|LessThan208~9_cout\ : std_logic;
SIGNAL \C1|LessThan208~11_cout\ : std_logic;
SIGNAL \C1|LessThan208~13_cout\ : std_logic;
SIGNAL \C1|LessThan208~15_cout\ : std_logic;
SIGNAL \C1|LessThan208~17_cout\ : std_logic;
SIGNAL \C1|LessThan208~19_cout\ : std_logic;
SIGNAL \C1|LessThan208~20_combout\ : std_logic;
SIGNAL \C1|Q2Xa[4]~6_combout\ : std_logic;
SIGNAL \C1|Q2Xa[7]~12_combout\ : std_logic;
SIGNAL \C1|Q2Xi[4]~4_combout\ : std_logic;
SIGNAL \C1|Q2Xi[8]~12_combout\ : std_logic;
SIGNAL \C1|LessThan205~1_cout\ : std_logic;
SIGNAL \C1|LessThan205~3_cout\ : std_logic;
SIGNAL \C1|LessThan205~5_cout\ : std_logic;
SIGNAL \C1|LessThan205~7_cout\ : std_logic;
SIGNAL \C1|LessThan205~9_cout\ : std_logic;
SIGNAL \C1|LessThan205~11_cout\ : std_logic;
SIGNAL \C1|LessThan205~13_cout\ : std_logic;
SIGNAL \C1|LessThan205~15_cout\ : std_logic;
SIGNAL \C1|LessThan205~17_cout\ : std_logic;
SIGNAL \C1|LessThan205~18_combout\ : std_logic;
SIGNAL \C1|LessThan199~1_cout\ : std_logic;
SIGNAL \C1|LessThan199~3_cout\ : std_logic;
SIGNAL \C1|LessThan199~5_cout\ : std_logic;
SIGNAL \C1|LessThan199~7_cout\ : std_logic;
SIGNAL \C1|LessThan199~9_cout\ : std_logic;
SIGNAL \C1|LessThan199~11_cout\ : std_logic;
SIGNAL \C1|LessThan199~13_cout\ : std_logic;
SIGNAL \C1|LessThan199~15_cout\ : std_logic;
SIGNAL \C1|LessThan199~17_cout\ : std_logic;
SIGNAL \C1|LessThan199~18_combout\ : std_logic;
SIGNAL \C1|LessThan76~1_cout\ : std_logic;
SIGNAL \C1|LessThan76~3_cout\ : std_logic;
SIGNAL \C1|LessThan76~5_cout\ : std_logic;
SIGNAL \C1|LessThan76~7_cout\ : std_logic;
SIGNAL \C1|LessThan76~9_cout\ : std_logic;
SIGNAL \C1|LessThan76~11_cout\ : std_logic;
SIGNAL \C1|LessThan76~13_cout\ : std_logic;
SIGNAL \C1|LessThan76~15_cout\ : std_logic;
SIGNAL \C1|LessThan76~17_cout\ : std_logic;
SIGNAL \C1|LessThan76~19_cout\ : std_logic;
SIGNAL \C1|LessThan76~20_combout\ : std_logic;
SIGNAL \C1|LessThan75~1_cout\ : std_logic;
SIGNAL \C1|LessThan75~3_cout\ : std_logic;
SIGNAL \C1|LessThan75~5_cout\ : std_logic;
SIGNAL \C1|LessThan75~7_cout\ : std_logic;
SIGNAL \C1|LessThan75~9_cout\ : std_logic;
SIGNAL \C1|LessThan75~11_cout\ : std_logic;
SIGNAL \C1|LessThan75~13_cout\ : std_logic;
SIGNAL \C1|LessThan75~15_cout\ : std_logic;
SIGNAL \C1|LessThan75~17_cout\ : std_logic;
SIGNAL \C1|LessThan75~18_combout\ : std_logic;
SIGNAL \C1|Add25~0_combout\ : std_logic;
SIGNAL \C1|Add25~2_combout\ : std_logic;
SIGNAL \C1|Add25~6_combout\ : std_logic;
SIGNAL \C1|Add25~12_combout\ : std_logic;
SIGNAL \C1|Add25~14_combout\ : std_logic;
SIGNAL \C1|Add25~20_combout\ : std_logic;
SIGNAL \C1|Add25~30_combout\ : std_logic;
SIGNAL \C1|Add25~32_combout\ : std_logic;
SIGNAL \C1|Add25~36_combout\ : std_logic;
SIGNAL \C1|Add25~38_combout\ : std_logic;
SIGNAL \C1|Add25~44_combout\ : std_logic;
SIGNAL \C1|Add25~48_combout\ : std_logic;
SIGNAL \C1|Add25~50_combout\ : std_logic;
SIGNAL \C1|Add25~53\ : std_logic;
SIGNAL \C1|Add25~55\ : std_logic;
SIGNAL \C1|Add25~54_combout\ : std_logic;
SIGNAL \C1|Add25~57\ : std_logic;
SIGNAL \C1|Add25~56_combout\ : std_logic;
SIGNAL \C1|Add25~59\ : std_logic;
SIGNAL \C1|Add25~58_combout\ : std_logic;
SIGNAL \C1|Add25~61\ : std_logic;
SIGNAL \C1|Add25~60_combout\ : std_logic;
SIGNAL \C1|Add25~62_combout\ : std_logic;
SIGNAL \C1|Add23~1\ : std_logic;
SIGNAL \C1|Add23~0_combout\ : std_logic;
SIGNAL \C1|Add23~3\ : std_logic;
SIGNAL \C1|Add23~2_combout\ : std_logic;
SIGNAL \C1|Add23~5\ : std_logic;
SIGNAL \C1|Add23~4_combout\ : std_logic;
SIGNAL \C1|Add23~7\ : std_logic;
SIGNAL \C1|Add23~6_combout\ : std_logic;
SIGNAL \C1|Add23~9\ : std_logic;
SIGNAL \C1|Add23~8_combout\ : std_logic;
SIGNAL \C1|Add23~11\ : std_logic;
SIGNAL \C1|Add23~10_combout\ : std_logic;
SIGNAL \C1|Add23~13\ : std_logic;
SIGNAL \C1|Add23~12_combout\ : std_logic;
SIGNAL \C1|Add23~15\ : std_logic;
SIGNAL \C1|Add23~14_combout\ : std_logic;
SIGNAL \C1|Add23~17\ : std_logic;
SIGNAL \C1|Add23~16_combout\ : std_logic;
SIGNAL \C1|Add23~19\ : std_logic;
SIGNAL \C1|Add23~18_combout\ : std_logic;
SIGNAL \C1|Add23~21\ : std_logic;
SIGNAL \C1|Add23~20_combout\ : std_logic;
SIGNAL \C1|Add23~23\ : std_logic;
SIGNAL \C1|Add23~22_combout\ : std_logic;
SIGNAL \C1|Add23~25\ : std_logic;
SIGNAL \C1|Add23~24_combout\ : std_logic;
SIGNAL \C1|Add23~27\ : std_logic;
SIGNAL \C1|Add23~26_combout\ : std_logic;
SIGNAL \C1|Add23~29\ : std_logic;
SIGNAL \C1|Add23~28_combout\ : std_logic;
SIGNAL \C1|Add23~31\ : std_logic;
SIGNAL \C1|Add23~30_combout\ : std_logic;
SIGNAL \C1|Add23~33\ : std_logic;
SIGNAL \C1|Add23~32_combout\ : std_logic;
SIGNAL \C1|Add23~35\ : std_logic;
SIGNAL \C1|Add23~34_combout\ : std_logic;
SIGNAL \C1|Add23~37\ : std_logic;
SIGNAL \C1|Add23~36_combout\ : std_logic;
SIGNAL \C1|Add23~39\ : std_logic;
SIGNAL \C1|Add23~38_combout\ : std_logic;
SIGNAL \C1|Add23~41\ : std_logic;
SIGNAL \C1|Add23~40_combout\ : std_logic;
SIGNAL \C1|Add23~43\ : std_logic;
SIGNAL \C1|Add23~42_combout\ : std_logic;
SIGNAL \C1|Add23~45\ : std_logic;
SIGNAL \C1|Add23~44_combout\ : std_logic;
SIGNAL \C1|Add23~47\ : std_logic;
SIGNAL \C1|Add23~46_combout\ : std_logic;
SIGNAL \C1|Add23~49\ : std_logic;
SIGNAL \C1|Add23~48_combout\ : std_logic;
SIGNAL \C1|Add23~51\ : std_logic;
SIGNAL \C1|Add23~50_combout\ : std_logic;
SIGNAL \C1|Add23~53\ : std_logic;
SIGNAL \C1|Add23~52_combout\ : std_logic;
SIGNAL \C1|Add23~55\ : std_logic;
SIGNAL \C1|Add23~54_combout\ : std_logic;
SIGNAL \C1|Add23~57\ : std_logic;
SIGNAL \C1|Add23~56_combout\ : std_logic;
SIGNAL \C1|Add23~59\ : std_logic;
SIGNAL \C1|Add23~58_combout\ : std_logic;
SIGNAL \C1|Add23~61\ : std_logic;
SIGNAL \C1|Add23~60_combout\ : std_logic;
SIGNAL \C1|Add23~62_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|LessThan44~0_combout\ : std_logic;
SIGNAL \C1|LessThan44~1_combout\ : std_logic;
SIGNAL \C1|LessThan43~0_combout\ : std_logic;
SIGNAL \C1|dMap~87_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~29_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~35_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~37_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~38_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~40_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~44_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~47_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~48_combout\ : std_logic;
SIGNAL \C1|LessThan314~2_combout\ : std_logic;
SIGNAL \C1|LessThan314~5_combout\ : std_logic;
SIGNAL \C1|LessThan309~1_combout\ : std_logic;
SIGNAL \C1|LessThan285~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~65_combout\ : std_logic;
SIGNAL \C1|dMap~115_combout\ : std_logic;
SIGNAL \C1|LessThan285~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~70_combout\ : std_logic;
SIGNAL \C1|dMap~120_combout\ : std_logic;
SIGNAL \C1|LessThan237~0_combout\ : std_logic;
SIGNAL \C1|dMap~121_combout\ : std_logic;
SIGNAL \C1|dMap~122_combout\ : std_logic;
SIGNAL \C1|dMap~126_combout\ : std_logic;
SIGNAL \C1|dMap~127_combout\ : std_logic;
SIGNAL \C1|dMap~128_combout\ : std_logic;
SIGNAL \C1|dMap~129_combout\ : std_logic;
SIGNAL \C1|LessThan215~0_combout\ : std_logic;
SIGNAL \C1|LessThan215~1_combout\ : std_logic;
SIGNAL \C1|LessThan227~1_combout\ : std_logic;
SIGNAL \C1|dMap~135_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~94_combout\ : std_logic;
SIGNAL \C1|LessThan234~0_combout\ : std_logic;
SIGNAL \C1|LessThan246~1_combout\ : std_logic;
SIGNAL \C1|LessThan250~0_combout\ : std_logic;
SIGNAL \C1|dMap~145_combout\ : std_logic;
SIGNAL \C1|dMap~149_combout\ : std_logic;
SIGNAL \C1|dMap~150_combout\ : std_logic;
SIGNAL \C1|dMap~157_combout\ : std_logic;
SIGNAL \C1|LessThan179~0_combout\ : std_logic;
SIGNAL \C1|LessThan188~0_combout\ : std_logic;
SIGNAL \C1|LessThan179~1_combout\ : std_logic;
SIGNAL \C1|touchDown2~1_combout\ : std_logic;
SIGNAL \C1|arQ2X1~0_combout\ : std_logic;
SIGNAL \C1|LessThan262~1_combout\ : std_logic;
SIGNAL \C1|dMap~184_combout\ : std_logic;
SIGNAL \C1|LessThan263~0_combout\ : std_logic;
SIGNAL \C1|dMap~192_combout\ : std_logic;
SIGNAL \C1|dMap~193_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~4_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~6_combout\ : std_logic;
SIGNAL \C1|LessThan313~0_combout\ : std_logic;
SIGNAL \C1|LessThan313~1_combout\ : std_logic;
SIGNAL \C1|LessThan313~2_combout\ : std_logic;
SIGNAL \C1|LessThan313~3_combout\ : std_logic;
SIGNAL \C1|LessThan313~4_combout\ : std_logic;
SIGNAL \C1|LessThan313~5_combout\ : std_logic;
SIGNAL \C1|LessThan313~6_combout\ : std_logic;
SIGNAL \C1|LessThan313~7_combout\ : std_logic;
SIGNAL \C1|LessThan313~8_combout\ : std_logic;
SIGNAL \C1|LessThan313~9_combout\ : std_logic;
SIGNAL \C1|LessThan313~10_combout\ : std_logic;
SIGNAL \C1|dMap~195_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~28_combout\ : std_logic;
SIGNAL \C1|LessThan101~0_combout\ : std_logic;
SIGNAL \C1|LessThan103~2_combout\ : std_logic;
SIGNAL \C1|dMap~202_combout\ : std_logic;
SIGNAL \C1|dMap~203_combout\ : std_logic;
SIGNAL \C1|dMap~204_combout\ : std_logic;
SIGNAL \C1|dMap~205_combout\ : std_logic;
SIGNAL \C1|dMap~206_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~36_combout\ : std_logic;
SIGNAL \C1|LessThan118~1_combout\ : std_logic;
SIGNAL \C1|dMap~209_combout\ : std_logic;
SIGNAL \C1|dMap~210_combout\ : std_logic;
SIGNAL \C1|dMap~211_combout\ : std_logic;
SIGNAL \C1|dMap~212_combout\ : std_logic;
SIGNAL \C1|LessThan114~2_combout\ : std_logic;
SIGNAL \C1|LessThan98~1_combout\ : std_logic;
SIGNAL \C1|dMap~217_combout\ : std_logic;
SIGNAL \C1|dMap~218_combout\ : std_logic;
SIGNAL \C1|dMap~219_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~49_combout\ : std_logic;
SIGNAL \C1|LessThan98~2_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~51_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~0_combout\ : std_logic;
SIGNAL \C1|dMap~234_combout\ : std_logic;
SIGNAL \C1|dMap~235_combout\ : std_logic;
SIGNAL \C1|dMap~239_combout\ : std_logic;
SIGNAL \C1|dMap~246_combout\ : std_logic;
SIGNAL \C1|touchDown1~0_combout\ : std_logic;
SIGNAL \C1|touchDown1~1_combout\ : std_logic;
SIGNAL \C1|arQ1X2~2_combout\ : std_logic;
SIGNAL \C1|contatoC1~0_combout\ : std_logic;
SIGNAL \C1|dMap~252_combout\ : std_logic;
SIGNAL \C1|dMap~253_combout\ : std_logic;
SIGNAL \C1|dMap~254_combout\ : std_logic;
SIGNAL \C1|dMap~255_combout\ : std_logic;
SIGNAL \C1|dMap~264_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~6_combout\ : std_logic;
SIGNAL \C1|LessThan149~0_combout\ : std_logic;
SIGNAL \C1|dMap~280_combout\ : std_logic;
SIGNAL \C1|dMap~281_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~7_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~1_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump[7]~2_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~3_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump[31]~4_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~5_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~6_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~7_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~8_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~9_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~10_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~11_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~12_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~13_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~14_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~15_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~16_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~17_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~18_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~19_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~20_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~21_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~22_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~23_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~24_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~25_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~26_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~27_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~28_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~29_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~30_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~31_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~32_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~33_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~34_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~35_combout\ : std_logic;
SIGNAL \C1|LessThan252~2_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~66_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~74_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~82_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~83_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~84_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~96_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~36_combout\ : std_logic;
SIGNAL \C1|LessThan114~3_combout\ : std_logic;
SIGNAL \C1|LessThan171~0_combout\ : std_logic;
SIGNAL \C1|dMap~66_combout\ : std_logic;
SIGNAL \C1|dMap~289_combout\ : std_logic;
SIGNAL \C1|dMap~62_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|LessThan320~0_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|LessThan311~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|dMap~75_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|LessThan30~0_combout\ : std_logic;
SIGNAL \C1|LessThan312~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|LessThan321~0_combout\ : std_logic;
SIGNAL \C1|dMap~76_combout\ : std_logic;
SIGNAL \C1|LessThan324~0_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~regout\ : std_logic;
SIGNAL \C1|LessThan43~1_combout\ : std_logic;
SIGNAL \C1|LessThan18~2_combout\ : std_logic;
SIGNAL \C1|LessThan18~3_combout\ : std_logic;
SIGNAL \C1|dMap~106_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|dMap~107_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~49_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~50_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~25_combout\ : std_logic;
SIGNAL \C1|dMap~102_combout\ : std_logic;
SIGNAL \C1|dMap~101_combout\ : std_logic;
SIGNAL \C1|dMap~103_combout\ : std_logic;
SIGNAL \C1|dMap~104_combout\ : std_logic;
SIGNAL \C1|dMap~105_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~28_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~34_combout\ : std_logic;
SIGNAL \C1|LessThan39~0_combout\ : std_logic;
SIGNAL \C1|LessThan50~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~42_combout\ : std_logic;
SIGNAL \C1|LessThan47~0_combout\ : std_logic;
SIGNAL \C1|LessThan47~1_combout\ : std_logic;
SIGNAL \C1|dMap~95_combout\ : std_logic;
SIGNAL \C1|dMap~96_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~43_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~45_combout\ : std_logic;
SIGNAL \C1|dMap~99_combout\ : std_logic;
SIGNAL \C1|dMap~100_combout\ : std_logic;
SIGNAL \C1|LessThan49~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~129_combout\ : std_logic;
SIGNAL \C1|LessThan39~1_combout\ : std_logic;
SIGNAL \C1|dMap~90_combout\ : std_logic;
SIGNAL \C1|dMap~97_combout\ : std_logic;
SIGNAL \C1|dMap~98_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~39_combout\ : std_logic;
SIGNAL \C1|LessThan46~0_combout\ : std_logic;
SIGNAL \C1|dMap~89_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~26_combout\ : std_logic;
SIGNAL \C1|dMap~82_combout\ : std_logic;
SIGNAL \C1|dMap~86_combout\ : std_logic;
SIGNAL \C1|dMap~88_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~27_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~10_combout\ : std_logic;
SIGNAL \C1|dMap~78_combout\ : std_logic;
SIGNAL \C1|dMap~79_combout\ : std_logic;
SIGNAL \C1|dMap~80_combout\ : std_logic;
SIGNAL \C1|LessThan50~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~32_combout\ : std_logic;
SIGNAL \C1|LessThan41~0_combout\ : std_logic;
SIGNAL \C1|dMap~91_combout\ : std_logic;
SIGNAL \C1|dMap~92_combout\ : std_logic;
SIGNAL \C1|dMap~93_combout\ : std_logic;
SIGNAL \C1|dMap~94_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~30_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~33_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~36_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~41_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~46_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~16_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~17_combout\ : std_logic;
SIGNAL \C1|LessThan40~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~20_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~18_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~19_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~21_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~22_combout\ : std_logic;
SIGNAL \C1|dMap~83_combout\ : std_logic;
SIGNAL \C1|dMap~84_combout\ : std_logic;
SIGNAL \C1|dMap~77_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~14_combout\ : std_logic;
SIGNAL \C1|dMap~85_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~15_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~23_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|LessThan36~0_combout\ : std_logic;
SIGNAL \C1|dMap~81_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~11_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~12_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~13_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~24_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~51_combout\ : std_logic;
SIGNAL \C1|R~3_combout\ : std_logic;
SIGNAL \C1|Add26~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~10_combout\ : std_logic;
SIGNAL \C1|Add26~9\ : std_logic;
SIGNAL \C1|Add26~11\ : std_logic;
SIGNAL \C1|Add26~13\ : std_logic;
SIGNAL \C1|Add26~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~6_combout\ : std_logic;
SIGNAL \C1|Add26~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~7_combout\ : std_logic;
SIGNAL \C1|Add26~10_combout\ : std_logic;
SIGNAL \C1|Add26~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~9_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add5~1\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|Add20~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~7_combout\ : std_logic;
SIGNAL \C1|LessThan321~1_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~0_combout\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|Add26~15\ : std_logic;
SIGNAL \C1|Add26~17\ : std_logic;
SIGNAL \C1|Add26~18_combout\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~18_combout\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add5~17\ : std_logic;
SIGNAL \C1|Add5~19\ : std_logic;
SIGNAL \C1|Add5~20_combout\ : std_logic;
SIGNAL \C1|Add5~18_combout\ : std_logic;
SIGNAL \C1|LessThan103~0_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|Add5~0_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|LessThan93~0_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|LessThan93~1_combout\ : std_logic;
SIGNAL \C1|arQ1X2~8_combout\ : std_logic;
SIGNAL \C1|LessThan170~1_combout\ : std_logic;
SIGNAL \C1|Add26~2_combout\ : std_logic;
SIGNAL \C1|LessThan173~4_combout\ : std_logic;
SIGNAL \C1|Add26~4_combout\ : std_logic;
SIGNAL \C1|LessThan159~0_combout\ : std_logic;
SIGNAL \C1|LessThan159~1_combout\ : std_logic;
SIGNAL \C1|LessThan170~2_combout\ : std_logic;
SIGNAL \C1|LessThan160~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~121_combout\ : std_logic;
SIGNAL \C1|LessThan161~0_combout\ : std_logic;
SIGNAL \C1|LessThan161~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~134_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~135_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~0_combout\ : std_logic;
SIGNAL \C1|Add20~6_combout\ : std_logic;
SIGNAL \C1|Add20~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~5_combout\ : std_logic;
SIGNAL \C1|Add20~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~6_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add20~9\ : std_logic;
SIGNAL \C1|Add20~11\ : std_logic;
SIGNAL \C1|Add20~13\ : std_logic;
SIGNAL \C1|Add20~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~3_combout\ : std_logic;
SIGNAL \C1|Add20~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[7]~4_combout\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~17\ : std_logic;
SIGNAL \C1|Add1~18_combout\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|Add1~19\ : std_logic;
SIGNAL \C1|Add1~20_combout\ : std_logic;
SIGNAL \C1|dMap~227_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|dMap~232_combout\ : std_logic;
SIGNAL \C1|dMap~233_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|dMap~229_combout\ : std_logic;
SIGNAL \C1|dMap~230_combout\ : std_logic;
SIGNAL \C1|dMap~231_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|dMap~225_combout\ : std_logic;
SIGNAL \C1|dMap~226_combout\ : std_logic;
SIGNAL \C1|dMap~228_combout\ : std_logic;
SIGNAL \C1|dMap~290_combout\ : std_logic;
SIGNAL \C1|dMap~291_combout\ : std_logic;
SIGNAL \C1|dMap~33_combout\ : std_logic;
SIGNAL \C1|dMap~287_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~123_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~124_combout\ : std_logic;
SIGNAL \C1|LessThan55~0_combout\ : std_logic;
SIGNAL \C1|LessThan55~1_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|LessThan64~0_combout\ : std_logic;
SIGNAL \C1|LessThan55~2_combout\ : std_logic;
SIGNAL \C1|dMap~248_combout\ : std_logic;
SIGNAL \C1|dMap~249_combout\ : std_logic;
SIGNAL \C1|dMap~250_combout\ : std_logic;
SIGNAL \C1|dMap~247_combout\ : std_logic;
SIGNAL \C1|LessThan177~21_combout\ : std_logic;
SIGNAL \C1|LessThan178~0_combout\ : std_logic;
SIGNAL \C1|LessThan177~6_combout\ : std_logic;
SIGNAL \C1|LessThan177~3_combout\ : std_logic;
SIGNAL \C1|LessThan177~22_combout\ : std_logic;
SIGNAL \C1|dMap~224_combout\ : std_logic;
SIGNAL \C1|dMap~240_combout\ : std_logic;
SIGNAL \C1|dMap~241_combout\ : std_logic;
SIGNAL \C1|dMap~243_combout\ : std_logic;
SIGNAL \C1|dMap~242_combout\ : std_logic;
SIGNAL \C1|dMap~244_combout\ : std_logic;
SIGNAL \C1|LessThan173~5_combout\ : std_logic;
SIGNAL \C1|LessThan170~0_combout\ : std_logic;
SIGNAL \C1|LessThan170~3_combout\ : std_logic;
SIGNAL \C1|LessThan169~0_combout\ : std_logic;
SIGNAL \C1|dMap~223_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~126_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~127_combout\ : std_logic;
SIGNAL \C1|dMap~51_combout\ : std_logic;
SIGNAL \C1|dMap~48_combout\ : std_logic;
SIGNAL \C1|dMap~288_combout\ : std_logic;
SIGNAL \C1|dMap~237_combout\ : std_logic;
SIGNAL \C1|dMap~238_combout\ : std_logic;
SIGNAL \C1|dMap~236_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~125_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~128_combout\ : std_logic;
SIGNAL \C1|arQ1X1~0_combout\ : std_logic;
SIGNAL \C1|dMap~245_combout\ : std_logic;
SIGNAL \C1|LessThan56~0_combout\ : std_logic;
SIGNAL \C1|LessThan56~1_combout\ : std_logic;
SIGNAL \C1|LessThan98~0_combout\ : std_logic;
SIGNAL \C1|LessThan114~1_combout\ : std_logic;
SIGNAL \C1|LessThan93~4_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|LessThan119~0_combout\ : std_logic;
SIGNAL \C1|LessThan119~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~38_combout\ : std_logic;
SIGNAL \C1|LessThan128~0_combout\ : std_logic;
SIGNAL \C1|LessThan121~15_combout\ : std_logic;
SIGNAL \C1|LessThan128~2_combout\ : std_logic;
SIGNAL \C1|LessThan128~1_combout\ : std_logic;
SIGNAL \C1|LessThan107~3_combout\ : std_logic;
SIGNAL \C1|LessThan129~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~48_combout\ : std_logic;
SIGNAL \C1|LessThan106~0_combout\ : std_logic;
SIGNAL \C1|LessThan93~5_combout\ : std_logic;
SIGNAL \C1|LessThan106~1_combout\ : std_logic;
SIGNAL \C1|LessThan107~0_combout\ : std_logic;
SIGNAL \C1|LessThan107~1_combout\ : std_logic;
SIGNAL \C1|LessThan107~2_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~35_combout\ : std_logic;
SIGNAL \C1|arQ1X2~0_combout\ : std_logic;
SIGNAL \C1|arQ1X2~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~11_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~8_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~5_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~54_combout\ : std_logic;
SIGNAL \C1|LessThan121~3_combout\ : std_logic;
SIGNAL \C1|LessThan121~16_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~39_combout\ : std_logic;
SIGNAL \C1|arQ1X2~3_combout\ : std_logic;
SIGNAL \C1|LessThan124~0_combout\ : std_logic;
SIGNAL \C1|LessThan124~1_combout\ : std_logic;
SIGNAL \C1|LessThan120~0_combout\ : std_logic;
SIGNAL \C1|LessThan97~0_combout\ : std_logic;
SIGNAL \C1|LessThan120~1_combout\ : std_logic;
SIGNAL \C1|LessThan120~2_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~45_combout\ : std_logic;
SIGNAL \C1|LessThan99~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~50_combout\ : std_logic;
SIGNAL \C1|LessThan114~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~29_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~27_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~30_combout\ : std_logic;
SIGNAL \C1|LessThan103~1_combout\ : std_logic;
SIGNAL \C1|LessThan102~0_combout\ : std_logic;
SIGNAL \C1|LessThan102~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~32_combout\ : std_logic;
SIGNAL \C1|arQ1X2~4_combout\ : std_logic;
SIGNAL \C1|LessThan115~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~47_combout\ : std_logic;
SIGNAL \C1|LessThan88~0_combout\ : std_logic;
SIGNAL \C1|LessThan115~0_combout\ : std_logic;
SIGNAL \C1|LessThan89~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~34_combout\ : std_logic;
SIGNAL \C1|arQ1X2~5_combout\ : std_logic;
SIGNAL \C1|arQ1X2~6_combout\ : std_logic;
SIGNAL \C1|arQ1X2~7_combout\ : std_logic;
SIGNAL \C1|SQ1_noAR~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~1_combout\ : std_logic;
SIGNAL \C1|Add20~1\ : std_logic;
SIGNAL \C1|Add20~3\ : std_logic;
SIGNAL \C1|Add20~5\ : std_logic;
SIGNAL \C1|Add20~7\ : std_logic;
SIGNAL \C1|Add20~8_combout\ : std_logic;
SIGNAL \C1|Add20~10_combout\ : std_logic;
SIGNAL \C1|Add20~15\ : std_logic;
SIGNAL \C1|Add20~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~2_combout\ : std_logic;
SIGNAL \C1|LessThan83~0_combout\ : std_logic;
SIGNAL \C1|LessThan105~0_combout\ : std_logic;
SIGNAL \C1|LessThan83~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~25_combout\ : std_logic;
SIGNAL \C1|dMap~214_combout\ : std_logic;
SIGNAL \C1|dMap~215_combout\ : std_logic;
SIGNAL \C1|dMap~213_combout\ : std_logic;
SIGNAL \C1|dMap~216_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~40_combout\ : std_logic;
SIGNAL \C1|LessThan85~0_combout\ : std_logic;
SIGNAL \C1|dMap~198_combout\ : std_logic;
SIGNAL \C1|dMap~197_combout\ : std_logic;
SIGNAL \C1|dMap~199_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~53_combout\ : std_logic;
SIGNAL \C1|LessThan93~2_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~42_combout\ : std_logic;
SIGNAL \C1|LessThan118~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~41_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~43_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~44_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~46_combout\ : std_logic;
SIGNAL \C1|dMap~194_combout\ : std_logic;
SIGNAL \C1|dMap~196_combout\ : std_logic;
SIGNAL \C1|LessThan92~0_combout\ : std_logic;
SIGNAL \C1|LessThan92~1_combout\ : std_logic;
SIGNAL \C1|LessThan93~3_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~26_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~31_combout\ : std_logic;
SIGNAL \C1|dMap~200_combout\ : std_logic;
SIGNAL \C1|dMap~201_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~33_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~37_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~52_combout\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add8~1_cout\ : std_logic;
SIGNAL \C1|Add8~3_cout\ : std_logic;
SIGNAL \C1|Add8~5\ : std_logic;
SIGNAL \C1|Add8~7\ : std_logic;
SIGNAL \C1|Add8~9\ : std_logic;
SIGNAL \C1|Add8~11\ : std_logic;
SIGNAL \C1|Add8~13\ : std_logic;
SIGNAL \C1|Add8~15\ : std_logic;
SIGNAL \C1|Add8~17\ : std_logic;
SIGNAL \C1|Add8~19\ : std_logic;
SIGNAL \C1|Add8~21\ : std_logic;
SIGNAL \C1|Add8~22_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~0_combout\ : std_logic;
SIGNAL \C1|LessThan177~20_combout\ : std_logic;
SIGNAL \C1|LessThan157~2_combout\ : std_logic;
SIGNAL \C1|LessThan157~0_combout\ : std_logic;
SIGNAL \C1|LessThan315~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~1_combout\ : std_logic;
SIGNAL \C1|Add8~20_combout\ : std_logic;
SIGNAL \C1|Add8~18_combout\ : std_logic;
SIGNAL \C1|Add8~16_combout\ : std_logic;
SIGNAL \C1|Add21~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~7_combout\ : std_logic;
SIGNAL \C1|Add21~11\ : std_logic;
SIGNAL \C1|Add21~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~4_combout\ : std_logic;
SIGNAL \C1|Add21~13\ : std_logic;
SIGNAL \C1|Add21~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[8]~3_combout\ : std_logic;
SIGNAL \C1|Add21~15\ : std_logic;
SIGNAL \C1|Add21~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~2_combout\ : std_logic;
SIGNAL \C1|Add21~17\ : std_logic;
SIGNAL \C1|Add21~18_combout\ : std_logic;
SIGNAL \C1|Add3~15\ : std_logic;
SIGNAL \C1|Add3~17\ : std_logic;
SIGNAL \C1|Add3~18_combout\ : std_logic;
SIGNAL \C1|Add3~16_combout\ : std_logic;
SIGNAL \C1|Add3~12_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~8_combout\ : std_logic;
SIGNAL \C1|Add3~6_combout\ : std_logic;
SIGNAL \C1|Add13~1_cout\ : std_logic;
SIGNAL \C1|Add13~3_cout\ : std_logic;
SIGNAL \C1|Add13~5_cout\ : std_logic;
SIGNAL \C1|Add13~7\ : std_logic;
SIGNAL \C1|Add13~9\ : std_logic;
SIGNAL \C1|Add13~11\ : std_logic;
SIGNAL \C1|Add13~13\ : std_logic;
SIGNAL \C1|Add13~15\ : std_logic;
SIGNAL \C1|Add13~17\ : std_logic;
SIGNAL \C1|Add13~19\ : std_logic;
SIGNAL \C1|Add13~21\ : std_logic;
SIGNAL \C1|Add13~22_combout\ : std_logic;
SIGNAL \C1|Add28~1\ : std_logic;
SIGNAL \C1|Add28~3\ : std_logic;
SIGNAL \C1|Add28~5\ : std_logic;
SIGNAL \C1|Add28~7\ : std_logic;
SIGNAL \C1|Add28~9\ : std_logic;
SIGNAL \C1|Add28~10_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~8_combout\ : std_logic;
SIGNAL \C1|Add28~13\ : std_logic;
SIGNAL \C1|Add28~14_combout\ : std_logic;
SIGNAL \C1|SQ_X2[8]~6_combout\ : std_logic;
SIGNAL \C1|Add28~15\ : std_logic;
SIGNAL \C1|Add28~16_combout\ : std_logic;
SIGNAL \C1|Add28~6_combout\ : std_logic;
SIGNAL \C1|Add28~8_combout\ : std_logic;
SIGNAL \C1|LessThan317~0_combout\ : std_logic;
SIGNAL \C1|LessThan317~1_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~2_combout\ : std_logic;
SIGNAL \C1|LessThan213~1_cout\ : std_logic;
SIGNAL \C1|LessThan213~3_cout\ : std_logic;
SIGNAL \C1|LessThan213~5_cout\ : std_logic;
SIGNAL \C1|LessThan213~7_cout\ : std_logic;
SIGNAL \C1|LessThan213~9_cout\ : std_logic;
SIGNAL \C1|LessThan213~11_cout\ : std_logic;
SIGNAL \C1|LessThan213~13_cout\ : std_logic;
SIGNAL \C1|LessThan213~15_cout\ : std_logic;
SIGNAL \C1|LessThan213~17_cout\ : std_logic;
SIGNAL \C1|LessThan213~18_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|Add28~2_combout\ : std_logic;
SIGNAL \C1|SQ_X2[2]~10_combout\ : std_logic;
SIGNAL \C1|Add28~0_combout\ : std_logic;
SIGNAL \C1|LessThan151~1_cout\ : std_logic;
SIGNAL \C1|LessThan151~3_cout\ : std_logic;
SIGNAL \C1|LessThan151~5_cout\ : std_logic;
SIGNAL \C1|LessThan151~7_cout\ : std_logic;
SIGNAL \C1|LessThan151~9_cout\ : std_logic;
SIGNAL \C1|LessThan151~11_cout\ : std_logic;
SIGNAL \C1|LessThan151~13_cout\ : std_logic;
SIGNAL \C1|LessThan151~15_cout\ : std_logic;
SIGNAL \C1|LessThan151~17_cout\ : std_logic;
SIGNAL \C1|LessThan151~18_combout\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add28~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~9_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|LessThan210~1_cout\ : std_logic;
SIGNAL \C1|LessThan210~3_cout\ : std_logic;
SIGNAL \C1|LessThan210~5_cout\ : std_logic;
SIGNAL \C1|LessThan210~7_cout\ : std_logic;
SIGNAL \C1|LessThan210~9_cout\ : std_logic;
SIGNAL \C1|LessThan210~11_cout\ : std_logic;
SIGNAL \C1|LessThan210~13_cout\ : std_logic;
SIGNAL \C1|LessThan210~15_cout\ : std_logic;
SIGNAL \C1|LessThan210~17_cout\ : std_logic;
SIGNAL \C1|LessThan210~19_cout\ : std_logic;
SIGNAL \C1|LessThan210~20_combout\ : std_logic;
SIGNAL \C1|SQ~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~3_combout\ : std_logic;
SIGNAL \C1|LessThan230~1_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|LessThan246~0_combout\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|LessThan250~1_combout\ : std_logic;
SIGNAL \C1|LessThan250~2_combout\ : std_logic;
SIGNAL \C1|LessThan225~0_combout\ : std_logic;
SIGNAL \C1|LessThan260~3_combout\ : std_logic;
SIGNAL \C1|LessThan225~1_combout\ : std_logic;
SIGNAL \C1|LessThan256~0_combout\ : std_logic;
SIGNAL \C1|LessThan257~0_combout\ : std_logic;
SIGNAL \C1|LessThan257~1_combout\ : std_logic;
SIGNAL \C1|dMap~141_combout\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|LessThan281~0_combout\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|LessThan269~0_combout\ : std_logic;
SIGNAL \C1|dMap~171_combout\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|Add13~20_combout\ : std_logic;
SIGNAL \C1|dMap~172_combout\ : std_logic;
SIGNAL \C1|dMap~173_combout\ : std_logic;
SIGNAL \C1|dMap~174_combout\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|dMap~175_combout\ : std_logic;
SIGNAL \C1|dMap~176_combout\ : std_logic;
SIGNAL \C1|dMap~283_combout\ : std_logic;
SIGNAL \C1|dMap~177_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~10_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~11_combout\ : std_logic;
SIGNAL \C1|LessThan260~0_combout\ : std_logic;
SIGNAL \C1|LessThan260~1_combout\ : std_logic;
SIGNAL \C1|LessThan227~0_combout\ : std_logic;
SIGNAL \C1|LessThan261~0_combout\ : std_logic;
SIGNAL \C1|LessThan260~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~89_combout\ : std_logic;
SIGNAL \C1|dMap~183_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~12_combout\ : std_logic;
SIGNAL \C1|LessThan318~0_combout\ : std_logic;
SIGNAL \C1|LessThan224~0_combout\ : std_logic;
SIGNAL \C1|LessThan224~1_combout\ : std_logic;
SIGNAL \C1|LessThan225~3_combout\ : std_logic;
SIGNAL \C1|LessThan225~2_combout\ : std_logic;
SIGNAL \C1|LessThan225~4_combout\ : std_logic;
SIGNAL \C1|dMap~133_combout\ : std_logic;
SIGNAL \C1|LessThan218~0_combout\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|dMap~181_combout\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|LessThan262~0_combout\ : std_logic;
SIGNAL \C1|dMap~182_combout\ : std_logic;
SIGNAL \C1|dMap~185_combout\ : std_logic;
SIGNAL \C1|dMap~284_combout\ : std_logic;
SIGNAL \C1|dMap~186_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~5_combout\ : std_logic;
SIGNAL \C1|LessThan234~1_combout\ : std_logic;
SIGNAL \C1|LessThan247~0_combout\ : std_logic;
SIGNAL \C1|LessThan230~0_combout\ : std_logic;
SIGNAL \C1|LessThan230~2_combout\ : std_logic;
SIGNAL \C1|dMap~139_combout\ : std_logic;
SIGNAL \C1|dMap~285_combout\ : std_logic;
SIGNAL \C1|dMap~190_combout\ : std_logic;
SIGNAL \C1|dMap~191_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~14_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~7_combout\ : std_logic;
SIGNAL \C1|LessThan238~0_combout\ : std_logic;
SIGNAL \C1|LessThan231~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~90_combout\ : std_logic;
SIGNAL \C1|LessThan220~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~92_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~131_combout\ : std_logic;
SIGNAL \C1|dMap~178_combout\ : std_logic;
SIGNAL \C1|dMap~179_combout\ : std_logic;
SIGNAL \C1|dMap~180_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~15_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~8_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~9_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~13_combout\ : std_logic;
SIGNAL \C1|LessThan211~1_cout\ : std_logic;
SIGNAL \C1|LessThan211~3_cout\ : std_logic;
SIGNAL \C1|LessThan211~5_cout\ : std_logic;
SIGNAL \C1|LessThan211~7_cout\ : std_logic;
SIGNAL \C1|LessThan211~9_cout\ : std_logic;
SIGNAL \C1|LessThan211~11_cout\ : std_logic;
SIGNAL \C1|LessThan211~13_cout\ : std_logic;
SIGNAL \C1|LessThan211~15_cout\ : std_logic;
SIGNAL \C1|LessThan211~17_cout\ : std_logic;
SIGNAL \C1|LessThan211~18_combout\ : std_logic;
SIGNAL \C1|LessThan212~1_cout\ : std_logic;
SIGNAL \C1|LessThan212~3_cout\ : std_logic;
SIGNAL \C1|LessThan212~5_cout\ : std_logic;
SIGNAL \C1|LessThan212~7_cout\ : std_logic;
SIGNAL \C1|LessThan212~9_cout\ : std_logic;
SIGNAL \C1|LessThan212~11_cout\ : std_logic;
SIGNAL \C1|LessThan212~13_cout\ : std_logic;
SIGNAL \C1|LessThan212~15_cout\ : std_logic;
SIGNAL \C1|LessThan212~17_cout\ : std_logic;
SIGNAL \C1|LessThan212~19_cout\ : std_logic;
SIGNAL \C1|LessThan212~20_combout\ : std_logic;
SIGNAL \C1|contatoD2~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~1_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~5_combout\ : std_logic;
SIGNAL \C1|Add28~11\ : std_logic;
SIGNAL \C1|Add28~12_combout\ : std_logic;
SIGNAL \C1|SQ_X2[7]~7_combout\ : std_logic;
SIGNAL \C1|LessThan318~1_combout\ : std_logic;
SIGNAL \C1|process_0~23_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~15\ : std_logic;
SIGNAL \C1|Add9~17\ : std_logic;
SIGNAL \C1|Add9~18_combout\ : std_logic;
SIGNAL \C1|Add9~16_combout\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|LessThan282~1_cout\ : std_logic;
SIGNAL \C1|LessThan282~3_cout\ : std_logic;
SIGNAL \C1|LessThan282~5_cout\ : std_logic;
SIGNAL \C1|LessThan282~7_cout\ : std_logic;
SIGNAL \C1|LessThan282~9_cout\ : std_logic;
SIGNAL \C1|LessThan282~11_cout\ : std_logic;
SIGNAL \C1|LessThan282~13_cout\ : std_logic;
SIGNAL \C1|LessThan282~15_cout\ : std_logic;
SIGNAL \C1|LessThan282~17_cout\ : std_logic;
SIGNAL \C1|LessThan282~18_combout\ : std_logic;
SIGNAL \C1|LessThan283~1_cout\ : std_logic;
SIGNAL \C1|LessThan283~3_cout\ : std_logic;
SIGNAL \C1|LessThan283~5_cout\ : std_logic;
SIGNAL \C1|LessThan283~7_cout\ : std_logic;
SIGNAL \C1|LessThan283~9_cout\ : std_logic;
SIGNAL \C1|LessThan283~11_cout\ : std_logic;
SIGNAL \C1|LessThan283~13_cout\ : std_logic;
SIGNAL \C1|LessThan283~15_cout\ : std_logic;
SIGNAL \C1|LessThan283~17_cout\ : std_logic;
SIGNAL \C1|LessThan283~19_cout\ : std_logic;
SIGNAL \C1|LessThan283~20_combout\ : std_logic;
SIGNAL \C1|contatoB2~0_combout\ : std_logic;
SIGNAL \C1|LessThan214~1_cout\ : std_logic;
SIGNAL \C1|LessThan214~3_cout\ : std_logic;
SIGNAL \C1|LessThan214~5_cout\ : std_logic;
SIGNAL \C1|LessThan214~7_cout\ : std_logic;
SIGNAL \C1|LessThan214~9_cout\ : std_logic;
SIGNAL \C1|LessThan214~11_cout\ : std_logic;
SIGNAL \C1|LessThan214~13_cout\ : std_logic;
SIGNAL \C1|LessThan214~15_cout\ : std_logic;
SIGNAL \C1|LessThan214~17_cout\ : std_logic;
SIGNAL \C1|LessThan214~18_combout\ : std_logic;
SIGNAL \C1|process_0~15_combout\ : std_logic;
SIGNAL \C1|process_0~14_combout\ : std_logic;
SIGNAL \C1|process_0~24_combout\ : std_logic;
SIGNAL \C1|LessThan262~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~54_combout\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~58_combout\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|LessThan299~0_combout\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \C1|LessThan297~1_combout\ : std_logic;
SIGNAL \C1|LessThan297~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~78_combout\ : std_logic;
SIGNAL \C1|LessThan303~2_combout\ : std_logic;
SIGNAL \C1|LessThan295~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~120_combout\ : std_logic;
SIGNAL \C1|LessThan304~0_combout\ : std_logic;
SIGNAL \C1|LessThan301~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~76_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~75_combout\ : std_logic;
SIGNAL \C1|LessThan217~22_combout\ : std_logic;
SIGNAL \C1|dMap~187_combout\ : std_logic;
SIGNAL \C1|dMap~188_combout\ : std_logic;
SIGNAL \C1|dMap~189_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~4_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~5_combout\ : std_logic;
SIGNAL \C1|LessThan302~0_combout\ : std_logic;
SIGNAL \C1|LessThan293~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~69_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~71_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~63_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~64_combout\ : std_logic;
SIGNAL \C1|LessThan307~2_combout\ : std_logic;
SIGNAL \C1|LessThan297~0_combout\ : std_logic;
SIGNAL \C1|LessThan308~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~66_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~67_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~83_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~0_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~84_combout\ : std_logic;
SIGNAL \C1|LessThan307~0_combout\ : std_logic;
SIGNAL \C1|LessThan286~0_combout\ : std_logic;
SIGNAL \C1|LessThan288~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~85_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~132_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~56_combout\ : std_logic;
SIGNAL \C1|LessThan303~0_combout\ : std_logic;
SIGNAL \C1|LessThan303~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~55_combout\ : std_logic;
SIGNAL \C1|LessThan287~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~57_combout\ : std_logic;
SIGNAL \C1|LessThan307~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~59_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~60_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~2_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~3_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~6_combout\ : std_logic;
SIGNAL \C1|process_0~16_combout\ : std_logic;
SIGNAL \C1|process_0~17_combout\ : std_logic;
SIGNAL \C1|Add28~17\ : std_logic;
SIGNAL \C1|Add28~18_combout\ : std_logic;
SIGNAL \C1|Add9~19\ : std_logic;
SIGNAL \C1|Add9~20_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~53_combout\ : std_logic;
SIGNAL \C1|LessThan284~0_combout\ : std_logic;
SIGNAL \C1|dMap~130_combout\ : std_logic;
SIGNAL \C1|dMap~118_combout\ : std_logic;
SIGNAL \C1|dMap~131_combout\ : std_logic;
SIGNAL \C1|dMap~123_combout\ : std_logic;
SIGNAL \C1|dMap~111_combout\ : std_logic;
SIGNAL \C1|dMap~124_combout\ : std_logic;
SIGNAL \C1|dMap~125_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~77_combout\ : std_logic;
SIGNAL \C1|LessThan233~0_combout\ : std_logic;
SIGNAL \C1|dMap~119_combout\ : std_logic;
SIGNAL \C1|LessThan215~2_combout\ : std_logic;
SIGNAL \C1|LessThan223~0_combout\ : std_logic;
SIGNAL \C1|dMap~132_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~86_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~80_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~81_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~79_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~82_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~130_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~87_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~88_combout\ : std_logic;
SIGNAL \C1|dMap~116_combout\ : std_logic;
SIGNAL \C1|dMap~117_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~68_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~72_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~73_combout\ : std_logic;
SIGNAL \C1|LessThan310~0_combout\ : std_logic;
SIGNAL \C1|LessThan310~1_combout\ : std_logic;
SIGNAL \C1|LessThan309~0_combout\ : std_logic;
SIGNAL \C1|dMap~108_combout\ : std_logic;
SIGNAL \C1|dMap~110_combout\ : std_logic;
SIGNAL \C1|dMap~112_combout\ : std_logic;
SIGNAL \C1|dMap~109_combout\ : std_logic;
SIGNAL \C1|dMap~113_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~61_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~74_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~0_combout\ : std_logic;
SIGNAL \C1|LessThan216~0_combout\ : std_logic;
SIGNAL \C1|LessThan217~6_combout\ : std_logic;
SIGNAL \C1|LessThan217~3_combout\ : std_logic;
SIGNAL \C1|LessThan217~23_combout\ : std_logic;
SIGNAL \C1|dMap~114_combout\ : std_logic;
SIGNAL \C1|dMap~142_combout\ : std_logic;
SIGNAL \C1|LessThan227~2_combout\ : std_logic;
SIGNAL \C1|LessThan226~0_combout\ : std_logic;
SIGNAL \C1|dMap~143_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~99_combout\ : std_logic;
SIGNAL \C1|dMap~144_combout\ : std_logic;
SIGNAL \C1|LessThan242~0_combout\ : std_logic;
SIGNAL \C1|LessThan238~1_combout\ : std_logic;
SIGNAL \C1|dMap~140_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~97_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~98_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~100_combout\ : std_logic;
SIGNAL \C1|LessThan246~2_combout\ : std_logic;
SIGNAL \C1|dMap~138_combout\ : std_logic;
SIGNAL \C1|dMap~137_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~95_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~91_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~93_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~96_combout\ : std_logic;
SIGNAL \C1|dirQ2X1~0_combout\ : std_logic;
SIGNAL \C1|Add3~19\ : std_logic;
SIGNAL \C1|Add3~20_combout\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~10_combout\ : std_logic;
SIGNAL \C1|Add3~0_combout\ : std_logic;
SIGNAL \C1|Add3~2_combout\ : std_logic;
SIGNAL \C1|dMap~151_combout\ : std_logic;
SIGNAL \C1|dMap~152_combout\ : std_logic;
SIGNAL \C1|dMap~153_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~62_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~115_combout\ : std_logic;
SIGNAL \C1|Add3~4_combout\ : std_logic;
SIGNAL \C1|dMap~146_combout\ : std_logic;
SIGNAL \C1|dMap~147_combout\ : std_logic;
SIGNAL \C1|dMap~154_combout\ : std_logic;
SIGNAL \C1|dMap~155_combout\ : std_logic;
SIGNAL \C1|LessThan180~0_combout\ : std_logic;
SIGNAL \C1|dMap~156_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~112_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~113_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~114_combout\ : std_logic;
SIGNAL \C1|dMap~148_combout\ : std_logic;
SIGNAL \C1|dMap~158_combout\ : std_logic;
SIGNAL \C1|dMap~159_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~116_combout\ : std_logic;
SIGNAL \C1|dMap~169_combout\ : std_logic;
SIGNAL \C1|dMap~170_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~117_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~118_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~119_combout\ : std_logic;
SIGNAL \C1|dMap~134_combout\ : std_logic;
SIGNAL \C1|dMap~136_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~103_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~101_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~102_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~104_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~105_combout\ : std_logic;
SIGNAL \C1|dMap~167_combout\ : std_logic;
SIGNAL \C1|dMap~168_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~107_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~106_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~108_combout\ : std_logic;
SIGNAL \C1|dMap~160_combout\ : std_logic;
SIGNAL \C1|LessThan180~1_combout\ : std_logic;
SIGNAL \C1|LessThan180~2_combout\ : std_logic;
SIGNAL \C1|dMap~165_combout\ : std_logic;
SIGNAL \C1|dMap~164_combout\ : std_logic;
SIGNAL \C1|dMap~166_combout\ : std_logic;
SIGNAL \C1|dMap~162_combout\ : std_logic;
SIGNAL \C1|dMap~161_combout\ : std_logic;
SIGNAL \C1|dMap~163_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~109_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~110_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~111_combout\ : std_logic;
SIGNAL \C1|arQ2X2~0_combout\ : std_logic;
SIGNAL \C1|LessThan200~1_cout\ : std_logic;
SIGNAL \C1|LessThan200~3_cout\ : std_logic;
SIGNAL \C1|LessThan200~5_cout\ : std_logic;
SIGNAL \C1|LessThan200~7_cout\ : std_logic;
SIGNAL \C1|LessThan200~9_cout\ : std_logic;
SIGNAL \C1|LessThan200~11_cout\ : std_logic;
SIGNAL \C1|LessThan200~13_cout\ : std_logic;
SIGNAL \C1|LessThan200~15_cout\ : std_logic;
SIGNAL \C1|LessThan200~17_cout\ : std_logic;
SIGNAL \C1|LessThan200~19_cout\ : std_logic;
SIGNAL \C1|LessThan200~20_combout\ : std_logic;
SIGNAL \C1|Q2Xi[2]~1\ : std_logic;
SIGNAL \C1|Q2Xi[3]~3\ : std_logic;
SIGNAL \C1|Q2Xi[4]~5\ : std_logic;
SIGNAL \C1|Q2Xi[5]~7\ : std_logic;
SIGNAL \C1|Q2Xi[6]~9\ : std_logic;
SIGNAL \C1|Q2Xi[7]~11\ : std_logic;
SIGNAL \C1|Q2Xi[8]~13\ : std_logic;
SIGNAL \C1|Q2Xi[9]~15\ : std_logic;
SIGNAL \C1|Q2Xi[10]~17\ : std_logic;
SIGNAL \C1|Add16~0_combout\ : std_logic;
SIGNAL \C1|Q2Xi[10]~16_combout\ : std_logic;
SIGNAL \C1|Q2Xi[9]~14_combout\ : std_logic;
SIGNAL \C1|Q2Xi[7]~10_combout\ : std_logic;
SIGNAL \C1|Q2Xi[6]~8_combout\ : std_logic;
SIGNAL \C1|Q2Xi[5]~6_combout\ : std_logic;
SIGNAL \C1|Q2Xi[3]~2_combout\ : std_logic;
SIGNAL \C1|Q2Xi[2]~0_combout\ : std_logic;
SIGNAL \C1|LessThan206~1_cout\ : std_logic;
SIGNAL \C1|LessThan206~3_cout\ : std_logic;
SIGNAL \C1|LessThan206~5_cout\ : std_logic;
SIGNAL \C1|LessThan206~7_cout\ : std_logic;
SIGNAL \C1|LessThan206~9_cout\ : std_logic;
SIGNAL \C1|LessThan206~11_cout\ : std_logic;
SIGNAL \C1|LessThan206~13_cout\ : std_logic;
SIGNAL \C1|LessThan206~15_cout\ : std_logic;
SIGNAL \C1|LessThan206~17_cout\ : std_logic;
SIGNAL \C1|LessThan206~19_cout\ : std_logic;
SIGNAL \C1|LessThan206~20_combout\ : std_logic;
SIGNAL \C1|touchDown2~3_combout\ : std_logic;
SIGNAL \C1|Q2Xa[1]~1\ : std_logic;
SIGNAL \C1|Q2Xa[2]~3\ : std_logic;
SIGNAL \C1|Q2Xa[3]~5\ : std_logic;
SIGNAL \C1|Q2Xa[4]~7\ : std_logic;
SIGNAL \C1|Q2Xa[5]~9\ : std_logic;
SIGNAL \C1|Q2Xa[6]~11\ : std_logic;
SIGNAL \C1|Q2Xa[7]~13\ : std_logic;
SIGNAL \C1|Q2Xa[8]~15\ : std_logic;
SIGNAL \C1|Q2Xa[9]~17\ : std_logic;
SIGNAL \C1|Q2Xa[10]~19\ : std_logic;
SIGNAL \C1|Add14~0_combout\ : std_logic;
SIGNAL \C1|Q2Xa[10]~18_combout\ : std_logic;
SIGNAL \C1|Q2Xa[8]~14_combout\ : std_logic;
SIGNAL \C1|Q2Xa[6]~10_combout\ : std_logic;
SIGNAL \C1|Q2Xa[5]~8_combout\ : std_logic;
SIGNAL \C1|Q2Xa[3]~4_combout\ : std_logic;
SIGNAL \C1|Q2Xa[2]~2_combout\ : std_logic;
SIGNAL \C1|LessThan202~1_cout\ : std_logic;
SIGNAL \C1|LessThan202~3_cout\ : std_logic;
SIGNAL \C1|LessThan202~5_cout\ : std_logic;
SIGNAL \C1|LessThan202~7_cout\ : std_logic;
SIGNAL \C1|LessThan202~9_cout\ : std_logic;
SIGNAL \C1|LessThan202~11_cout\ : std_logic;
SIGNAL \C1|LessThan202~13_cout\ : std_logic;
SIGNAL \C1|LessThan202~15_cout\ : std_logic;
SIGNAL \C1|LessThan202~17_cout\ : std_logic;
SIGNAL \C1|LessThan202~19_cout\ : std_logic;
SIGNAL \C1|LessThan202~20_combout\ : std_logic;
SIGNAL \C1|Q2Xa[9]~16_combout\ : std_logic;
SIGNAL \C1|Q2Xa[1]~0_combout\ : std_logic;
SIGNAL \C1|LessThan201~1_cout\ : std_logic;
SIGNAL \C1|LessThan201~3_cout\ : std_logic;
SIGNAL \C1|LessThan201~5_cout\ : std_logic;
SIGNAL \C1|LessThan201~7_cout\ : std_logic;
SIGNAL \C1|LessThan201~9_cout\ : std_logic;
SIGNAL \C1|LessThan201~11_cout\ : std_logic;
SIGNAL \C1|LessThan201~13_cout\ : std_logic;
SIGNAL \C1|LessThan201~15_cout\ : std_logic;
SIGNAL \C1|LessThan201~17_cout\ : std_logic;
SIGNAL \C1|LessThan201~18_combout\ : std_logic;
SIGNAL \C1|touchDown2~2_combout\ : std_logic;
SIGNAL \C1|Add15~1\ : std_logic;
SIGNAL \C1|Add15~3\ : std_logic;
SIGNAL \C1|Add15~5\ : std_logic;
SIGNAL \C1|Add15~7\ : std_logic;
SIGNAL \C1|Add15~9\ : std_logic;
SIGNAL \C1|Add15~11\ : std_logic;
SIGNAL \C1|Add15~13\ : std_logic;
SIGNAL \C1|Add15~15\ : std_logic;
SIGNAL \C1|Add15~17\ : std_logic;
SIGNAL \C1|Add15~19\ : std_logic;
SIGNAL \C1|Add15~20_combout\ : std_logic;
SIGNAL \C1|Add15~18_combout\ : std_logic;
SIGNAL \C1|Add15~16_combout\ : std_logic;
SIGNAL \C1|Add15~14_combout\ : std_logic;
SIGNAL \C1|Add15~12_combout\ : std_logic;
SIGNAL \C1|Add15~10_combout\ : std_logic;
SIGNAL \C1|Add15~6_combout\ : std_logic;
SIGNAL \C1|Add15~4_combout\ : std_logic;
SIGNAL \C1|Add15~2_combout\ : std_logic;
SIGNAL \C1|LessThan204~1_cout\ : std_logic;
SIGNAL \C1|LessThan204~3_cout\ : std_logic;
SIGNAL \C1|LessThan204~5_cout\ : std_logic;
SIGNAL \C1|LessThan204~7_cout\ : std_logic;
SIGNAL \C1|LessThan204~9_cout\ : std_logic;
SIGNAL \C1|LessThan204~11_cout\ : std_logic;
SIGNAL \C1|LessThan204~13_cout\ : std_logic;
SIGNAL \C1|LessThan204~15_cout\ : std_logic;
SIGNAL \C1|LessThan204~17_cout\ : std_logic;
SIGNAL \C1|LessThan204~19_cout\ : std_logic;
SIGNAL \C1|LessThan204~20_combout\ : std_logic;
SIGNAL \C1|Add15~8_combout\ : std_logic;
SIGNAL \C1|LessThan203~1_cout\ : std_logic;
SIGNAL \C1|LessThan203~3_cout\ : std_logic;
SIGNAL \C1|LessThan203~5_cout\ : std_logic;
SIGNAL \C1|LessThan203~7_cout\ : std_logic;
SIGNAL \C1|LessThan203~9_cout\ : std_logic;
SIGNAL \C1|LessThan203~11_cout\ : std_logic;
SIGNAL \C1|LessThan203~13_cout\ : std_logic;
SIGNAL \C1|LessThan203~15_cout\ : std_logic;
SIGNAL \C1|LessThan203~17_cout\ : std_logic;
SIGNAL \C1|LessThan203~18_combout\ : std_logic;
SIGNAL \C1|touchDown2~0_combout\ : std_logic;
SIGNAL \C1|touchDown2~4_combout\ : std_logic;
SIGNAL \C1|SQ2_noAR~0_combout\ : std_logic;
SIGNAL \C1|SQ2_noAR~1_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump[4]~64_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~77_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump[31]~65_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~73_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~67_combout\ : std_logic;
SIGNAL \C1|Add25~1\ : std_logic;
SIGNAL \C1|Add25~3\ : std_logic;
SIGNAL \C1|Add25~4_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~69_combout\ : std_logic;
SIGNAL \C1|Add25~5\ : std_logic;
SIGNAL \C1|Add25~7\ : std_logic;
SIGNAL \C1|Add25~9\ : std_logic;
SIGNAL \C1|Add25~10_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~72_combout\ : std_logic;
SIGNAL \C1|Add25~11\ : std_logic;
SIGNAL \C1|Add25~13\ : std_logic;
SIGNAL \C1|Add25~15\ : std_logic;
SIGNAL \C1|Add25~16_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~75_combout\ : std_logic;
SIGNAL \C1|Add25~17\ : std_logic;
SIGNAL \C1|Add25~18_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~76_combout\ : std_logic;
SIGNAL \C1|Add25~19\ : std_logic;
SIGNAL \C1|Add25~21\ : std_logic;
SIGNAL \C1|Add25~22_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~78_combout\ : std_logic;
SIGNAL \C1|Add25~23\ : std_logic;
SIGNAL \C1|Add25~24_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~79_combout\ : std_logic;
SIGNAL \C1|Add25~25\ : std_logic;
SIGNAL \C1|Add25~27\ : std_logic;
SIGNAL \C1|Add25~28_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~81_combout\ : std_logic;
SIGNAL \C1|Add25~29\ : std_logic;
SIGNAL \C1|Add25~31\ : std_logic;
SIGNAL \C1|Add25~33\ : std_logic;
SIGNAL \C1|Add25~34_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~90_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~89_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~87_combout\ : std_logic;
SIGNAL \C1|Add25~35\ : std_logic;
SIGNAL \C1|Add25~37\ : std_logic;
SIGNAL \C1|Add25~39\ : std_logic;
SIGNAL \C1|Add25~40_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~85_combout\ : std_logic;
SIGNAL \C1|Add25~41\ : std_logic;
SIGNAL \C1|Add25~42_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~86_combout\ : std_logic;
SIGNAL \C1|LessThan314~6_combout\ : std_logic;
SIGNAL \C1|LessThan314~7_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~92_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~94_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~91_combout\ : std_logic;
SIGNAL \C1|Add25~43\ : std_logic;
SIGNAL \C1|Add25~45\ : std_logic;
SIGNAL \C1|Add25~46_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~88_combout\ : std_logic;
SIGNAL \C1|Add25~47\ : std_logic;
SIGNAL \C1|Add25~49\ : std_logic;
SIGNAL \C1|Add25~51\ : std_logic;
SIGNAL \C1|Add25~52_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~93_combout\ : std_logic;
SIGNAL \C1|LessThan314~8_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~97_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~95_combout\ : std_logic;
SIGNAL \C1|LessThan314~9_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~68_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~70_combout\ : std_logic;
SIGNAL \C1|LessThan314~0_combout\ : std_logic;
SIGNAL \C1|Add25~26_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~80_combout\ : std_logic;
SIGNAL \C1|LessThan314~3_combout\ : std_logic;
SIGNAL \C1|Add25~8_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~71_combout\ : std_logic;
SIGNAL \C1|LessThan314~1_combout\ : std_logic;
SIGNAL \C1|LessThan314~4_combout\ : std_logic;
SIGNAL \C1|LessThan314~10_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~1_combout\ : std_logic;
SIGNAL \C1|Add21~1\ : std_logic;
SIGNAL \C1|Add21~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[2]~6_combout\ : std_logic;
SIGNAL \C1|Add21~3\ : std_logic;
SIGNAL \C1|Add21~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[3]~5_combout\ : std_logic;
SIGNAL \C1|Add21~5\ : std_logic;
SIGNAL \C1|Add21~6_combout\ : std_logic;
SIGNAL \C1|Add21~7\ : std_logic;
SIGNAL \C1|Add21~8_combout\ : std_logic;
SIGNAL \C1|Add21~9\ : std_logic;
SIGNAL \C1|Add21~10_combout\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add8~12_combout\ : std_logic;
SIGNAL \C1|LessThan80~1_cout\ : std_logic;
SIGNAL \C1|LessThan80~3_cout\ : std_logic;
SIGNAL \C1|LessThan80~5_cout\ : std_logic;
SIGNAL \C1|LessThan80~7_cout\ : std_logic;
SIGNAL \C1|LessThan80~9_cout\ : std_logic;
SIGNAL \C1|LessThan80~11_cout\ : std_logic;
SIGNAL \C1|LessThan80~13_cout\ : std_logic;
SIGNAL \C1|LessThan80~15_cout\ : std_logic;
SIGNAL \C1|LessThan80~17_cout\ : std_logic;
SIGNAL \C1|LessThan80~19_cout\ : std_logic;
SIGNAL \C1|LessThan80~20_combout\ : std_logic;
SIGNAL \C1|Add8~14_combout\ : std_logic;
SIGNAL \C1|Add8~10_combout\ : std_logic;
SIGNAL \C1|Add8~6_combout\ : std_logic;
SIGNAL \C1|LessThan79~1_cout\ : std_logic;
SIGNAL \C1|LessThan79~3_cout\ : std_logic;
SIGNAL \C1|LessThan79~5_cout\ : std_logic;
SIGNAL \C1|LessThan79~7_cout\ : std_logic;
SIGNAL \C1|LessThan79~9_cout\ : std_logic;
SIGNAL \C1|LessThan79~11_cout\ : std_logic;
SIGNAL \C1|LessThan79~13_cout\ : std_logic;
SIGNAL \C1|LessThan79~15_cout\ : std_logic;
SIGNAL \C1|LessThan79~17_cout\ : std_logic;
SIGNAL \C1|LessThan79~18_combout\ : std_logic;
SIGNAL \C1|contatoD1~0_combout\ : std_logic;
SIGNAL \C1|LessThan82~1_cout\ : std_logic;
SIGNAL \C1|LessThan82~3_cout\ : std_logic;
SIGNAL \C1|LessThan82~5_cout\ : std_logic;
SIGNAL \C1|LessThan82~7_cout\ : std_logic;
SIGNAL \C1|LessThan82~9_cout\ : std_logic;
SIGNAL \C1|LessThan82~11_cout\ : std_logic;
SIGNAL \C1|LessThan82~13_cout\ : std_logic;
SIGNAL \C1|LessThan82~15_cout\ : std_logic;
SIGNAL \C1|LessThan82~17_cout\ : std_logic;
SIGNAL \C1|LessThan82~18_combout\ : std_logic;
SIGNAL \C1|LessThan81~1_cout\ : std_logic;
SIGNAL \C1|LessThan81~3_cout\ : std_logic;
SIGNAL \C1|LessThan81~5_cout\ : std_logic;
SIGNAL \C1|LessThan81~7_cout\ : std_logic;
SIGNAL \C1|LessThan81~9_cout\ : std_logic;
SIGNAL \C1|LessThan81~11_cout\ : std_logic;
SIGNAL \C1|LessThan81~13_cout\ : std_logic;
SIGNAL \C1|LessThan81~15_cout\ : std_logic;
SIGNAL \C1|LessThan81~17_cout\ : std_logic;
SIGNAL \C1|LessThan81~18_combout\ : std_logic;
SIGNAL \C1|contatoC1~1_combout\ : std_logic;
SIGNAL \C1|LessThan78~1_cout\ : std_logic;
SIGNAL \C1|LessThan78~3_cout\ : std_logic;
SIGNAL \C1|LessThan78~5_cout\ : std_logic;
SIGNAL \C1|LessThan78~7_cout\ : std_logic;
SIGNAL \C1|LessThan78~9_cout\ : std_logic;
SIGNAL \C1|LessThan78~11_cout\ : std_logic;
SIGNAL \C1|LessThan78~13_cout\ : std_logic;
SIGNAL \C1|LessThan78~15_cout\ : std_logic;
SIGNAL \C1|LessThan78~17_cout\ : std_logic;
SIGNAL \C1|LessThan78~19_cout\ : std_logic;
SIGNAL \C1|LessThan78~20_combout\ : std_logic;
SIGNAL \C1|LessThan77~1_cout\ : std_logic;
SIGNAL \C1|LessThan77~3_cout\ : std_logic;
SIGNAL \C1|LessThan77~5_cout\ : std_logic;
SIGNAL \C1|LessThan77~7_cout\ : std_logic;
SIGNAL \C1|LessThan77~9_cout\ : std_logic;
SIGNAL \C1|LessThan77~11_cout\ : std_logic;
SIGNAL \C1|LessThan77~13_cout\ : std_logic;
SIGNAL \C1|LessThan77~15_cout\ : std_logic;
SIGNAL \C1|LessThan77~17_cout\ : std_logic;
SIGNAL \C1|LessThan77~18_combout\ : std_logic;
SIGNAL \C1|SQ~2_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~2_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~3_combout\ : std_logic;
SIGNAL \C1|Add8~8_combout\ : std_logic;
SIGNAL \C1|dMap~276_combout\ : std_logic;
SIGNAL \C1|LessThan130~2_combout\ : std_logic;
SIGNAL \C1|LessThan131~0_combout\ : std_logic;
SIGNAL \C1|dMap~270_combout\ : std_logic;
SIGNAL \C1|Add8~4_combout\ : std_logic;
SIGNAL \C1|dMap~269_combout\ : std_logic;
SIGNAL \C1|dMap~251_combout\ : std_logic;
SIGNAL \C1|dMap~267_combout\ : std_logic;
SIGNAL \C1|dMap~271_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~7_combout\ : std_logic;
SIGNAL \C1|LessThan137~0_combout\ : std_logic;
SIGNAL \C1|dMap~257_combout\ : std_logic;
SIGNAL \C1|dMap~258_combout\ : std_logic;
SIGNAL \C1|dMap~282_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~8_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~9_combout\ : std_logic;
SIGNAL \C1|dMap~272_combout\ : std_logic;
SIGNAL \C1|dMap~273_combout\ : std_logic;
SIGNAL \C1|dMap~274_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~3_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~2_combout\ : std_logic;
SIGNAL \C1|dMap~275_combout\ : std_logic;
SIGNAL \C1|dMap~256_combout\ : std_logic;
SIGNAL \C1|dMap~277_combout\ : std_logic;
SIGNAL \C1|dMap~278_combout\ : std_logic;
SIGNAL \C1|dMap~279_combout\ : std_logic;
SIGNAL \C1|dMap~259_combout\ : std_logic;
SIGNAL \C1|dMap~261_combout\ : std_logic;
SIGNAL \C1|dMap~263_combout\ : std_logic;
SIGNAL \C1|dMap~265_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~4_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~5_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~6_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~10_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~4_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~5_combout\ : std_logic;
SIGNAL \C1|Add26~1\ : std_logic;
SIGNAL \C1|Add26~3\ : std_logic;
SIGNAL \C1|Add26~5\ : std_logic;
SIGNAL \C1|Add26~7\ : std_logic;
SIGNAL \C1|Add26~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~8_combout\ : std_logic;
SIGNAL \C1|LessThan158~0_combout\ : std_logic;
SIGNAL \C1|LessThan177~19_combout\ : std_logic;
SIGNAL \C1|LessThan156~0_combout\ : std_logic;
SIGNAL \C1|LessThan175~0_combout\ : std_logic;
SIGNAL \C1|LessThan150~1_cout\ : std_logic;
SIGNAL \C1|LessThan150~3_cout\ : std_logic;
SIGNAL \C1|LessThan150~5_cout\ : std_logic;
SIGNAL \C1|LessThan150~7_cout\ : std_logic;
SIGNAL \C1|LessThan150~9_cout\ : std_logic;
SIGNAL \C1|LessThan150~11_cout\ : std_logic;
SIGNAL \C1|LessThan150~13_cout\ : std_logic;
SIGNAL \C1|LessThan150~15_cout\ : std_logic;
SIGNAL \C1|LessThan150~17_cout\ : std_logic;
SIGNAL \C1|LessThan150~18_combout\ : std_logic;
SIGNAL \C1|SQ~1_combout\ : std_logic;
SIGNAL \C1|process_0~18_combout\ : std_logic;
SIGNAL \C1|process_0~19_combout\ : std_logic;
SIGNAL \C1|LessThan139~0_combout\ : std_logic;
SIGNAL \C1|LessThan130~0_combout\ : std_logic;
SIGNAL \C1|LessThan130~1_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~5_combout\ : std_logic;
SIGNAL \C1|LessThan155~0_combout\ : std_logic;
SIGNAL \C1|LessThan155~1_combout\ : std_logic;
SIGNAL \C1|LessThan156~1_combout\ : std_logic;
SIGNAL \C1|dMap~222_combout\ : std_logic;
SIGNAL \C1|dMap~260_combout\ : std_logic;
SIGNAL \C1|dMap~262_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~2_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~1_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~3_combout\ : std_logic;
SIGNAL \C1|dMap~14_combout\ : std_logic;
SIGNAL \C1|dMap~11_combout\ : std_logic;
SIGNAL \C1|dMap~286_combout\ : std_logic;
SIGNAL \C1|dMap~266_combout\ : std_logic;
SIGNAL \C1|dMap~268_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~4_combout\ : std_logic;
SIGNAL \C1|process_0~20_combout\ : std_logic;
SIGNAL \C1|process_0~21_combout\ : std_logic;
SIGNAL \C1|process_0~22_combout\ : std_logic;
SIGNAL \C1|Add26~16_combout\ : std_logic;
SIGNAL \C1|LessThan163~3_combout\ : std_logic;
SIGNAL \C1|LessThan164~3_combout\ : std_logic;
SIGNAL \C1|LessThan164~4_combout\ : std_logic;
SIGNAL \C1|LessThan163~2_combout\ : std_logic;
SIGNAL \C1|LessThan163~4_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~122_combout\ : std_logic;
SIGNAL \C1|LessThan157~1_combout\ : std_logic;
SIGNAL \C1|LessThan158~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~133_combout\ : std_logic;
SIGNAL \C1|dMap~220_combout\ : std_logic;
SIGNAL \C1|dMap~221_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~6_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~7_combout\ : std_logic;
SIGNAL \C1|dMap~207_combout\ : std_logic;
SIGNAL \C1|dMap~208_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~2_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~1_combout\ : std_logic;
SIGNAL \C1|LessThan173~7_combout\ : std_logic;
SIGNAL \C1|LessThan173~6_combout\ : std_logic;
SIGNAL \C1|LessThan174~2_combout\ : std_logic;
SIGNAL \C1|LessThan174~3_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~3_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~4_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~5_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~8_combout\ : std_logic;
SIGNAL \C1|LessThan164~2_combout\ : std_logic;
SIGNAL \C1|LessThan156~2_combout\ : std_logic;
SIGNAL \C1|LessThan152~0_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~9_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~0_combout\ : std_logic;
SIGNAL \C1|Add20~17\ : std_logic;
SIGNAL \C1|Add20~18_combout\ : std_logic;
SIGNAL \C1|LessThan2~1_cout\ : std_logic;
SIGNAL \C1|LessThan2~3_cout\ : std_logic;
SIGNAL \C1|LessThan2~5_cout\ : std_logic;
SIGNAL \C1|LessThan2~7_cout\ : std_logic;
SIGNAL \C1|LessThan2~9_cout\ : std_logic;
SIGNAL \C1|LessThan2~11_cout\ : std_logic;
SIGNAL \C1|LessThan2~13_cout\ : std_logic;
SIGNAL \C1|LessThan2~15_cout\ : std_logic;
SIGNAL \C1|LessThan2~17_cout\ : std_logic;
SIGNAL \C1|LessThan2~19_cout\ : std_logic;
SIGNAL \C1|LessThan2~20_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_cout\ : std_logic;
SIGNAL \C1|LessThan0~3_cout\ : std_logic;
SIGNAL \C1|LessThan0~5_cout\ : std_logic;
SIGNAL \C1|LessThan0~7_cout\ : std_logic;
SIGNAL \C1|LessThan0~9_cout\ : std_logic;
SIGNAL \C1|LessThan0~11_cout\ : std_logic;
SIGNAL \C1|LessThan0~13_cout\ : std_logic;
SIGNAL \C1|LessThan0~15_cout\ : std_logic;
SIGNAL \C1|LessThan0~17_cout\ : std_logic;
SIGNAL \C1|LessThan0~18_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~19_cout\ : std_logic;
SIGNAL \C1|LessThan4~20_combout\ : std_logic;
SIGNAL \C1|LessThan6~1_cout\ : std_logic;
SIGNAL \C1|LessThan6~3_cout\ : std_logic;
SIGNAL \C1|LessThan6~5_cout\ : std_logic;
SIGNAL \C1|LessThan6~7_cout\ : std_logic;
SIGNAL \C1|LessThan6~9_cout\ : std_logic;
SIGNAL \C1|LessThan6~11_cout\ : std_logic;
SIGNAL \C1|LessThan6~13_cout\ : std_logic;
SIGNAL \C1|LessThan6~15_cout\ : std_logic;
SIGNAL \C1|LessThan6~17_cout\ : std_logic;
SIGNAL \C1|LessThan6~19_cout\ : std_logic;
SIGNAL \C1|LessThan6~20_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~17_cout\ : std_logic;
SIGNAL \C1|LessThan5~18_combout\ : std_logic;
SIGNAL \C1|DRAW2~0_combout\ : std_logic;
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \C1|R~4_combout\ : std_logic;
SIGNAL \C1|process_0~13_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~52_combout\ : std_logic;
SIGNAL \C1|R~5_combout\ : std_logic;
SIGNAL \C1|R~6_combout\ : std_logic;
SIGNAL \C1|R~9_combout\ : std_logic;
SIGNAL \C1|R~7_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \C1|B~11_combout\ : std_logic;
SIGNAL \C1|B~3_combout\ : std_logic;
SIGNAL \C1|B~4_combout\ : std_logic;
SIGNAL \C1|B~5_combout\ : std_logic;
SIGNAL \C1|B~6_combout\ : std_logic;
SIGNAL \C1|B~7_combout\ : std_logic;
SIGNAL \C1|B~9_combout\ : std_logic;
SIGNAL \C1|R~8_combout\ : std_logic;
SIGNAL \C1|G~2_combout\ : std_logic;
SIGNAL \C1|B~8_combout\ : std_logic;
SIGNAL \C1|B~10_combout\ : std_logic;
SIGNAL \C1|G~3_combout\ : std_logic;
SIGNAL \C1|G~6_combout\ : std_logic;
SIGNAL \C1|G~4_combout\ : std_logic;
SIGNAL \C1|G~5_combout\ : std_logic;
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ2_Jump\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C1|SQ1_Jump\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_24 <= CLOCK_24;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \CLOCK_24~combout\(0));

\C|altpll_0|sd1|_clk0\ <= \C|altpll_0|sd1|pll_CLK_bus\(0);
\C|altpll_0|sd1|pll~CLK1\ <= \C|altpll_0|sd1|pll_CLK_bus\(1);
\C|altpll_0|sd1|pll~CLK2\ <= \C|altpll_0|sd1|pll_CLK_bus\(2);

\C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C|altpll_0|sd1|_clk0\);

-- Location: LCCOMB_X30_Y14_N0
\C1|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((!\C1|VPOS\(1) & \C1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|Add3~0_combout\,
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X30_Y14_N2
\C1|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan7~1_cout\) # (!\C1|Add3~2_combout\))) # (!\C1|VPOS\(2) & (!\C1|Add3~2_combout\ & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X30_Y14_N4
\C1|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|Add3~4_combout\ & ((!\C1|LessThan7~3_cout\) # (!\C1|VPOS\(3)))) # (!\C1|Add3~4_combout\ & (!\C1|VPOS\(3) & !\C1|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X30_Y14_N6
\C1|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan7~5_cout\) # (!\C1|Add3~6_combout\))) # (!\C1|VPOS\(4) & (!\C1|Add3~6_combout\ & !\C1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X30_Y14_N8
\C1|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|Add3~8_combout\ & ((!\C1|LessThan7~7_cout\) # (!\C1|VPOS\(5)))) # (!\C1|Add3~8_combout\ & (!\C1|VPOS\(5) & !\C1|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X30_Y14_N10
\C1|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan7~9_cout\) # (!\C1|Add3~10_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add3~10_combout\ & !\C1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X30_Y14_N12
\C1|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|Add3~12_combout\ & ((!\C1|LessThan7~11_cout\) # (!\C1|VPOS\(7)))) # (!\C1|Add3~12_combout\ & (!\C1|VPOS\(7) & !\C1|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X30_Y14_N14
\C1|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|Add3~14_combout\ & (\C1|VPOS\(8) & !\C1|LessThan7~13_cout\)) # (!\C1|Add3~14_combout\ & ((\C1|VPOS\(8)) # (!\C1|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~14_combout\,
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X30_Y14_N16
\C1|LessThan7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~17_cout\ = CARRY((\C1|VPOS\(9) & (\C1|Add3~16_combout\ & !\C1|LessThan7~15_cout\)) # (!\C1|VPOS\(9) & ((\C1|Add3~16_combout\) # (!\C1|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|LessThan7~15_cout\,
	cout => \C1|LessThan7~17_cout\);

-- Location: LCCOMB_X30_Y14_N18
\C1|LessThan7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~18_combout\ = (\C1|Add3~18_combout\ & ((\C1|LessThan7~17_cout\) # (!\C1|VPOS\(10)))) # (!\C1|Add3~18_combout\ & (\C1|LessThan7~17_cout\ & !\C1|VPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan7~17_cout\,
	combout => \C1|LessThan7~18_combout\);

-- Location: LCCOMB_X31_Y14_N4
\C1|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_cout\ = CARRY((\C1|Add1~0_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y14_N6
\C1|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~3_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan3~1_cout\) # (!\C1|Add1~2_combout\))) # (!\C1|VPOS\(2) & (!\C1|Add1~2_combout\ & !\C1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan3~1_cout\,
	cout => \C1|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y14_N8
\C1|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~5_cout\ = CARRY((\C1|VPOS\(3) & (\C1|Add1~4_combout\ & !\C1|LessThan3~3_cout\)) # (!\C1|VPOS\(3) & ((\C1|Add1~4_combout\) # (!\C1|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|LessThan3~3_cout\,
	cout => \C1|LessThan3~5_cout\);

-- Location: LCCOMB_X31_Y14_N10
\C1|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~7_cout\ = CARRY((\C1|Add1~6_combout\ & (\C1|VPOS\(4) & !\C1|LessThan3~5_cout\)) # (!\C1|Add1~6_combout\ & ((\C1|VPOS\(4)) # (!\C1|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan3~5_cout\,
	cout => \C1|LessThan3~7_cout\);

-- Location: LCCOMB_X31_Y14_N12
\C1|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~9_cout\ = CARRY((\C1|VPOS\(5) & (\C1|Add1~8_combout\ & !\C1|LessThan3~7_cout\)) # (!\C1|VPOS\(5) & ((\C1|Add1~8_combout\) # (!\C1|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add1~8_combout\,
	datad => VCC,
	cin => \C1|LessThan3~7_cout\,
	cout => \C1|LessThan3~9_cout\);

-- Location: LCCOMB_X31_Y14_N14
\C1|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~11_cout\ = CARRY((\C1|Add1~10_combout\ & (\C1|VPOS\(6) & !\C1|LessThan3~9_cout\)) # (!\C1|Add1~10_combout\ & ((\C1|VPOS\(6)) # (!\C1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan3~9_cout\,
	cout => \C1|LessThan3~11_cout\);

-- Location: LCCOMB_X31_Y14_N16
\C1|LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~13_cout\ = CARRY((\C1|VPOS\(7) & (\C1|Add1~12_combout\ & !\C1|LessThan3~11_cout\)) # (!\C1|VPOS\(7) & ((\C1|Add1~12_combout\) # (!\C1|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|LessThan3~11_cout\,
	cout => \C1|LessThan3~13_cout\);

-- Location: LCCOMB_X31_Y14_N18
\C1|LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan3~13_cout\) # (!\C1|Add1~14_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add1~14_combout\ & !\C1|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|LessThan3~13_cout\,
	cout => \C1|LessThan3~15_cout\);

-- Location: LCCOMB_X31_Y14_N20
\C1|LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~17_cout\ = CARRY((\C1|VPOS\(9) & (\C1|Add1~16_combout\ & !\C1|LessThan3~15_cout\)) # (!\C1|VPOS\(9) & ((\C1|Add1~16_combout\) # (!\C1|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|LessThan3~15_cout\,
	cout => \C1|LessThan3~17_cout\);

-- Location: LCCOMB_X31_Y14_N22
\C1|LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~18_combout\ = (\C1|VPOS\(10) & (\C1|LessThan3~17_cout\ & \C1|Add1~18_combout\)) # (!\C1|VPOS\(10) & ((\C1|LessThan3~17_cout\) # (\C1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datad => \C1|Add1~18_combout\,
	cin => \C1|LessThan3~17_cout\,
	combout => \C1|LessThan3~18_combout\);

-- Location: LCCOMB_X31_Y16_N0
\C1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y16_N2
\C1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|SQ_X1\(1) & (!\C1|HPOS\(1) & !\C1|LessThan1~1_cout\)) # (!\C1|SQ_X1\(1) & ((!\C1|LessThan1~1_cout\) # (!\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y16_N4
\C1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|HPOS\(2) & ((!\C1|LessThan1~3_cout\) # (!\C1|Add0~0_combout\))) # (!\C1|HPOS\(2) & (!\C1|Add0~0_combout\ & !\C1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y16_N6
\C1|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~7_cout\ = CARRY((\C1|Add0~2_combout\ & ((!\C1|LessThan1~5_cout\) # (!\C1|HPOS\(3)))) # (!\C1|Add0~2_combout\ & (!\C1|HPOS\(3) & !\C1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan1~5_cout\,
	cout => \C1|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y16_N8
\C1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|HPOS\(4) & ((!\C1|LessThan1~7_cout\) # (!\C1|Add0~4_combout\))) # (!\C1|HPOS\(4) & (!\C1|Add0~4_combout\ & !\C1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y16_N10
\C1|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|Add0~6_combout\ & !\C1|LessThan1~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|Add0~6_combout\) # (!\C1|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan1~9_cout\,
	cout => \C1|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y16_N12
\C1|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|Add0~8_combout\ & (\C1|HPOS\(6) & !\C1|LessThan1~11_cout\)) # (!\C1|Add0~8_combout\ & ((\C1|HPOS\(6)) # (!\C1|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y16_N14
\C1|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~15_cout\ = CARRY((\C1|Add0~10_combout\ & ((!\C1|LessThan1~13_cout\) # (!\C1|HPOS\(7)))) # (!\C1|Add0~10_combout\ & (!\C1|HPOS\(7) & !\C1|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan1~13_cout\,
	cout => \C1|LessThan1~15_cout\);

-- Location: LCCOMB_X31_Y16_N16
\C1|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~17_cout\ = CARRY((\C1|Add0~12_combout\ & (\C1|HPOS\(8) & !\C1|LessThan1~15_cout\)) # (!\C1|Add0~12_combout\ & ((\C1|HPOS\(8)) # (!\C1|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan1~15_cout\,
	cout => \C1|LessThan1~17_cout\);

-- Location: LCCOMB_X31_Y16_N18
\C1|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~19_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add0~14_combout\ & !\C1|LessThan1~17_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add0~14_combout\) # (!\C1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|LessThan1~17_cout\,
	cout => \C1|LessThan1~19_cout\);

-- Location: LCCOMB_X31_Y16_N20
\C1|LessThan1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~20_combout\ = (\C1|HPOS\(10) & (\C1|LessThan1~19_cout\ & \C1|Add0~16_combout\)) # (!\C1|HPOS\(10) & ((\C1|LessThan1~19_cout\) # (\C1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|Add0~16_combout\,
	cin => \C1|LessThan1~19_cout\,
	combout => \C1|LessThan1~20_combout\);

-- Location: LCCOMB_X26_Y15_N2
\C1|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add15~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add15~0_combout\,
	cout => \C1|Add15~1\);

-- Location: LCCOMB_X26_Y15_N22
\C1|Add15~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~20_combout\ = (\C1|Add2~14_combout\ & ((GND) # (!\C1|Add15~19\))) # (!\C1|Add2~14_combout\ & (\C1|Add15~19\ $ (GND)))
-- \C1|Add15~21\ = CARRY((\C1|Add2~14_combout\) # (!\C1|Add15~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datad => VCC,
	cin => \C1|Add15~19\,
	combout => \C1|Add15~20_combout\,
	cout => \C1|Add15~21\);

-- Location: LCCOMB_X26_Y15_N24
\C1|Add15~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~22_combout\ = \C1|Add15~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add15~21\,
	combout => \C1|Add15~22_combout\);

-- Location: LCCOMB_X30_Y13_N10
\C1|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~0_combout\ = \C1|SQ_X2\(2) $ (GND)
-- \C1|Add17~1\ = CARRY(!\C1|SQ_X2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datad => VCC,
	combout => \C1|Add17~0_combout\,
	cout => \C1|Add17~1\);

-- Location: LCCOMB_X30_Y13_N12
\C1|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~2_combout\ = (\C1|SQ_X2\(3) & (!\C1|Add17~1\)) # (!\C1|SQ_X2\(3) & (\C1|Add17~1\ & VCC))
-- \C1|Add17~3\ = CARRY((\C1|SQ_X2\(3) & !\C1|Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add17~1\,
	combout => \C1|Add17~2_combout\,
	cout => \C1|Add17~3\);

-- Location: LCCOMB_X30_Y13_N14
\C1|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~4_combout\ = (\C1|Add2~0_combout\ & ((GND) # (!\C1|Add17~3\))) # (!\C1|Add2~0_combout\ & (\C1|Add17~3\ $ (GND)))
-- \C1|Add17~5\ = CARRY((\C1|Add2~0_combout\) # (!\C1|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|Add17~3\,
	combout => \C1|Add17~4_combout\,
	cout => \C1|Add17~5\);

-- Location: LCCOMB_X30_Y13_N16
\C1|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~6_combout\ = (\C1|Add2~2_combout\ & (!\C1|Add17~5\)) # (!\C1|Add2~2_combout\ & ((\C1|Add17~5\) # (GND)))
-- \C1|Add17~7\ = CARRY((!\C1|Add17~5\) # (!\C1|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|Add17~5\,
	combout => \C1|Add17~6_combout\,
	cout => \C1|Add17~7\);

-- Location: LCCOMB_X30_Y13_N18
\C1|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~8_combout\ = (\C1|Add2~4_combout\ & ((GND) # (!\C1|Add17~7\))) # (!\C1|Add2~4_combout\ & (\C1|Add17~7\ $ (GND)))
-- \C1|Add17~9\ = CARRY((\C1|Add2~4_combout\) # (!\C1|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|Add17~7\,
	combout => \C1|Add17~8_combout\,
	cout => \C1|Add17~9\);

-- Location: LCCOMB_X30_Y13_N20
\C1|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~10_combout\ = (\C1|Add2~6_combout\ & (\C1|Add17~9\ & VCC)) # (!\C1|Add2~6_combout\ & (!\C1|Add17~9\))
-- \C1|Add17~11\ = CARRY((!\C1|Add2~6_combout\ & !\C1|Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|Add17~9\,
	combout => \C1|Add17~10_combout\,
	cout => \C1|Add17~11\);

-- Location: LCCOMB_X30_Y13_N22
\C1|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~12_combout\ = (\C1|Add2~8_combout\ & ((GND) # (!\C1|Add17~11\))) # (!\C1|Add2~8_combout\ & (\C1|Add17~11\ $ (GND)))
-- \C1|Add17~13\ = CARRY((\C1|Add2~8_combout\) # (!\C1|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~8_combout\,
	datad => VCC,
	cin => \C1|Add17~11\,
	combout => \C1|Add17~12_combout\,
	cout => \C1|Add17~13\);

-- Location: LCCOMB_X30_Y13_N24
\C1|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~14_combout\ = (\C1|Add2~10_combout\ & (\C1|Add17~13\ & VCC)) # (!\C1|Add2~10_combout\ & (!\C1|Add17~13\))
-- \C1|Add17~15\ = CARRY((!\C1|Add2~10_combout\ & !\C1|Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datad => VCC,
	cin => \C1|Add17~13\,
	combout => \C1|Add17~14_combout\,
	cout => \C1|Add17~15\);

-- Location: LCCOMB_X30_Y13_N26
\C1|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~16_combout\ = (\C1|Add2~12_combout\ & ((GND) # (!\C1|Add17~15\))) # (!\C1|Add2~12_combout\ & (\C1|Add17~15\ $ (GND)))
-- \C1|Add17~17\ = CARRY((\C1|Add2~12_combout\) # (!\C1|Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~12_combout\,
	datad => VCC,
	cin => \C1|Add17~15\,
	combout => \C1|Add17~16_combout\,
	cout => \C1|Add17~17\);

-- Location: LCCOMB_X30_Y13_N28
\C1|Add17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~18_combout\ = (\C1|Add2~14_combout\ & (\C1|Add17~17\ & VCC)) # (!\C1|Add2~14_combout\ & (!\C1|Add17~17\))
-- \C1|Add17~19\ = CARRY((!\C1|Add2~14_combout\ & !\C1|Add17~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datad => VCC,
	cin => \C1|Add17~17\,
	combout => \C1|Add17~18_combout\,
	cout => \C1|Add17~19\);

-- Location: LCCOMB_X30_Y13_N30
\C1|Add17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~20_combout\ = !\C1|Add17~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add17~19\,
	combout => \C1|Add17~20_combout\);

-- Location: LCCOMB_X25_Y13_N10
\C1|LessThan207~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~1_cout\ = CARRY((\C1|SQ_X2\(1) & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan207~1_cout\);

-- Location: LCCOMB_X25_Y13_N12
\C1|LessThan207~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~3_cout\ = CARRY((\C1|Add17~0_combout\ & (\C1|SQ_X1\(2) & !\C1|LessThan207~1_cout\)) # (!\C1|Add17~0_combout\ & ((\C1|SQ_X1\(2)) # (!\C1|LessThan207~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan207~1_cout\,
	cout => \C1|LessThan207~3_cout\);

-- Location: LCCOMB_X25_Y13_N14
\C1|LessThan207~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~5_cout\ = CARRY((\C1|Add17~2_combout\ & ((!\C1|LessThan207~3_cout\) # (!\C1|SQ_X1\(3)))) # (!\C1|Add17~2_combout\ & (!\C1|SQ_X1\(3) & !\C1|LessThan207~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~2_combout\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan207~3_cout\,
	cout => \C1|LessThan207~5_cout\);

-- Location: LCCOMB_X25_Y13_N16
\C1|LessThan207~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~7_cout\ = CARRY((\C1|Add17~4_combout\ & (!\C1|SQ_X1\(4) & !\C1|LessThan207~5_cout\)) # (!\C1|Add17~4_combout\ & ((!\C1|LessThan207~5_cout\) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~4_combout\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan207~5_cout\,
	cout => \C1|LessThan207~7_cout\);

-- Location: LCCOMB_X25_Y13_N18
\C1|LessThan207~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~9_cout\ = CARRY((\C1|SQ_X1\(5) & ((\C1|Add17~6_combout\) # (!\C1|LessThan207~7_cout\))) # (!\C1|SQ_X1\(5) & (\C1|Add17~6_combout\ & !\C1|LessThan207~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|Add17~6_combout\,
	datad => VCC,
	cin => \C1|LessThan207~7_cout\,
	cout => \C1|LessThan207~9_cout\);

-- Location: LCCOMB_X25_Y13_N20
\C1|LessThan207~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~11_cout\ = CARRY((\C1|SQ_X1\(6) & ((!\C1|LessThan207~9_cout\) # (!\C1|Add17~8_combout\))) # (!\C1|SQ_X1\(6) & (!\C1|Add17~8_combout\ & !\C1|LessThan207~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|Add17~8_combout\,
	datad => VCC,
	cin => \C1|LessThan207~9_cout\,
	cout => \C1|LessThan207~11_cout\);

-- Location: LCCOMB_X25_Y13_N22
\C1|LessThan207~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~13_cout\ = CARRY((\C1|SQ_X1\(7) & ((\C1|Add17~10_combout\) # (!\C1|LessThan207~11_cout\))) # (!\C1|SQ_X1\(7) & (\C1|Add17~10_combout\ & !\C1|LessThan207~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|Add17~10_combout\,
	datad => VCC,
	cin => \C1|LessThan207~11_cout\,
	cout => \C1|LessThan207~13_cout\);

-- Location: LCCOMB_X25_Y13_N24
\C1|LessThan207~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~15_cout\ = CARRY((\C1|SQ_X1\(8) & (!\C1|Add17~12_combout\ & !\C1|LessThan207~13_cout\)) # (!\C1|SQ_X1\(8) & ((!\C1|LessThan207~13_cout\) # (!\C1|Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|Add17~12_combout\,
	datad => VCC,
	cin => \C1|LessThan207~13_cout\,
	cout => \C1|LessThan207~15_cout\);

-- Location: LCCOMB_X25_Y13_N26
\C1|LessThan207~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|Add17~14_combout\ & !\C1|LessThan207~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|Add17~14_combout\) # (!\C1|LessThan207~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|Add17~14_combout\,
	datad => VCC,
	cin => \C1|LessThan207~15_cout\,
	cout => \C1|LessThan207~17_cout\);

-- Location: LCCOMB_X25_Y13_N28
\C1|LessThan207~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan207~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan207~17_cout\ & \C1|Add17~16_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan207~17_cout\) # (\C1|Add17~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|Add17~16_combout\,
	cin => \C1|LessThan207~17_cout\,
	combout => \C1|LessThan207~18_combout\);

-- Location: LCCOMB_X29_Y13_N0
\C1|LessThan208~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~1_cout\ = CARRY((\C1|SQ_X2\(1) & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan208~1_cout\);

-- Location: LCCOMB_X29_Y13_N2
\C1|LessThan208~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~3_cout\ = CARRY((\C1|Add17~0_combout\ & (\C1|Add0~0_combout\ & !\C1|LessThan208~1_cout\)) # (!\C1|Add17~0_combout\ & ((\C1|Add0~0_combout\) # (!\C1|LessThan208~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|LessThan208~1_cout\,
	cout => \C1|LessThan208~3_cout\);

-- Location: LCCOMB_X29_Y13_N4
\C1|LessThan208~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~5_cout\ = CARRY((\C1|Add0~2_combout\ & (\C1|Add17~2_combout\ & !\C1|LessThan208~3_cout\)) # (!\C1|Add0~2_combout\ & ((\C1|Add17~2_combout\) # (!\C1|LessThan208~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Add17~2_combout\,
	datad => VCC,
	cin => \C1|LessThan208~3_cout\,
	cout => \C1|LessThan208~5_cout\);

-- Location: LCCOMB_X29_Y13_N6
\C1|LessThan208~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~7_cout\ = CARRY((\C1|Add0~4_combout\ & ((!\C1|LessThan208~5_cout\) # (!\C1|Add17~4_combout\))) # (!\C1|Add0~4_combout\ & (!\C1|Add17~4_combout\ & !\C1|LessThan208~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datab => \C1|Add17~4_combout\,
	datad => VCC,
	cin => \C1|LessThan208~5_cout\,
	cout => \C1|LessThan208~7_cout\);

-- Location: LCCOMB_X29_Y13_N8
\C1|LessThan208~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~9_cout\ = CARRY((\C1|Add17~6_combout\ & ((!\C1|LessThan208~7_cout\) # (!\C1|Add0~6_combout\))) # (!\C1|Add17~6_combout\ & (!\C1|Add0~6_combout\ & !\C1|LessThan208~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~6_combout\,
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan208~7_cout\,
	cout => \C1|LessThan208~9_cout\);

-- Location: LCCOMB_X29_Y13_N10
\C1|LessThan208~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~11_cout\ = CARRY((\C1|Add0~8_combout\ & ((!\C1|LessThan208~9_cout\) # (!\C1|Add17~8_combout\))) # (!\C1|Add0~8_combout\ & (!\C1|Add17~8_combout\ & !\C1|LessThan208~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|Add17~8_combout\,
	datad => VCC,
	cin => \C1|LessThan208~9_cout\,
	cout => \C1|LessThan208~11_cout\);

-- Location: LCCOMB_X29_Y13_N12
\C1|LessThan208~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~13_cout\ = CARRY((\C1|Add0~10_combout\ & (\C1|Add17~10_combout\ & !\C1|LessThan208~11_cout\)) # (!\C1|Add0~10_combout\ & ((\C1|Add17~10_combout\) # (!\C1|LessThan208~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|Add17~10_combout\,
	datad => VCC,
	cin => \C1|LessThan208~11_cout\,
	cout => \C1|LessThan208~13_cout\);

-- Location: LCCOMB_X29_Y13_N14
\C1|LessThan208~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~15_cout\ = CARRY((\C1|Add0~12_combout\ & ((!\C1|LessThan208~13_cout\) # (!\C1|Add17~12_combout\))) # (!\C1|Add0~12_combout\ & (!\C1|Add17~12_combout\ & !\C1|LessThan208~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|Add17~12_combout\,
	datad => VCC,
	cin => \C1|LessThan208~13_cout\,
	cout => \C1|LessThan208~15_cout\);

-- Location: LCCOMB_X29_Y13_N16
\C1|LessThan208~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~17_cout\ = CARRY((\C1|Add0~14_combout\ & (\C1|Add17~14_combout\ & !\C1|LessThan208~15_cout\)) # (!\C1|Add0~14_combout\ & ((\C1|Add17~14_combout\) # (!\C1|LessThan208~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~14_combout\,
	datab => \C1|Add17~14_combout\,
	datad => VCC,
	cin => \C1|LessThan208~15_cout\,
	cout => \C1|LessThan208~17_cout\);

-- Location: LCCOMB_X29_Y13_N18
\C1|LessThan208~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~19_cout\ = CARRY((\C1|Add17~16_combout\ & (\C1|Add0~16_combout\ & !\C1|LessThan208~17_cout\)) # (!\C1|Add17~16_combout\ & ((\C1|Add0~16_combout\) # (!\C1|LessThan208~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~16_combout\,
	datab => \C1|Add0~16_combout\,
	datad => VCC,
	cin => \C1|LessThan208~17_cout\,
	cout => \C1|LessThan208~19_cout\);

-- Location: LCCOMB_X29_Y13_N20
\C1|LessThan208~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~20_combout\ = (\C1|Add0~18_combout\ & (!\C1|LessThan208~19_cout\ & \C1|Add17~18_combout\)) # (!\C1|Add0~18_combout\ & ((\C1|Add17~18_combout\) # (!\C1|LessThan208~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~18_combout\,
	datad => \C1|Add17~18_combout\,
	cin => \C1|LessThan208~19_cout\,
	combout => \C1|LessThan208~20_combout\);

-- Location: LCCOMB_X27_Y14_N12
\C1|Q2Xa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[4]~6_combout\ = (\C1|SQ_X2\(4) & (\C1|Q2Xa[3]~5\ & VCC)) # (!\C1|SQ_X2\(4) & (!\C1|Q2Xa[3]~5\))
-- \C1|Q2Xa[4]~7\ = CARRY((!\C1|SQ_X2\(4) & !\C1|Q2Xa[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Q2Xa[3]~5\,
	combout => \C1|Q2Xa[4]~6_combout\,
	cout => \C1|Q2Xa[4]~7\);

-- Location: LCCOMB_X27_Y14_N18
\C1|Q2Xa[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[7]~12_combout\ = (\C1|SQ_X2\(7) & (!\C1|Q2Xa[6]~11\ & VCC)) # (!\C1|SQ_X2\(7) & (\C1|Q2Xa[6]~11\ $ (GND)))
-- \C1|Q2Xa[7]~13\ = CARRY((!\C1|SQ_X2\(7) & !\C1|Q2Xa[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Q2Xa[6]~11\,
	combout => \C1|Q2Xa[7]~12_combout\,
	cout => \C1|Q2Xa[7]~13\);

-- Location: LCCOMB_X30_Y15_N14
\C1|Q2Xi[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[4]~4_combout\ = (\C1|SQ_X2\(4) & (\C1|Q2Xi[3]~3\ $ (GND))) # (!\C1|SQ_X2\(4) & (!\C1|Q2Xi[3]~3\ & VCC))
-- \C1|Q2Xi[4]~5\ = CARRY((\C1|SQ_X2\(4) & !\C1|Q2Xi[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Q2Xi[3]~3\,
	combout => \C1|Q2Xi[4]~4_combout\,
	cout => \C1|Q2Xi[4]~5\);

-- Location: LCCOMB_X30_Y15_N22
\C1|Q2Xi[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[8]~12_combout\ = (\C1|SQ_X2\(8) & (!\C1|Q2Xi[7]~11\ & VCC)) # (!\C1|SQ_X2\(8) & (\C1|Q2Xi[7]~11\ $ (GND)))
-- \C1|Q2Xi[8]~13\ = CARRY((!\C1|SQ_X2\(8) & !\C1|Q2Xi[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Q2Xi[7]~11\,
	combout => \C1|Q2Xi[8]~12_combout\,
	cout => \C1|Q2Xi[8]~13\);

-- Location: LCCOMB_X29_Y15_N0
\C1|LessThan205~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~1_cout\ = CARRY((\C1|SQ_X2\(1) & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan205~1_cout\);

-- Location: LCCOMB_X29_Y15_N2
\C1|LessThan205~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~3_cout\ = CARRY((\C1|SQ_X1\(2) & ((!\C1|LessThan205~1_cout\) # (!\C1|Q2Xi[2]~0_combout\))) # (!\C1|SQ_X1\(2) & (!\C1|Q2Xi[2]~0_combout\ & !\C1|LessThan205~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|Q2Xi[2]~0_combout\,
	datad => VCC,
	cin => \C1|LessThan205~1_cout\,
	cout => \C1|LessThan205~3_cout\);

-- Location: LCCOMB_X29_Y15_N4
\C1|LessThan205~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~5_cout\ = CARRY((\C1|SQ_X1\(3) & (\C1|Q2Xi[3]~2_combout\ & !\C1|LessThan205~3_cout\)) # (!\C1|SQ_X1\(3) & ((\C1|Q2Xi[3]~2_combout\) # (!\C1|LessThan205~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|Q2Xi[3]~2_combout\,
	datad => VCC,
	cin => \C1|LessThan205~3_cout\,
	cout => \C1|LessThan205~5_cout\);

-- Location: LCCOMB_X29_Y15_N6
\C1|LessThan205~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~7_cout\ = CARRY((\C1|SQ_X1\(4) & (!\C1|Q2Xi[4]~4_combout\ & !\C1|LessThan205~5_cout\)) # (!\C1|SQ_X1\(4) & ((!\C1|LessThan205~5_cout\) # (!\C1|Q2Xi[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|Q2Xi[4]~4_combout\,
	datad => VCC,
	cin => \C1|LessThan205~5_cout\,
	cout => \C1|LessThan205~7_cout\);

-- Location: LCCOMB_X29_Y15_N8
\C1|LessThan205~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~9_cout\ = CARRY((\C1|Q2Xi[5]~6_combout\ & ((\C1|SQ_X1\(5)) # (!\C1|LessThan205~7_cout\))) # (!\C1|Q2Xi[5]~6_combout\ & (\C1|SQ_X1\(5) & !\C1|LessThan205~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xi[5]~6_combout\,
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan205~7_cout\,
	cout => \C1|LessThan205~9_cout\);

-- Location: LCCOMB_X29_Y15_N10
\C1|LessThan205~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~11_cout\ = CARRY((\C1|SQ_X1\(6) & ((!\C1|LessThan205~9_cout\) # (!\C1|Q2Xi[6]~8_combout\))) # (!\C1|SQ_X1\(6) & (!\C1|Q2Xi[6]~8_combout\ & !\C1|LessThan205~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|Q2Xi[6]~8_combout\,
	datad => VCC,
	cin => \C1|LessThan205~9_cout\,
	cout => \C1|LessThan205~11_cout\);

-- Location: LCCOMB_X29_Y15_N12
\C1|LessThan205~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~13_cout\ = CARRY((\C1|Q2Xi[7]~10_combout\ & ((\C1|SQ_X1\(7)) # (!\C1|LessThan205~11_cout\))) # (!\C1|Q2Xi[7]~10_combout\ & (\C1|SQ_X1\(7) & !\C1|LessThan205~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xi[7]~10_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan205~11_cout\,
	cout => \C1|LessThan205~13_cout\);

-- Location: LCCOMB_X29_Y15_N14
\C1|LessThan205~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~15_cout\ = CARRY((\C1|SQ_X1\(8) & (!\C1|Q2Xi[8]~12_combout\ & !\C1|LessThan205~13_cout\)) # (!\C1|SQ_X1\(8) & ((!\C1|LessThan205~13_cout\) # (!\C1|Q2Xi[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|Q2Xi[8]~12_combout\,
	datad => VCC,
	cin => \C1|LessThan205~13_cout\,
	cout => \C1|LessThan205~15_cout\);

-- Location: LCCOMB_X29_Y15_N16
\C1|LessThan205~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|Q2Xi[9]~14_combout\ & !\C1|LessThan205~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|Q2Xi[9]~14_combout\) # (!\C1|LessThan205~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|Q2Xi[9]~14_combout\,
	datad => VCC,
	cin => \C1|LessThan205~15_cout\,
	cout => \C1|LessThan205~17_cout\);

-- Location: LCCOMB_X29_Y15_N18
\C1|LessThan205~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan205~17_cout\ & \C1|Q2Xi[10]~16_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan205~17_cout\) # (\C1|Q2Xi[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|Q2Xi[10]~16_combout\,
	cin => \C1|LessThan205~17_cout\,
	combout => \C1|LessThan205~18_combout\);

-- Location: LCCOMB_X19_Y16_N0
\C1|LessThan199~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~1_cout\ = CARRY((!\C1|Add3~0_combout\ & !\C1|SQ_Y1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cout => \C1|LessThan199~1_cout\);

-- Location: LCCOMB_X19_Y16_N2
\C1|LessThan199~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~3_cout\ = CARRY((\C1|Add3~2_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan199~1_cout\))) # (!\C1|Add3~2_combout\ & (\C1|SQ_Y1\(2) & !\C1|LessThan199~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan199~1_cout\,
	cout => \C1|LessThan199~3_cout\);

-- Location: LCCOMB_X19_Y16_N4
\C1|LessThan199~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~5_cout\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|Add3~4_combout\ & !\C1|LessThan199~3_cout\)) # (!\C1|SQ_Y1\(3) & ((!\C1|LessThan199~3_cout\) # (!\C1|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan199~3_cout\,
	cout => \C1|LessThan199~5_cout\);

-- Location: LCCOMB_X19_Y16_N6
\C1|LessThan199~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~7_cout\ = CARRY((\C1|SQ_Y1\(4) & (\C1|Add3~6_combout\ & !\C1|LessThan199~5_cout\)) # (!\C1|SQ_Y1\(4) & ((\C1|Add3~6_combout\) # (!\C1|LessThan199~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|LessThan199~5_cout\,
	cout => \C1|LessThan199~7_cout\);

-- Location: LCCOMB_X19_Y16_N8
\C1|LessThan199~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~9_cout\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|LessThan199~7_cout\) # (!\C1|Add3~8_combout\))) # (!\C1|SQ_Y1\(5) & (!\C1|Add3~8_combout\ & !\C1|LessThan199~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan199~7_cout\,
	cout => \C1|LessThan199~9_cout\);

-- Location: LCCOMB_X19_Y16_N10
\C1|LessThan199~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~11_cout\ = CARRY((\C1|SQ_Y1\(6) & (\C1|Add3~10_combout\ & !\C1|LessThan199~9_cout\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add3~10_combout\) # (!\C1|LessThan199~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan199~9_cout\,
	cout => \C1|LessThan199~11_cout\);

-- Location: LCCOMB_X19_Y16_N12
\C1|LessThan199~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~13_cout\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|Add3~12_combout\ & !\C1|LessThan199~11_cout\)) # (!\C1|SQ_Y1\(7) & ((!\C1|LessThan199~11_cout\) # (!\C1|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|LessThan199~11_cout\,
	cout => \C1|LessThan199~13_cout\);

-- Location: LCCOMB_X19_Y16_N14
\C1|LessThan199~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~15_cout\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|Add3~14_combout\) # (!\C1|LessThan199~13_cout\))) # (!\C1|SQ_Y1\(8) & (\C1|Add3~14_combout\ & !\C1|LessThan199~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan199~13_cout\,
	cout => \C1|LessThan199~15_cout\);

-- Location: LCCOMB_X19_Y16_N16
\C1|LessThan199~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~17_cout\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|Add3~16_combout\ & !\C1|LessThan199~15_cout\)) # (!\C1|SQ_Y1\(9) & ((!\C1|LessThan199~15_cout\) # (!\C1|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|LessThan199~15_cout\,
	cout => \C1|LessThan199~17_cout\);

-- Location: LCCOMB_X19_Y16_N18
\C1|LessThan199~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan199~18_combout\ = (\C1|SQ_Y1\(10) & ((\C1|LessThan199~17_cout\) # (!\C1|Add3~18_combout\))) # (!\C1|SQ_Y1\(10) & (\C1|LessThan199~17_cout\ & !\C1|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|Add3~18_combout\,
	cin => \C1|LessThan199~17_cout\,
	combout => \C1|LessThan199~18_combout\);

-- Location: LCCOMB_X18_Y14_N2
\C1|LessThan76~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~1_cout\ = CARRY((\C1|Add3~0_combout\ & !\C1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|LessThan76~1_cout\);

-- Location: LCCOMB_X18_Y14_N4
\C1|LessThan76~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~3_cout\ = CARRY((\C1|Add3~2_combout\ & (\C1|Add1~2_combout\ & !\C1|LessThan76~1_cout\)) # (!\C1|Add3~2_combout\ & ((\C1|Add1~2_combout\) # (!\C1|LessThan76~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan76~1_cout\,
	cout => \C1|LessThan76~3_cout\);

-- Location: LCCOMB_X18_Y14_N6
\C1|LessThan76~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~5_cout\ = CARRY((\C1|Add3~4_combout\ & ((!\C1|LessThan76~3_cout\) # (!\C1|Add1~4_combout\))) # (!\C1|Add3~4_combout\ & (!\C1|Add1~4_combout\ & !\C1|LessThan76~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|LessThan76~3_cout\,
	cout => \C1|LessThan76~5_cout\);

-- Location: LCCOMB_X18_Y14_N8
\C1|LessThan76~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~7_cout\ = CARRY((\C1|Add3~6_combout\ & (\C1|Add1~6_combout\ & !\C1|LessThan76~5_cout\)) # (!\C1|Add3~6_combout\ & ((\C1|Add1~6_combout\) # (!\C1|LessThan76~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|LessThan76~5_cout\,
	cout => \C1|LessThan76~7_cout\);

-- Location: LCCOMB_X18_Y14_N10
\C1|LessThan76~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~9_cout\ = CARRY((\C1|Add1~8_combout\ & (\C1|Add3~8_combout\ & !\C1|LessThan76~7_cout\)) # (!\C1|Add1~8_combout\ & ((\C1|Add3~8_combout\) # (!\C1|LessThan76~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan76~7_cout\,
	cout => \C1|LessThan76~9_cout\);

-- Location: LCCOMB_X18_Y14_N12
\C1|LessThan76~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~11_cout\ = CARRY((\C1|Add3~10_combout\ & (\C1|Add1~10_combout\ & !\C1|LessThan76~9_cout\)) # (!\C1|Add3~10_combout\ & ((\C1|Add1~10_combout\) # (!\C1|LessThan76~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|LessThan76~9_cout\,
	cout => \C1|LessThan76~11_cout\);

-- Location: LCCOMB_X18_Y14_N14
\C1|LessThan76~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~13_cout\ = CARRY((\C1|Add3~12_combout\ & ((!\C1|LessThan76~11_cout\) # (!\C1|Add1~12_combout\))) # (!\C1|Add3~12_combout\ & (!\C1|Add1~12_combout\ & !\C1|LessThan76~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|LessThan76~11_cout\,
	cout => \C1|LessThan76~13_cout\);

-- Location: LCCOMB_X18_Y14_N16
\C1|LessThan76~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~15_cout\ = CARRY((\C1|Add1~14_combout\ & ((!\C1|LessThan76~13_cout\) # (!\C1|Add3~14_combout\))) # (!\C1|Add1~14_combout\ & (!\C1|Add3~14_combout\ & !\C1|LessThan76~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan76~13_cout\,
	cout => \C1|LessThan76~15_cout\);

-- Location: LCCOMB_X18_Y14_N18
\C1|LessThan76~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~17_cout\ = CARRY((\C1|Add1~16_combout\ & (\C1|Add3~16_combout\ & !\C1|LessThan76~15_cout\)) # (!\C1|Add1~16_combout\ & ((\C1|Add3~16_combout\) # (!\C1|LessThan76~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|LessThan76~15_cout\,
	cout => \C1|LessThan76~17_cout\);

-- Location: LCCOMB_X18_Y14_N20
\C1|LessThan76~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~19_cout\ = CARRY((\C1|Add3~18_combout\ & (\C1|Add1~18_combout\ & !\C1|LessThan76~17_cout\)) # (!\C1|Add3~18_combout\ & ((\C1|Add1~18_combout\) # (!\C1|LessThan76~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|Add1~18_combout\,
	datad => VCC,
	cin => \C1|LessThan76~17_cout\,
	cout => \C1|LessThan76~19_cout\);

-- Location: LCCOMB_X18_Y14_N22
\C1|LessThan76~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan76~20_combout\ = (\C1|Add1~20_combout\ & (!\C1|LessThan76~19_cout\ & \C1|Add3~20_combout\)) # (!\C1|Add1~20_combout\ & ((\C1|Add3~20_combout\) # (!\C1|LessThan76~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datad => \C1|Add3~20_combout\,
	cin => \C1|LessThan76~19_cout\,
	combout => \C1|LessThan76~20_combout\);

-- Location: LCCOMB_X27_Y13_N10
\C1|LessThan75~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~1_cout\ = CARRY((!\C1|Add1~0_combout\ & !\C1|SQ_Y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cout => \C1|LessThan75~1_cout\);

-- Location: LCCOMB_X27_Y13_N12
\C1|LessThan75~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~3_cout\ = CARRY((\C1|SQ_Y2\(2) & ((\C1|Add1~2_combout\) # (!\C1|LessThan75~1_cout\))) # (!\C1|SQ_Y2\(2) & (\C1|Add1~2_combout\ & !\C1|LessThan75~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan75~1_cout\,
	cout => \C1|LessThan75~3_cout\);

-- Location: LCCOMB_X27_Y13_N14
\C1|LessThan75~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~5_cout\ = CARRY((\C1|SQ_Y2\(3) & (!\C1|Add1~4_combout\ & !\C1|LessThan75~3_cout\)) # (!\C1|SQ_Y2\(3) & ((!\C1|LessThan75~3_cout\) # (!\C1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|LessThan75~3_cout\,
	cout => \C1|LessThan75~5_cout\);

-- Location: LCCOMB_X27_Y13_N16
\C1|LessThan75~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~7_cout\ = CARRY((\C1|SQ_Y2\(4) & (\C1|Add1~6_combout\ & !\C1|LessThan75~5_cout\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add1~6_combout\) # (!\C1|LessThan75~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|LessThan75~5_cout\,
	cout => \C1|LessThan75~7_cout\);

-- Location: LCCOMB_X27_Y13_N18
\C1|LessThan75~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~9_cout\ = CARRY((\C1|Add1~8_combout\ & (\C1|SQ_Y2\(5) & !\C1|LessThan75~7_cout\)) # (!\C1|Add1~8_combout\ & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan75~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan75~7_cout\,
	cout => \C1|LessThan75~9_cout\);

-- Location: LCCOMB_X27_Y13_N20
\C1|LessThan75~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~11_cout\ = CARRY((\C1|SQ_Y2\(6) & (\C1|Add1~10_combout\ & !\C1|LessThan75~9_cout\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add1~10_combout\) # (!\C1|LessThan75~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|LessThan75~9_cout\,
	cout => \C1|LessThan75~11_cout\);

-- Location: LCCOMB_X27_Y13_N22
\C1|LessThan75~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~13_cout\ = CARRY((\C1|Add1~12_combout\ & (!\C1|SQ_Y2\(7) & !\C1|LessThan75~11_cout\)) # (!\C1|Add1~12_combout\ & ((!\C1|LessThan75~11_cout\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan75~11_cout\,
	cout => \C1|LessThan75~13_cout\);

-- Location: LCCOMB_X27_Y13_N24
\C1|LessThan75~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~15_cout\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|Add1~14_combout\) # (!\C1|LessThan75~13_cout\))) # (!\C1|SQ_Y2\(8) & (\C1|Add1~14_combout\ & !\C1|LessThan75~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|LessThan75~13_cout\,
	cout => \C1|LessThan75~15_cout\);

-- Location: LCCOMB_X27_Y13_N26
\C1|LessThan75~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~17_cout\ = CARRY((\C1|Add1~16_combout\ & (!\C1|SQ_Y2\(9) & !\C1|LessThan75~15_cout\)) # (!\C1|Add1~16_combout\ & ((!\C1|LessThan75~15_cout\) # (!\C1|SQ_Y2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|LessThan75~15_cout\,
	cout => \C1|LessThan75~17_cout\);

-- Location: LCCOMB_X27_Y13_N28
\C1|LessThan75~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~18_combout\ = (\C1|SQ_Y2\(10) & ((\C1|LessThan75~17_cout\) # (!\C1|Add1~18_combout\))) # (!\C1|SQ_Y2\(10) & (\C1|LessThan75~17_cout\ & !\C1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datad => \C1|Add1~18_combout\,
	cin => \C1|LessThan75~17_cout\,
	combout => \C1|LessThan75~18_combout\);

-- Location: LCCOMB_X19_Y18_N0
\C1|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~0_combout\ = \C1|SQ2_Jump\(0) $ (VCC)
-- \C1|Add25~1\ = CARRY(\C1|SQ2_Jump\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(0),
	datad => VCC,
	combout => \C1|Add25~0_combout\,
	cout => \C1|Add25~1\);

-- Location: LCCOMB_X19_Y18_N2
\C1|Add25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~2_combout\ = (\C1|SQ2_Jump\(1) & (\C1|Add25~1\ & VCC)) # (!\C1|SQ2_Jump\(1) & (!\C1|Add25~1\))
-- \C1|Add25~3\ = CARRY((!\C1|SQ2_Jump\(1) & !\C1|Add25~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(1),
	datad => VCC,
	cin => \C1|Add25~1\,
	combout => \C1|Add25~2_combout\,
	cout => \C1|Add25~3\);

-- Location: LCCOMB_X19_Y18_N6
\C1|Add25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~6_combout\ = (\C1|SQ2_Jump\(3) & (\C1|Add25~5\ & VCC)) # (!\C1|SQ2_Jump\(3) & (!\C1|Add25~5\))
-- \C1|Add25~7\ = CARRY((!\C1|SQ2_Jump\(3) & !\C1|Add25~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(3),
	datad => VCC,
	cin => \C1|Add25~5\,
	combout => \C1|Add25~6_combout\,
	cout => \C1|Add25~7\);

-- Location: LCCOMB_X19_Y18_N12
\C1|Add25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~12_combout\ = (\C1|SQ2_Jump\(6) & ((GND) # (!\C1|Add25~11\))) # (!\C1|SQ2_Jump\(6) & (\C1|Add25~11\ $ (GND)))
-- \C1|Add25~13\ = CARRY((\C1|SQ2_Jump\(6)) # (!\C1|Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(6),
	datad => VCC,
	cin => \C1|Add25~11\,
	combout => \C1|Add25~12_combout\,
	cout => \C1|Add25~13\);

-- Location: LCCOMB_X19_Y18_N14
\C1|Add25~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~14_combout\ = (\C1|SQ2_Jump\(7) & (\C1|Add25~13\ & VCC)) # (!\C1|SQ2_Jump\(7) & (!\C1|Add25~13\))
-- \C1|Add25~15\ = CARRY((!\C1|SQ2_Jump\(7) & !\C1|Add25~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(7),
	datad => VCC,
	cin => \C1|Add25~13\,
	combout => \C1|Add25~14_combout\,
	cout => \C1|Add25~15\);

-- Location: LCCOMB_X19_Y18_N20
\C1|Add25~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~20_combout\ = (\C1|SQ2_Jump\(10) & ((GND) # (!\C1|Add25~19\))) # (!\C1|SQ2_Jump\(10) & (\C1|Add25~19\ $ (GND)))
-- \C1|Add25~21\ = CARRY((\C1|SQ2_Jump\(10)) # (!\C1|Add25~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(10),
	datad => VCC,
	cin => \C1|Add25~19\,
	combout => \C1|Add25~20_combout\,
	cout => \C1|Add25~21\);

-- Location: LCCOMB_X19_Y18_N30
\C1|Add25~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~30_combout\ = (\C1|SQ2_Jump\(15) & (\C1|Add25~29\ & VCC)) # (!\C1|SQ2_Jump\(15) & (!\C1|Add25~29\))
-- \C1|Add25~31\ = CARRY((!\C1|SQ2_Jump\(15) & !\C1|Add25~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(15),
	datad => VCC,
	cin => \C1|Add25~29\,
	combout => \C1|Add25~30_combout\,
	cout => \C1|Add25~31\);

-- Location: LCCOMB_X19_Y17_N0
\C1|Add25~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~32_combout\ = (\C1|SQ2_Jump\(16) & ((GND) # (!\C1|Add25~31\))) # (!\C1|SQ2_Jump\(16) & (\C1|Add25~31\ $ (GND)))
-- \C1|Add25~33\ = CARRY((\C1|SQ2_Jump\(16)) # (!\C1|Add25~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(16),
	datad => VCC,
	cin => \C1|Add25~31\,
	combout => \C1|Add25~32_combout\,
	cout => \C1|Add25~33\);

-- Location: LCCOMB_X19_Y17_N4
\C1|Add25~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~36_combout\ = (\C1|SQ2_Jump\(18) & ((GND) # (!\C1|Add25~35\))) # (!\C1|SQ2_Jump\(18) & (\C1|Add25~35\ $ (GND)))
-- \C1|Add25~37\ = CARRY((\C1|SQ2_Jump\(18)) # (!\C1|Add25~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(18),
	datad => VCC,
	cin => \C1|Add25~35\,
	combout => \C1|Add25~36_combout\,
	cout => \C1|Add25~37\);

-- Location: LCCOMB_X19_Y17_N6
\C1|Add25~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~38_combout\ = (\C1|SQ2_Jump\(19) & (\C1|Add25~37\ & VCC)) # (!\C1|SQ2_Jump\(19) & (!\C1|Add25~37\))
-- \C1|Add25~39\ = CARRY((!\C1|SQ2_Jump\(19) & !\C1|Add25~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(19),
	datad => VCC,
	cin => \C1|Add25~37\,
	combout => \C1|Add25~38_combout\,
	cout => \C1|Add25~39\);

-- Location: LCCOMB_X19_Y17_N12
\C1|Add25~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~44_combout\ = (\C1|SQ2_Jump\(22) & ((GND) # (!\C1|Add25~43\))) # (!\C1|SQ2_Jump\(22) & (\C1|Add25~43\ $ (GND)))
-- \C1|Add25~45\ = CARRY((\C1|SQ2_Jump\(22)) # (!\C1|Add25~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(22),
	datad => VCC,
	cin => \C1|Add25~43\,
	combout => \C1|Add25~44_combout\,
	cout => \C1|Add25~45\);

-- Location: LCCOMB_X19_Y17_N16
\C1|Add25~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~48_combout\ = (\C1|SQ2_Jump\(24) & ((GND) # (!\C1|Add25~47\))) # (!\C1|SQ2_Jump\(24) & (\C1|Add25~47\ $ (GND)))
-- \C1|Add25~49\ = CARRY((\C1|SQ2_Jump\(24)) # (!\C1|Add25~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(24),
	datad => VCC,
	cin => \C1|Add25~47\,
	combout => \C1|Add25~48_combout\,
	cout => \C1|Add25~49\);

-- Location: LCCOMB_X19_Y17_N18
\C1|Add25~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~50_combout\ = (\C1|SQ2_Jump\(25) & (\C1|Add25~49\ & VCC)) # (!\C1|SQ2_Jump\(25) & (!\C1|Add25~49\))
-- \C1|Add25~51\ = CARRY((!\C1|SQ2_Jump\(25) & !\C1|Add25~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(25),
	datad => VCC,
	cin => \C1|Add25~49\,
	combout => \C1|Add25~50_combout\,
	cout => \C1|Add25~51\);

-- Location: LCCOMB_X19_Y17_N20
\C1|Add25~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~52_combout\ = (\C1|SQ2_Jump\(26) & ((GND) # (!\C1|Add25~51\))) # (!\C1|SQ2_Jump\(26) & (\C1|Add25~51\ $ (GND)))
-- \C1|Add25~53\ = CARRY((\C1|SQ2_Jump\(26)) # (!\C1|Add25~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(26),
	datad => VCC,
	cin => \C1|Add25~51\,
	combout => \C1|Add25~52_combout\,
	cout => \C1|Add25~53\);

-- Location: LCCOMB_X19_Y17_N22
\C1|Add25~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~54_combout\ = (\C1|SQ2_Jump\(27) & (\C1|Add25~53\ & VCC)) # (!\C1|SQ2_Jump\(27) & (!\C1|Add25~53\))
-- \C1|Add25~55\ = CARRY((!\C1|SQ2_Jump\(27) & !\C1|Add25~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(27),
	datad => VCC,
	cin => \C1|Add25~53\,
	combout => \C1|Add25~54_combout\,
	cout => \C1|Add25~55\);

-- Location: LCCOMB_X19_Y17_N24
\C1|Add25~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~56_combout\ = (\C1|SQ2_Jump\(28) & ((GND) # (!\C1|Add25~55\))) # (!\C1|SQ2_Jump\(28) & (\C1|Add25~55\ $ (GND)))
-- \C1|Add25~57\ = CARRY((\C1|SQ2_Jump\(28)) # (!\C1|Add25~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(28),
	datad => VCC,
	cin => \C1|Add25~55\,
	combout => \C1|Add25~56_combout\,
	cout => \C1|Add25~57\);

-- Location: LCCOMB_X19_Y17_N26
\C1|Add25~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~58_combout\ = (\C1|SQ2_Jump\(29) & (\C1|Add25~57\ & VCC)) # (!\C1|SQ2_Jump\(29) & (!\C1|Add25~57\))
-- \C1|Add25~59\ = CARRY((!\C1|SQ2_Jump\(29) & !\C1|Add25~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(29),
	datad => VCC,
	cin => \C1|Add25~57\,
	combout => \C1|Add25~58_combout\,
	cout => \C1|Add25~59\);

-- Location: LCCOMB_X19_Y17_N28
\C1|Add25~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~60_combout\ = (\C1|SQ2_Jump\(30) & ((GND) # (!\C1|Add25~59\))) # (!\C1|SQ2_Jump\(30) & (\C1|Add25~59\ $ (GND)))
-- \C1|Add25~61\ = CARRY((\C1|SQ2_Jump\(30)) # (!\C1|Add25~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(30),
	datad => VCC,
	cin => \C1|Add25~59\,
	combout => \C1|Add25~60_combout\,
	cout => \C1|Add25~61\);

-- Location: LCCOMB_X19_Y17_N30
\C1|Add25~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~62_combout\ = \C1|Add25~61\ $ (!\C1|SQ2_Jump\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|SQ2_Jump\(31),
	cin => \C1|Add25~61\,
	combout => \C1|Add25~62_combout\);

-- Location: LCCOMB_X16_Y15_N0
\C1|Add23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~0_combout\ = \C1|SQ1_Jump\(0) $ (VCC)
-- \C1|Add23~1\ = CARRY(\C1|SQ1_Jump\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(0),
	datad => VCC,
	combout => \C1|Add23~0_combout\,
	cout => \C1|Add23~1\);

-- Location: LCCOMB_X16_Y15_N2
\C1|Add23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~2_combout\ = (\C1|SQ1_Jump\(1) & (\C1|Add23~1\ & VCC)) # (!\C1|SQ1_Jump\(1) & (!\C1|Add23~1\))
-- \C1|Add23~3\ = CARRY((!\C1|SQ1_Jump\(1) & !\C1|Add23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(1),
	datad => VCC,
	cin => \C1|Add23~1\,
	combout => \C1|Add23~2_combout\,
	cout => \C1|Add23~3\);

-- Location: LCCOMB_X16_Y15_N4
\C1|Add23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~4_combout\ = (\C1|SQ1_Jump\(2) & ((GND) # (!\C1|Add23~3\))) # (!\C1|SQ1_Jump\(2) & (\C1|Add23~3\ $ (GND)))
-- \C1|Add23~5\ = CARRY((\C1|SQ1_Jump\(2)) # (!\C1|Add23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(2),
	datad => VCC,
	cin => \C1|Add23~3\,
	combout => \C1|Add23~4_combout\,
	cout => \C1|Add23~5\);

-- Location: LCCOMB_X16_Y15_N6
\C1|Add23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~6_combout\ = (\C1|SQ1_Jump\(3) & (\C1|Add23~5\ & VCC)) # (!\C1|SQ1_Jump\(3) & (!\C1|Add23~5\))
-- \C1|Add23~7\ = CARRY((!\C1|SQ1_Jump\(3) & !\C1|Add23~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(3),
	datad => VCC,
	cin => \C1|Add23~5\,
	combout => \C1|Add23~6_combout\,
	cout => \C1|Add23~7\);

-- Location: LCCOMB_X16_Y15_N8
\C1|Add23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~8_combout\ = (\C1|SQ1_Jump\(4) & ((GND) # (!\C1|Add23~7\))) # (!\C1|SQ1_Jump\(4) & (\C1|Add23~7\ $ (GND)))
-- \C1|Add23~9\ = CARRY((\C1|SQ1_Jump\(4)) # (!\C1|Add23~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(4),
	datad => VCC,
	cin => \C1|Add23~7\,
	combout => \C1|Add23~8_combout\,
	cout => \C1|Add23~9\);

-- Location: LCCOMB_X16_Y15_N10
\C1|Add23~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~10_combout\ = (\C1|SQ1_Jump\(5) & (\C1|Add23~9\ & VCC)) # (!\C1|SQ1_Jump\(5) & (!\C1|Add23~9\))
-- \C1|Add23~11\ = CARRY((!\C1|SQ1_Jump\(5) & !\C1|Add23~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(5),
	datad => VCC,
	cin => \C1|Add23~9\,
	combout => \C1|Add23~10_combout\,
	cout => \C1|Add23~11\);

-- Location: LCCOMB_X16_Y15_N12
\C1|Add23~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~12_combout\ = (\C1|SQ1_Jump\(6) & ((GND) # (!\C1|Add23~11\))) # (!\C1|SQ1_Jump\(6) & (\C1|Add23~11\ $ (GND)))
-- \C1|Add23~13\ = CARRY((\C1|SQ1_Jump\(6)) # (!\C1|Add23~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(6),
	datad => VCC,
	cin => \C1|Add23~11\,
	combout => \C1|Add23~12_combout\,
	cout => \C1|Add23~13\);

-- Location: LCCOMB_X16_Y15_N14
\C1|Add23~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~14_combout\ = (\C1|SQ1_Jump\(7) & (\C1|Add23~13\ & VCC)) # (!\C1|SQ1_Jump\(7) & (!\C1|Add23~13\))
-- \C1|Add23~15\ = CARRY((!\C1|SQ1_Jump\(7) & !\C1|Add23~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(7),
	datad => VCC,
	cin => \C1|Add23~13\,
	combout => \C1|Add23~14_combout\,
	cout => \C1|Add23~15\);

-- Location: LCCOMB_X16_Y15_N16
\C1|Add23~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~16_combout\ = (\C1|SQ1_Jump\(8) & ((GND) # (!\C1|Add23~15\))) # (!\C1|SQ1_Jump\(8) & (\C1|Add23~15\ $ (GND)))
-- \C1|Add23~17\ = CARRY((\C1|SQ1_Jump\(8)) # (!\C1|Add23~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(8),
	datad => VCC,
	cin => \C1|Add23~15\,
	combout => \C1|Add23~16_combout\,
	cout => \C1|Add23~17\);

-- Location: LCCOMB_X16_Y15_N18
\C1|Add23~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~18_combout\ = (\C1|SQ1_Jump\(9) & (\C1|Add23~17\ & VCC)) # (!\C1|SQ1_Jump\(9) & (!\C1|Add23~17\))
-- \C1|Add23~19\ = CARRY((!\C1|SQ1_Jump\(9) & !\C1|Add23~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(9),
	datad => VCC,
	cin => \C1|Add23~17\,
	combout => \C1|Add23~18_combout\,
	cout => \C1|Add23~19\);

-- Location: LCCOMB_X16_Y15_N20
\C1|Add23~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~20_combout\ = (\C1|SQ1_Jump\(10) & ((GND) # (!\C1|Add23~19\))) # (!\C1|SQ1_Jump\(10) & (\C1|Add23~19\ $ (GND)))
-- \C1|Add23~21\ = CARRY((\C1|SQ1_Jump\(10)) # (!\C1|Add23~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(10),
	datad => VCC,
	cin => \C1|Add23~19\,
	combout => \C1|Add23~20_combout\,
	cout => \C1|Add23~21\);

-- Location: LCCOMB_X16_Y15_N22
\C1|Add23~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~22_combout\ = (\C1|SQ1_Jump\(11) & (\C1|Add23~21\ & VCC)) # (!\C1|SQ1_Jump\(11) & (!\C1|Add23~21\))
-- \C1|Add23~23\ = CARRY((!\C1|SQ1_Jump\(11) & !\C1|Add23~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(11),
	datad => VCC,
	cin => \C1|Add23~21\,
	combout => \C1|Add23~22_combout\,
	cout => \C1|Add23~23\);

-- Location: LCCOMB_X16_Y15_N24
\C1|Add23~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~24_combout\ = (\C1|SQ1_Jump\(12) & ((GND) # (!\C1|Add23~23\))) # (!\C1|SQ1_Jump\(12) & (\C1|Add23~23\ $ (GND)))
-- \C1|Add23~25\ = CARRY((\C1|SQ1_Jump\(12)) # (!\C1|Add23~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(12),
	datad => VCC,
	cin => \C1|Add23~23\,
	combout => \C1|Add23~24_combout\,
	cout => \C1|Add23~25\);

-- Location: LCCOMB_X16_Y15_N26
\C1|Add23~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~26_combout\ = (\C1|SQ1_Jump\(13) & (\C1|Add23~25\ & VCC)) # (!\C1|SQ1_Jump\(13) & (!\C1|Add23~25\))
-- \C1|Add23~27\ = CARRY((!\C1|SQ1_Jump\(13) & !\C1|Add23~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(13),
	datad => VCC,
	cin => \C1|Add23~25\,
	combout => \C1|Add23~26_combout\,
	cout => \C1|Add23~27\);

-- Location: LCCOMB_X16_Y15_N28
\C1|Add23~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~28_combout\ = (\C1|SQ1_Jump\(14) & ((GND) # (!\C1|Add23~27\))) # (!\C1|SQ1_Jump\(14) & (\C1|Add23~27\ $ (GND)))
-- \C1|Add23~29\ = CARRY((\C1|SQ1_Jump\(14)) # (!\C1|Add23~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(14),
	datad => VCC,
	cin => \C1|Add23~27\,
	combout => \C1|Add23~28_combout\,
	cout => \C1|Add23~29\);

-- Location: LCCOMB_X16_Y15_N30
\C1|Add23~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~30_combout\ = (\C1|SQ1_Jump\(15) & (\C1|Add23~29\ & VCC)) # (!\C1|SQ1_Jump\(15) & (!\C1|Add23~29\))
-- \C1|Add23~31\ = CARRY((!\C1|SQ1_Jump\(15) & !\C1|Add23~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(15),
	datad => VCC,
	cin => \C1|Add23~29\,
	combout => \C1|Add23~30_combout\,
	cout => \C1|Add23~31\);

-- Location: LCCOMB_X16_Y14_N0
\C1|Add23~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~32_combout\ = (\C1|SQ1_Jump\(16) & ((GND) # (!\C1|Add23~31\))) # (!\C1|SQ1_Jump\(16) & (\C1|Add23~31\ $ (GND)))
-- \C1|Add23~33\ = CARRY((\C1|SQ1_Jump\(16)) # (!\C1|Add23~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(16),
	datad => VCC,
	cin => \C1|Add23~31\,
	combout => \C1|Add23~32_combout\,
	cout => \C1|Add23~33\);

-- Location: LCCOMB_X16_Y14_N2
\C1|Add23~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~34_combout\ = (\C1|SQ1_Jump\(17) & (\C1|Add23~33\ & VCC)) # (!\C1|SQ1_Jump\(17) & (!\C1|Add23~33\))
-- \C1|Add23~35\ = CARRY((!\C1|SQ1_Jump\(17) & !\C1|Add23~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(17),
	datad => VCC,
	cin => \C1|Add23~33\,
	combout => \C1|Add23~34_combout\,
	cout => \C1|Add23~35\);

-- Location: LCCOMB_X16_Y14_N4
\C1|Add23~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~36_combout\ = (\C1|SQ1_Jump\(18) & ((GND) # (!\C1|Add23~35\))) # (!\C1|SQ1_Jump\(18) & (\C1|Add23~35\ $ (GND)))
-- \C1|Add23~37\ = CARRY((\C1|SQ1_Jump\(18)) # (!\C1|Add23~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(18),
	datad => VCC,
	cin => \C1|Add23~35\,
	combout => \C1|Add23~36_combout\,
	cout => \C1|Add23~37\);

-- Location: LCCOMB_X16_Y14_N6
\C1|Add23~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~38_combout\ = (\C1|SQ1_Jump\(19) & (\C1|Add23~37\ & VCC)) # (!\C1|SQ1_Jump\(19) & (!\C1|Add23~37\))
-- \C1|Add23~39\ = CARRY((!\C1|SQ1_Jump\(19) & !\C1|Add23~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(19),
	datad => VCC,
	cin => \C1|Add23~37\,
	combout => \C1|Add23~38_combout\,
	cout => \C1|Add23~39\);

-- Location: LCCOMB_X16_Y14_N8
\C1|Add23~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~40_combout\ = (\C1|SQ1_Jump\(20) & ((GND) # (!\C1|Add23~39\))) # (!\C1|SQ1_Jump\(20) & (\C1|Add23~39\ $ (GND)))
-- \C1|Add23~41\ = CARRY((\C1|SQ1_Jump\(20)) # (!\C1|Add23~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(20),
	datad => VCC,
	cin => \C1|Add23~39\,
	combout => \C1|Add23~40_combout\,
	cout => \C1|Add23~41\);

-- Location: LCCOMB_X16_Y14_N10
\C1|Add23~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~42_combout\ = (\C1|SQ1_Jump\(21) & (\C1|Add23~41\ & VCC)) # (!\C1|SQ1_Jump\(21) & (!\C1|Add23~41\))
-- \C1|Add23~43\ = CARRY((!\C1|SQ1_Jump\(21) & !\C1|Add23~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(21),
	datad => VCC,
	cin => \C1|Add23~41\,
	combout => \C1|Add23~42_combout\,
	cout => \C1|Add23~43\);

-- Location: LCCOMB_X16_Y14_N12
\C1|Add23~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~44_combout\ = (\C1|SQ1_Jump\(22) & ((GND) # (!\C1|Add23~43\))) # (!\C1|SQ1_Jump\(22) & (\C1|Add23~43\ $ (GND)))
-- \C1|Add23~45\ = CARRY((\C1|SQ1_Jump\(22)) # (!\C1|Add23~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(22),
	datad => VCC,
	cin => \C1|Add23~43\,
	combout => \C1|Add23~44_combout\,
	cout => \C1|Add23~45\);

-- Location: LCCOMB_X16_Y14_N14
\C1|Add23~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~46_combout\ = (\C1|SQ1_Jump\(23) & (\C1|Add23~45\ & VCC)) # (!\C1|SQ1_Jump\(23) & (!\C1|Add23~45\))
-- \C1|Add23~47\ = CARRY((!\C1|SQ1_Jump\(23) & !\C1|Add23~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(23),
	datad => VCC,
	cin => \C1|Add23~45\,
	combout => \C1|Add23~46_combout\,
	cout => \C1|Add23~47\);

-- Location: LCCOMB_X16_Y14_N16
\C1|Add23~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~48_combout\ = (\C1|SQ1_Jump\(24) & ((GND) # (!\C1|Add23~47\))) # (!\C1|SQ1_Jump\(24) & (\C1|Add23~47\ $ (GND)))
-- \C1|Add23~49\ = CARRY((\C1|SQ1_Jump\(24)) # (!\C1|Add23~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(24),
	datad => VCC,
	cin => \C1|Add23~47\,
	combout => \C1|Add23~48_combout\,
	cout => \C1|Add23~49\);

-- Location: LCCOMB_X16_Y14_N18
\C1|Add23~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~50_combout\ = (\C1|SQ1_Jump\(25) & (\C1|Add23~49\ & VCC)) # (!\C1|SQ1_Jump\(25) & (!\C1|Add23~49\))
-- \C1|Add23~51\ = CARRY((!\C1|SQ1_Jump\(25) & !\C1|Add23~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(25),
	datad => VCC,
	cin => \C1|Add23~49\,
	combout => \C1|Add23~50_combout\,
	cout => \C1|Add23~51\);

-- Location: LCCOMB_X16_Y14_N20
\C1|Add23~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~52_combout\ = (\C1|SQ1_Jump\(26) & ((GND) # (!\C1|Add23~51\))) # (!\C1|SQ1_Jump\(26) & (\C1|Add23~51\ $ (GND)))
-- \C1|Add23~53\ = CARRY((\C1|SQ1_Jump\(26)) # (!\C1|Add23~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(26),
	datad => VCC,
	cin => \C1|Add23~51\,
	combout => \C1|Add23~52_combout\,
	cout => \C1|Add23~53\);

-- Location: LCCOMB_X16_Y14_N22
\C1|Add23~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~54_combout\ = (\C1|SQ1_Jump\(27) & (\C1|Add23~53\ & VCC)) # (!\C1|SQ1_Jump\(27) & (!\C1|Add23~53\))
-- \C1|Add23~55\ = CARRY((!\C1|SQ1_Jump\(27) & !\C1|Add23~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(27),
	datad => VCC,
	cin => \C1|Add23~53\,
	combout => \C1|Add23~54_combout\,
	cout => \C1|Add23~55\);

-- Location: LCCOMB_X16_Y14_N24
\C1|Add23~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~56_combout\ = (\C1|SQ1_Jump\(28) & ((GND) # (!\C1|Add23~55\))) # (!\C1|SQ1_Jump\(28) & (\C1|Add23~55\ $ (GND)))
-- \C1|Add23~57\ = CARRY((\C1|SQ1_Jump\(28)) # (!\C1|Add23~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(28),
	datad => VCC,
	cin => \C1|Add23~55\,
	combout => \C1|Add23~56_combout\,
	cout => \C1|Add23~57\);

-- Location: LCCOMB_X16_Y14_N26
\C1|Add23~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~58_combout\ = (\C1|SQ1_Jump\(29) & (\C1|Add23~57\ & VCC)) # (!\C1|SQ1_Jump\(29) & (!\C1|Add23~57\))
-- \C1|Add23~59\ = CARRY((!\C1|SQ1_Jump\(29) & !\C1|Add23~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(29),
	datad => VCC,
	cin => \C1|Add23~57\,
	combout => \C1|Add23~58_combout\,
	cout => \C1|Add23~59\);

-- Location: LCCOMB_X16_Y14_N28
\C1|Add23~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~60_combout\ = (\C1|SQ1_Jump\(30) & ((GND) # (!\C1|Add23~59\))) # (!\C1|SQ1_Jump\(30) & (\C1|Add23~59\ $ (GND)))
-- \C1|Add23~61\ = CARRY((\C1|SQ1_Jump\(30)) # (!\C1|Add23~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(30),
	datad => VCC,
	cin => \C1|Add23~59\,
	combout => \C1|Add23~60_combout\,
	cout => \C1|Add23~61\);

-- Location: LCCOMB_X16_Y14_N30
\C1|Add23~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add23~62_combout\ = \C1|SQ1_Jump\(31) $ (!\C1|Add23~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(31),
	cin => \C1|Add23~61\,
	combout => \C1|Add23~62_combout\);

-- Location: LCCOMB_X30_Y12_N24
\C1|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(8)) # ((\C1|HPOS\(7) & ((\C1|HPOS\(6)) # (\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X30_Y14_N28
\C1|DRAW1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|Add1~20_combout\ & (((\C1|LessThan1~20_combout\) # (\C1|Add0~18_combout\)))) # (!\C1|Add1~20_combout\ & (\C1|LessThan3~18_combout\ & ((\C1|LessThan1~20_combout\) # (\C1|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|LessThan3~18_combout\,
	datac => \C1|LessThan1~20_combout\,
	datad => \C1|Add0~18_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X31_Y13_N10
\C1|LessThan44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan44~0_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(2)) # (!\C1|HPOS\(1))) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan44~0_combout\);

-- Location: LCCOMB_X31_Y13_N12
\C1|LessThan44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan44~1_combout\ = (\C1|LessThan44~0_combout\) # (!\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan44~0_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan44~1_combout\);

-- Location: LCCOMB_X31_Y13_N6
\C1|LessThan43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan43~0_combout\ = (\C1|HPOS\(2)) # ((\C1|HPOS\(3)) # ((\C1|HPOS\(1)) # (\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan43~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\C1|dMap~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~87_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(2) & ((\C1|VPOS\(0)) # (\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|dMap~87_combout\);

-- Location: LCCOMB_X32_Y13_N20
\C1|DRAWMAP~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~29_combout\ = (\C1|LessThan43~0_combout\ & (\C1|dMap~90_combout\ & ((\C1|LessThan44~0_combout\) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan44~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|LessThan43~0_combout\,
	datad => \C1|dMap~90_combout\,
	combout => \C1|DRAWMAP~29_combout\);

-- Location: LCCOMB_X32_Y13_N12
\C1|DRAWMAP~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~35_combout\ = (!\C1|dMap~96_combout\ & ((\C1|HPOS\(4) & (!\C1|HPOS\(5))) # (!\C1|HPOS\(4) & ((\C1|dMap~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|dMap~96_combout\,
	datad => \C1|dMap~89_combout\,
	combout => \C1|DRAWMAP~35_combout\);

-- Location: LCCOMB_X33_Y14_N14
\C1|DRAWMAP~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~37_combout\ = (!\C1|HPOS\(5) & (\C1|VPOS\(5) & (!\C1|HPOS\(6) & \C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|VPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|DRAWMAP~37_combout\);

-- Location: LCCOMB_X33_Y14_N12
\C1|DRAWMAP~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~38_combout\ = (\C1|LessThan36~0_combout\ & (\C1|DRAWMAP~37_combout\ & ((\C1|LessThan11~0_combout\) # (!\C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|LessThan36~0_combout\,
	datac => \C1|DRAWMAP~37_combout\,
	datad => \C1|LessThan11~0_combout\,
	combout => \C1|DRAWMAP~38_combout\);

-- Location: LCCOMB_X32_Y13_N24
\C1|DRAWMAP~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~40_combout\ = (\C1|VPOS\(7) & (\C1|VPOS\(8) & (!\C1|VPOS\(6) & \C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~40_combout\);

-- Location: LCCOMB_X29_Y12_N14
\C1|DRAWMAP~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~44_combout\ = (!\C1|VPOS\(6) & ((\C1|VPOS\(2) & ((!\C1|VPOS\(3)) # (!\C1|VPOS\(4)))) # (!\C1|VPOS\(2) & ((\C1|VPOS\(4)) # (\C1|VPOS\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(6),
	combout => \C1|DRAWMAP~44_combout\);

-- Location: LCCOMB_X34_Y13_N12
\C1|DRAWMAP~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~47_combout\ = (\C1|VPOS\(5)) # (((\C1|dMap~78_combout\ & !\C1|LessThan8~0_combout\)) # (!\C1|LessThan321~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~78_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|LessThan321~0_combout\,
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|DRAWMAP~47_combout\);

-- Location: LCCOMB_X31_Y12_N12
\C1|DRAWMAP~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~48_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & ((\C1|LessThan49~0_combout\) # (!\C1|LessThan50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan50~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|LessThan49~0_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|DRAWMAP~48_combout\);

-- Location: LCFF_X22_Y17_N17
\C1|SQ2_Jump[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~66_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(31));

-- Location: LCFF_X21_Y18_N15
\C1|SQ2_Jump[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~74_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(7));

-- Location: LCCOMB_X20_Y18_N16
\C1|LessThan314~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~2_combout\ = (!\C1|SQ2_Jump\(11) & (!\C1|SQ2_Jump\(9) & (!\C1|SQ2_Jump\(8) & !\C1|SQ2_Jump\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(11),
	datab => \C1|SQ2_Jump\(9),
	datac => \C1|SQ2_Jump\(8),
	datad => \C1|SQ2_Jump\(10),
	combout => \C1|LessThan314~2_combout\);

-- Location: LCFF_X20_Y18_N7
\C1|SQ2_Jump[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~82_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(15));

-- Location: LCFF_X21_Y18_N27
\C1|SQ2_Jump[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~83_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(18));

-- Location: LCFF_X21_Y18_N9
\C1|SQ2_Jump[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~84_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(19));

-- Location: LCCOMB_X21_Y17_N12
\C1|LessThan314~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~5_combout\ = (!\C1|SQ2_Jump\(19) & !\C1|SQ2_Jump\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(19),
	datad => \C1|SQ2_Jump\(18),
	combout => \C1|LessThan314~5_combout\);

-- Location: LCFF_X22_Y17_N11
\C1|SQ2_Jump[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~96_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(29));

-- Location: LCCOMB_X27_Y15_N24
\C1|LessThan309~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan309~1_combout\ = (!\C1|Add9~2_combout\ & !\C1|Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~2_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan309~1_combout\);

-- Location: LCCOMB_X27_Y15_N2
\C1|LessThan285~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan285~0_combout\ = (\C1|Add9~10_combout\) # ((\C1|Add9~8_combout\ & ((\C1|Add9~6_combout\) # (!\C1|LessThan309~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|LessThan309~1_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan285~0_combout\);

-- Location: LCCOMB_X26_Y16_N10
\C1|DRAWMAP~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~65_combout\ = (!\C1|Add9~16_combout\ & (!\C1|Add9~14_combout\ & (\C1|Add9~18_combout\ & \C1|Add9~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~65_combout\);

-- Location: LCCOMB_X20_Y17_N12
\C1|dMap~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~115_combout\ = ((\C1|SQ_Y2\(10)) # ((!\C1|SQ_Y2\(8)) # (!\C1|SQ_Y2\(7)))) # (!\C1|SQ_Y2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(10),
	datac => \C1|SQ_Y2\(7),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|dMap~115_combout\);

-- Location: LCCOMB_X26_Y16_N12
\C1|LessThan285~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan285~1_combout\ = (\C1|Add9~6_combout\ & \C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|LessThan285~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\C1|DRAWMAP~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~70_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~10_combout\) # ((\C1|LessThan297~0_combout\ & \C1|LessThan285~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|LessThan297~0_combout\,
	datad => \C1|LessThan285~1_combout\,
	combout => \C1|DRAWMAP~70_combout\);

-- Location: LCCOMB_X23_Y19_N20
\C1|dMap~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~120_combout\ = (((\C1|SQ_Y2\(3) & \C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(4))) # (!\C1|SQ_Y2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|dMap~120_combout\);

-- Location: LCCOMB_X23_Y19_N30
\C1|LessThan237~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan237~0_combout\ = (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(3)) # ((\C1|SQ_Y2\(1) & \C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan237~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\C1|dMap~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~121_combout\ = (\C1|SQ_Y2\(6) & ((\C1|SQ_Y2\(5)) # ((!\C1|LessThan237~0_combout\)))) # (!\C1|SQ_Y2\(6) & ((\C1|dMap~120_combout\) # ((!\C1|SQ_Y2\(5) & !\C1|LessThan237~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~120_combout\,
	datad => \C1|LessThan237~0_combout\,
	combout => \C1|dMap~121_combout\);

-- Location: LCCOMB_X22_Y19_N12
\C1|dMap~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~122_combout\ = (\C1|dMap~121_combout\) # (!\C1|dMap~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~118_combout\,
	datad => \C1|dMap~121_combout\,
	combout => \C1|dMap~122_combout\);

-- Location: LCCOMB_X19_Y14_N0
\C1|dMap~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~126_combout\ = (\C1|SQ_Y2\(7) & ((\C1|SQ_Y2\(3)) # ((!\C1|SQ_Y2\(5))))) # (!\C1|SQ_Y2\(7) & (((\C1|SQ_Y2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(4),
	combout => \C1|dMap~126_combout\);

-- Location: LCCOMB_X19_Y14_N2
\C1|dMap~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~127_combout\ = (\C1|SQ_Y2\(9)) # ((\C1|dMap~126_combout\) # ((\C1|SQ_Y2\(10)) # (\C1|SQ_Y2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|dMap~126_combout\,
	datac => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|dMap~127_combout\);

-- Location: LCCOMB_X19_Y14_N4
\C1|dMap~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~128_combout\ = (\C1|SQ_Y2\(5)) # ((!\C1|SQ_Y2\(1) & (!\C1|SQ_Y2\(3) & !\C1|SQ_Y2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|dMap~128_combout\);

-- Location: LCCOMB_X19_Y14_N6
\C1|dMap~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~129_combout\ = (\C1|dMap~127_combout\) # ((\C1|SQ_Y2\(6) & (!\C1|SQ_Y2\(4))) # (!\C1|SQ_Y2\(6) & ((\C1|dMap~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(6),
	datac => \C1|dMap~128_combout\,
	datad => \C1|dMap~127_combout\,
	combout => \C1|dMap~129_combout\);

-- Location: LCCOMB_X21_Y15_N8
\C1|LessThan215~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan215~0_combout\ = (\C1|SQ_Y2\(8) & (\C1|SQ_Y2\(7) & (!\C1|SQ_Y2\(6) & \C1|SQ_Y2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|SQ_Y2\(9),
	combout => \C1|LessThan215~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\C1|LessThan215~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan215~1_combout\ = (\C1|LessThan215~0_combout\ & (!\C1|SQ_Y2\(10) & ((\C1|LessThan237~0_combout\) # (!\C1|SQ_Y2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan215~0_combout\,
	datab => \C1|SQ_Y2\(10),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|LessThan237~0_combout\,
	combout => \C1|LessThan215~1_combout\);

-- Location: LCCOMB_X29_Y18_N10
\C1|LessThan227~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan227~1_combout\ = ((\C1|SQ_X2\(3) & ((\C1|SQ_X2\(2)) # (!\C1|SQ_X2\(1))))) # (!\C1|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X2\(2),
	datac => \C1|Add2~0_combout\,
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan227~1_combout\);

-- Location: LCCOMB_X30_Y19_N24
\C1|dMap~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~135_combout\ = (\C1|LessThan227~0_combout\ & (((!\C1|Add2~2_combout\ & \C1|LessThan227~1_combout\)) # (!\C1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|LessThan227~0_combout\,
	datad => \C1|LessThan227~1_combout\,
	combout => \C1|dMap~135_combout\);

-- Location: LCCOMB_X22_Y18_N12
\C1|DRAWMAP~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~94_combout\ = (\C1|dMap~133_combout\ & ((\C1|dMap~132_combout\) # ((!\C1|dMap~119_combout\ & \C1|dMap~136_combout\)))) # (!\C1|dMap~133_combout\ & (((!\C1|dMap~119_combout\ & \C1|dMap~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~133_combout\,
	datab => \C1|dMap~132_combout\,
	datac => \C1|dMap~119_combout\,
	datad => \C1|dMap~136_combout\,
	combout => \C1|DRAWMAP~94_combout\);

-- Location: LCCOMB_X30_Y19_N12
\C1|LessThan234~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan234~0_combout\ = (\C1|Add2~0_combout\ & (\C1|Add2~2_combout\ & ((\C1|SQ_X2\(1)) # (!\C1|LessThan260~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan260~0_combout\,
	datab => \C1|SQ_X2\(1),
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan234~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\C1|LessThan246~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan246~1_combout\ = (\C1|Add2~10_combout\ & (((!\C1|SQ_X2\(2) & \C1|SQ_X2\(1))) # (!\C1|SQ_X2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(1),
	datac => \C1|Add2~10_combout\,
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan246~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\C1|LessThan250~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan250~0_combout\ = (\C1|Add2~0_combout\) # ((\C1|SQ_X2\(1)) # ((!\C1|SQ_X2\(3)) # (!\C1|SQ_X2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|SQ_X2\(1),
	datac => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan250~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\C1|dMap~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~145_combout\ = (!\C1|Add3~18_combout\ & (!\C1|Add3~8_combout\ & (!\C1|Add3~20_combout\ & \C1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|Add3~12_combout\,
	combout => \C1|dMap~145_combout\);

-- Location: LCCOMB_X24_Y16_N28
\C1|dMap~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~149_combout\ = (!\C1|Add3~12_combout\ & ((\C1|Add3~4_combout\ & ((!\C1|Add3~2_combout\) # (!\C1|Add3~6_combout\))) # (!\C1|Add3~4_combout\ & ((\C1|Add3~6_combout\) # (\C1|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~12_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|dMap~149_combout\);

-- Location: LCCOMB_X24_Y16_N2
\C1|dMap~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~150_combout\ = (\C1|Add3~10_combout\) # (((!\C1|dMap~149_combout\) # (!\C1|dMap~148_combout\)) # (!\C1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|dMap~148_combout\,
	datad => \C1|dMap~149_combout\,
	combout => \C1|dMap~150_combout\);

-- Location: LCCOMB_X25_Y16_N16
\C1|dMap~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~157_combout\ = (\C1|Add3~4_combout\ & ((\C1|Add3~0_combout\) # ((\C1|Add3~2_combout\) # (\C1|Add3~8_combout\)))) # (!\C1|Add3~4_combout\ & (((\C1|Add3~2_combout\ & \C1|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~157_combout\);

-- Location: LCCOMB_X25_Y16_N18
\C1|LessThan179~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan179~0_combout\ = (!\C1|Add3~18_combout\ & (!\C1|Add3~20_combout\ & \C1|LessThan180~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|LessThan180~0_combout\,
	combout => \C1|LessThan179~0_combout\);

-- Location: LCCOMB_X25_Y16_N24
\C1|LessThan188~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~0_combout\ = (!\C1|Add3~6_combout\ & (((!\C1|Add3~2_combout\ & !\C1|Add3~0_combout\)) # (!\C1|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~0_combout\,
	combout => \C1|LessThan188~0_combout\);

-- Location: LCCOMB_X25_Y16_N10
\C1|LessThan179~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan179~1_combout\ = (!\C1|Add3~10_combout\ & (\C1|LessThan179~0_combout\ & ((\C1|LessThan188~0_combout\) # (!\C1|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan188~0_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|LessThan179~0_combout\,
	combout => \C1|LessThan179~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\C1|touchDown2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown2~1_combout\ = (\C1|Add17~20_combout\ & (!\C1|LessThan208~20_combout\ & ((\C1|Add17~18_combout\) # (\C1|LessThan207~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~18_combout\,
	datab => \C1|Add17~20_combout\,
	datac => \C1|LessThan208~20_combout\,
	datad => \C1|LessThan207~18_combout\,
	combout => \C1|touchDown2~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\C1|arQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~0_combout\ = (!\C1|LessThan284~0_combout\ & !\C1|LessThan179~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan284~0_combout\,
	datad => \C1|LessThan179~1_combout\,
	combout => \C1|arQ2X1~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\C1|LessThan262~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~1_combout\ = ((!\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(3)) # (!\C1|LessThan217~22_combout\)))) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|LessThan217~22_combout\,
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan262~1_combout\);

-- Location: LCCOMB_X25_Y17_N22
\C1|dMap~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~184_combout\ = (!\C1|Add13~10_combout\ & !\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~10_combout\,
	datac => \C1|Add13~8_combout\,
	combout => \C1|dMap~184_combout\);

-- Location: LCCOMB_X25_Y17_N8
\C1|LessThan263~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan263~0_combout\ = (\C1|Add13~18_combout\ & ((\C1|dMap~283_combout\) # ((!\C1|dMap~184_combout\) # (!\C1|LessThan262~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~283_combout\,
	datab => \C1|Add13~18_combout\,
	datac => \C1|LessThan262~0_combout\,
	datad => \C1|dMap~184_combout\,
	combout => \C1|LessThan263~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\C1|dMap~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~192_combout\ = ((\C1|Add13~6_combout\ & ((\C1|SQ_Y2\(3)) # (\C1|LessThan218~0_combout\)))) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|LessThan218~0_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~192_combout\);

-- Location: LCCOMB_X25_Y17_N20
\C1|dMap~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~193_combout\ = ((\C1|dMap~192_combout\) # ((\C1|Add13~10_combout\) # (!\C1|dMap~173_combout\))) # (!\C1|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|dMap~192_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~193_combout\);

-- Location: LCCOMB_X26_Y17_N20
\C1|dirQ2X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~4_combout\ = (\C1|Add13~22_combout\ & (!\C1|LessThan216~0_combout\ & !\C1|LessThan262~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~22_combout\,
	datac => \C1|LessThan216~0_combout\,
	datad => \C1|LessThan262~2_combout\,
	combout => \C1|dirQ2X2~4_combout\);

-- Location: LCCOMB_X26_Y17_N24
\C1|dirQ2X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~6_combout\ = (\C1|dMap~189_combout\ & (((!\C1|dMap~193_combout\ & \C1|dMap~140_combout\)))) # (!\C1|dMap~189_combout\ & ((\C1|dMap~138_combout\) # ((!\C1|dMap~193_combout\ & \C1|dMap~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~189_combout\,
	datab => \C1|dMap~138_combout\,
	datac => \C1|dMap~193_combout\,
	datad => \C1|dMap~140_combout\,
	combout => \C1|dirQ2X2~6_combout\);

-- Location: LCFF_X20_Y15_N13
\C1|SQ1_Jump[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~3_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(31));

-- Location: LCFF_X20_Y15_N7
\C1|SQ1_Jump[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~5_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(0));

-- Location: LCFF_X20_Y15_N9
\C1|SQ1_Jump[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~6_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(1));

-- Location: LCFF_X20_Y15_N15
\C1|SQ1_Jump[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~7_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(2));

-- Location: LCFF_X20_Y15_N25
\C1|SQ1_Jump[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~8_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(3));

-- Location: LCCOMB_X18_Y15_N28
\C1|LessThan313~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~0_combout\ = (!\C1|SQ1_Jump\(3) & (!\C1|SQ1_Jump\(0) & (!\C1|SQ1_Jump\(2) & !\C1|SQ1_Jump\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(3),
	datab => \C1|SQ1_Jump\(0),
	datac => \C1|SQ1_Jump\(2),
	datad => \C1|SQ1_Jump\(1),
	combout => \C1|LessThan313~0_combout\);

-- Location: LCFF_X20_Y15_N3
\C1|SQ1_Jump[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~9_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(4));

-- Location: LCFF_X20_Y15_N21
\C1|SQ1_Jump[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~10_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(5));

-- Location: LCFF_X20_Y15_N23
\C1|SQ1_Jump[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~11_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(6));

-- Location: LCFF_X20_Y15_N5
\C1|SQ1_Jump[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~12_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(7));

-- Location: LCCOMB_X20_Y15_N18
\C1|LessThan313~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~1_combout\ = (!\C1|SQ1_Jump\(5) & (!\C1|SQ1_Jump\(6) & (!\C1|SQ1_Jump\(7) & !\C1|SQ1_Jump\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(5),
	datab => \C1|SQ1_Jump\(6),
	datac => \C1|SQ1_Jump\(7),
	datad => \C1|SQ1_Jump\(4),
	combout => \C1|LessThan313~1_combout\);

-- Location: LCFF_X20_Y15_N1
\C1|SQ1_Jump[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~13_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(8));

-- Location: LCFF_X20_Y15_N31
\C1|SQ1_Jump[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~14_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(9));

-- Location: LCFF_X20_Y15_N17
\C1|SQ1_Jump[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~15_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(10));

-- Location: LCFF_X18_Y15_N23
\C1|SQ1_Jump[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~16_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(11));

-- Location: LCCOMB_X18_Y15_N24
\C1|LessThan313~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~2_combout\ = (!\C1|SQ1_Jump\(10) & (!\C1|SQ1_Jump\(11) & (!\C1|SQ1_Jump\(9) & !\C1|SQ1_Jump\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(10),
	datab => \C1|SQ1_Jump\(11),
	datac => \C1|SQ1_Jump\(9),
	datad => \C1|SQ1_Jump\(8),
	combout => \C1|LessThan313~2_combout\);

-- Location: LCFF_X20_Y15_N27
\C1|SQ1_Jump[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~17_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(12));

-- Location: LCFF_X20_Y15_N29
\C1|SQ1_Jump[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~18_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(13));

-- Location: LCFF_X19_Y15_N17
\C1|SQ1_Jump[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~19_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(14));

-- Location: LCFF_X19_Y15_N27
\C1|SQ1_Jump[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~20_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(15));

-- Location: LCCOMB_X18_Y15_N10
\C1|LessThan313~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~3_combout\ = (!\C1|SQ1_Jump\(15) & (!\C1|SQ1_Jump\(12) & (!\C1|SQ1_Jump\(14) & !\C1|SQ1_Jump\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(15),
	datab => \C1|SQ1_Jump\(12),
	datac => \C1|SQ1_Jump\(14),
	datad => \C1|SQ1_Jump\(13),
	combout => \C1|LessThan313~3_combout\);

-- Location: LCCOMB_X18_Y15_N16
\C1|LessThan313~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~4_combout\ = (\C1|LessThan313~3_combout\ & (\C1|LessThan313~0_combout\ & (\C1|LessThan313~2_combout\ & \C1|LessThan313~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan313~3_combout\,
	datab => \C1|LessThan313~0_combout\,
	datac => \C1|LessThan313~2_combout\,
	datad => \C1|LessThan313~1_combout\,
	combout => \C1|LessThan313~4_combout\);

-- Location: LCFF_X20_Y15_N11
\C1|SQ1_Jump[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~21_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(18));

-- Location: LCFF_X22_Y13_N25
\C1|SQ1_Jump[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~22_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(19));

-- Location: LCCOMB_X18_Y15_N18
\C1|LessThan313~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~5_combout\ = (!\C1|SQ1_Jump\(18) & !\C1|SQ1_Jump\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ1_Jump\(18),
	datad => \C1|SQ1_Jump\(19),
	combout => \C1|LessThan313~5_combout\);

-- Location: LCFF_X19_Y15_N25
\C1|SQ1_Jump[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~23_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(20));

-- Location: LCFF_X19_Y15_N23
\C1|SQ1_Jump[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~24_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(21));

-- Location: LCFF_X18_Y15_N21
\C1|SQ1_Jump[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~25_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(22));

-- Location: LCFF_X18_Y15_N15
\C1|SQ1_Jump[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~26_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(23));

-- Location: LCCOMB_X18_Y15_N4
\C1|LessThan313~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~6_combout\ = (!\C1|SQ1_Jump\(22) & (!\C1|SQ1_Jump\(20) & (!\C1|SQ1_Jump\(23) & !\C1|SQ1_Jump\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(22),
	datab => \C1|SQ1_Jump\(20),
	datac => \C1|SQ1_Jump\(23),
	datad => \C1|SQ1_Jump\(21),
	combout => \C1|LessThan313~6_combout\);

-- Location: LCFF_X19_Y15_N1
\C1|SQ1_Jump[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~27_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(16));

-- Location: LCFF_X19_Y15_N3
\C1|SQ1_Jump[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~28_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(17));

-- Location: LCCOMB_X18_Y15_N6
\C1|LessThan313~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~7_combout\ = (!\C1|SQ1_Jump\(17) & (\C1|LessThan313~6_combout\ & (!\C1|SQ1_Jump\(16) & \C1|LessThan313~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(17),
	datab => \C1|LessThan313~6_combout\,
	datac => \C1|SQ1_Jump\(16),
	datad => \C1|LessThan313~5_combout\,
	combout => \C1|LessThan313~7_combout\);

-- Location: LCFF_X19_Y15_N21
\C1|SQ1_Jump[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~29_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(24));

-- Location: LCFF_X19_Y15_N19
\C1|SQ1_Jump[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~30_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(25));

-- Location: LCFF_X19_Y15_N9
\C1|SQ1_Jump[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~31_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(26));

-- Location: LCFF_X19_Y15_N15
\C1|SQ1_Jump[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~32_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(27));

-- Location: LCCOMB_X18_Y14_N0
\C1|LessThan313~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~8_combout\ = (!\C1|SQ1_Jump\(25) & (!\C1|SQ1_Jump\(26) & (!\C1|SQ1_Jump\(27) & !\C1|SQ1_Jump\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(25),
	datab => \C1|SQ1_Jump\(26),
	datac => \C1|SQ1_Jump\(27),
	datad => \C1|SQ1_Jump\(24),
	combout => \C1|LessThan313~8_combout\);

-- Location: LCFF_X22_Y13_N27
\C1|SQ1_Jump[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~33_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(28));

-- Location: LCFF_X19_Y15_N29
\C1|SQ1_Jump[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~34_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(29));

-- Location: LCFF_X19_Y15_N11
\C1|SQ1_Jump[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~35_combout\,
	ena => \C1|SQ1_Jump[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(30));

-- Location: LCCOMB_X18_Y15_N12
\C1|LessThan313~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~9_combout\ = (\C1|LessThan313~8_combout\ & (!\C1|SQ1_Jump\(30) & (!\C1|SQ1_Jump\(28) & !\C1|SQ1_Jump\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan313~8_combout\,
	datab => \C1|SQ1_Jump\(30),
	datac => \C1|SQ1_Jump\(28),
	datad => \C1|SQ1_Jump\(29),
	combout => \C1|LessThan313~9_combout\);

-- Location: LCCOMB_X18_Y15_N2
\C1|LessThan313~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan313~10_combout\ = (\C1|SQ1_Jump\(31)) # ((\C1|LessThan313~9_combout\ & (\C1|LessThan313~4_combout\ & \C1|LessThan313~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan313~9_combout\,
	datab => \C1|SQ1_Jump\(31),
	datac => \C1|LessThan313~4_combout\,
	datad => \C1|LessThan313~7_combout\,
	combout => \C1|LessThan313~10_combout\);

-- Location: LCCOMB_X20_Y11_N14
\C1|dMap~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~195_combout\ = (\C1|SQ_Y1\(3) & (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(2)) # (\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~195_combout\);

-- Location: LCCOMB_X20_Y13_N6
\C1|dirQ1X1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~28_combout\ = (\C1|Add5~12_combout\) # ((\C1|Add5~10_combout\ & \C1|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|dirQ1X1~28_combout\);

-- Location: LCCOMB_X20_Y11_N12
\C1|LessThan101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan101~0_combout\ = (!\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(2)) # ((\C1|SQ_Y1\(3)) # (!\C1|SQ_Y1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|LessThan101~0_combout\);

-- Location: LCCOMB_X18_Y12_N8
\C1|LessThan103~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan103~2_combout\ = (!\C1|Add5~14_combout\ & (!\C1|Add5~20_combout\ & !\C1|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan103~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\C1|dMap~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~202_combout\ = (\C1|SQ_Y1\(3) & ((\C1|SQ_Y1\(1)) # (\C1|SQ_Y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~202_combout\);

-- Location: LCCOMB_X20_Y11_N24
\C1|dMap~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~203_combout\ = (!\C1|SQ_Y1\(6) & (((\C1|dMap~202_combout\) # (!\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(6),
	datad => \C1|dMap~202_combout\,
	combout => \C1|dMap~203_combout\);

-- Location: LCCOMB_X20_Y11_N6
\C1|dMap~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~204_combout\ = (((\C1|SQ_Y1\(10)) # (!\C1|SQ_Y1\(7))) # (!\C1|SQ_Y1\(8))) # (!\C1|SQ_Y1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|dMap~204_combout\);

-- Location: LCCOMB_X20_Y11_N28
\C1|dMap~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~205_combout\ = (\C1|dMap~204_combout\) # ((\C1|dMap~203_combout\) # ((\C1|SQ_Y1\(6) & !\C1|LessThan101~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~204_combout\,
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~203_combout\,
	datad => \C1|LessThan101~0_combout\,
	combout => \C1|dMap~205_combout\);

-- Location: LCCOMB_X23_Y11_N12
\C1|dMap~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~206_combout\ = (((\C1|SQ_Y1\(3) & \C1|SQ_Y1\(2))) # (!\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(4),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~206_combout\);

-- Location: LCCOMB_X20_Y13_N12
\C1|dirQ1X1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~36_combout\ = (\C1|dMap~208_combout\ & (\C1|dirQ1X1~34_combout\ & (!\C1|dMap~205_combout\))) # (!\C1|dMap~208_combout\ & ((\C1|dirQ1X1~35_combout\) # ((\C1|dirQ1X1~34_combout\ & !\C1|dMap~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~208_combout\,
	datab => \C1|dirQ1X1~34_combout\,
	datac => \C1|dMap~205_combout\,
	datad => \C1|dirQ1X1~35_combout\,
	combout => \C1|dirQ1X1~36_combout\);

-- Location: LCCOMB_X20_Y12_N20
\C1|LessThan118~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan118~1_combout\ = (\C1|Add5~16_combout\ & (\C1|Add5~10_combout\ & (\C1|Add5~8_combout\ & \C1|LessThan118~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|LessThan118~0_combout\,
	combout => \C1|LessThan118~1_combout\);

-- Location: LCCOMB_X20_Y11_N18
\C1|dMap~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~209_combout\ = (\C1|SQ_Y1\(7) & (((\C1|SQ_Y1\(3))) # (!\C1|SQ_Y1\(5)))) # (!\C1|SQ_Y1\(7) & (((\C1|SQ_Y1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~209_combout\);

-- Location: LCCOMB_X20_Y11_N0
\C1|dMap~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~210_combout\ = (\C1|SQ_Y1\(9)) # ((\C1|SQ_Y1\(8)) # ((\C1|SQ_Y1\(10)) # (\C1|dMap~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|dMap~209_combout\,
	combout => \C1|dMap~210_combout\);

-- Location: LCCOMB_X20_Y11_N22
\C1|dMap~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~211_combout\ = (\C1|SQ_Y1\(5)) # ((!\C1|SQ_Y1\(2) & (!\C1|SQ_Y1\(3) & !\C1|SQ_Y1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~211_combout\);

-- Location: LCCOMB_X20_Y11_N8
\C1|dMap~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~212_combout\ = (\C1|dMap~210_combout\) # ((\C1|SQ_Y1\(6) & (!\C1|SQ_Y1\(4))) # (!\C1|SQ_Y1\(6) & ((\C1|dMap~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|dMap~211_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|dMap~210_combout\,
	combout => \C1|dMap~212_combout\);

-- Location: LCCOMB_X20_Y12_N24
\C1|LessThan114~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan114~2_combout\ = (\C1|Add5~10_combout\ & (\C1|Add5~8_combout\ & (\C1|Add5~16_combout\ & \C1|LessThan114~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan114~0_combout\,
	combout => \C1|LessThan114~2_combout\);

-- Location: LCCOMB_X20_Y12_N16
\C1|LessThan98~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan98~1_combout\ = (!\C1|Add5~4_combout\ & ((!\C1|Add5~2_combout\) # (!\C1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan98~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\C1|dMap~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~217_combout\ = (\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(4)) # ((!\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~217_combout\);

-- Location: LCCOMB_X24_Y12_N0
\C1|dMap~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~218_combout\ = (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(3) & ((!\C1|SQ_Y1\(5)))) # (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(3),
	combout => \C1|dMap~218_combout\);

-- Location: LCCOMB_X24_Y12_N30
\C1|dMap~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~219_combout\ = (\C1|SQ_Y1\(6)) # ((\C1|dMap~217_combout\) # ((\C1|dMap~218_combout\) # (!\C1|dMap~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|dMap~217_combout\,
	datac => \C1|dMap~198_combout\,
	datad => \C1|dMap~218_combout\,
	combout => \C1|dMap~219_combout\);

-- Location: LCCOMB_X20_Y13_N30
\C1|dirQ1X1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~49_combout\ = (\C1|dMap~221_combout\ & (!\C1|dMap~219_combout\ & ((\C1|dirQ1X1~47_combout\)))) # (!\C1|dMap~221_combout\ & ((\C1|dirQ1X1~48_combout\) # ((!\C1|dMap~219_combout\ & \C1|dirQ1X1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~221_combout\,
	datab => \C1|dMap~219_combout\,
	datac => \C1|dirQ1X1~48_combout\,
	datad => \C1|dirQ1X1~47_combout\,
	combout => \C1|dirQ1X1~49_combout\);

-- Location: LCCOMB_X19_Y12_N20
\C1|LessThan98~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan98~2_combout\ = (\C1|Add5~10_combout\ & (\C1|LessThan114~3_combout\ & ((!\C1|LessThan97~0_combout\) # (!\C1|LessThan98~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan98~1_combout\,
	datab => \C1|LessThan97~0_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan114~3_combout\,
	combout => \C1|LessThan98~2_combout\);

-- Location: LCCOMB_X21_Y13_N16
\C1|dirQ1X1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~51_combout\ = (\C1|dirQ1X1~49_combout\) # ((!\C1|dMap~199_combout\ & \C1|dirQ1X1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datac => \C1|dirQ1X1~49_combout\,
	datad => \C1|dirQ1X1~50_combout\,
	combout => \C1|dirQ1X1~51_combout\);

-- Location: LCCOMB_X21_Y11_N10
\C1|esqQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~0_combout\ = (\C1|dMap~289_combout\ & (((!\C1|dMap~205_combout\ & \C1|dMap~288_combout\)) # (!\C1|dMap~212_combout\))) # (!\C1|dMap~289_combout\ & (!\C1|dMap~205_combout\ & (\C1|dMap~288_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~289_combout\,
	datab => \C1|dMap~205_combout\,
	datac => \C1|dMap~288_combout\,
	datad => \C1|dMap~212_combout\,
	combout => \C1|esqQ1X1~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\C1|dMap~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~234_combout\ = (\C1|Add1~6_combout\ & (((\C1|Add1~2_combout\ & \C1|Add1~4_combout\)) # (!\C1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|dMap~234_combout\);

-- Location: LCCOMB_X18_Y12_N16
\C1|dMap~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~235_combout\ = (\C1|Add1~8_combout\ & (!\C1|Add1~10_combout\ & (!\C1|dMap~229_combout\ & \C1|dMap~234_combout\))) # (!\C1|Add1~8_combout\ & (\C1|Add1~10_combout\ & ((!\C1|dMap~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~229_combout\,
	datad => \C1|dMap~234_combout\,
	combout => \C1|dMap~235_combout\);

-- Location: LCCOMB_X18_Y13_N10
\C1|dMap~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~239_combout\ = (\C1|Add1~4_combout\ & ((\C1|Add1~10_combout\) # ((\C1|Add1~2_combout\ & \C1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~239_combout\);

-- Location: LCCOMB_X18_Y13_N20
\C1|dMap~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~246_combout\ = (!\C1|Add1~12_combout\ & ((\C1|Add1~2_combout\ & ((!\C1|Add1~6_combout\) # (!\C1|Add1~4_combout\))) # (!\C1|Add1~2_combout\ & ((\C1|Add1~4_combout\) # (\C1|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~4_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~12_combout\,
	combout => \C1|dMap~246_combout\);

-- Location: LCCOMB_X26_Y14_N4
\C1|touchDown1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown1~0_combout\ = (\C1|Add1~20_combout\) # (!\C1|LessThan75~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add1~20_combout\,
	datad => \C1|LessThan75~18_combout\,
	combout => \C1|touchDown1~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\C1|touchDown1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown1~1_combout\ = (\C1|LessThan76~20_combout\ & (\C1|touchDown1~0_combout\ & ((\C1|SQ~1_combout\) # (\C1|SQ~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ~1_combout\,
	datab => \C1|LessThan76~20_combout\,
	datac => \C1|touchDown1~0_combout\,
	datad => \C1|SQ~2_combout\,
	combout => \C1|touchDown1~1_combout\);

-- Location: LCCOMB_X19_Y12_N12
\C1|arQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~2_combout\ = (\C1|dMap~231_combout\ & (!\C1|dMap~233_combout\ & ((\C1|dirQ1X1~43_combout\)))) # (!\C1|dMap~231_combout\ & ((\C1|dirQ1X1~26_combout\) # ((!\C1|dMap~233_combout\ & \C1|dirQ1X1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~231_combout\,
	datab => \C1|dMap~233_combout\,
	datac => \C1|dirQ1X1~26_combout\,
	datad => \C1|dirQ1X1~43_combout\,
	combout => \C1|arQ1X2~2_combout\);

-- Location: LCCOMB_X20_Y11_N20
\C1|contatoC1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|contatoC1~0_combout\ = (\C1|Add3~20_combout\ & !\C1|LessThan81~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add3~20_combout\,
	datad => \C1|LessThan81~18_combout\,
	combout => \C1|contatoC1~0_combout\);

-- Location: LCCOMB_X25_Y14_N20
\C1|dMap~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~252_combout\ = ((\C1|Add8~10_combout\) # ((!\C1|Add8~4_combout\ & !\C1|SQ_Y1\(2)))) # (!\C1|Add8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|SQ_Y1\(2),
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~252_combout\);

-- Location: LCCOMB_X25_Y14_N10
\C1|dMap~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~253_combout\ = (\C1|Add8~8_combout\ & (((\C1|dMap~252_combout\)))) # (!\C1|Add8~8_combout\ & (((!\C1|Add8~10_combout\)) # (!\C1|LessThan139~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|LessThan139~0_combout\,
	datac => \C1|dMap~252_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~253_combout\);

-- Location: LCCOMB_X25_Y14_N8
\C1|dMap~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~254_combout\ = ((\C1|Add8~18_combout\) # (\C1|Add8~20_combout\)) # (!\C1|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|Add8~20_combout\,
	combout => \C1|dMap~254_combout\);

-- Location: LCCOMB_X25_Y14_N2
\C1|dMap~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~255_combout\ = (((\C1|dMap~254_combout\) # (\C1|dMap~253_combout\)) # (!\C1|Add8~22_combout\)) # (!\C1|dMap~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~251_combout\,
	datab => \C1|Add8~22_combout\,
	datac => \C1|dMap~254_combout\,
	datad => \C1|dMap~253_combout\,
	combout => \C1|dMap~255_combout\);

-- Location: LCCOMB_X21_Y14_N6
\C1|dMap~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~264_combout\ = (\C1|Add8~18_combout\) # ((!\C1|Add8~10_combout\ & ((!\C1|Add8~6_combout\) # (!\C1|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|dMap~264_combout\);

-- Location: LCCOMB_X25_Y14_N0
\C1|esqQ1X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~6_combout\ = (!\C1|dMap~279_combout\ & ((\C1|LessThan174~3_combout\) # (!\C1|LessThan173~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan174~3_combout\,
	datac => \C1|LessThan173~6_combout\,
	datad => \C1|dMap~279_combout\,
	combout => \C1|esqQ1X2~6_combout\);

-- Location: LCCOMB_X20_Y16_N6
\C1|LessThan149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~0_combout\ = (\C1|SQ_Y1\(2) & (\C1|Add8~4_combout\ & \C1|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|LessThan149~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\C1|dMap~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~280_combout\ = (\C1|Add8~8_combout\ & (!\C1|Add8~12_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|dMap~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~8_combout\,
	datac => \C1|Add8~12_combout\,
	datad => \C1|dMap~256_combout\,
	combout => \C1|dMap~280_combout\);

-- Location: LCCOMB_X20_Y16_N20
\C1|dMap~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~281_combout\ = (\C1|LessThan149~0_combout\) # ((\C1|Add8~10_combout\) # ((!\C1|dMap~267_combout\) # (!\C1|dMap~280_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan149~0_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~280_combout\,
	datad => \C1|dMap~267_combout\,
	combout => \C1|dMap~281_combout\);

-- Location: LCCOMB_X21_Y16_N6
\C1|esqQ1X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~7_combout\ = (\C1|LessThan131~0_combout\) # ((\C1|esqQ1X2~6_combout\) # ((\C1|dMap~224_combout\ & !\C1|dMap~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~224_combout\,
	datab => \C1|LessThan131~0_combout\,
	datac => \C1|dMap~281_combout\,
	datad => \C1|esqQ1X2~6_combout\,
	combout => \C1|esqQ1X2~7_combout\);

-- Location: LCCOMB_X21_Y14_N24
\C1|dirQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~1_combout\ = (\C1|dirQ1X1~30_combout\ & (((!\C1|dMap~268_combout\ & \C1|dirQ1X1~54_combout\)) # (!\C1|dMap~282_combout\))) # (!\C1|dirQ1X1~30_combout\ & (((!\C1|dMap~268_combout\ & \C1|dirQ1X1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~30_combout\,
	datab => \C1|dMap~282_combout\,
	datac => \C1|dMap~268_combout\,
	datad => \C1|dirQ1X1~54_combout\,
	combout => \C1|dirQ1X2~1_combout\);

-- Location: LCCOMB_X19_Y15_N12
\C1|SQ1_Jump[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump[7]~2_combout\ = (\KEY~combout\(2)) # (((\C1|SQ2_noAR~0_combout\) # (!\C1|SQ1_noAR~0_combout\)) # (!\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(0),
	datac => \C1|SQ2_noAR~0_combout\,
	datad => \C1|SQ1_noAR~0_combout\,
	combout => \C1|SQ1_Jump[7]~2_combout\);

-- Location: LCCOMB_X20_Y15_N12
\C1|SQ1_Jump~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~3_combout\ = (\C1|Add23~62_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~62_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~3_combout\);

-- Location: LCCOMB_X19_Y15_N30
\C1|SQ1_Jump[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump[31]~4_combout\ = (\C1|SQ_X1[1]~0_combout\ & ((!\C1|SQ1_Jump[7]~2_combout\) # (!\C1|LessThan313~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1[1]~0_combout\,
	datac => \C1|LessThan313~10_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump[31]~4_combout\);

-- Location: LCCOMB_X20_Y15_N6
\C1|SQ1_Jump~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~5_combout\ = (\C1|Add23~0_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~0_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~5_combout\);

-- Location: LCCOMB_X20_Y15_N8
\C1|SQ1_Jump~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~6_combout\ = ((\C1|Add23~2_combout\ & \C1|SQ1_Jump~36_combout\)) # (!\C1|SQ1_Jump[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~2_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~6_combout\);

-- Location: LCCOMB_X20_Y15_N14
\C1|SQ1_Jump~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~7_combout\ = ((\C1|Add23~4_combout\ & \C1|SQ1_Jump~36_combout\)) # (!\C1|SQ1_Jump[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~4_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~7_combout\);

-- Location: LCCOMB_X20_Y15_N24
\C1|SQ1_Jump~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~8_combout\ = ((\C1|Add23~6_combout\ & \C1|SQ1_Jump~36_combout\)) # (!\C1|SQ1_Jump[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~6_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~8_combout\);

-- Location: LCCOMB_X20_Y15_N2
\C1|SQ1_Jump~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~9_combout\ = ((\C1|Add23~8_combout\ & \C1|SQ1_Jump~36_combout\)) # (!\C1|SQ1_Jump[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~8_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~9_combout\);

-- Location: LCCOMB_X20_Y15_N20
\C1|SQ1_Jump~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~10_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~10_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~10_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~10_combout\);

-- Location: LCCOMB_X20_Y15_N22
\C1|SQ1_Jump~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~11_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~12_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~12_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~11_combout\);

-- Location: LCCOMB_X20_Y15_N4
\C1|SQ1_Jump~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~12_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~14_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~14_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~12_combout\);

-- Location: LCCOMB_X20_Y15_N0
\C1|SQ1_Jump~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~13_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~16_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~16_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~13_combout\);

-- Location: LCCOMB_X20_Y15_N30
\C1|SQ1_Jump~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~14_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~18_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~18_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~14_combout\);

-- Location: LCCOMB_X20_Y15_N16
\C1|SQ1_Jump~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~15_combout\ = (\C1|Add23~20_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~20_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~15_combout\);

-- Location: LCCOMB_X18_Y15_N22
\C1|SQ1_Jump~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~16_combout\ = (\C1|Add23~22_combout\ & (\C1|SQ1_Jump[7]~2_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~22_combout\,
	datac => \C1|SQ1_Jump[7]~2_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~16_combout\);

-- Location: LCCOMB_X20_Y15_N26
\C1|SQ1_Jump~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~17_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~24_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~24_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~17_combout\);

-- Location: LCCOMB_X20_Y15_N28
\C1|SQ1_Jump~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~18_combout\ = (\C1|Add23~26_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~26_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~18_combout\);

-- Location: LCCOMB_X19_Y15_N16
\C1|SQ1_Jump~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~19_combout\ = (\C1|Add23~28_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~28_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~19_combout\);

-- Location: LCCOMB_X19_Y15_N26
\C1|SQ1_Jump~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~20_combout\ = (\C1|Add23~30_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~30_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~20_combout\);

-- Location: LCCOMB_X20_Y15_N10
\C1|SQ1_Jump~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~21_combout\ = (\C1|SQ1_Jump[7]~2_combout\ & (\C1|Add23~36_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump[7]~2_combout\,
	datab => \C1|Add23~36_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~21_combout\);

-- Location: LCCOMB_X22_Y13_N24
\C1|SQ1_Jump~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~22_combout\ = (\C1|SQ1_Jump~36_combout\ & (\C1|Add23~38_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump~36_combout\,
	datac => \C1|Add23~38_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~22_combout\);

-- Location: LCCOMB_X19_Y15_N24
\C1|SQ1_Jump~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~23_combout\ = (\C1|Add23~40_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~40_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~23_combout\);

-- Location: LCCOMB_X19_Y15_N22
\C1|SQ1_Jump~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~24_combout\ = (\C1|Add23~42_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~42_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~24_combout\);

-- Location: LCCOMB_X18_Y15_N20
\C1|SQ1_Jump~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~25_combout\ = (\C1|Add23~44_combout\ & (\C1|SQ1_Jump[7]~2_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~44_combout\,
	datac => \C1|SQ1_Jump[7]~2_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~25_combout\);

-- Location: LCCOMB_X18_Y15_N14
\C1|SQ1_Jump~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~26_combout\ = (\C1|Add23~46_combout\ & (\C1|SQ1_Jump[7]~2_combout\ & \C1|SQ1_Jump~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~46_combout\,
	datac => \C1|SQ1_Jump[7]~2_combout\,
	datad => \C1|SQ1_Jump~36_combout\,
	combout => \C1|SQ1_Jump~26_combout\);

-- Location: LCCOMB_X19_Y15_N0
\C1|SQ1_Jump~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~27_combout\ = (\C1|Add23~32_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~32_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~27_combout\);

-- Location: LCCOMB_X19_Y15_N2
\C1|SQ1_Jump~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~28_combout\ = (\C1|Add23~34_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~34_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~28_combout\);

-- Location: LCCOMB_X19_Y15_N20
\C1|SQ1_Jump~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~29_combout\ = (\C1|Add23~48_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~48_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~29_combout\);

-- Location: LCCOMB_X19_Y15_N18
\C1|SQ1_Jump~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~30_combout\ = (\C1|Add23~50_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~50_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~30_combout\);

-- Location: LCCOMB_X19_Y15_N8
\C1|SQ1_Jump~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~31_combout\ = (\C1|Add23~52_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~52_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~31_combout\);

-- Location: LCCOMB_X19_Y15_N14
\C1|SQ1_Jump~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~32_combout\ = (\C1|Add23~54_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~54_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~32_combout\);

-- Location: LCCOMB_X22_Y13_N26
\C1|SQ1_Jump~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~33_combout\ = (\C1|SQ1_Jump~36_combout\ & (\C1|Add23~56_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump~36_combout\,
	datab => \C1|Add23~56_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~33_combout\);

-- Location: LCCOMB_X19_Y15_N28
\C1|SQ1_Jump~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~34_combout\ = (\C1|Add23~58_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add23~58_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~34_combout\);

-- Location: LCCOMB_X19_Y15_N10
\C1|SQ1_Jump~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~35_combout\ = (\C1|Add23~60_combout\ & (\C1|SQ1_Jump~36_combout\ & \C1|SQ1_Jump[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add23~60_combout\,
	datac => \C1|SQ1_Jump~36_combout\,
	datad => \C1|SQ1_Jump[7]~2_combout\,
	combout => \C1|SQ1_Jump~35_combout\);

-- Location: LCCOMB_X29_Y19_N18
\C1|LessThan252~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan252~2_combout\ = ((\C1|Add2~10_combout\ & ((\C1|Add2~6_combout\) # (!\C1|LessThan257~0_combout\)))) # (!\C1|LessThan230~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan230~1_combout\,
	datad => \C1|LessThan257~0_combout\,
	combout => \C1|LessThan252~2_combout\);

-- Location: LCCOMB_X22_Y17_N16
\C1|SQ2_Jump~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~66_combout\ = (\C1|Add25~62_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~62_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~66_combout\);

-- Location: LCCOMB_X21_Y18_N14
\C1|SQ2_Jump~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~74_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~14_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~14_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~74_combout\);

-- Location: LCCOMB_X20_Y18_N6
\C1|SQ2_Jump~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~82_combout\ = (\C1|Add25~30_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~30_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~82_combout\);

-- Location: LCCOMB_X21_Y18_N26
\C1|SQ2_Jump~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~83_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~36_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~36_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~83_combout\);

-- Location: LCCOMB_X21_Y18_N8
\C1|SQ2_Jump~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~84_combout\ = (\C1|Add25~38_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~38_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~84_combout\);

-- Location: LCCOMB_X22_Y17_N10
\C1|SQ2_Jump~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~96_combout\ = (\C1|Add25~58_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~58_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~96_combout\);

-- Location: LCCOMB_X21_Y13_N10
\C1|SQ1_Jump~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~36_combout\ = (!\C1|dirQ1X1~52_combout\ & ((\C1|LessThan83~1_combout\) # ((\C1|LessThan152~0_combout\) # (!\C1|esqQ1X1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan83~1_combout\,
	datab => \C1|LessThan152~0_combout\,
	datac => \C1|esqQ1X1~8_combout\,
	datad => \C1|dirQ1X1~52_combout\,
	combout => \C1|SQ1_Jump~36_combout\);

-- Location: LCCOMB_X19_Y12_N10
\C1|LessThan114~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan114~3_combout\ = (\C1|Add5~16_combout\ & \C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan114~3_combout\);

-- Location: LCCOMB_X22_Y15_N8
\C1|LessThan171~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan171~0_combout\ = (((\C1|SQ_X1\(3)) # (\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(4))) # (!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan171~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\C1|dMap~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~66_combout\ = (\C1|SQ_X1\(4) & (((\C1|SQ_X1\(3)) # (\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(1)))) # (!\C1|SQ_X1\(4) & (((!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|dMap~66_combout\);

-- Location: LCCOMB_X22_Y15_N4
\C1|dMap~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~289_combout\ = (\C1|SQ_X1\(6) & (\C1|SQ_X1\(8) & (\C1|SQ_X1\(7) & \C1|dMap~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(7),
	datad => \C1|dMap~62_combout\,
	combout => \C1|dMap~289_combout\);

-- Location: LCCOMB_X22_Y15_N18
\C1|dMap~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~62_combout\ = (!\C1|SQ_X1\(5) & (!\C1|SQ_X1\(10) & (\C1|SQ_X1\(9) & \C1|dMap~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	datad => \C1|dMap~66_combout\,
	combout => \C1|dMap~62_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
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
	padio => ww_CLOCK_24(0),
	combout => \CLOCK_24~combout\(0));

-- Location: PLL_3
\C|altpll_0|sd1|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 41666,
	inclk1_input_frequency => 41666,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 27,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5937,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \C|altpll_0|sd1|pll_INCLK_bus\,
	clk => \C|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\C|altpll_0|sd1|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N8
\C1|HPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X32_Y12_N22
\C1|HPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: LCCOMB_X32_Y12_N24
\C1|HPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: LCFF_X32_Y12_N25
\C1|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(8));

-- Location: LCCOMB_X32_Y12_N16
\C1|HPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: LCFF_X32_Y12_N17
\C1|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(4));

-- Location: LCCOMB_X32_Y12_N20
\C1|HPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: LCFF_X32_Y12_N21
\C1|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(6));

-- Location: LCCOMB_X31_Y13_N20
\C1|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X31_Y13_N14
\C1|LessThan320~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan320~0_combout\ = ((\C1|process_0~9_combout\ & ((!\C1|HPOS\(3)) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(4),
	datac => \C1|process_0~9_combout\,
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan320~0_combout\);

-- Location: LCCOMB_X32_Y12_N26
\C1|HPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: LCFF_X32_Y12_N27
\C1|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(9));

-- Location: LCCOMB_X31_Y13_N24
\C1|LessThan311~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan311~0_combout\ = (\C1|HPOS\(10) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|LessThan320~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(8),
	datac => \C1|LessThan320~0_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|LessThan311~0_combout\);

-- Location: LCFF_X32_Y12_N9
\C1|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(0));

-- Location: LCCOMB_X32_Y12_N10
\C1|HPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: LCCOMB_X32_Y12_N12
\C1|HPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: LCCOMB_X32_Y12_N14
\C1|HPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: LCFF_X32_Y12_N15
\C1|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(3));

-- Location: LCCOMB_X32_Y12_N18
\C1|HPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: LCFF_X32_Y12_N19
\C1|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(5));

-- Location: LCFF_X32_Y12_N23
\C1|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(7));

-- Location: LCFF_X32_Y12_N11
\C1|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(1));

-- Location: LCFF_X32_Y12_N13
\C1|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(2));

-- Location: LCCOMB_X31_Y12_N8
\C1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (!\C1|HPOS\(3) & (!\C1|HPOS\(0) & (!\C1|HPOS\(1) & !\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X31_Y12_N6
\C1|dMap~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~75_combout\ = (\C1|HPOS\(4) & \C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(5),
	combout => \C1|dMap~75_combout\);

-- Location: LCCOMB_X30_Y12_N22
\C1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (!\C1|HPOS\(6) & (!\C1|HPOS\(7) & ((\C1|process_0~0_combout\) # (!\C1|dMap~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|process_0~0_combout\,
	datad => \C1|dMap~75_combout\,
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X32_Y12_N28
\C1|HPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS[9]~30\ $ (!\C1|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: LCFF_X32_Y12_N29
\C1|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(10));

-- Location: LCCOMB_X30_Y12_N28
\C1|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|process_0~2_combout\) # ((\C1|process_0~1_combout\) # ((\C1|HPOS\(10)) # (\C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~2_combout\,
	datab => \C1|process_0~1_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(9),
	combout => \C1|process_0~3_combout\);

-- Location: LCFF_X30_Y12_N29
\C1|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HSYNC~regout\);

-- Location: LCCOMB_X33_Y12_N8
\C1|VPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X33_Y12_N10
\C1|VPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: LCFF_X33_Y12_N11
\C1|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(1));

-- Location: LCCOMB_X33_Y12_N16
\C1|VPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: LCFF_X33_Y12_N17
\C1|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(4));

-- Location: LCCOMB_X33_Y12_N12
\C1|VPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: LCFF_X33_Y12_N13
\C1|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(2));

-- Location: LCCOMB_X33_Y13_N16
\C1|LessThan30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan30~0_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(1) & !\C1|VPOS\(2))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan30~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\C1|LessThan312~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan312~0_combout\ = (\C1|VPOS\(10) & (((!\C1|LessThan30~0_combout\ & \C1|VPOS\(5))) # (!\C1|LessThan321~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan321~0_combout\,
	datac => \C1|LessThan30~0_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan312~0_combout\);

-- Location: LCFF_X33_Y12_N9
\C1|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(0));

-- Location: LCCOMB_X33_Y12_N14
\C1|VPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: LCFF_X33_Y12_N15
\C1|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(3));

-- Location: LCCOMB_X33_Y12_N18
\C1|VPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: LCFF_X33_Y12_N19
\C1|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(5));

-- Location: LCCOMB_X33_Y12_N20
\C1|VPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: LCCOMB_X33_Y12_N22
\C1|VPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: LCFF_X33_Y12_N23
\C1|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(7));

-- Location: LCCOMB_X33_Y12_N24
\C1|VPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: LCCOMB_X33_Y12_N26
\C1|VPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: LCFF_X33_Y12_N27
\C1|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(9));

-- Location: LCFF_X33_Y12_N21
\C1|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(6));

-- Location: LCCOMB_X33_Y12_N0
\C1|LessThan321~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan321~0_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(9) & (!\C1|VPOS\(6) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan321~0_combout\);

-- Location: LCCOMB_X29_Y12_N12
\C1|dMap~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~76_combout\ = (!\C1|VPOS\(4) & (!\C1|VPOS\(3) & !\C1|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(2),
	combout => \C1|dMap~76_combout\);

-- Location: LCCOMB_X29_Y12_N18
\C1|LessThan324~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan324~0_combout\ = (\C1|VPOS\(1)) # ((\C1|VPOS\(0)) # (!\C1|dMap~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	datad => \C1|dMap~76_combout\,
	combout => \C1|LessThan324~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\C1|VPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS\(10) $ (!\C1|VPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: LCFF_X33_Y12_N29
\C1|VPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(10));

-- Location: LCCOMB_X27_Y12_N0
\C1|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(2)) # ((\C1|VPOS\(4)) # (\C1|VPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(10),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X27_Y12_N24
\C1|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|VPOS\(5)) # (((\C1|process_0~4_combout\) # (!\C1|LessThan324~0_combout\)) # (!\C1|LessThan321~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|LessThan321~0_combout\,
	datac => \C1|LessThan324~0_combout\,
	datad => \C1|process_0~4_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCFF_X27_Y12_N25
\C1|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VSYNC~regout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X31_Y13_N26
\C1|LessThan43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan43~1_combout\ = (!\C1|HPOS\(1) & !\C1|HPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan43~1_combout\);

-- Location: LCCOMB_X31_Y13_N4
\C1|LessThan18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~2_combout\ = (((!\C1|HPOS\(0) & \C1|LessThan43~1_combout\)) # (!\C1|HPOS\(4))) # (!\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|LessThan43~1_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan18~2_combout\);

-- Location: LCCOMB_X31_Y13_N22
\C1|LessThan18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~3_combout\ = ((\C1|LessThan18~2_combout\ & (!\C1|HPOS\(5) & !\C1|HPOS\(6)))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|LessThan18~2_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|LessThan18~3_combout\);

-- Location: LCCOMB_X31_Y13_N18
\C1|dMap~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~106_combout\ = (!\C1|HPOS\(10) & (!\C1|HPOS\(9) & ((\C1|LessThan18~3_combout\) # (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|LessThan18~3_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|dMap~106_combout\);

-- Location: LCCOMB_X34_Y13_N18
\C1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|VPOS\(2) & ((!\C1|VPOS\(0)) # (!\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCCOMB_X34_Y13_N2
\C1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = ((!\C1|VPOS\(4) & ((\C1|LessThan8~0_combout\) # (!\C1|VPOS\(3))))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|LessThan8~1_combout\);

-- Location: LCCOMB_X30_Y13_N4
\C1|dMap~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~107_combout\ = (\C1|dMap~106_combout\) # ((!\C1|VPOS\(10) & (\C1|LessThan321~0_combout\ & \C1|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|dMap~106_combout\,
	datac => \C1|LessThan321~0_combout\,
	datad => \C1|LessThan8~1_combout\,
	combout => \C1|dMap~107_combout\);

-- Location: LCCOMB_X31_Y13_N2
\C1|DRAWMAP~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~49_combout\ = (\C1|DRAWMAP~48_combout\ & (\C1|HPOS\(10) & (!\C1|HPOS\(8) & \C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~48_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~49_combout\);

-- Location: LCCOMB_X31_Y13_N8
\C1|DRAWMAP~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~50_combout\ = (\C1|VPOS\(10) & ((\C1|DRAWMAP~47_combout\) # ((\C1|LessThan18~3_combout\ & \C1|DRAWMAP~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~47_combout\,
	datab => \C1|LessThan18~3_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|DRAWMAP~49_combout\,
	combout => \C1|DRAWMAP~50_combout\);

-- Location: LCCOMB_X31_Y15_N26
\C1|DRAWMAP~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~25_combout\ = (\C1|HPOS\(9) & !\C1|HPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|DRAWMAP~25_combout\);

-- Location: LCCOMB_X31_Y12_N24
\C1|dMap~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~102_combout\ = (!\C1|HPOS\(8) & (\C1|HPOS\(9) & !\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~102_combout\);

-- Location: LCCOMB_X31_Y12_N22
\C1|dMap~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~101_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(9) & \C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~101_combout\);

-- Location: LCCOMB_X31_Y12_N20
\C1|dMap~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~103_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(2) & ((\C1|HPOS\(0)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|dMap~103_combout\);

-- Location: LCCOMB_X31_Y12_N10
\C1|dMap~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~104_combout\ = (\C1|dMap~102_combout\ & (!\C1|dMap~101_combout\ & (\C1|dMap~103_combout\))) # (!\C1|dMap~102_combout\ & (\C1|dMap~101_combout\ & ((\C1|dMap~103_combout\) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~102_combout\,
	datab => \C1|dMap~101_combout\,
	datac => \C1|dMap~103_combout\,
	datad => \C1|HPOS\(2),
	combout => \C1|dMap~104_combout\);

-- Location: LCCOMB_X30_Y12_N30
\C1|dMap~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~105_combout\ = \C1|dMap~102_combout\ $ (((\C1|dMap~75_combout\ & (\C1|dMap~104_combout\ & \C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~75_combout\,
	datab => \C1|dMap~102_combout\,
	datac => \C1|dMap~104_combout\,
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~105_combout\);

-- Location: LCFF_X33_Y12_N25
\C1|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan312~0_combout\,
	ena => \C1|LessThan311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(8));

-- Location: LCCOMB_X32_Y13_N26
\C1|DRAWMAP~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~28_combout\ = (\C1|VPOS\(9) & \C1|VPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datad => \C1|VPOS\(8),
	combout => \C1|DRAWMAP~28_combout\);

-- Location: LCCOMB_X32_Y13_N28
\C1|DRAWMAP~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~34_combout\ = (!\C1|VPOS\(7) & (\C1|DRAWMAP~28_combout\ & (\C1|VPOS\(5) & !\C1|VPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|DRAWMAP~28_combout\,
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(10),
	combout => \C1|DRAWMAP~34_combout\);

-- Location: LCCOMB_X32_Y12_N4
\C1|LessThan39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan39~0_combout\ = (\C1|HPOS\(2) & \C1|HPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan39~0_combout\);

-- Location: LCCOMB_X31_Y12_N14
\C1|LessThan50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan50~1_combout\ = ((\C1|LessThan50~0_combout\ & ((!\C1|LessThan39~0_combout\) # (!\C1|HPOS\(3))))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan50~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|LessThan50~1_combout\);

-- Location: LCCOMB_X31_Y12_N4
\C1|DRAWMAP~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~42_combout\ = (\C1|dMap~101_combout\ & (((\C1|LessThan49~0_combout\ & \C1|HPOS\(4))) # (!\C1|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan49~0_combout\,
	datab => \C1|process_0~9_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|dMap~101_combout\,
	combout => \C1|DRAWMAP~42_combout\);

-- Location: LCCOMB_X33_Y12_N2
\C1|LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan47~0_combout\ = (\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan47~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\C1|LessThan47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan47~1_combout\ = (!\C1|VPOS\(3) & (!\C1|VPOS\(4) & !\C1|LessThan47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|LessThan47~0_combout\,
	combout => \C1|LessThan47~1_combout\);

-- Location: LCCOMB_X33_Y13_N10
\C1|dMap~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~95_combout\ = (\C1|VPOS\(3) & (\C1|VPOS\(4) & ((\C1|VPOS\(1)) # (\C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(2),
	combout => \C1|dMap~95_combout\);

-- Location: LCCOMB_X32_Y13_N14
\C1|dMap~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~96_combout\ = ((\C1|LessThan47~1_combout\) # ((\C1|dMap~95_combout\) # (!\C1|DRAWMAP~34_combout\))) # (!\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|LessThan47~1_combout\,
	datac => \C1|dMap~95_combout\,
	datad => \C1|DRAWMAP~34_combout\,
	combout => \C1|dMap~96_combout\);

-- Location: LCCOMB_X31_Y12_N18
\C1|DRAWMAP~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~43_combout\ = (!\C1|dMap~96_combout\ & ((\C1|DRAWMAP~42_combout\) # ((\C1|dMap~102_combout\ & \C1|LessThan50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~102_combout\,
	datab => \C1|LessThan50~1_combout\,
	datac => \C1|DRAWMAP~42_combout\,
	datad => \C1|dMap~96_combout\,
	combout => \C1|DRAWMAP~43_combout\);

-- Location: LCCOMB_X30_Y12_N0
\C1|DRAWMAP~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~45_combout\ = (\C1|DRAWMAP~43_combout\) # ((\C1|DRAWMAP~44_combout\ & (\C1|dMap~105_combout\ & \C1|DRAWMAP~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~44_combout\,
	datab => \C1|dMap~105_combout\,
	datac => \C1|DRAWMAP~34_combout\,
	datad => \C1|DRAWMAP~43_combout\,
	combout => \C1|DRAWMAP~45_combout\);

-- Location: LCCOMB_X33_Y12_N30
\C1|dMap~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~99_combout\ = (!\C1|VPOS\(5) & ((\C1|VPOS\(4)) # ((\C1|LessThan47~0_combout\ & \C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|LessThan47~0_combout\,
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~99_combout\);

-- Location: LCCOMB_X29_Y12_N24
\C1|dMap~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~100_combout\ = (\C1|dMap~99_combout\) # ((\C1|dMap~76_combout\ & (!\C1|VPOS\(1) & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~76_combout\,
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(5),
	datad => \C1|dMap~99_combout\,
	combout => \C1|dMap~100_combout\);

-- Location: LCCOMB_X31_Y12_N16
\C1|LessThan49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan49~0_combout\ = (\C1|HPOS\(3) & ((\C1|HPOS\(1)) # (\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan49~0_combout\);

-- Location: LCCOMB_X32_Y12_N2
\C1|DRAWMAP~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~129_combout\ = (\C1|LessThan324~0_combout\ & ((\C1|HPOS\(5)) # ((\C1|HPOS\(4)) # (\C1|LessThan49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan324~0_combout\,
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan49~0_combout\,
	combout => \C1|DRAWMAP~129_combout\);

-- Location: LCCOMB_X32_Y14_N24
\C1|LessThan39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan39~1_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(1) & \C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan39~1_combout\);

-- Location: LCCOMB_X33_Y14_N20
\C1|dMap~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~90_combout\ = (\C1|HPOS\(6) & (\C1|HPOS\(5) & !\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~90_combout\);

-- Location: LCCOMB_X33_Y14_N2
\C1|dMap~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~97_combout\ = (!\C1|HPOS\(6) & \C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~97_combout\);

-- Location: LCCOMB_X33_Y14_N28
\C1|dMap~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~98_combout\ = (\C1|LessThan40~2_combout\ & ((\C1|dMap~97_combout\) # ((\C1|LessThan39~1_combout\ & \C1|dMap~90_combout\)))) # (!\C1|LessThan40~2_combout\ & (\C1|LessThan39~1_combout\ & (\C1|dMap~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan40~2_combout\,
	datab => \C1|LessThan39~1_combout\,
	datac => \C1|dMap~90_combout\,
	datad => \C1|dMap~97_combout\,
	combout => \C1|dMap~98_combout\);

-- Location: LCCOMB_X33_Y14_N26
\C1|DRAWMAP~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~39_combout\ = (\C1|DRAWMAP~38_combout\ & ((\C1|DRAWMAP~129_combout\) # ((\C1|dMap~100_combout\ & \C1|dMap~98_combout\)))) # (!\C1|DRAWMAP~38_combout\ & (\C1|dMap~100_combout\ & ((\C1|dMap~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~38_combout\,
	datab => \C1|dMap~100_combout\,
	datac => \C1|DRAWMAP~129_combout\,
	datad => \C1|dMap~98_combout\,
	combout => \C1|DRAWMAP~39_combout\);

-- Location: LCCOMB_X32_Y12_N0
\C1|LessThan46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan46~0_combout\ = (!\C1|HPOS\(2) & ((!\C1|HPOS\(1)) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan46~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\C1|dMap~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~89_combout\ = (\C1|HPOS\(5) & (\C1|LessThan46~0_combout\ & (!\C1|HPOS\(3)))) # (!\C1|HPOS\(5) & (((\C1|HPOS\(3) & \C1|LessThan39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan46~0_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|dMap~89_combout\);

-- Location: LCCOMB_X32_Y13_N4
\C1|DRAWMAP~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~26_combout\ = (!\C1|HPOS\(6) & ((\C1|HPOS\(4) & ((\C1|dMap~89_combout\))) # (!\C1|HPOS\(4) & (\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(6),
	datad => \C1|dMap~89_combout\,
	combout => \C1|DRAWMAP~26_combout\);

-- Location: LCCOMB_X33_Y13_N22
\C1|dMap~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~82_combout\ = (\C1|VPOS\(6) & !\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~82_combout\);

-- Location: LCCOMB_X34_Y13_N30
\C1|dMap~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~86_combout\ = (\C1|VPOS\(4) & (\C1|VPOS\(5) & !\C1|VPOS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(6),
	combout => \C1|dMap~86_combout\);

-- Location: LCCOMB_X33_Y13_N18
\C1|dMap~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~88_combout\ = (\C1|dMap~87_combout\ & ((\C1|dMap~86_combout\) # ((\C1|dMap~82_combout\ & \C1|LessThan30~0_combout\)))) # (!\C1|dMap~87_combout\ & (\C1|dMap~82_combout\ & (\C1|LessThan30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~87_combout\,
	datab => \C1|dMap~82_combout\,
	datac => \C1|LessThan30~0_combout\,
	datad => \C1|dMap~86_combout\,
	combout => \C1|dMap~88_combout\);

-- Location: LCCOMB_X33_Y13_N8
\C1|DRAWMAP~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~27_combout\ = (\C1|DRAWMAP~10_combout\ & (\C1|HPOS\(7) & (\C1|DRAWMAP~26_combout\ & \C1|dMap~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~10_combout\,
	datab => \C1|HPOS\(7),
	datac => \C1|DRAWMAP~26_combout\,
	datad => \C1|dMap~88_combout\,
	combout => \C1|DRAWMAP~27_combout\);

-- Location: LCCOMB_X32_Y13_N0
\C1|DRAWMAP~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~10_combout\ = (\C1|VPOS\(8) & (\C1|VPOS\(7) & \C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~10_combout\);

-- Location: LCCOMB_X34_Y13_N24
\C1|dMap~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~78_combout\ = (\C1|VPOS\(3) & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|dMap~78_combout\);

-- Location: LCCOMB_X33_Y13_N4
\C1|dMap~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~79_combout\ = (\C1|VPOS\(10)) # (((\C1|VPOS\(2) & \C1|dMap~78_combout\)) # (!\C1|DRAWMAP~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(10),
	datac => \C1|DRAWMAP~10_combout\,
	datad => \C1|dMap~78_combout\,
	combout => \C1|dMap~79_combout\);

-- Location: LCCOMB_X32_Y13_N30
\C1|dMap~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~80_combout\ = (\C1|dMap~77_combout\) # ((\C1|VPOS\(5)) # ((\C1|dMap~79_combout\) # (!\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~77_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(6),
	datad => \C1|dMap~79_combout\,
	combout => \C1|dMap~80_combout\);

-- Location: LCCOMB_X32_Y12_N6
\C1|LessThan50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan50~0_combout\ = (!\C1|HPOS\(4) & !\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan50~0_combout\);

-- Location: LCCOMB_X31_Y13_N0
\C1|DRAWMAP~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~31_combout\ = (\C1|dMap~75_combout\ & (!\C1|HPOS\(6) & ((\C1|HPOS\(3)) # (!\C1|LessThan43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~75_combout\,
	datab => \C1|LessThan43~1_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(6),
	combout => \C1|DRAWMAP~31_combout\);

-- Location: LCCOMB_X31_Y13_N30
\C1|DRAWMAP~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~32_combout\ = (\C1|DRAWMAP~31_combout\) # ((\C1|LessThan44~0_combout\ & (\C1|HPOS\(6) & \C1|LessThan50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan44~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|LessThan50~0_combout\,
	datad => \C1|DRAWMAP~31_combout\,
	combout => \C1|DRAWMAP~32_combout\);

-- Location: LCCOMB_X33_Y13_N20
\C1|LessThan41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan41~0_combout\ = (\C1|VPOS\(0)) # ((\C1|VPOS\(1)) # (\C1|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan41~0_combout\);

-- Location: LCCOMB_X34_Y13_N28
\C1|dMap~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~91_combout\ = (\C1|VPOS\(6) & (\C1|VPOS\(4) & (\C1|VPOS\(5) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(7),
	combout => \C1|dMap~91_combout\);

-- Location: LCCOMB_X33_Y13_N14
\C1|dMap~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~92_combout\ = (\C1|VPOS\(3) & (\C1|LessThan41~0_combout\ & \C1|dMap~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datac => \C1|LessThan41~0_combout\,
	datad => \C1|dMap~91_combout\,
	combout => \C1|dMap~92_combout\);

-- Location: LCCOMB_X34_Y13_N22
\C1|dMap~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~93_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(3)) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|dMap~93_combout\);

-- Location: LCCOMB_X34_Y13_N4
\C1|dMap~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~94_combout\ = (!\C1|VPOS\(6) & (\C1|VPOS\(7) & (!\C1|VPOS\(5) & \C1|dMap~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(5),
	datad => \C1|dMap~93_combout\,
	combout => \C1|dMap~94_combout\);

-- Location: LCCOMB_X33_Y13_N24
\C1|DRAWMAP~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~30_combout\ = (\C1|DRAWMAP~29_combout\ & (\C1|DRAWMAP~28_combout\ & ((\C1|dMap~92_combout\) # (\C1|dMap~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~29_combout\,
	datab => \C1|DRAWMAP~28_combout\,
	datac => \C1|dMap~92_combout\,
	datad => \C1|dMap~94_combout\,
	combout => \C1|DRAWMAP~30_combout\);

-- Location: LCCOMB_X32_Y13_N10
\C1|DRAWMAP~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~33_combout\ = (\C1|DRAWMAP~30_combout\) # ((\C1|HPOS\(7) & (!\C1|dMap~80_combout\ & \C1|DRAWMAP~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|dMap~80_combout\,
	datac => \C1|DRAWMAP~32_combout\,
	datad => \C1|DRAWMAP~30_combout\,
	combout => \C1|DRAWMAP~33_combout\);

-- Location: LCCOMB_X32_Y13_N18
\C1|DRAWMAP~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~36_combout\ = (\C1|DRAWMAP~33_combout\) # ((\C1|DRAWMAP~35_combout\ & (\C1|HPOS\(6) & !\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~35_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|DRAWMAP~33_combout\,
	combout => \C1|DRAWMAP~36_combout\);

-- Location: LCCOMB_X32_Y13_N2
\C1|DRAWMAP~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~41_combout\ = (\C1|DRAWMAP~27_combout\) # ((\C1|DRAWMAP~36_combout\) # ((\C1|DRAWMAP~40_combout\ & \C1|DRAWMAP~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~40_combout\,
	datab => \C1|DRAWMAP~39_combout\,
	datac => \C1|DRAWMAP~27_combout\,
	datad => \C1|DRAWMAP~36_combout\,
	combout => \C1|DRAWMAP~41_combout\);

-- Location: LCCOMB_X31_Y15_N4
\C1|DRAWMAP~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~46_combout\ = (\C1|HPOS\(10)) # ((!\C1|DRAWMAP~45_combout\ & ((!\C1|DRAWMAP~41_combout\) # (!\C1|DRAWMAP~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|DRAWMAP~25_combout\,
	datac => \C1|DRAWMAP~45_combout\,
	datad => \C1|DRAWMAP~41_combout\,
	combout => \C1|DRAWMAP~46_combout\);

-- Location: LCCOMB_X31_Y13_N28
\C1|DRAWMAP~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~16_combout\ = (\C1|HPOS\(10) & (!\C1|dMap~80_combout\ & ((\C1|LessThan43~0_combout\) # (!\C1|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan43~0_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|process_0~9_combout\,
	datad => \C1|dMap~80_combout\,
	combout => \C1|DRAWMAP~16_combout\);

-- Location: LCCOMB_X32_Y13_N8
\C1|DRAWMAP~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~17_combout\ = (!\C1|HPOS\(10) & (!\C1|VPOS\(8) & (!\C1|VPOS\(7) & !\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~17_combout\);

-- Location: LCCOMB_X32_Y12_N30
\C1|LessThan40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan40~2_combout\ = (!\C1|HPOS\(4) & (!\C1|HPOS\(5) & ((\C1|LessThan46~0_combout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan46~0_combout\,
	combout => \C1|LessThan40~2_combout\);

-- Location: LCCOMB_X32_Y13_N6
\C1|DRAWMAP~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~20_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(2)) # (\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(4),
	combout => \C1|DRAWMAP~20_combout\);

-- Location: LCCOMB_X33_Y14_N6
\C1|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (!\C1|VPOS\(3) & ((!\C1|VPOS\(2)) # (!\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\C1|DRAWMAP~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~18_combout\ = (!\C1|VPOS\(5) & (\C1|VPOS\(6) & ((!\C1|LessThan47~0_combout\) # (!\C1|dMap~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|dMap~78_combout\,
	datac => \C1|VPOS\(6),
	datad => \C1|LessThan47~0_combout\,
	combout => \C1|DRAWMAP~18_combout\);

-- Location: LCCOMB_X33_Y13_N0
\C1|DRAWMAP~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~19_combout\ = (\C1|DRAWMAP~18_combout\) # ((\C1|dMap~86_combout\ & !\C1|LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~86_combout\,
	datac => \C1|LessThan11~0_combout\,
	datad => \C1|DRAWMAP~18_combout\,
	combout => \C1|DRAWMAP~19_combout\);

-- Location: LCCOMB_X33_Y13_N2
\C1|DRAWMAP~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~21_combout\ = (\C1|DRAWMAP~19_combout\ & ((\C1|HPOS\(6) & (\C1|LessThan40~2_combout\)) # (!\C1|HPOS\(6) & ((\C1|DRAWMAP~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|LessThan40~2_combout\,
	datac => \C1|DRAWMAP~20_combout\,
	datad => \C1|DRAWMAP~19_combout\,
	combout => \C1|DRAWMAP~21_combout\);

-- Location: LCCOMB_X32_Y13_N16
\C1|DRAWMAP~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~22_combout\ = (\C1|DRAWMAP~16_combout\) # ((!\C1|VPOS\(10) & (\C1|DRAWMAP~17_combout\ & \C1|DRAWMAP~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|DRAWMAP~16_combout\,
	datac => \C1|DRAWMAP~17_combout\,
	datad => \C1|DRAWMAP~21_combout\,
	combout => \C1|DRAWMAP~22_combout\);

-- Location: LCCOMB_X32_Y14_N30
\C1|dMap~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~83_combout\ = (\C1|LessThan50~0_combout\ & (((!\C1|LessThan39~0_combout\) # (!\C1|HPOS\(3))) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(3),
	datac => \C1|LessThan50~0_combout\,
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|dMap~83_combout\);

-- Location: LCCOMB_X33_Y14_N0
\C1|dMap~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~84_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(7) & ((\C1|dMap~83_combout\) # (!\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(6),
	datac => \C1|dMap~83_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~84_combout\);

-- Location: LCCOMB_X33_Y13_N26
\C1|dMap~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~77_combout\ = (!\C1|VPOS\(4) & ((!\C1|VPOS\(3)) # (!\C1|LessThan41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datac => \C1|LessThan41~0_combout\,
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~77_combout\);

-- Location: LCCOMB_X33_Y13_N28
\C1|DRAWMAP~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~14_combout\ = (\C1|HPOS\(10) & (\C1|dMap~82_combout\ & (!\C1|dMap~79_combout\ & !\C1|dMap~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|dMap~82_combout\,
	datac => \C1|dMap~79_combout\,
	datad => \C1|dMap~77_combout\,
	combout => \C1|DRAWMAP~14_combout\);

-- Location: LCCOMB_X33_Y14_N18
\C1|dMap~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~85_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & ((\C1|HPOS\(5)) # (\C1|LessThan39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan39~1_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~85_combout\);

-- Location: LCCOMB_X33_Y14_N4
\C1|DRAWMAP~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~15_combout\ = (\C1|DRAWMAP~14_combout\ & ((\C1|dMap~84_combout\) # ((!\C1|HPOS\(8) & \C1|dMap~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|dMap~84_combout\,
	datac => \C1|DRAWMAP~14_combout\,
	datad => \C1|dMap~85_combout\,
	combout => \C1|DRAWMAP~15_combout\);

-- Location: LCCOMB_X32_Y14_N26
\C1|DRAWMAP~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~23_combout\ = (\C1|DRAWMAP~15_combout\) # ((\C1|HPOS\(7) & (\C1|HPOS\(8) & \C1|DRAWMAP~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(8),
	datac => \C1|DRAWMAP~22_combout\,
	datad => \C1|DRAWMAP~15_combout\,
	combout => \C1|DRAWMAP~23_combout\);

-- Location: LCCOMB_X31_Y12_N2
\C1|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|HPOS\(8) & (!\C1|HPOS\(5) & (!\C1|HPOS\(6) & !\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X32_Y14_N22
\C1|LessThan36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan36~0_combout\ = (((!\C1|LessThan39~0_combout\) # (!\C1|HPOS\(4))) # (!\C1|HPOS\(3))) # (!\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|LessThan36~0_combout\);

-- Location: LCCOMB_X32_Y14_N28
\C1|dMap~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~81_combout\ = ((!\C1|HPOS\(6) & ((\C1|LessThan36~0_combout\) # (!\C1|HPOS\(5))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan36~0_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~81_combout\);

-- Location: LCCOMB_X31_Y14_N30
\C1|DRAWMAP~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~11_combout\ = (\C1|HPOS\(6) & ((\C1|HPOS\(3)) # ((\C1|LessThan39~0_combout\) # (!\C1|LessThan50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|LessThan39~0_combout\,
	datac => \C1|LessThan50~0_combout\,
	datad => \C1|HPOS\(6),
	combout => \C1|DRAWMAP~11_combout\);

-- Location: LCCOMB_X31_Y14_N28
\C1|DRAWMAP~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~12_combout\ = (\C1|HPOS\(8) & (((\C1|dMap~81_combout\)))) # (!\C1|HPOS\(8) & (\C1|HPOS\(7) & ((\C1|DRAWMAP~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(7),
	datac => \C1|dMap~81_combout\,
	datad => \C1|DRAWMAP~11_combout\,
	combout => \C1|DRAWMAP~12_combout\);

-- Location: LCCOMB_X31_Y15_N22
\C1|DRAWMAP~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~13_combout\ = (\C1|HPOS\(10) & (\C1|LessThan44~1_combout\ & (\C1|process_0~7_combout\))) # (!\C1|HPOS\(10) & (((\C1|DRAWMAP~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan44~1_combout\,
	datab => \C1|process_0~7_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|DRAWMAP~12_combout\,
	combout => \C1|DRAWMAP~13_combout\);

-- Location: LCCOMB_X31_Y15_N28
\C1|DRAWMAP~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~24_combout\ = (\C1|HPOS\(9) & ((\C1|dMap~80_combout\) # ((!\C1|DRAWMAP~13_combout\)))) # (!\C1|HPOS\(9) & (((!\C1|DRAWMAP~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~80_combout\,
	datab => \C1|HPOS\(9),
	datac => \C1|DRAWMAP~23_combout\,
	datad => \C1|DRAWMAP~13_combout\,
	combout => \C1|DRAWMAP~24_combout\);

-- Location: LCCOMB_X31_Y15_N2
\C1|DRAWMAP~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~51_combout\ = (!\C1|DRAWMAP~50_combout\ & (\C1|DRAWMAP~46_combout\ & \C1|DRAWMAP~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~50_combout\,
	datac => \C1|DRAWMAP~46_combout\,
	datad => \C1|DRAWMAP~24_combout\,
	combout => \C1|DRAWMAP~51_combout\);

-- Location: LCCOMB_X31_Y15_N0
\C1|R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~3_combout\ = (!\SW~combout\(9) & ((\C1|dMap~107_combout\) # (\C1|DRAWMAP~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \C1|dMap~107_combout\,
	datad => \C1|DRAWMAP~51_combout\,
	combout => \C1|R~3_combout\);

-- Location: LCCOMB_X21_Y16_N8
\C1|Add26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add26~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add26~0_combout\,
	cout => \C1|Add26~1\);

-- Location: LCCOMB_X22_Y15_N10
\C1|SQ_X1[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~10_combout\ = !\C1|Add26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add26~0_combout\,
	combout => \C1|SQ_X1[1]~10_combout\);

-- Location: LCCOMB_X21_Y16_N16
\C1|Add26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~8_combout\ = ((\C1|SQ_X1\(5) $ (\C1|process_0~22_combout\ $ (\C1|Add26~7\)))) # (GND)
-- \C1|Add26~9\ = CARRY((\C1|SQ_X1\(5) & (\C1|process_0~22_combout\ & !\C1|Add26~7\)) # (!\C1|SQ_X1\(5) & ((\C1|process_0~22_combout\) # (!\C1|Add26~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~7\,
	combout => \C1|Add26~8_combout\,
	cout => \C1|Add26~9\);

-- Location: LCCOMB_X21_Y16_N18
\C1|Add26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~10_combout\ = (\C1|SQ_X1\(6) & ((\C1|process_0~22_combout\ & (\C1|Add26~9\ & VCC)) # (!\C1|process_0~22_combout\ & (!\C1|Add26~9\)))) # (!\C1|SQ_X1\(6) & ((\C1|process_0~22_combout\ & (!\C1|Add26~9\)) # (!\C1|process_0~22_combout\ & 
-- ((\C1|Add26~9\) # (GND)))))
-- \C1|Add26~11\ = CARRY((\C1|SQ_X1\(6) & (!\C1|process_0~22_combout\ & !\C1|Add26~9\)) # (!\C1|SQ_X1\(6) & ((!\C1|Add26~9\) # (!\C1|process_0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~9\,
	combout => \C1|Add26~10_combout\,
	cout => \C1|Add26~11\);

-- Location: LCCOMB_X21_Y16_N20
\C1|Add26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~12_combout\ = ((\C1|SQ_X1\(7) $ (\C1|process_0~22_combout\ $ (\C1|Add26~11\)))) # (GND)
-- \C1|Add26~13\ = CARRY((\C1|SQ_X1\(7) & (\C1|process_0~22_combout\ & !\C1|Add26~11\)) # (!\C1|SQ_X1\(7) & ((\C1|process_0~22_combout\) # (!\C1|Add26~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~11\,
	combout => \C1|Add26~12_combout\,
	cout => \C1|Add26~13\);

-- Location: LCCOMB_X21_Y16_N22
\C1|Add26~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~14_combout\ = (\C1|SQ_X1\(8) & ((\C1|process_0~22_combout\ & (!\C1|Add26~13\)) # (!\C1|process_0~22_combout\ & ((\C1|Add26~13\) # (GND))))) # (!\C1|SQ_X1\(8) & ((\C1|process_0~22_combout\ & (\C1|Add26~13\ & VCC)) # (!\C1|process_0~22_combout\ & 
-- (!\C1|Add26~13\))))
-- \C1|Add26~15\ = CARRY((\C1|SQ_X1\(8) & ((!\C1|Add26~13\) # (!\C1|process_0~22_combout\))) # (!\C1|SQ_X1\(8) & (!\C1|process_0~22_combout\ & !\C1|Add26~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~13\,
	combout => \C1|Add26~14_combout\,
	cout => \C1|Add26~15\);

-- Location: LCCOMB_X22_Y15_N0
\C1|SQ_X1[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~6_combout\ = !\C1|Add26~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add26~14_combout\,
	combout => \C1|SQ_X1[8]~6_combout\);

-- Location: LCFF_X22_Y15_N1
\C1|SQ_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[8]~6_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(8));

-- Location: LCCOMB_X22_Y16_N8
\C1|SQ_X1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~7_combout\ = !\C1|Add26~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add26~12_combout\,
	combout => \C1|SQ_X1[7]~7_combout\);

-- Location: LCFF_X22_Y16_N9
\C1|SQ_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[7]~7_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(7));

-- Location: LCFF_X21_Y16_N19
\C1|SQ_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add26~10_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(6));

-- Location: LCCOMB_X21_Y16_N14
\C1|Add26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~6_combout\ = (\C1|SQ_X1\(4) & ((\C1|process_0~22_combout\ & (!\C1|Add26~5\)) # (!\C1|process_0~22_combout\ & ((\C1|Add26~5\) # (GND))))) # (!\C1|SQ_X1\(4) & ((\C1|process_0~22_combout\ & (\C1|Add26~5\ & VCC)) # (!\C1|process_0~22_combout\ & 
-- (!\C1|Add26~5\))))
-- \C1|Add26~7\ = CARRY((\C1|SQ_X1\(4) & ((!\C1|Add26~5\) # (!\C1|process_0~22_combout\))) # (!\C1|SQ_X1\(4) & (!\C1|process_0~22_combout\ & !\C1|Add26~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~5\,
	combout => \C1|Add26~6_combout\,
	cout => \C1|Add26~7\);

-- Location: LCCOMB_X22_Y16_N4
\C1|SQ_X1[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~9_combout\ = !\C1|Add26~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add26~6_combout\,
	combout => \C1|SQ_X1[4]~9_combout\);

-- Location: LCFF_X22_Y16_N5
\C1|SQ_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[4]~9_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(4));

-- Location: LCCOMB_X22_Y16_N10
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|SQ_X1\(2) $ (VCC)
-- \C1|Add0~1\ = CARRY(\C1|SQ_X1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X22_Y16_N12
\C1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(3) & (!\C1|Add0~1\)) # (!\C1|SQ_X1\(3) & ((\C1|Add0~1\) # (GND)))
-- \C1|Add0~3\ = CARRY((!\C1|Add0~1\) # (!\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X22_Y16_N14
\C1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|SQ_X1\(4) & (\C1|Add0~3\ $ (GND))) # (!\C1|SQ_X1\(4) & ((GND) # (!\C1|Add0~3\)))
-- \C1|Add0~5\ = CARRY((!\C1|Add0~3\) # (!\C1|SQ_X1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X22_Y16_N16
\C1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(5) & ((\C1|Add0~5\) # (GND))) # (!\C1|SQ_X1\(5) & (!\C1|Add0~5\))
-- \C1|Add0~7\ = CARRY((\C1|SQ_X1\(5)) # (!\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X22_Y16_N18
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(6) & (\C1|Add0~7\ $ (GND))) # (!\C1|SQ_X1\(6) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|SQ_X1\(6) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X22_Y16_N20
\C1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|SQ_X1\(7) & ((\C1|Add0~9\) # (GND))) # (!\C1|SQ_X1\(7) & (!\C1|Add0~9\))
-- \C1|Add0~11\ = CARRY((\C1|SQ_X1\(7)) # (!\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X22_Y16_N22
\C1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(8) & (!\C1|Add0~11\ & VCC)) # (!\C1|SQ_X1\(8) & (\C1|Add0~11\ $ (GND)))
-- \C1|Add0~13\ = CARRY((!\C1|SQ_X1\(8) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X21_Y12_N4
\C1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add5~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add5~0_combout\,
	cout => \C1|Add5~1\);

-- Location: LCCOMB_X21_Y12_N6
\C1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (\C1|Add0~0_combout\ & (!\C1|Add5~1\)) # (!\C1|Add0~0_combout\ & ((\C1|Add5~1\) # (GND)))
-- \C1|Add5~3\ = CARRY((!\C1|Add5~1\) # (!\C1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|Add5~1\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X21_Y12_N8
\C1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (\C1|Add0~2_combout\ & (\C1|Add5~3\ $ (GND))) # (!\C1|Add0~2_combout\ & (!\C1|Add5~3\ & VCC))
-- \C1|Add5~5\ = CARRY((\C1|Add0~2_combout\ & !\C1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X21_Y12_N10
\C1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (\C1|Add0~4_combout\ & (!\C1|Add5~5\)) # (!\C1|Add0~4_combout\ & ((\C1|Add5~5\) # (GND)))
-- \C1|Add5~7\ = CARRY((!\C1|Add5~5\) # (!\C1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X21_Y12_N12
\C1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (\C1|Add0~6_combout\ & (\C1|Add5~7\ $ (GND))) # (!\C1|Add0~6_combout\ & (!\C1|Add5~7\ & VCC))
-- \C1|Add5~9\ = CARRY((\C1|Add0~6_combout\ & !\C1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X21_Y12_N14
\C1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (\C1|Add0~8_combout\ & (!\C1|Add5~9\)) # (!\C1|Add0~8_combout\ & ((\C1|Add5~9\) # (GND)))
-- \C1|Add5~11\ = CARRY((!\C1|Add5~9\) # (!\C1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X21_Y12_N16
\C1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~12_combout\ = (\C1|Add0~10_combout\ & (\C1|Add5~11\ $ (GND))) # (!\C1|Add0~10_combout\ & (!\C1|Add5~11\ & VCC))
-- \C1|Add5~13\ = CARRY((\C1|Add0~10_combout\ & !\C1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|Add5~11\,
	combout => \C1|Add5~12_combout\,
	cout => \C1|Add5~13\);

-- Location: LCCOMB_X21_Y12_N18
\C1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~14_combout\ = (\C1|Add0~12_combout\ & (!\C1|Add5~13\)) # (!\C1|Add0~12_combout\ & ((\C1|Add5~13\) # (GND)))
-- \C1|Add5~15\ = CARRY((!\C1|Add5~13\) # (!\C1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|Add5~13\,
	combout => \C1|Add5~14_combout\,
	cout => \C1|Add5~15\);

-- Location: LCCOMB_X22_Y13_N0
\C1|Add20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add20~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add20~0_combout\,
	cout => \C1|Add20~1\);

-- Location: LCCOMB_X23_Y13_N6
\C1|SQ_Y1[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~7_combout\ = !\C1|Add20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add20~0_combout\,
	combout => \C1|SQ_Y1[1]~7_combout\);

-- Location: LCCOMB_X33_Y13_N6
\C1|LessThan321~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan321~1_combout\ = (\C1|LessThan321~0_combout\ & ((\C1|LessThan30~0_combout\) # (!\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datac => \C1|LessThan30~0_combout\,
	datad => \C1|LessThan321~0_combout\,
	combout => \C1|LessThan321~1_combout\);

-- Location: LCCOMB_X29_Y14_N0
\C1|SQ_X1[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~0_combout\ = (\C1|VPOS\(10) & (\C1|LessThan311~0_combout\ & !\C1|LessThan321~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan311~0_combout\,
	datad => \C1|LessThan321~1_combout\,
	combout => \C1|SQ_X1[1]~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\C1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~16_combout\ = (\C1|Add0~14_combout\ & (\C1|Add5~15\ $ (GND))) # (!\C1|Add0~14_combout\ & (!\C1|Add5~15\ & VCC))
-- \C1|Add5~17\ = CARRY((\C1|Add0~14_combout\ & !\C1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|Add5~15\,
	combout => \C1|Add5~16_combout\,
	cout => \C1|Add5~17\);

-- Location: LCCOMB_X21_Y16_N24
\C1|Add26~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~16_combout\ = ((\C1|SQ_X1\(9) $ (\C1|process_0~22_combout\ $ (!\C1|Add26~15\)))) # (GND)
-- \C1|Add26~17\ = CARRY((\C1|SQ_X1\(9) & ((\C1|process_0~22_combout\) # (!\C1|Add26~15\))) # (!\C1|SQ_X1\(9) & (\C1|process_0~22_combout\ & !\C1|Add26~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~15\,
	combout => \C1|Add26~16_combout\,
	cout => \C1|Add26~17\);

-- Location: LCCOMB_X21_Y16_N26
\C1|Add26~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~18_combout\ = \C1|SQ_X1\(10) $ (\C1|Add26~17\ $ (\C1|process_0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|process_0~22_combout\,
	cin => \C1|Add26~17\,
	combout => \C1|Add26~18_combout\);

-- Location: LCFF_X21_Y16_N27
\C1|SQ_X1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add26~18_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(10));

-- Location: LCCOMB_X22_Y16_N24
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(9) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(9) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X22_Y16_N26
\C1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = (\C1|SQ_X1\(10) & (\C1|Add0~15\ $ (GND))) # (!\C1|SQ_X1\(10) & (!\C1|Add0~15\ & VCC))
-- \C1|Add0~17\ = CARRY((\C1|SQ_X1\(10) & !\C1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => VCC,
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\,
	cout => \C1|Add0~17\);

-- Location: LCCOMB_X22_Y16_N28
\C1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~18_combout\ = \C1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~17\,
	combout => \C1|Add0~18_combout\);

-- Location: LCCOMB_X21_Y12_N22
\C1|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~18_combout\ = (\C1|Add0~16_combout\ & (!\C1|Add5~17\)) # (!\C1|Add0~16_combout\ & ((\C1|Add5~17\) # (GND)))
-- \C1|Add5~19\ = CARRY((!\C1|Add5~17\) # (!\C1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~16_combout\,
	datad => VCC,
	cin => \C1|Add5~17\,
	combout => \C1|Add5~18_combout\,
	cout => \C1|Add5~19\);

-- Location: LCCOMB_X21_Y12_N24
\C1|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~20_combout\ = \C1|Add5~19\ $ (!\C1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add0~18_combout\,
	cin => \C1|Add5~19\,
	combout => \C1|Add5~20_combout\);

-- Location: LCCOMB_X20_Y13_N20
\C1|LessThan103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan103~0_combout\ = (!\C1|Add5~16_combout\ & (!\C1|Add5~20_combout\ & !\C1|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan103~0_combout\);

-- Location: LCCOMB_X22_Y12_N8
\C1|LessThan93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~0_combout\ = (((!\C1|Add5~0_combout\ & !\C1|Add5~2_combout\)) # (!\C1|Add5~6_combout\)) # (!\C1|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan93~0_combout\);

-- Location: LCCOMB_X22_Y12_N14
\C1|LessThan93~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~1_combout\ = ((!\C1|Add5~10_combout\ & (\C1|LessThan93~0_combout\ & !\C1|Add5~8_combout\))) # (!\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|LessThan93~0_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan93~1_combout\);

-- Location: LCCOMB_X19_Y15_N4
\C1|arQ1X2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~8_combout\ = (!\C1|LessThan55~2_combout\ & (((\C1|Add5~14_combout\ & !\C1|LessThan93~1_combout\)) # (!\C1|LessThan103~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan55~2_combout\,
	datab => \C1|LessThan103~0_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|LessThan93~1_combout\,
	combout => \C1|arQ1X2~8_combout\);

-- Location: LCCOMB_X23_Y15_N14
\C1|LessThan170~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan170~1_combout\ = (\C1|SQ_X1\(8) & \C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan170~1_combout\);

-- Location: LCCOMB_X21_Y16_N10
\C1|Add26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~2_combout\ = (\C1|SQ_X1\(2) & ((\C1|process_0~22_combout\ & (\C1|Add26~1\ & VCC)) # (!\C1|process_0~22_combout\ & (!\C1|Add26~1\)))) # (!\C1|SQ_X1\(2) & ((\C1|process_0~22_combout\ & (!\C1|Add26~1\)) # (!\C1|process_0~22_combout\ & 
-- ((\C1|Add26~1\) # (GND)))))
-- \C1|Add26~3\ = CARRY((\C1|SQ_X1\(2) & (!\C1|process_0~22_combout\ & !\C1|Add26~1\)) # (!\C1|SQ_X1\(2) & ((!\C1|Add26~1\) # (!\C1|process_0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~1\,
	combout => \C1|Add26~2_combout\,
	cout => \C1|Add26~3\);

-- Location: LCFF_X21_Y16_N11
\C1|SQ_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add26~2_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(2));

-- Location: LCCOMB_X22_Y11_N26
\C1|LessThan173~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~4_combout\ = (!\C1|SQ_X1\(1) & \C1|SQ_X1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(1),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan173~4_combout\);

-- Location: LCCOMB_X21_Y16_N12
\C1|Add26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add26~4_combout\ = ((\C1|SQ_X1\(3) $ (\C1|process_0~22_combout\ $ (!\C1|Add26~3\)))) # (GND)
-- \C1|Add26~5\ = CARRY((\C1|SQ_X1\(3) & ((\C1|process_0~22_combout\) # (!\C1|Add26~3\))) # (!\C1|SQ_X1\(3) & (\C1|process_0~22_combout\ & !\C1|Add26~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|process_0~22_combout\,
	datad => VCC,
	cin => \C1|Add26~3\,
	combout => \C1|Add26~4_combout\,
	cout => \C1|Add26~5\);

-- Location: LCFF_X21_Y16_N13
\C1|SQ_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add26~4_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(3));

-- Location: LCCOMB_X22_Y11_N28
\C1|LessThan159~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan159~0_combout\ = ((!\C1|SQ_X1\(4) & ((\C1|LessThan173~4_combout\) # (\C1|SQ_X1\(3))))) # (!\C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|LessThan173~4_combout\,
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan159~0_combout\);

-- Location: LCCOMB_X22_Y11_N10
\C1|LessThan159~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan159~1_combout\ = (\C1|SQ_X1\(9)) # (((\C1|SQ_X1\(6) & \C1|LessThan159~0_combout\)) # (!\C1|LessThan170~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(9),
	datac => \C1|LessThan170~1_combout\,
	datad => \C1|LessThan159~0_combout\,
	combout => \C1|LessThan159~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\C1|LessThan170~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan170~2_combout\ = (\C1|SQ_X1\(4) & \C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan170~2_combout\);

-- Location: LCCOMB_X21_Y11_N0
\C1|LessThan160~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan160~0_combout\ = (\C1|SQ_X1\(8)) # ((\C1|SQ_X1\(7) & ((\C1|LessThan170~2_combout\) # (!\C1|SQ_X1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(8),
	datac => \C1|LessThan170~2_combout\,
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan160~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\C1|DRAWMAP~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~121_combout\ = (!\C1|SQ_X1\(9) & (\C1|SQ_X1\(10) & (\C1|LessThan159~1_combout\ & \C1|LessThan160~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan159~1_combout\,
	datad => \C1|LessThan160~0_combout\,
	combout => \C1|DRAWMAP~121_combout\);

-- Location: LCCOMB_X22_Y11_N24
\C1|LessThan161~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan161~0_combout\ = (!\C1|SQ_X1\(7) & (\C1|SQ_X1\(6) & \C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(6),
	datad => \C1|SQ_X1\(9),
	combout => \C1|LessThan161~0_combout\);

-- Location: LCCOMB_X22_Y11_N30
\C1|LessThan161~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan161~1_combout\ = (\C1|LessThan161~0_combout\ & ((\C1|SQ_X1\(3)) # ((\C1|LessThan173~4_combout\) # (!\C1|LessThan170~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|LessThan173~4_combout\,
	datac => \C1|LessThan161~0_combout\,
	datad => \C1|LessThan170~2_combout\,
	combout => \C1|LessThan161~1_combout\);

-- Location: LCCOMB_X21_Y11_N24
\C1|DRAWMAP~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~134_combout\ = (\C1|SQ_X1\(8) & (((\C1|LessThan161~1_combout\)))) # (!\C1|SQ_X1\(8) & (((\C1|SQ_X1\(7))) # (!\C1|SQ_X1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan161~1_combout\,
	combout => \C1|DRAWMAP~134_combout\);

-- Location: LCCOMB_X21_Y11_N30
\C1|DRAWMAP~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~135_combout\ = (!\C1|SQ_X1\(10) & ((\C1|SQ_X1\(9) & (\C1|DRAWMAP~134_combout\)) # (!\C1|SQ_X1\(9) & ((\C1|LessThan161~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|DRAWMAP~134_combout\,
	datad => \C1|LessThan161~1_combout\,
	combout => \C1|DRAWMAP~135_combout\);

-- Location: LCCOMB_X21_Y11_N26
\C1|esqQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~0_combout\ = (\C1|DRAWMAP~133_combout\) # ((\C1|DRAWMAP~121_combout\) # ((\C1|DRAWMAP~122_combout\) # (\C1|DRAWMAP~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~133_combout\,
	datab => \C1|DRAWMAP~121_combout\,
	datac => \C1|DRAWMAP~122_combout\,
	datad => \C1|DRAWMAP~135_combout\,
	combout => \C1|esqQ1X2~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\C1|Add20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~6_combout\ = (\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~5\)) # (!\C1|SQ_Y1[9]~0_combout\ & (\C1|Add20~5\ & VCC)))) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[9]~0_combout\ & ((\C1|Add20~5\) # (GND))) # (!\C1|SQ_Y1[9]~0_combout\ & 
-- (!\C1|Add20~5\))))
-- \C1|Add20~7\ = CARRY((\C1|SQ_Y1\(4) & (\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~5\)) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[9]~0_combout\) # (!\C1|Add20~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~5\,
	combout => \C1|Add20~6_combout\,
	cout => \C1|Add20~7\);

-- Location: LCFF_X22_Y13_N7
\C1|SQ_Y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add20~6_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X22_Y13_N4
\C1|Add20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~4_combout\ = ((\C1|SQ_Y1\(3) $ (\C1|SQ_Y1[9]~0_combout\ $ (!\C1|Add20~3\)))) # (GND)
-- \C1|Add20~5\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~3\)) # (!\C1|SQ_Y1\(3) & ((!\C1|Add20~3\) # (!\C1|SQ_Y1[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~3\,
	combout => \C1|Add20~4_combout\,
	cout => \C1|Add20~5\);

-- Location: LCCOMB_X22_Y13_N22
\C1|SQ_Y1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~5_combout\ = !\C1|Add20~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add20~4_combout\,
	combout => \C1|SQ_Y1[3]~5_combout\);

-- Location: LCFF_X22_Y13_N23
\C1|SQ_Y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[3]~5_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X22_Y13_N2
\C1|Add20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~2_combout\ = (\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[9]~0_combout\ & ((\C1|Add20~1\) # (GND))) # (!\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~1\)))) # (!\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~1\)) # (!\C1|SQ_Y1[9]~0_combout\ & (\C1|Add20~1\ & 
-- VCC))))
-- \C1|Add20~3\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[9]~0_combout\) # (!\C1|Add20~1\))) # (!\C1|SQ_Y1\(2) & (\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~1\,
	combout => \C1|Add20~2_combout\,
	cout => \C1|Add20~3\);

-- Location: LCCOMB_X23_Y13_N0
\C1|SQ_Y1[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~6_combout\ = !\C1|Add20~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add20~2_combout\,
	combout => \C1|SQ_Y1[2]~6_combout\);

-- Location: LCFF_X23_Y13_N1
\C1|SQ_Y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[2]~6_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X23_Y13_N10
\C1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add1~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X23_Y13_N12
\C1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|SQ_Y1\(2) & (!\C1|Add1~1\)) # (!\C1|SQ_Y1\(2) & (\C1|Add1~1\ & VCC))
-- \C1|Add1~3\ = CARRY((\C1|SQ_Y1\(2) & !\C1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X23_Y13_N14
\C1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = (\C1|SQ_Y1\(3) & (\C1|Add1~3\ $ (GND))) # (!\C1|SQ_Y1\(3) & ((GND) # (!\C1|Add1~3\)))
-- \C1|Add1~5\ = CARRY((!\C1|Add1~3\) # (!\C1|SQ_Y1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X23_Y13_N16
\C1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|SQ_Y1\(4) & (\C1|Add1~5\ & VCC)) # (!\C1|SQ_Y1\(4) & (!\C1|Add1~5\))
-- \C1|Add1~7\ = CARRY((!\C1|SQ_Y1\(4) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X23_Y13_N18
\C1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|SQ_Y1\(5) & (\C1|Add1~7\ $ (GND))) # (!\C1|SQ_Y1\(5) & (!\C1|Add1~7\ & VCC))
-- \C1|Add1~9\ = CARRY((\C1|SQ_Y1\(5) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X22_Y13_N8
\C1|Add20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~8_combout\ = ((\C1|SQ_Y1\(5) $ (\C1|SQ_Y1[9]~0_combout\ $ (\C1|Add20~7\)))) # (GND)
-- \C1|Add20~9\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|Add20~7\) # (!\C1|SQ_Y1[9]~0_combout\))) # (!\C1|SQ_Y1\(5) & (!\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~7\,
	combout => \C1|Add20~8_combout\,
	cout => \C1|Add20~9\);

-- Location: LCCOMB_X22_Y13_N10
\C1|Add20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~10_combout\ = (\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~9\)) # (!\C1|SQ_Y1[9]~0_combout\ & (\C1|Add20~9\ & VCC)))) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[9]~0_combout\ & ((\C1|Add20~9\) # (GND))) # (!\C1|SQ_Y1[9]~0_combout\ & 
-- (!\C1|Add20~9\))))
-- \C1|Add20~11\ = CARRY((\C1|SQ_Y1\(6) & (\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[9]~0_combout\) # (!\C1|Add20~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~9\,
	combout => \C1|Add20~10_combout\,
	cout => \C1|Add20~11\);

-- Location: LCCOMB_X22_Y13_N12
\C1|Add20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~12_combout\ = ((\C1|SQ_Y1\(7) $ (\C1|SQ_Y1[9]~0_combout\ $ (!\C1|Add20~11\)))) # (GND)
-- \C1|Add20~13\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~11\)) # (!\C1|SQ_Y1\(7) & ((!\C1|Add20~11\) # (!\C1|SQ_Y1[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~11\,
	combout => \C1|Add20~12_combout\,
	cout => \C1|Add20~13\);

-- Location: LCCOMB_X22_Y13_N14
\C1|Add20~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~14_combout\ = (\C1|SQ_Y1\(8) & ((\C1|SQ_Y1[9]~0_combout\ & ((\C1|Add20~13\) # (GND))) # (!\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~13\)))) # (!\C1|SQ_Y1\(8) & ((\C1|SQ_Y1[9]~0_combout\ & (!\C1|Add20~13\)) # (!\C1|SQ_Y1[9]~0_combout\ & 
-- (\C1|Add20~13\ & VCC))))
-- \C1|Add20~15\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|SQ_Y1[9]~0_combout\) # (!\C1|Add20~13\))) # (!\C1|SQ_Y1\(8) & (\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~13\,
	combout => \C1|Add20~14_combout\,
	cout => \C1|Add20~15\);

-- Location: LCCOMB_X23_Y13_N4
\C1|SQ_Y1[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~3_combout\ = !\C1|Add20~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add20~14_combout\,
	combout => \C1|SQ_Y1[8]~3_combout\);

-- Location: LCFF_X23_Y13_N5
\C1|SQ_Y1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[8]~3_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X23_Y13_N2
\C1|SQ_Y1[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[7]~4_combout\ = !\C1|Add20~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add20~12_combout\,
	combout => \C1|SQ_Y1[7]~4_combout\);

-- Location: LCFF_X23_Y13_N3
\C1|SQ_Y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[7]~4_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(7));

-- Location: LCCOMB_X23_Y13_N20
\C1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|SQ_Y1\(6) & (!\C1|Add1~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add1~9\) # (GND)))
-- \C1|Add1~11\ = CARRY((!\C1|Add1~9\) # (!\C1|SQ_Y1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X23_Y13_N22
\C1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|SQ_Y1\(7) & (!\C1|Add1~11\ & VCC)) # (!\C1|SQ_Y1\(7) & (\C1|Add1~11\ $ (GND)))
-- \C1|Add1~13\ = CARRY((!\C1|SQ_Y1\(7) & !\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X23_Y13_N24
\C1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|SQ_Y1\(8) & ((\C1|Add1~13\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add1~13\))
-- \C1|Add1~15\ = CARRY((\C1|SQ_Y1\(8)) # (!\C1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X23_Y13_N26
\C1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = (\C1|SQ_Y1\(9) & (!\C1|Add1~15\ & VCC)) # (!\C1|SQ_Y1\(9) & (\C1|Add1~15\ $ (GND)))
-- \C1|Add1~17\ = CARRY((!\C1|SQ_Y1\(9) & !\C1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\,
	cout => \C1|Add1~17\);

-- Location: LCCOMB_X23_Y13_N28
\C1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~18_combout\ = (\C1|SQ_Y1\(10) & (!\C1|Add1~17\)) # (!\C1|SQ_Y1\(10) & ((\C1|Add1~17\) # (GND)))
-- \C1|Add1~19\ = CARRY((!\C1|Add1~17\) # (!\C1|SQ_Y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => VCC,
	cin => \C1|Add1~17\,
	combout => \C1|Add1~18_combout\,
	cout => \C1|Add1~19\);

-- Location: LCCOMB_X23_Y13_N30
\C1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~20_combout\ = !\C1|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~19\,
	combout => \C1|Add1~20_combout\);

-- Location: LCCOMB_X23_Y13_N8
\C1|dMap~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~227_combout\ = (\C1|Add1~14_combout\ & (!\C1|Add1~18_combout\ & (\C1|Add1~16_combout\ & !\C1|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|Add1~18_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|dMap~227_combout\);

-- Location: LCCOMB_X18_Y13_N6
\C1|dMap~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~232_combout\ = (\C1|Add1~10_combout\ & ((\C1|Add1~6_combout\ & ((!\C1|Add1~4_combout\) # (!\C1|Add1~2_combout\))) # (!\C1|Add1~6_combout\ & ((\C1|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~232_combout\);

-- Location: LCCOMB_X18_Y13_N8
\C1|dMap~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~233_combout\ = ((\C1|Add1~8_combout\) # ((!\C1|dMap~232_combout\) # (!\C1|dMap~227_combout\))) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|dMap~232_combout\,
	combout => \C1|dMap~233_combout\);

-- Location: LCCOMB_X18_Y12_N24
\C1|dMap~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~229_combout\ = (!\C1|Add1~4_combout\ & ((!\C1|Add1~2_combout\) # (!\C1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|dMap~229_combout\);

-- Location: LCCOMB_X18_Y12_N18
\C1|dMap~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~230_combout\ = (\C1|Add1~10_combout\ & ((\C1|Add1~6_combout\) # ((\C1|Add1~8_combout\) # (!\C1|dMap~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~229_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~230_combout\);

-- Location: LCCOMB_X18_Y12_N0
\C1|dMap~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~231_combout\ = ((\C1|Add1~20_combout\) # ((\C1|dMap~230_combout\) # (!\C1|Add1~18_combout\))) # (!\C1|LessThan55~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan55~0_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Add1~18_combout\,
	datad => \C1|dMap~230_combout\,
	combout => \C1|dMap~231_combout\);

-- Location: LCCOMB_X18_Y12_N22
\C1|dMap~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~225_combout\ = (\C1|Add1~8_combout\ & (((\C1|Add1~4_combout\) # (\C1|Add1~2_combout\)))) # (!\C1|Add1~8_combout\ & (\C1|Add1~4_combout\ & ((\C1|Add1~0_combout\) # (\C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|dMap~225_combout\);

-- Location: LCCOMB_X18_Y12_N12
\C1|dMap~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~226_combout\ = (\C1|Add1~6_combout\ & ((\C1|Add1~10_combout\) # ((!\C1|dMap~225_combout\) # (!\C1|Add1~8_combout\)))) # (!\C1|Add1~6_combout\ & (((\C1|Add1~8_combout\) # (\C1|dMap~225_combout\)) # (!\C1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|dMap~225_combout\,
	combout => \C1|dMap~226_combout\);

-- Location: LCCOMB_X18_Y12_N14
\C1|dMap~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~228_combout\ = ((\C1|dMap~226_combout\) # (!\C1|dMap~227_combout\)) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~12_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|dMap~226_combout\,
	combout => \C1|dMap~228_combout\);

-- Location: LCCOMB_X22_Y15_N24
\C1|dMap~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~290_combout\ = (\C1|SQ_X1\(5) & (!\C1|SQ_X1\(1) & (\C1|SQ_X1\(3) & \C1|SQ_X1\(2)))) # (!\C1|SQ_X1\(5) & (((!\C1|SQ_X1\(3) & !\C1|SQ_X1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(1),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|dMap~290_combout\);

-- Location: LCCOMB_X22_Y15_N22
\C1|dMap~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~291_combout\ = (\C1|SQ_X1\(4) & (((!\C1|SQ_X1\(5))))) # (!\C1|SQ_X1\(4) & (\C1|dMap~290_combout\ & ((!\C1|SQ_X1\(5)) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|dMap~290_combout\,
	datad => \C1|SQ_X1\(5),
	combout => \C1|dMap~291_combout\);

-- Location: LCCOMB_X21_Y11_N18
\C1|dMap~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~33_combout\ = (!\C1|SQ_X1\(10) & (\C1|SQ_X1\(8) & \C1|dMap~291_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(8),
	datad => \C1|dMap~291_combout\,
	combout => \C1|dMap~33_combout\);

-- Location: LCCOMB_X21_Y11_N28
\C1|dMap~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~287_combout\ = (!\C1|SQ_X1\(6) & (!\C1|SQ_X1\(7) & (\C1|SQ_X1\(9) & \C1|dMap~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(9),
	datad => \C1|dMap~33_combout\,
	combout => \C1|dMap~287_combout\);

-- Location: LCCOMB_X18_Y13_N12
\C1|DRAWMAP~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~123_combout\ = (\C1|dMap~222_combout\ & (((!\C1|dMap~228_combout\ & \C1|dMap~287_combout\)) # (!\C1|dMap~231_combout\))) # (!\C1|dMap~222_combout\ & (((!\C1|dMap~228_combout\ & \C1|dMap~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~222_combout\,
	datab => \C1|dMap~231_combout\,
	datac => \C1|dMap~228_combout\,
	datad => \C1|dMap~287_combout\,
	combout => \C1|DRAWMAP~123_combout\);

-- Location: LCCOMB_X18_Y13_N26
\C1|DRAWMAP~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~124_combout\ = (\C1|DRAWMAP~123_combout\) # ((\C1|esqQ1X2~0_combout\ & !\C1|dMap~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|esqQ1X2~0_combout\,
	datac => \C1|dMap~233_combout\,
	datad => \C1|DRAWMAP~123_combout\,
	combout => \C1|DRAWMAP~124_combout\);

-- Location: LCCOMB_X19_Y13_N0
\C1|LessThan55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan55~0_combout\ = (!\C1|Add1~14_combout\ & (!\C1|Add1~12_combout\ & !\C1|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|Add1~16_combout\,
	combout => \C1|LessThan55~0_combout\);

-- Location: LCCOMB_X18_Y14_N24
\C1|LessThan55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan55~1_combout\ = (!\C1|Add1~18_combout\ & (!\C1|Add1~20_combout\ & \C1|LessThan55~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~18_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|LessThan55~0_combout\,
	combout => \C1|LessThan55~1_combout\);

-- Location: LCCOMB_X19_Y14_N30
\C1|LessThan64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan64~0_combout\ = (!\C1|Add1~6_combout\ & (((!\C1|Add1~0_combout\ & !\C1|Add1~2_combout\)) # (!\C1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|LessThan64~0_combout\);

-- Location: LCCOMB_X18_Y14_N26
\C1|LessThan55~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan55~2_combout\ = (!\C1|Add1~10_combout\ & (\C1|LessThan55~1_combout\ & ((\C1|LessThan64~0_combout\) # (!\C1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|LessThan55~1_combout\,
	datad => \C1|LessThan64~0_combout\,
	combout => \C1|LessThan55~2_combout\);

-- Location: LCCOMB_X18_Y13_N14
\C1|dMap~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~248_combout\ = (\C1|Add1~8_combout\ & ((\C1|Add1~2_combout\) # ((\C1|Add1~4_combout\) # (\C1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~4_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~248_combout\);

-- Location: LCCOMB_X18_Y13_N28
\C1|dMap~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~249_combout\ = (\C1|dMap~248_combout\ & !\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~248_combout\,
	datad => \C1|Add1~12_combout\,
	combout => \C1|dMap~249_combout\);

-- Location: LCCOMB_X18_Y13_N18
\C1|dMap~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~250_combout\ = (\C1|dMap~245_combout\) # (((!\C1|dMap~249_combout\) # (!\C1|dMap~227_combout\)) # (!\C1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~245_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|dMap~249_combout\,
	combout => \C1|dMap~250_combout\);

-- Location: LCCOMB_X18_Y13_N22
\C1|dMap~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~247_combout\ = ((\C1|Add1~10_combout\) # ((!\C1|Add1~8_combout\) # (!\C1|dMap~227_combout\))) # (!\C1|dMap~246_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~246_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~247_combout\);

-- Location: LCCOMB_X23_Y12_N24
\C1|LessThan177~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~21_combout\ = (\C1|SQ_X1\(6) & (!\C1|SQ_X1\(4) & !\C1|SQ_X1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(5),
	combout => \C1|LessThan177~21_combout\);

-- Location: LCCOMB_X23_Y12_N20
\C1|LessThan178~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan178~0_combout\ = (\C1|LessThan170~1_combout\ & (((!\C1|SQ_X1\(3) & !\C1|LessThan173~4_combout\)) # (!\C1|LessThan177~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan170~1_combout\,
	datab => \C1|SQ_X1\(3),
	datac => \C1|LessThan177~21_combout\,
	datad => \C1|LessThan173~4_combout\,
	combout => \C1|LessThan178~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\C1|LessThan177~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~6_combout\ = (!\C1|SQ_X1\(4) & ((\C1|SQ_X1\(2)) # (\C1|SQ_X1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan177~6_combout\);

-- Location: LCCOMB_X23_Y12_N6
\C1|LessThan177~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~3_combout\ = (!\C1|SQ_X1\(7) & (\C1|SQ_X1\(6) & (!\C1|SQ_X1\(5) & \C1|LessThan177~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(5),
	datad => \C1|LessThan177~6_combout\,
	combout => \C1|LessThan177~3_combout\);

-- Location: LCCOMB_X23_Y12_N0
\C1|LessThan177~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~22_combout\ = (\C1|SQ_X1\(10)) # ((\C1|SQ_X1\(9)) # ((!\C1|SQ_X1\(8) & \C1|LessThan177~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan177~3_combout\,
	combout => \C1|LessThan177~22_combout\);

-- Location: LCCOMB_X23_Y12_N26
\C1|dMap~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~224_combout\ = (!\C1|SQ_X1\(10) & (\C1|LessThan177~22_combout\ & ((\C1|LessThan178~0_combout\) # (!\C1|SQ_X1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan178~0_combout\,
	datad => \C1|LessThan177~22_combout\,
	combout => \C1|dMap~224_combout\);

-- Location: LCCOMB_X19_Y13_N6
\C1|dMap~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~240_combout\ = (\C1|Add1~12_combout\ & (!\C1|Add1~8_combout\ & (!\C1|Add1~6_combout\ & !\C1|Add1~10_combout\))) # (!\C1|Add1~12_combout\ & (\C1|Add1~8_combout\ & (\C1|Add1~6_combout\ & \C1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|dMap~240_combout\);

-- Location: LCCOMB_X18_Y13_N4
\C1|dMap~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~241_combout\ = ((\C1|dMap~239_combout\ $ (\C1|Add1~8_combout\)) # (!\C1|dMap~240_combout\)) # (!\C1|dMap~227_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~239_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|dMap~240_combout\,
	combout => \C1|dMap~241_combout\);

-- Location: LCCOMB_X18_Y12_N20
\C1|dMap~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~243_combout\ = (\C1|Add1~8_combout\ & ((\C1|Add1~0_combout\) # ((\C1|Add1~4_combout\) # (\C1|Add1~2_combout\)))) # (!\C1|Add1~8_combout\ & (((\C1|Add1~4_combout\ & \C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|dMap~243_combout\);

-- Location: LCCOMB_X19_Y13_N8
\C1|dMap~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~242_combout\ = (!\C1|Add1~10_combout\ & (\C1|Add1~12_combout\ & \C1|dMap~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|dMap~227_combout\,
	combout => \C1|dMap~242_combout\);

-- Location: LCCOMB_X18_Y12_N26
\C1|dMap~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~244_combout\ = (\C1|Add1~8_combout\ $ (((!\C1|Add1~6_combout\ & !\C1|dMap~243_combout\)))) # (!\C1|dMap~242_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|dMap~243_combout\,
	datad => \C1|dMap~242_combout\,
	combout => \C1|dMap~244_combout\);

-- Location: LCCOMB_X23_Y12_N8
\C1|LessThan173~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~5_combout\ = (!\C1|SQ_X1\(10) & (((\C1|SQ_X1\(8) & \C1|SQ_X1\(7))) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan173~5_combout\);

-- Location: LCCOMB_X23_Y12_N2
\C1|LessThan170~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan170~0_combout\ = (\C1|SQ_X1\(5) & (\C1|SQ_X1\(4) & ((!\C1|SQ_X1\(3)) # (!\C1|SQ_X1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(2),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan170~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\C1|LessThan170~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan170~3_combout\ = (\C1|SQ_X1\(8) & (!\C1|SQ_X1\(10) & (!\C1|SQ_X1\(6) & \C1|LessThan170~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(6),
	datad => \C1|LessThan170~0_combout\,
	combout => \C1|LessThan170~3_combout\);

-- Location: LCCOMB_X23_Y12_N18
\C1|LessThan169~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan169~0_combout\ = (\C1|SQ_X1\(9) & (\C1|LessThan177~21_combout\ & ((\C1|SQ_X1\(3)) # (\C1|LessThan173~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(3),
	datac => \C1|LessThan177~21_combout\,
	datad => \C1|LessThan173~4_combout\,
	combout => \C1|LessThan169~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\C1|dMap~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~223_combout\ = (\C1|LessThan173~5_combout\ & ((\C1|LessThan169~0_combout\))) # (!\C1|LessThan173~5_combout\ & (\C1|LessThan170~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan173~5_combout\,
	datac => \C1|LessThan170~3_combout\,
	datad => \C1|LessThan169~0_combout\,
	combout => \C1|dMap~223_combout\);

-- Location: LCCOMB_X18_Y13_N2
\C1|DRAWMAP~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~126_combout\ = (\C1|dMap~289_combout\ & (((!\C1|dMap~244_combout\ & \C1|dMap~223_combout\)) # (!\C1|dMap~241_combout\))) # (!\C1|dMap~289_combout\ & (((!\C1|dMap~244_combout\ & \C1|dMap~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~289_combout\,
	datab => \C1|dMap~241_combout\,
	datac => \C1|dMap~244_combout\,
	datad => \C1|dMap~223_combout\,
	combout => \C1|DRAWMAP~126_combout\);

-- Location: LCCOMB_X18_Y13_N24
\C1|DRAWMAP~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~127_combout\ = (\C1|LessThan56~1_combout\) # ((\C1|DRAWMAP~126_combout\) # ((!\C1|dMap~247_combout\ & \C1|dMap~224_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan56~1_combout\,
	datab => \C1|dMap~247_combout\,
	datac => \C1|dMap~224_combout\,
	datad => \C1|DRAWMAP~126_combout\,
	combout => \C1|DRAWMAP~127_combout\);

-- Location: LCCOMB_X23_Y12_N30
\C1|dMap~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~51_combout\ = (!\C1|SQ_X1\(5) & (((\C1|SQ_X1\(2)) # (\C1|SQ_X1\(3))) # (!\C1|SQ_X1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(3),
	combout => \C1|dMap~51_combout\);

-- Location: LCCOMB_X23_Y12_N22
\C1|dMap~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~48_combout\ = (!\C1|SQ_X1\(7) & ((\C1|SQ_X1\(6) & (\C1|LessThan170~0_combout\)) # (!\C1|SQ_X1\(6) & ((\C1|dMap~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|LessThan170~0_combout\,
	datac => \C1|SQ_X1\(6),
	datad => \C1|dMap~51_combout\,
	combout => \C1|dMap~48_combout\);

-- Location: LCCOMB_X23_Y12_N16
\C1|dMap~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~288_combout\ = (!\C1|SQ_X1\(8) & (!\C1|SQ_X1\(10) & (!\C1|SQ_X1\(9) & \C1|dMap~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	datad => \C1|dMap~48_combout\,
	combout => \C1|dMap~288_combout\);

-- Location: LCCOMB_X18_Y13_N16
\C1|dMap~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~237_combout\ = (!\C1|Add1~10_combout\ & (\C1|dMap~227_combout\ & \C1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~227_combout\,
	datad => \C1|Add1~12_combout\,
	combout => \C1|dMap~237_combout\);

-- Location: LCCOMB_X18_Y12_N4
\C1|dMap~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~238_combout\ = (((!\C1|dMap~229_combout\ & \C1|Add1~6_combout\)) # (!\C1|Add1~8_combout\)) # (!\C1|dMap~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~229_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|dMap~237_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~238_combout\);

-- Location: LCCOMB_X18_Y12_N10
\C1|dMap~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~236_combout\ = ((\C1|Add1~18_combout\) # ((\C1|Add1~20_combout\) # (!\C1|LessThan55~0_combout\))) # (!\C1|dMap~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~235_combout\,
	datab => \C1|Add1~18_combout\,
	datac => \C1|LessThan55~0_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|dMap~236_combout\);

-- Location: LCCOMB_X18_Y12_N6
\C1|DRAWMAP~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~125_combout\ = (\C1|dMap~286_combout\ & (((\C1|dMap~288_combout\ & !\C1|dMap~236_combout\)) # (!\C1|dMap~238_combout\))) # (!\C1|dMap~286_combout\ & (\C1|dMap~288_combout\ & ((!\C1|dMap~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~286_combout\,
	datab => \C1|dMap~288_combout\,
	datac => \C1|dMap~238_combout\,
	datad => \C1|dMap~236_combout\,
	combout => \C1|DRAWMAP~125_combout\);

-- Location: LCCOMB_X18_Y13_N0
\C1|DRAWMAP~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~128_combout\ = (\C1|DRAWMAP~127_combout\) # ((\C1|DRAWMAP~125_combout\) # ((\C1|esqQ1X1~3_combout\ & !\C1|dMap~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~3_combout\,
	datab => \C1|dMap~250_combout\,
	datac => \C1|DRAWMAP~127_combout\,
	datad => \C1|DRAWMAP~125_combout\,
	combout => \C1|DRAWMAP~128_combout\);

-- Location: LCCOMB_X18_Y13_N30
\C1|arQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X1~0_combout\ = (!\C1|LessThan152~0_combout\ & (!\C1|LessThan55~2_combout\ & ((\C1|DRAWMAP~124_combout\) # (\C1|DRAWMAP~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan152~0_combout\,
	datab => \C1|DRAWMAP~124_combout\,
	datac => \C1|LessThan55~2_combout\,
	datad => \C1|DRAWMAP~128_combout\,
	combout => \C1|arQ1X1~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\C1|dMap~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~245_combout\ = (\C1|Add1~6_combout\ & (\C1|Add1~4_combout\ & ((\C1|Add1~2_combout\) # (\C1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~245_combout\);

-- Location: LCCOMB_X19_Y13_N4
\C1|LessThan56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan56~0_combout\ = (\C1|Add1~10_combout\) # ((\C1|Add1~8_combout\) # ((\C1|dMap~245_combout\) # (!\C1|LessThan55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|LessThan55~0_combout\,
	datad => \C1|dMap~245_combout\,
	combout => \C1|LessThan56~0_combout\);

-- Location: LCCOMB_X19_Y13_N2
\C1|LessThan56~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan56~1_combout\ = (\C1|Add1~20_combout\) # ((\C1|LessThan56~0_combout\ & \C1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datac => \C1|LessThan56~0_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|LessThan56~1_combout\);

-- Location: LCCOMB_X20_Y12_N12
\C1|LessThan98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan98~0_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~18_combout\ & ((!\C1|Add5~14_combout\) # (!\C1|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan98~0_combout\);

-- Location: LCCOMB_X20_Y12_N22
\C1|LessThan114~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan114~1_combout\ = (\C1|LessThan98~0_combout\ & ((!\C1|Add5~16_combout\) # (!\C1|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan98~0_combout\,
	combout => \C1|LessThan114~1_combout\);

-- Location: LCCOMB_X20_Y13_N16
\C1|LessThan93~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~4_combout\ = (!\C1|Add5~20_combout\ & !\C1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan93~4_combout\);

-- Location: LCCOMB_X22_Y12_N20
\C1|LessThan119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~0_combout\ = (((!\C1|Add5~10_combout\) # (!\C1|Add5~6_combout\)) # (!\C1|Add5~4_combout\)) # (!\C1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan119~0_combout\);

-- Location: LCCOMB_X21_Y12_N26
\C1|LessThan119~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~1_combout\ = ((!\C1|Add5~14_combout\ & (!\C1|Add5~12_combout\ & \C1|LessThan119~0_combout\))) # (!\C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|LessThan119~0_combout\,
	combout => \C1|LessThan119~1_combout\);

-- Location: LCCOMB_X20_Y12_N28
\C1|dirQ1X1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~38_combout\ = (\C1|LessThan93~4_combout\ & (\C1|LessThan119~1_combout\ & ((\C1|LessThan118~1_combout\) # (!\C1|LessThan114~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan118~1_combout\,
	datab => \C1|LessThan114~1_combout\,
	datac => \C1|LessThan93~4_combout\,
	datad => \C1|LessThan119~1_combout\,
	combout => \C1|dirQ1X1~38_combout\);

-- Location: LCCOMB_X21_Y12_N30
\C1|LessThan128~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan128~0_combout\ = (\C1|Add5~12_combout\ & \C1|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan128~0_combout\);

-- Location: LCCOMB_X20_Y12_N4
\C1|LessThan121~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan121~15_combout\ = (!\C1|Add5~4_combout\ & !\C1|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan121~15_combout\);

-- Location: LCCOMB_X20_Y12_N26
\C1|LessThan128~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan128~2_combout\ = (\C1|Add5~10_combout\ & \C1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~8_combout\,
	combout => \C1|LessThan128~2_combout\);

-- Location: LCCOMB_X20_Y12_N8
\C1|LessThan128~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan128~1_combout\ = (\C1|Add5~6_combout\ & (\C1|LessThan128~0_combout\ & (!\C1|LessThan121~15_combout\ & \C1|LessThan128~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|LessThan128~0_combout\,
	datac => \C1|LessThan121~15_combout\,
	datad => \C1|LessThan128~2_combout\,
	combout => \C1|LessThan128~1_combout\);

-- Location: LCCOMB_X22_Y12_N10
\C1|LessThan107~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan107~3_combout\ = (!\C1|Add5~12_combout\ & !\C1|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~12_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan107~3_combout\);

-- Location: LCCOMB_X20_Y12_N30
\C1|LessThan129~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan129~0_combout\ = (\C1|LessThan107~3_combout\ & ((\C1|LessThan98~1_combout\) # ((!\C1|LessThan128~2_combout\) # (!\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan98~1_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|LessThan107~3_combout\,
	datad => \C1|LessThan128~2_combout\,
	combout => \C1|LessThan129~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\C1|dirQ1X1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~48_combout\ = (\C1|LessThan93~4_combout\ & ((\C1|Add5~16_combout\ & ((\C1|LessThan129~0_combout\))) # (!\C1|Add5~16_combout\ & (\C1|LessThan128~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan128~1_combout\,
	datac => \C1|LessThan93~4_combout\,
	datad => \C1|LessThan129~0_combout\,
	combout => \C1|dirQ1X1~48_combout\);

-- Location: LCCOMB_X20_Y13_N18
\C1|LessThan106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan106~0_combout\ = (\C1|Add5~4_combout\ & (\C1|Add5~6_combout\ & (\C1|Add5~0_combout\ & \C1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~0_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan106~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\C1|LessThan93~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~5_combout\ = (!\C1|Add5~10_combout\ & !\C1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan93~5_combout\);

-- Location: LCCOMB_X20_Y13_N28
\C1|LessThan106~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan106~1_combout\ = (\C1|Add5~12_combout\ & (\C1|Add5~16_combout\ & ((\C1|LessThan106~0_combout\) # (!\C1|LessThan93~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|LessThan106~0_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan93~5_combout\,
	combout => \C1|LessThan106~1_combout\);

-- Location: LCCOMB_X20_Y13_N14
\C1|LessThan107~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan107~0_combout\ = (((!\C1|Add5~4_combout\ & !\C1|Add5~2_combout\)) # (!\C1|Add5~8_combout\)) # (!\C1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~2_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan107~0_combout\);

-- Location: LCCOMB_X21_Y12_N0
\C1|LessThan107~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan107~1_combout\ = (\C1|Add5~16_combout\ & ((\C1|Add5~12_combout\) # (\C1|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan107~1_combout\);

-- Location: LCCOMB_X20_Y13_N24
\C1|LessThan107~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan107~2_combout\ = ((!\C1|Add5~10_combout\ & (!\C1|Add5~14_combout\ & \C1|LessThan107~0_combout\))) # (!\C1|LessThan107~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|LessThan107~0_combout\,
	datad => \C1|LessThan107~1_combout\,
	combout => \C1|LessThan107~2_combout\);

-- Location: LCCOMB_X20_Y13_N10
\C1|dirQ1X1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~35_combout\ = (\C1|LessThan93~4_combout\ & (\C1|LessThan107~2_combout\ & ((\C1|LessThan106~1_combout\) # (!\C1|LessThan98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan93~4_combout\,
	datab => \C1|LessThan106~1_combout\,
	datac => \C1|LessThan107~2_combout\,
	datad => \C1|LessThan98~0_combout\,
	combout => \C1|dirQ1X1~35_combout\);

-- Location: LCCOMB_X19_Y12_N28
\C1|arQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~0_combout\ = (\C1|dMap~228_combout\ & (!\C1|dMap~247_combout\ & (\C1|dirQ1X1~48_combout\))) # (!\C1|dMap~228_combout\ & ((\C1|dirQ1X1~35_combout\) # ((!\C1|dMap~247_combout\ & \C1|dirQ1X1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~228_combout\,
	datab => \C1|dMap~247_combout\,
	datac => \C1|dirQ1X1~48_combout\,
	datad => \C1|dirQ1X1~35_combout\,
	combout => \C1|arQ1X2~0_combout\);

-- Location: LCCOMB_X19_Y12_N26
\C1|arQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~1_combout\ = (\C1|LessThan56~1_combout\) # ((\C1|arQ1X2~0_combout\) # ((!\C1|dMap~241_combout\ & \C1|dirQ1X1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~241_combout\,
	datab => \C1|LessThan56~1_combout\,
	datac => \C1|dirQ1X1~38_combout\,
	datad => \C1|arQ1X2~0_combout\,
	combout => \C1|arQ1X2~1_combout\);

-- Location: LCCOMB_X22_Y14_N28
\C1|dirQ1X1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~11_combout\ = (\C1|Add5~0_combout\) # (\C1|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~0_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|dirQ1X1~11_combout\);

-- Location: LCCOMB_X21_Y14_N30
\C1|dirQ1X1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~8_combout\ = (\C1|Add5~16_combout\ & ((\C1|Add5~6_combout\) # ((\C1|Add5~4_combout\ & \C1|dirQ1X1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|dirQ1X1~11_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|dirQ1X1~8_combout\);

-- Location: LCCOMB_X20_Y14_N26
\C1|dirQ1X1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~5_combout\ = (!\C1|Add5~14_combout\ & (!\C1|Add5~10_combout\ & (\C1|Add5~12_combout\ & \C1|dirQ1X1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|dirQ1X1~8_combout\,
	combout => \C1|dirQ1X1~5_combout\);

-- Location: LCCOMB_X20_Y14_N28
\C1|dirQ1X1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~54_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~8_combout\ & (!\C1|Add5~18_combout\ & \C1|dirQ1X1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|dirQ1X1~5_combout\,
	combout => \C1|dirQ1X1~54_combout\);

-- Location: LCCOMB_X20_Y14_N22
\C1|LessThan121~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan121~3_combout\ = ((!\C1|Add5~2_combout\ & (!\C1|Add5~4_combout\ & !\C1|Add5~6_combout\))) # (!\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan121~3_combout\);

-- Location: LCCOMB_X20_Y14_N24
\C1|LessThan121~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan121~16_combout\ = (!\C1|Add5~12_combout\ & (!\C1|Add5~14_combout\ & ((\C1|LessThan121~3_combout\) # (!\C1|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|LessThan121~3_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan121~16_combout\);

-- Location: LCCOMB_X21_Y13_N26
\C1|dirQ1X1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~39_combout\ = (\C1|LessThan120~2_combout\ & (\C1|LessThan93~4_combout\ & ((\C1|LessThan121~16_combout\) # (!\C1|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan120~2_combout\,
	datab => \C1|LessThan93~4_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan121~16_combout\,
	combout => \C1|dirQ1X1~39_combout\);

-- Location: LCCOMB_X19_Y12_N14
\C1|arQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~3_combout\ = (\C1|dMap~250_combout\ & (!\C1|dMap~238_combout\ & (\C1|dirQ1X1~54_combout\))) # (!\C1|dMap~250_combout\ & ((\C1|dirQ1X1~39_combout\) # ((!\C1|dMap~238_combout\ & \C1|dirQ1X1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~250_combout\,
	datab => \C1|dMap~238_combout\,
	datac => \C1|dirQ1X1~54_combout\,
	datad => \C1|dirQ1X1~39_combout\,
	combout => \C1|arQ1X2~3_combout\);

-- Location: LCCOMB_X22_Y12_N30
\C1|LessThan124~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan124~0_combout\ = (\C1|Add5~4_combout\ & ((\C1|Add5~0_combout\) # (\C1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan124~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\C1|LessThan124~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan124~1_combout\ = (\C1|Add5~8_combout\) # ((\C1|Add5~10_combout\) # ((\C1|LessThan124~0_combout\ & \C1|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan124~0_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan124~1_combout\);

-- Location: LCCOMB_X22_Y12_N2
\C1|LessThan120~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan120~0_combout\ = (\C1|Add5~0_combout\ & (\C1|Add5~2_combout\ & \C1|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan120~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\C1|LessThan97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan97~0_combout\ = (!\C1|Add5~8_combout\ & !\C1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan97~0_combout\);

-- Location: LCCOMB_X22_Y12_N0
\C1|LessThan120~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan120~1_combout\ = (\C1|Add5~10_combout\ & (\C1|Add5~16_combout\ & ((\C1|LessThan120~0_combout\) # (!\C1|LessThan97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|LessThan120~0_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan97~0_combout\,
	combout => \C1|LessThan120~1_combout\);

-- Location: LCCOMB_X21_Y13_N12
\C1|LessThan120~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan120~2_combout\ = (\C1|Add5~20_combout\) # ((\C1|Add5~18_combout\) # ((\C1|LessThan107~1_combout\) # (\C1|LessThan120~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|LessThan107~1_combout\,
	datad => \C1|LessThan120~1_combout\,
	combout => \C1|LessThan120~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
\C1|dirQ1X1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~45_combout\ = (!\C1|LessThan120~2_combout\ & (((\C1|LessThan128~0_combout\ & \C1|LessThan124~1_combout\)) # (!\C1|LessThan103~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan128~0_combout\,
	datab => \C1|LessThan124~1_combout\,
	datac => \C1|LessThan103~0_combout\,
	datad => \C1|LessThan120~2_combout\,
	combout => \C1|dirQ1X1~45_combout\);

-- Location: LCCOMB_X19_Y12_N22
\C1|LessThan99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan99~0_combout\ = (((!\C1|Add5~14_combout\) # (!\C1|Add5~10_combout\)) # (!\C1|Add5~12_combout\)) # (!\C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan99~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\C1|dirQ1X1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~50_combout\ = (\C1|LessThan93~4_combout\ & (\C1|LessThan99~0_combout\ & ((\C1|LessThan98~2_combout\) # (!\C1|LessThan98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan98~2_combout\,
	datab => \C1|LessThan98~0_combout\,
	datac => \C1|LessThan93~4_combout\,
	datad => \C1|LessThan99~0_combout\,
	combout => \C1|dirQ1X1~50_combout\);

-- Location: LCCOMB_X20_Y12_N0
\C1|LessThan114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan114~0_combout\ = (\C1|Add5~6_combout\ & ((\C1|Add5~4_combout\) # ((\C1|Add5~0_combout\ & \C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan114~0_combout\);

-- Location: LCCOMB_X20_Y13_N4
\C1|dirQ1X1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~29_combout\ = (\C1|Add5~10_combout\ & ((\C1|Add5~14_combout\ & (\C1|Add5~6_combout\)) # (!\C1|Add5~14_combout\ & ((\C1|LessThan114~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|LessThan114~0_combout\,
	combout => \C1|dirQ1X1~29_combout\);

-- Location: LCCOMB_X21_Y13_N30
\C1|dirQ1X1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~27_combout\ = (!\C1|Add5~16_combout\ & (\C1|Add5~18_combout\ & !\C1|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~20_combout\,
	combout => \C1|dirQ1X1~27_combout\);

-- Location: LCCOMB_X20_Y13_N26
\C1|dirQ1X1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~30_combout\ = (\C1|dirQ1X1~27_combout\ & (\C1|Add5~14_combout\ $ (((\C1|dirQ1X1~28_combout\) # (\C1|dirQ1X1~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~28_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|dirQ1X1~29_combout\,
	datad => \C1|dirQ1X1~27_combout\,
	combout => \C1|dirQ1X1~30_combout\);

-- Location: LCCOMB_X19_Y12_N18
\C1|LessThan103~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan103~1_combout\ = (((!\C1|Add5~4_combout\ & \C1|LessThan97~0_combout\)) # (!\C1|Add5~10_combout\)) # (!\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan97~0_combout\,
	combout => \C1|LessThan103~1_combout\);

-- Location: LCCOMB_X20_Y12_N2
\C1|LessThan102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan102~0_combout\ = (\C1|Add5~6_combout\ & (\C1|Add5~8_combout\ & ((\C1|Add5~0_combout\) # (!\C1|LessThan121~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|LessThan121~15_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan102~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\C1|LessThan102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan102~1_combout\ = ((\C1|LessThan114~3_combout\ & ((\C1|Add5~10_combout\) # (\C1|LessThan102~0_combout\)))) # (!\C1|LessThan98~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan114~3_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan98~0_combout\,
	datad => \C1|LessThan102~0_combout\,
	combout => \C1|LessThan102~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\C1|dirQ1X1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~32_combout\ = (\C1|LessThan102~1_combout\ & ((\C1|LessThan103~0_combout\) # ((\C1|LessThan103~2_combout\ & \C1|LessThan103~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan103~2_combout\,
	datab => \C1|LessThan103~1_combout\,
	datac => \C1|LessThan102~1_combout\,
	datad => \C1|LessThan103~0_combout\,
	combout => \C1|dirQ1X1~32_combout\);

-- Location: LCCOMB_X19_Y12_N4
\C1|arQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~4_combout\ = (!\C1|dMap~233_combout\ & ((\C1|dirQ1X1~50_combout\) # ((\C1|dirQ1X1~30_combout\) # (\C1|dirQ1X1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~233_combout\,
	datab => \C1|dirQ1X1~50_combout\,
	datac => \C1|dirQ1X1~30_combout\,
	datad => \C1|dirQ1X1~32_combout\,
	combout => \C1|arQ1X2~4_combout\);

-- Location: LCCOMB_X20_Y12_N14
\C1|LessThan115~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan115~1_combout\ = ((\C1|LessThan115~0_combout\ & (!\C1|Add5~10_combout\ & !\C1|Add5~14_combout\))) # (!\C1|LessThan107~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan115~0_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan107~1_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan115~1_combout\);

-- Location: LCCOMB_X20_Y12_N6
\C1|dirQ1X1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~47_combout\ = (\C1|LessThan115~1_combout\ & (\C1|LessThan93~4_combout\ & ((\C1|LessThan114~2_combout\) # (!\C1|LessThan114~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan114~2_combout\,
	datab => \C1|LessThan115~1_combout\,
	datac => \C1|LessThan93~4_combout\,
	datad => \C1|LessThan114~1_combout\,
	combout => \C1|dirQ1X1~47_combout\);

-- Location: LCCOMB_X20_Y13_N22
\C1|LessThan88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan88~0_combout\ = (\C1|Add5~10_combout\) # ((\C1|Add5~8_combout\ & ((\C1|Add5~6_combout\) # (!\C1|LessThan121~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|LessThan121~15_combout\,
	combout => \C1|LessThan88~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\C1|LessThan115~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan115~0_combout\ = (!\C1|Add5~6_combout\ & (!\C1|Add5~8_combout\ & ((!\C1|Add5~4_combout\) # (!\C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~2_combout\,
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan115~0_combout\);

-- Location: LCCOMB_X20_Y13_N0
\C1|LessThan89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan89~0_combout\ = (((\C1|LessThan115~0_combout\) # (!\C1|Add5~10_combout\)) # (!\C1|Add5~14_combout\)) # (!\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan115~0_combout\,
	combout => \C1|LessThan89~0_combout\);

-- Location: LCCOMB_X20_Y13_N8
\C1|dirQ1X1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~34_combout\ = (\C1|LessThan128~0_combout\ & (\C1|LessThan88~0_combout\ & (\C1|LessThan103~0_combout\ & \C1|LessThan89~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan128~0_combout\,
	datab => \C1|LessThan88~0_combout\,
	datac => \C1|LessThan103~0_combout\,
	datad => \C1|LessThan89~0_combout\,
	combout => \C1|dirQ1X1~34_combout\);

-- Location: LCCOMB_X18_Y12_N28
\C1|arQ1X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~5_combout\ = (\C1|dMap~236_combout\ & (!\C1|dMap~244_combout\ & (\C1|dirQ1X1~47_combout\))) # (!\C1|dMap~236_combout\ & ((\C1|dirQ1X1~34_combout\) # ((!\C1|dMap~244_combout\ & \C1|dirQ1X1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~236_combout\,
	datab => \C1|dMap~244_combout\,
	datac => \C1|dirQ1X1~47_combout\,
	datad => \C1|dirQ1X1~34_combout\,
	combout => \C1|arQ1X2~5_combout\);

-- Location: LCCOMB_X19_Y12_N2
\C1|arQ1X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~6_combout\ = (\C1|arQ1X2~4_combout\) # ((\C1|arQ1X2~5_combout\) # ((!\C1|dMap~250_combout\ & \C1|dirQ1X1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~250_combout\,
	datab => \C1|dirQ1X1~45_combout\,
	datac => \C1|arQ1X2~4_combout\,
	datad => \C1|arQ1X2~5_combout\,
	combout => \C1|arQ1X2~6_combout\);

-- Location: LCCOMB_X19_Y12_N24
\C1|arQ1X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X2~7_combout\ = (\C1|arQ1X2~2_combout\) # ((\C1|arQ1X2~1_combout\) # ((\C1|arQ1X2~3_combout\) # (\C1|arQ1X2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|arQ1X2~2_combout\,
	datab => \C1|arQ1X2~1_combout\,
	datac => \C1|arQ1X2~3_combout\,
	datad => \C1|arQ1X2~6_combout\,
	combout => \C1|arQ1X2~7_combout\);

-- Location: LCCOMB_X19_Y15_N6
\C1|SQ1_noAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_noAR~0_combout\ = (\C1|touchDown1~1_combout\) # ((\C1|arQ1X1~0_combout\) # ((\C1|arQ1X2~8_combout\ & \C1|arQ1X2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|touchDown1~1_combout\,
	datab => \C1|arQ1X2~8_combout\,
	datac => \C1|arQ1X1~0_combout\,
	datad => \C1|arQ1X2~7_combout\,
	combout => \C1|SQ1_noAR~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\C1|SQ_Y1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~1_combout\ = (\C1|SQ_X1[1]~0_combout\ & ((!\C1|SQ1_noAR~0_combout\) # (!\C1|SQ_Y1[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1[1]~0_combout\,
	datac => \C1|SQ_Y1[9]~0_combout\,
	datad => \C1|SQ1_noAR~0_combout\,
	combout => \C1|SQ_Y1[1]~1_combout\);

-- Location: LCFF_X23_Y13_N7
\C1|SQ_Y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[1]~7_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(1));

-- Location: LCFF_X22_Y13_N9
\C1|SQ_Y1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add20~8_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(5));

-- Location: LCFF_X22_Y13_N11
\C1|SQ_Y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add20~10_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X22_Y13_N16
\C1|Add20~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~16_combout\ = ((\C1|SQ_Y1\(9) $ (\C1|SQ_Y1[9]~0_combout\ $ (!\C1|Add20~15\)))) # (GND)
-- \C1|Add20~17\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|SQ_Y1[9]~0_combout\ & !\C1|Add20~15\)) # (!\C1|SQ_Y1\(9) & ((!\C1|Add20~15\) # (!\C1|SQ_Y1[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add20~15\,
	combout => \C1|Add20~16_combout\,
	cout => \C1|Add20~17\);

-- Location: LCCOMB_X22_Y13_N20
\C1|SQ_Y1[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~2_combout\ = !\C1|Add20~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add20~16_combout\,
	combout => \C1|SQ_Y1[9]~2_combout\);

-- Location: LCFF_X22_Y13_N21
\C1|SQ_Y1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[9]~2_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(9));

-- Location: LCCOMB_X20_Y11_N4
\C1|LessThan83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~0_combout\ = (\C1|SQ_Y1\(7) & (!\C1|SQ_Y1\(6) & (\C1|SQ_Y1\(9) & \C1|SQ_Y1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|SQ_Y1\(9),
	datad => \C1|SQ_Y1\(8),
	combout => \C1|LessThan83~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\C1|LessThan105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan105~0_combout\ = (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(3)) # ((\C1|SQ_Y1\(1) & \C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|LessThan105~0_combout\);

-- Location: LCCOMB_X20_Y11_N26
\C1|LessThan83~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~1_combout\ = (!\C1|SQ_Y1\(10) & (\C1|LessThan83~0_combout\ & ((\C1|LessThan105~0_combout\) # (!\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|LessThan83~0_combout\,
	datad => \C1|LessThan105~0_combout\,
	combout => \C1|LessThan83~1_combout\);

-- Location: LCCOMB_X21_Y13_N28
\C1|dirQ1X1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~25_combout\ = (!\C1|LessThan83~1_combout\ & (((\C1|Add5~14_combout\ & !\C1|LessThan93~1_combout\)) # (!\C1|LessThan103~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan103~0_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|LessThan83~1_combout\,
	datad => \C1|LessThan93~1_combout\,
	combout => \C1|dirQ1X1~25_combout\);

-- Location: LCCOMB_X23_Y11_N18
\C1|dMap~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~214_combout\ = (!\C1|SQ_Y1\(10) & (!\C1|SQ_Y1\(9) & (!\C1|SQ_Y1\(8) & \C1|SQ_Y1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datab => \C1|SQ_Y1\(9),
	datac => \C1|SQ_Y1\(8),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|dMap~214_combout\);

-- Location: LCCOMB_X23_Y11_N4
\C1|dMap~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~215_combout\ = (\C1|dMap~214_combout\ & (\C1|SQ_Y1\(5) & ((!\C1|SQ_Y1\(2)) # (!\C1|dMap~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~197_combout\,
	datab => \C1|dMap~214_combout\,
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~215_combout\);

-- Location: LCCOMB_X23_Y11_N28
\C1|dMap~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~213_combout\ = (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(4) & ((!\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~213_combout\);

-- Location: LCCOMB_X23_Y11_N6
\C1|dMap~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~216_combout\ = ((\C1|dMap~213_combout\) # (!\C1|dMap~215_combout\)) # (!\C1|SQ_Y1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datac => \C1|dMap~215_combout\,
	datad => \C1|dMap~213_combout\,
	combout => \C1|dMap~216_combout\);

-- Location: LCCOMB_X21_Y13_N20
\C1|dirQ1X1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~40_combout\ = (\C1|dMap~212_combout\ & (\C1|dirQ1X1~39_combout\ & ((!\C1|dMap~216_combout\)))) # (!\C1|dMap~212_combout\ & ((\C1|dirQ1X1~38_combout\) # ((\C1|dirQ1X1~39_combout\ & !\C1|dMap~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~212_combout\,
	datab => \C1|dirQ1X1~39_combout\,
	datac => \C1|dirQ1X1~38_combout\,
	datad => \C1|dMap~216_combout\,
	combout => \C1|dirQ1X1~40_combout\);

-- Location: LCCOMB_X20_Y11_N10
\C1|LessThan85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan85~0_combout\ = (\C1|SQ_Y1\(10) & ((\C1|SQ_Y1\(5)) # ((\C1|dMap~213_combout\) # (!\C1|LessThan83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|LessThan83~0_combout\,
	datad => \C1|dMap~213_combout\,
	combout => \C1|LessThan85~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\C1|dMap~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~198_combout\ = (!\C1|SQ_Y1\(9) & (!\C1|SQ_Y1\(7) & (!\C1|SQ_Y1\(10) & !\C1|SQ_Y1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1\(7),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1\(8),
	combout => \C1|dMap~198_combout\);

-- Location: LCCOMB_X23_Y11_N10
\C1|dMap~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~197_combout\ = (\C1|SQ_Y1\(3) & !\C1|SQ_Y1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~197_combout\);

-- Location: LCCOMB_X21_Y11_N22
\C1|dMap~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~199_combout\ = (((\C1|dMap~197_combout\) # (!\C1|dMap~198_combout\)) # (!\C1|SQ_Y1\(6))) # (!\C1|LessThan101~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan101~0_combout\,
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~198_combout\,
	datad => \C1|dMap~197_combout\,
	combout => \C1|dMap~199_combout\);

-- Location: LCCOMB_X22_Y12_N4
\C1|dirQ1X1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~53_combout\ = (!\C1|Add5~12_combout\ & (!\C1|Add5~14_combout\ & ((!\C1|Add5~4_combout\) # (!\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|dirQ1X1~53_combout\);

-- Location: LCCOMB_X23_Y12_N28
\C1|LessThan93~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~2_combout\ = (\C1|Add5~20_combout\) # ((\C1|Add5~18_combout\ & \C1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~18_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~20_combout\,
	combout => \C1|LessThan93~2_combout\);

-- Location: LCCOMB_X22_Y12_N24
\C1|dirQ1X1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~42_combout\ = (\C1|LessThan93~2_combout\ & ((\C1|Add5~20_combout\) # ((!\C1|dirQ1X1~53_combout\) # (!\C1|LessThan93~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|LessThan93~5_combout\,
	datac => \C1|dirQ1X1~53_combout\,
	datad => \C1|LessThan93~2_combout\,
	combout => \C1|dirQ1X1~42_combout\);

-- Location: LCCOMB_X20_Y12_N18
\C1|LessThan118~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan118~0_combout\ = (\C1|Add5~0_combout\) # ((\C1|Add5~4_combout\) # ((\C1|Add5~6_combout\) # (\C1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan118~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\C1|dirQ1X1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~41_combout\ = (\C1|Add5~16_combout\) # ((\C1|LessThan128~0_combout\ & ((\C1|LessThan118~0_combout\) # (!\C1|LessThan93~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan118~0_combout\,
	datac => \C1|LessThan128~0_combout\,
	datad => \C1|LessThan93~5_combout\,
	combout => \C1|dirQ1X1~41_combout\);

-- Location: LCCOMB_X22_Y12_N6
\C1|dirQ1X1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~43_combout\ = (!\C1|dirQ1X1~42_combout\ & ((\C1|Add5~20_combout\) # ((\C1|Add5~18_combout\ & \C1|dirQ1X1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|dirQ1X1~42_combout\,
	datad => \C1|dirQ1X1~41_combout\,
	combout => \C1|dirQ1X1~43_combout\);

-- Location: LCCOMB_X21_Y13_N22
\C1|dirQ1X1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~44_combout\ = (\C1|LessThan85~0_combout\) # ((!\C1|dMap~199_combout\ & \C1|dirQ1X1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan85~0_combout\,
	datac => \C1|dMap~199_combout\,
	datad => \C1|dirQ1X1~43_combout\,
	combout => \C1|dirQ1X1~44_combout\);

-- Location: LCCOMB_X21_Y13_N14
\C1|dirQ1X1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~46_combout\ = (\C1|dirQ1X1~40_combout\) # ((\C1|dirQ1X1~44_combout\) # ((!\C1|dMap~216_combout\ & \C1|dirQ1X1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~216_combout\,
	datab => \C1|dirQ1X1~45_combout\,
	datac => \C1|dirQ1X1~40_combout\,
	datad => \C1|dirQ1X1~44_combout\,
	combout => \C1|dirQ1X1~46_combout\);

-- Location: LCCOMB_X20_Y11_N16
\C1|dMap~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~194_combout\ = (\C1|SQ_Y1\(9) & (\C1|SQ_Y1\(8) & (\C1|SQ_Y1\(10) & \C1|SQ_Y1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|dMap~194_combout\);

-- Location: LCCOMB_X21_Y11_N12
\C1|dMap~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~196_combout\ = (\C1|dMap~194_combout\ & (((\C1|dMap~195_combout\ & !\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~195_combout\,
	datab => \C1|SQ_Y1\(6),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|dMap~194_combout\,
	combout => \C1|dMap~196_combout\);

-- Location: LCCOMB_X22_Y12_N18
\C1|LessThan92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan92~0_combout\ = ((\C1|Add5~10_combout\ & ((\C1|LessThan124~0_combout\) # (!\C1|LessThan97~0_combout\)))) # (!\C1|LessThan107~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|LessThan124~0_combout\,
	datac => \C1|LessThan97~0_combout\,
	datad => \C1|LessThan107~3_combout\,
	combout => \C1|LessThan92~0_combout\);

-- Location: LCCOMB_X22_Y12_N16
\C1|LessThan92~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan92~1_combout\ = (\C1|Add5~16_combout\ & \C1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan92~1_combout\);

-- Location: LCCOMB_X22_Y12_N12
\C1|LessThan93~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~3_combout\ = ((!\C1|Add5~14_combout\ & (!\C1|Add5~20_combout\ & \C1|LessThan93~1_combout\))) # (!\C1|LessThan93~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~20_combout\,
	datac => \C1|LessThan93~1_combout\,
	datad => \C1|LessThan93~2_combout\,
	combout => \C1|LessThan93~3_combout\);

-- Location: LCCOMB_X22_Y12_N26
\C1|dirQ1X1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~26_combout\ = (\C1|LessThan93~3_combout\ & ((\C1|Add5~20_combout\) # ((\C1|LessThan92~0_combout\ & \C1|LessThan92~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|LessThan92~0_combout\,
	datac => \C1|LessThan92~1_combout\,
	datad => \C1|LessThan93~3_combout\,
	combout => \C1|dirQ1X1~26_combout\);

-- Location: LCCOMB_X21_Y13_N8
\C1|dirQ1X1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~31_combout\ = (\C1|dMap~199_combout\ & (\C1|dMap~196_combout\ & (\C1|dirQ1X1~26_combout\))) # (!\C1|dMap~199_combout\ & ((\C1|dirQ1X1~30_combout\) # ((\C1|dMap~196_combout\ & \C1|dirQ1X1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datab => \C1|dMap~196_combout\,
	datac => \C1|dirQ1X1~26_combout\,
	datad => \C1|dirQ1X1~30_combout\,
	combout => \C1|dirQ1X1~31_combout\);

-- Location: LCCOMB_X24_Y12_N6
\C1|dMap~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~200_combout\ = (\C1|SQ_Y1\(4) & (((!\C1|SQ_Y1\(1) & !\C1|SQ_Y1\(2))) # (!\C1|SQ_Y1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~200_combout\);

-- Location: LCCOMB_X24_Y12_N8
\C1|dMap~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~201_combout\ = (((\C1|SQ_Y1\(6)) # (\C1|dMap~200_combout\)) # (!\C1|dMap~198_combout\)) # (!\C1|SQ_Y1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|dMap~198_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|dMap~200_combout\,
	combout => \C1|dMap~201_combout\);

-- Location: LCCOMB_X20_Y13_N2
\C1|dirQ1X1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~33_combout\ = (\C1|dMap~199_combout\ & (!\C1|dMap~201_combout\ & (\C1|dirQ1X1~54_combout\))) # (!\C1|dMap~199_combout\ & ((\C1|dirQ1X1~32_combout\) # ((!\C1|dMap~201_combout\ & \C1|dirQ1X1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datab => \C1|dMap~201_combout\,
	datac => \C1|dirQ1X1~54_combout\,
	datad => \C1|dirQ1X1~32_combout\,
	combout => \C1|dirQ1X1~33_combout\);

-- Location: LCCOMB_X21_Y13_N2
\C1|dirQ1X1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~37_combout\ = (\C1|dirQ1X1~36_combout\) # ((\C1|dirQ1X1~31_combout\) # (\C1|dirQ1X1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~36_combout\,
	datac => \C1|dirQ1X1~31_combout\,
	datad => \C1|dirQ1X1~33_combout\,
	combout => \C1|dirQ1X1~37_combout\);

-- Location: LCCOMB_X21_Y13_N18
\C1|dirQ1X1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~52_combout\ = (\C1|dirQ1X1~25_combout\ & ((\C1|dirQ1X1~51_combout\) # ((\C1|dirQ1X1~46_combout\) # (\C1|dirQ1X1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~51_combout\,
	datab => \C1|dirQ1X1~25_combout\,
	datac => \C1|dirQ1X1~46_combout\,
	datad => \C1|dirQ1X1~37_combout\,
	combout => \C1|dirQ1X1~52_combout\);

-- Location: LCCOMB_X24_Y13_N2
\C1|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~1_cout\ = CARRY(\C1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|Add8~1_cout\);

-- Location: LCCOMB_X24_Y13_N4
\C1|Add8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~3_cout\ = CARRY((!\C1|Add1~2_combout\ & !\C1|Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|Add8~1_cout\,
	cout => \C1|Add8~3_cout\);

-- Location: LCCOMB_X24_Y13_N6
\C1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~4_combout\ = (\C1|Add1~4_combout\ & ((GND) # (!\C1|Add8~3_cout\))) # (!\C1|Add1~4_combout\ & (\C1|Add8~3_cout\ $ (GND)))
-- \C1|Add8~5\ = CARRY((\C1|Add1~4_combout\) # (!\C1|Add8~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|Add8~3_cout\,
	combout => \C1|Add8~4_combout\,
	cout => \C1|Add8~5\);

-- Location: LCCOMB_X24_Y13_N8
\C1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~6_combout\ = (\C1|Add1~6_combout\ & (\C1|Add8~5\ & VCC)) # (!\C1|Add1~6_combout\ & (!\C1|Add8~5\))
-- \C1|Add8~7\ = CARRY((!\C1|Add1~6_combout\ & !\C1|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|Add8~5\,
	combout => \C1|Add8~6_combout\,
	cout => \C1|Add8~7\);

-- Location: LCCOMB_X24_Y13_N10
\C1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~8_combout\ = (\C1|Add1~8_combout\ & ((GND) # (!\C1|Add8~7\))) # (!\C1|Add1~8_combout\ & (\C1|Add8~7\ $ (GND)))
-- \C1|Add8~9\ = CARRY((\C1|Add1~8_combout\) # (!\C1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~8_combout\,
	datad => VCC,
	cin => \C1|Add8~7\,
	combout => \C1|Add8~8_combout\,
	cout => \C1|Add8~9\);

-- Location: LCCOMB_X24_Y13_N12
\C1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~10_combout\ = (\C1|Add1~10_combout\ & (\C1|Add8~9\ & VCC)) # (!\C1|Add1~10_combout\ & (!\C1|Add8~9\))
-- \C1|Add8~11\ = CARRY((!\C1|Add1~10_combout\ & !\C1|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|Add8~9\,
	combout => \C1|Add8~10_combout\,
	cout => \C1|Add8~11\);

-- Location: LCCOMB_X24_Y13_N14
\C1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~12_combout\ = (\C1|Add1~12_combout\ & ((GND) # (!\C1|Add8~11\))) # (!\C1|Add1~12_combout\ & (\C1|Add8~11\ $ (GND)))
-- \C1|Add8~13\ = CARRY((\C1|Add1~12_combout\) # (!\C1|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|Add8~11\,
	combout => \C1|Add8~12_combout\,
	cout => \C1|Add8~13\);

-- Location: LCCOMB_X24_Y13_N16
\C1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~14_combout\ = (\C1|Add1~14_combout\ & (\C1|Add8~13\ & VCC)) # (!\C1|Add1~14_combout\ & (!\C1|Add8~13\))
-- \C1|Add8~15\ = CARRY((!\C1|Add1~14_combout\ & !\C1|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|Add8~13\,
	combout => \C1|Add8~14_combout\,
	cout => \C1|Add8~15\);

-- Location: LCCOMB_X24_Y13_N18
\C1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~16_combout\ = (\C1|Add1~16_combout\ & ((GND) # (!\C1|Add8~15\))) # (!\C1|Add1~16_combout\ & (\C1|Add8~15\ $ (GND)))
-- \C1|Add8~17\ = CARRY((\C1|Add1~16_combout\) # (!\C1|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|Add8~15\,
	combout => \C1|Add8~16_combout\,
	cout => \C1|Add8~17\);

-- Location: LCCOMB_X24_Y13_N20
\C1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~18_combout\ = (\C1|Add1~18_combout\ & (\C1|Add8~17\ & VCC)) # (!\C1|Add1~18_combout\ & (!\C1|Add8~17\))
-- \C1|Add8~19\ = CARRY((!\C1|Add1~18_combout\ & !\C1|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~18_combout\,
	datad => VCC,
	cin => \C1|Add8~17\,
	combout => \C1|Add8~18_combout\,
	cout => \C1|Add8~19\);

-- Location: LCCOMB_X24_Y13_N22
\C1|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~20_combout\ = (\C1|Add1~20_combout\ & ((GND) # (!\C1|Add8~19\))) # (!\C1|Add1~20_combout\ & (\C1|Add8~19\ $ (GND)))
-- \C1|Add8~21\ = CARRY((\C1|Add1~20_combout\) # (!\C1|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add8~19\,
	combout => \C1|Add8~20_combout\,
	cout => \C1|Add8~21\);

-- Location: LCCOMB_X24_Y13_N24
\C1|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~22_combout\ = \C1|Add8~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add8~21\,
	combout => \C1|Add8~22_combout\);

-- Location: LCCOMB_X21_Y13_N24
\C1|dirQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~0_combout\ = (\C1|Add8~22_combout\ & (((\C1|Add5~14_combout\ & !\C1|LessThan93~1_combout\)) # (!\C1|LessThan103~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan103~0_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add8~22_combout\,
	datad => \C1|LessThan93~1_combout\,
	combout => \C1|dirQ1X2~0_combout\);

-- Location: LCCOMB_X22_Y15_N30
\C1|LessThan177~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~20_combout\ = (!\C1|SQ_X1\(3) & !\C1|SQ_X1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan177~20_combout\);

-- Location: LCCOMB_X23_Y15_N22
\C1|LessThan157~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan157~2_combout\ = (((!\C1|SQ_X1\(4)) # (!\C1|LessThan177~20_combout\)) # (!\C1|LessThan158~0_combout\)) # (!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|LessThan158~0_combout\,
	datac => \C1|LessThan177~20_combout\,
	datad => \C1|SQ_X1\(4),
	combout => \C1|LessThan157~2_combout\);

-- Location: LCCOMB_X23_Y15_N26
\C1|LessThan157~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan157~0_combout\ = (\C1|SQ_X1\(10) & \C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(10),
	datad => \C1|SQ_X1\(9),
	combout => \C1|LessThan157~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\C1|LessThan315~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan315~0_combout\ = ((\C1|SQ_X1\(8) & ((\C1|SQ_X1\(7)) # (!\C1|LessThan157~2_combout\)))) # (!\C1|LessThan157~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|LessThan157~2_combout\,
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan157~0_combout\,
	combout => \C1|LessThan315~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X29_Y14_N6
\C1|SQ_X1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~1_combout\ = (!\C1|LessThan321~1_combout\ & (\C1|VPOS\(10) & (\C1|LessThan311~0_combout\ & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan321~1_combout\,
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan311~0_combout\,
	datad => \SW~combout\(0),
	combout => \C1|SQ_X1[1]~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\C1|Add21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~0_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add21~1\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add21~0_combout\,
	cout => \C1|Add21~1\);

-- Location: LCCOMB_X24_Y18_N0
\C1|SQ_Y2[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~7_combout\ = !\C1|Add21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~0_combout\,
	combout => \C1|SQ_Y2[1]~7_combout\);

-- Location: LCCOMB_X23_Y18_N18
\C1|Add21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~10_combout\ = (\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(6) & (!\C1|Add21~9\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add21~9\) # (GND))))) # (!\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(6) & (\C1|Add21~9\ & VCC)) # (!\C1|SQ_Y2\(6) & (!\C1|Add21~9\))))
-- \C1|Add21~11\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & ((!\C1|Add21~9\) # (!\C1|SQ_Y2\(6)))) # (!\C1|SQ_Y2[7]~0_combout\ & (!\C1|SQ_Y2\(6) & !\C1|Add21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add21~9\,
	combout => \C1|Add21~10_combout\,
	cout => \C1|Add21~11\);

-- Location: LCCOMB_X23_Y18_N20
\C1|Add21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~12_combout\ = ((\C1|SQ_Y2[7]~0_combout\ $ (\C1|SQ_Y2\(7) $ (!\C1|Add21~11\)))) # (GND)
-- \C1|Add21~13\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & (!\C1|SQ_Y2\(7) & !\C1|Add21~11\)) # (!\C1|SQ_Y2[7]~0_combout\ & ((!\C1|Add21~11\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add21~11\,
	combout => \C1|Add21~12_combout\,
	cout => \C1|Add21~13\);

-- Location: LCCOMB_X23_Y18_N30
\C1|SQ_Y2[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~4_combout\ = !\C1|Add21~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add21~12_combout\,
	combout => \C1|SQ_Y2[7]~4_combout\);

-- Location: LCFF_X23_Y18_N31
\C1|SQ_Y2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[7]~4_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X23_Y18_N22
\C1|Add21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~14_combout\ = (\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(8) & ((\C1|Add21~13\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add21~13\)))) # (!\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(8) & (!\C1|Add21~13\)) # (!\C1|SQ_Y2\(8) & (\C1|Add21~13\ & VCC))))
-- \C1|Add21~15\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(8)) # (!\C1|Add21~13\))) # (!\C1|SQ_Y2[7]~0_combout\ & (\C1|SQ_Y2\(8) & !\C1|Add21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add21~13\,
	combout => \C1|Add21~14_combout\,
	cout => \C1|Add21~15\);

-- Location: LCCOMB_X23_Y18_N0
\C1|SQ_Y2[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[8]~3_combout\ = !\C1|Add21~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~14_combout\,
	combout => \C1|SQ_Y2[8]~3_combout\);

-- Location: LCFF_X23_Y18_N1
\C1|SQ_Y2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[8]~3_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X23_Y18_N24
\C1|Add21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~16_combout\ = ((\C1|SQ_Y2[7]~0_combout\ $ (\C1|SQ_Y2\(9) $ (!\C1|Add21~15\)))) # (GND)
-- \C1|Add21~17\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & (!\C1|SQ_Y2\(9) & !\C1|Add21~15\)) # (!\C1|SQ_Y2[7]~0_combout\ & ((!\C1|Add21~15\) # (!\C1|SQ_Y2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add21~15\,
	combout => \C1|Add21~16_combout\,
	cout => \C1|Add21~17\);

-- Location: LCCOMB_X24_Y18_N4
\C1|SQ_Y2[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~2_combout\ = !\C1|Add21~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~16_combout\,
	combout => \C1|SQ_Y2[9]~2_combout\);

-- Location: LCFF_X24_Y18_N5
\C1|SQ_Y2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[9]~2_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X23_Y18_N26
\C1|Add21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~18_combout\ = \C1|SQ_Y2\(10) $ (\C1|Add21~17\ $ (!\C1|SQ_Y2[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2[7]~0_combout\,
	cin => \C1|Add21~17\,
	combout => \C1|Add21~18_combout\);

-- Location: LCFF_X23_Y18_N27
\C1|SQ_Y2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~18_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(10));

-- Location: LCCOMB_X24_Y18_N24
\C1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = (\C1|SQ_Y2\(8) & ((\C1|Add3~13\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add3~13\))
-- \C1|Add3~15\ = CARRY((\C1|SQ_Y2\(8)) # (!\C1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\,
	cout => \C1|Add3~15\);

-- Location: LCCOMB_X24_Y18_N26
\C1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~16_combout\ = (\C1|SQ_Y2\(9) & (!\C1|Add3~15\ & VCC)) # (!\C1|SQ_Y2\(9) & (\C1|Add3~15\ $ (GND)))
-- \C1|Add3~17\ = CARRY((!\C1|SQ_Y2\(9) & !\C1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~15\,
	combout => \C1|Add3~16_combout\,
	cout => \C1|Add3~17\);

-- Location: LCCOMB_X24_Y18_N28
\C1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~18_combout\ = (\C1|SQ_Y2\(10) & (!\C1|Add3~17\)) # (!\C1|SQ_Y2\(10) & ((\C1|Add3~17\) # (GND)))
-- \C1|Add3~19\ = CARRY((!\C1|Add3~17\) # (!\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => VCC,
	cin => \C1|Add3~17\,
	combout => \C1|Add3~18_combout\,
	cout => \C1|Add3~19\);

-- Location: LCCOMB_X24_Y18_N22
\C1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~12_combout\ = (\C1|SQ_Y2\(7) & (!\C1|Add3~11\ & VCC)) # (!\C1|SQ_Y2\(7) & (\C1|Add3~11\ $ (GND)))
-- \C1|Add3~13\ = CARRY((!\C1|SQ_Y2\(7) & !\C1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add3~11\,
	combout => \C1|Add3~12_combout\,
	cout => \C1|Add3~13\);

-- Location: LCCOMB_X24_Y18_N10
\C1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~0_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add3~1\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add3~0_combout\,
	cout => \C1|Add3~1\);

-- Location: LCCOMB_X24_Y18_N12
\C1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~2_combout\ = (\C1|SQ_Y2\(2) & ((\C1|Add3~1\) # (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|Add3~1\))
-- \C1|Add3~3\ = CARRY((\C1|SQ_Y2\(2)) # (!\C1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add3~1\,
	combout => \C1|Add3~2_combout\,
	cout => \C1|Add3~3\);

-- Location: LCCOMB_X24_Y18_N14
\C1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~4_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add3~3\ $ (GND))) # (!\C1|SQ_Y2\(3) & ((GND) # (!\C1|Add3~3\)))
-- \C1|Add3~5\ = CARRY((!\C1|Add3~3\) # (!\C1|SQ_Y2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add3~3\,
	combout => \C1|Add3~4_combout\,
	cout => \C1|Add3~5\);

-- Location: LCCOMB_X24_Y18_N16
\C1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(4) & (!\C1|Add3~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add3~5\) # (GND)))
-- \C1|Add3~7\ = CARRY((!\C1|Add3~5\) # (!\C1|SQ_Y2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X24_Y18_N18
\C1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~8_combout\ = (\C1|SQ_Y2\(5) & (\C1|Add3~7\ $ (GND))) # (!\C1|SQ_Y2\(5) & (!\C1|Add3~7\ & VCC))
-- \C1|Add3~9\ = CARRY((\C1|SQ_Y2\(5) & !\C1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add3~7\,
	combout => \C1|Add3~8_combout\,
	cout => \C1|Add3~9\);

-- Location: LCCOMB_X25_Y18_N4
\C1|Add13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~1_cout\ = CARRY(\C1|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datad => VCC,
	cout => \C1|Add13~1_cout\);

-- Location: LCCOMB_X25_Y18_N6
\C1|Add13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~3_cout\ = CARRY((!\C1|Add3~2_combout\ & !\C1|Add13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|Add13~1_cout\,
	cout => \C1|Add13~3_cout\);

-- Location: LCCOMB_X25_Y18_N8
\C1|Add13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~5_cout\ = CARRY((\C1|Add3~4_combout\) # (!\C1|Add13~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|Add13~3_cout\,
	cout => \C1|Add13~5_cout\);

-- Location: LCCOMB_X25_Y18_N10
\C1|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\C1|Add3~6_combout\ & (\C1|Add13~5_cout\ & VCC)) # (!\C1|Add3~6_combout\ & (!\C1|Add13~5_cout\))
-- \C1|Add13~7\ = CARRY((!\C1|Add3~6_combout\ & !\C1|Add13~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|Add13~5_cout\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: LCCOMB_X25_Y18_N12
\C1|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~8_combout\ = (\C1|Add3~8_combout\ & ((GND) # (!\C1|Add13~7\))) # (!\C1|Add3~8_combout\ & (\C1|Add13~7\ $ (GND)))
-- \C1|Add13~9\ = CARRY((\C1|Add3~8_combout\) # (!\C1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|Add13~7\,
	combout => \C1|Add13~8_combout\,
	cout => \C1|Add13~9\);

-- Location: LCCOMB_X25_Y18_N14
\C1|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\C1|Add3~10_combout\ & (\C1|Add13~9\ & VCC)) # (!\C1|Add3~10_combout\ & (!\C1|Add13~9\))
-- \C1|Add13~11\ = CARRY((!\C1|Add3~10_combout\ & !\C1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: LCCOMB_X25_Y18_N16
\C1|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = (\C1|Add3~12_combout\ & ((GND) # (!\C1|Add13~11\))) # (!\C1|Add3~12_combout\ & (\C1|Add13~11\ $ (GND)))
-- \C1|Add13~13\ = CARRY((\C1|Add3~12_combout\) # (!\C1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: LCCOMB_X25_Y18_N18
\C1|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~14_combout\ = (\C1|Add3~14_combout\ & (\C1|Add13~13\ & VCC)) # (!\C1|Add3~14_combout\ & (!\C1|Add13~13\))
-- \C1|Add13~15\ = CARRY((!\C1|Add3~14_combout\ & !\C1|Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|Add13~13\,
	combout => \C1|Add13~14_combout\,
	cout => \C1|Add13~15\);

-- Location: LCCOMB_X25_Y18_N20
\C1|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~16_combout\ = (\C1|Add3~16_combout\ & ((GND) # (!\C1|Add13~15\))) # (!\C1|Add3~16_combout\ & (\C1|Add13~15\ $ (GND)))
-- \C1|Add13~17\ = CARRY((\C1|Add3~16_combout\) # (!\C1|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|Add13~15\,
	combout => \C1|Add13~16_combout\,
	cout => \C1|Add13~17\);

-- Location: LCCOMB_X25_Y18_N22
\C1|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~18_combout\ = (\C1|Add3~18_combout\ & (\C1|Add13~17\ & VCC)) # (!\C1|Add3~18_combout\ & (!\C1|Add13~17\))
-- \C1|Add13~19\ = CARRY((!\C1|Add3~18_combout\ & !\C1|Add13~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~18_combout\,
	datad => VCC,
	cin => \C1|Add13~17\,
	combout => \C1|Add13~18_combout\,
	cout => \C1|Add13~19\);

-- Location: LCCOMB_X25_Y18_N24
\C1|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~20_combout\ = (\C1|Add3~20_combout\ & ((GND) # (!\C1|Add13~19\))) # (!\C1|Add3~20_combout\ & (\C1|Add13~19\ $ (GND)))
-- \C1|Add13~21\ = CARRY((\C1|Add3~20_combout\) # (!\C1|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datad => VCC,
	cin => \C1|Add13~19\,
	combout => \C1|Add13~20_combout\,
	cout => \C1|Add13~21\);

-- Location: LCCOMB_X25_Y18_N26
\C1|Add13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~22_combout\ = \C1|Add13~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add13~21\,
	combout => \C1|Add13~22_combout\);

-- Location: LCCOMB_X29_Y17_N6
\C1|Add28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add28~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add28~0_combout\,
	cout => \C1|Add28~1\);

-- Location: LCCOMB_X29_Y17_N8
\C1|Add28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~2_combout\ = (\C1|SQ_X2\(2) & ((\C1|process_0~17_combout\ & (!\C1|Add28~1\)) # (!\C1|process_0~17_combout\ & ((\C1|Add28~1\) # (GND))))) # (!\C1|SQ_X2\(2) & ((\C1|process_0~17_combout\ & (\C1|Add28~1\ & VCC)) # (!\C1|process_0~17_combout\ & 
-- (!\C1|Add28~1\))))
-- \C1|Add28~3\ = CARRY((\C1|SQ_X2\(2) & ((!\C1|Add28~1\) # (!\C1|process_0~17_combout\))) # (!\C1|SQ_X2\(2) & (!\C1|process_0~17_combout\ & !\C1|Add28~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|process_0~17_combout\,
	datad => VCC,
	cin => \C1|Add28~1\,
	combout => \C1|Add28~2_combout\,
	cout => \C1|Add28~3\);

-- Location: LCCOMB_X29_Y17_N10
\C1|Add28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~4_combout\ = ((\C1|SQ_X2\(3) $ (\C1|process_0~17_combout\ $ (\C1|Add28~3\)))) # (GND)
-- \C1|Add28~5\ = CARRY((\C1|SQ_X2\(3) & (\C1|process_0~17_combout\ & !\C1|Add28~3\)) # (!\C1|SQ_X2\(3) & ((\C1|process_0~17_combout\) # (!\C1|Add28~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|process_0~17_combout\,
	datad => VCC,
	cin => \C1|Add28~3\,
	combout => \C1|Add28~4_combout\,
	cout => \C1|Add28~5\);

-- Location: LCCOMB_X29_Y17_N12
\C1|Add28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~6_combout\ = (\C1|SQ_X2\(4) & ((\C1|process_0~17_combout\ & (\C1|Add28~5\ & VCC)) # (!\C1|process_0~17_combout\ & (!\C1|Add28~5\)))) # (!\C1|SQ_X2\(4) & ((\C1|process_0~17_combout\ & (!\C1|Add28~5\)) # (!\C1|process_0~17_combout\ & 
-- ((\C1|Add28~5\) # (GND)))))
-- \C1|Add28~7\ = CARRY((\C1|SQ_X2\(4) & (!\C1|process_0~17_combout\ & !\C1|Add28~5\)) # (!\C1|SQ_X2\(4) & ((!\C1|Add28~5\) # (!\C1|process_0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|process_0~17_combout\,
	datad => VCC,
	cin => \C1|Add28~5\,
	combout => \C1|Add28~6_combout\,
	cout => \C1|Add28~7\);

-- Location: LCCOMB_X29_Y17_N14
\C1|Add28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~8_combout\ = ((\C1|SQ_X2\(5) $ (\C1|process_0~17_combout\ $ (!\C1|Add28~7\)))) # (GND)
-- \C1|Add28~9\ = CARRY((\C1|SQ_X2\(5) & ((\C1|process_0~17_combout\) # (!\C1|Add28~7\))) # (!\C1|SQ_X2\(5) & (\C1|process_0~17_combout\ & !\C1|Add28~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|process_0~17_combout\,
	datad => VCC,
	cin => \C1|Add28~7\,
	combout => \C1|Add28~8_combout\,
	cout => \C1|Add28~9\);

-- Location: LCCOMB_X29_Y17_N16
\C1|Add28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~10_combout\ = (\C1|process_0~17_combout\ & ((\C1|SQ_X2\(6) & (!\C1|Add28~9\)) # (!\C1|SQ_X2\(6) & (\C1|Add28~9\ & VCC)))) # (!\C1|process_0~17_combout\ & ((\C1|SQ_X2\(6) & ((\C1|Add28~9\) # (GND))) # (!\C1|SQ_X2\(6) & (!\C1|Add28~9\))))
-- \C1|Add28~11\ = CARRY((\C1|process_0~17_combout\ & (\C1|SQ_X2\(6) & !\C1|Add28~9\)) # (!\C1|process_0~17_combout\ & ((\C1|SQ_X2\(6)) # (!\C1|Add28~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~17_combout\,
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add28~9\,
	combout => \C1|Add28~10_combout\,
	cout => \C1|Add28~11\);

-- Location: LCCOMB_X29_Y17_N4
\C1|SQ_X2[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~8_combout\ = !\C1|Add28~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add28~10_combout\,
	combout => \C1|SQ_X2[6]~8_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y17_N18
\C1|Add28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~12_combout\ = ((\C1|SQ_X2\(7) $ (\C1|process_0~17_combout\ $ (\C1|Add28~11\)))) # (GND)
-- \C1|Add28~13\ = CARRY((\C1|SQ_X2\(7) & (\C1|process_0~17_combout\ & !\C1|Add28~11\)) # (!\C1|SQ_X2\(7) & ((\C1|process_0~17_combout\) # (!\C1|Add28~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|process_0~17_combout\,
	datad => VCC,
	cin => \C1|Add28~11\,
	combout => \C1|Add28~12_combout\,
	cout => \C1|Add28~13\);

-- Location: LCCOMB_X29_Y17_N20
\C1|Add28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~14_combout\ = (\C1|process_0~17_combout\ & ((\C1|SQ_X2\(8) & (!\C1|Add28~13\)) # (!\C1|SQ_X2\(8) & (\C1|Add28~13\ & VCC)))) # (!\C1|process_0~17_combout\ & ((\C1|SQ_X2\(8) & ((\C1|Add28~13\) # (GND))) # (!\C1|SQ_X2\(8) & (!\C1|Add28~13\))))
-- \C1|Add28~15\ = CARRY((\C1|process_0~17_combout\ & (\C1|SQ_X2\(8) & !\C1|Add28~13\)) # (!\C1|process_0~17_combout\ & ((\C1|SQ_X2\(8)) # (!\C1|Add28~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~17_combout\,
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add28~13\,
	combout => \C1|Add28~14_combout\,
	cout => \C1|Add28~15\);

-- Location: LCCOMB_X29_Y17_N28
\C1|SQ_X2[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[8]~6_combout\ = !\C1|Add28~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add28~14_combout\,
	combout => \C1|SQ_X2[8]~6_combout\);

-- Location: LCFF_X29_Y17_N29
\C1|SQ_X2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[8]~6_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(8));

-- Location: LCCOMB_X29_Y17_N22
\C1|Add28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~16_combout\ = ((\C1|process_0~17_combout\ $ (\C1|SQ_X2\(9) $ (!\C1|Add28~15\)))) # (GND)
-- \C1|Add28~17\ = CARRY((\C1|process_0~17_combout\ & ((\C1|SQ_X2\(9)) # (!\C1|Add28~15\))) # (!\C1|process_0~17_combout\ & (\C1|SQ_X2\(9) & !\C1|Add28~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~17_combout\,
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add28~15\,
	combout => \C1|Add28~16_combout\,
	cout => \C1|Add28~17\);

-- Location: LCFF_X29_Y17_N23
\C1|SQ_X2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add28~16_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(9));

-- Location: LCFF_X29_Y17_N13
\C1|SQ_X2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add28~6_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(4));

-- Location: LCFF_X29_Y17_N15
\C1|SQ_X2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add28~8_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(5));

-- Location: LCCOMB_X30_Y15_N0
\C1|LessThan317~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan317~0_combout\ = (\C1|SQ_X2\(6)) # ((\C1|SQ_X2\(3) & (!\C1|SQ_X2\(4) & !\C1|SQ_X2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X2\(6),
	datac => \C1|SQ_X2\(4),
	datad => \C1|SQ_X2\(5),
	combout => \C1|LessThan317~0_combout\);

-- Location: LCCOMB_X30_Y15_N6
\C1|LessThan317~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan317~1_combout\ = (\C1|SQ_X2\(7) & (\C1|SQ_X2\(8) & \C1|LessThan317~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datac => \C1|SQ_X2\(8),
	datad => \C1|LessThan317~0_combout\,
	combout => \C1|LessThan317~1_combout\);

-- Location: LCCOMB_X27_Y14_N30
\C1|SQ_X2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~2_combout\ = (!\KEY~combout\(0) & (((\C1|LessThan317~1_combout\) # (!\C1|SQ_X2\(9))) # (!\C1|SQ_X2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datab => \KEY~combout\(0),
	datac => \C1|SQ_X2\(9),
	datad => \C1|LessThan317~1_combout\,
	combout => \C1|SQ_X2[1]~2_combout\);

-- Location: LCCOMB_X25_Y11_N12
\C1|LessThan213~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~1_cout\ = CARRY((!\C1|SQ_Y1\(1) & \C1|SQ_Y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cout => \C1|LessThan213~1_cout\);

-- Location: LCCOMB_X25_Y11_N14
\C1|LessThan213~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~3_cout\ = CARRY((\C1|SQ_Y2\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan213~1_cout\)) # (!\C1|SQ_Y2\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan213~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan213~1_cout\,
	cout => \C1|LessThan213~3_cout\);

-- Location: LCCOMB_X25_Y11_N16
\C1|LessThan213~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~5_cout\ = CARRY((\C1|SQ_Y1\(3) & (\C1|SQ_Y2\(3) & !\C1|LessThan213~3_cout\)) # (!\C1|SQ_Y1\(3) & ((\C1|SQ_Y2\(3)) # (!\C1|LessThan213~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan213~3_cout\,
	cout => \C1|LessThan213~5_cout\);

-- Location: LCCOMB_X25_Y11_N18
\C1|LessThan213~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~7_cout\ = CARRY((\C1|SQ_Y2\(4) & ((!\C1|LessThan213~5_cout\) # (!\C1|SQ_Y1\(4)))) # (!\C1|SQ_Y2\(4) & (!\C1|SQ_Y1\(4) & !\C1|LessThan213~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|LessThan213~5_cout\,
	cout => \C1|LessThan213~7_cout\);

-- Location: LCCOMB_X25_Y11_N20
\C1|LessThan213~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~9_cout\ = CARRY((\C1|SQ_Y2\(5) & (\C1|SQ_Y1\(5) & !\C1|LessThan213~7_cout\)) # (!\C1|SQ_Y2\(5) & ((\C1|SQ_Y1\(5)) # (!\C1|LessThan213~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|LessThan213~7_cout\,
	cout => \C1|LessThan213~9_cout\);

-- Location: LCCOMB_X25_Y11_N22
\C1|LessThan213~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~11_cout\ = CARRY((\C1|SQ_Y1\(6) & (\C1|SQ_Y2\(6) & !\C1|LessThan213~9_cout\)) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y2\(6)) # (!\C1|LessThan213~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|LessThan213~9_cout\,
	cout => \C1|LessThan213~11_cout\);

-- Location: LCCOMB_X25_Y11_N24
\C1|LessThan213~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~13_cout\ = CARRY((\C1|SQ_Y1\(7) & (\C1|SQ_Y2\(7) & !\C1|LessThan213~11_cout\)) # (!\C1|SQ_Y1\(7) & ((\C1|SQ_Y2\(7)) # (!\C1|LessThan213~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan213~11_cout\,
	cout => \C1|LessThan213~13_cout\);

-- Location: LCCOMB_X25_Y11_N26
\C1|LessThan213~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~15_cout\ = CARRY((\C1|SQ_Y2\(8) & (\C1|SQ_Y1\(8) & !\C1|LessThan213~13_cout\)) # (!\C1|SQ_Y2\(8) & ((\C1|SQ_Y1\(8)) # (!\C1|LessThan213~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|LessThan213~13_cout\,
	cout => \C1|LessThan213~15_cout\);

-- Location: LCCOMB_X25_Y11_N28
\C1|LessThan213~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~17_cout\ = CARRY((\C1|SQ_Y1\(9) & (\C1|SQ_Y2\(9) & !\C1|LessThan213~15_cout\)) # (!\C1|SQ_Y1\(9) & ((\C1|SQ_Y2\(9)) # (!\C1|LessThan213~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|LessThan213~15_cout\,
	cout => \C1|LessThan213~17_cout\);

-- Location: LCCOMB_X25_Y11_N30
\C1|LessThan213~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan213~18_combout\ = (\C1|SQ_Y1\(10) & ((\C1|LessThan213~17_cout\) # (!\C1|SQ_Y2\(10)))) # (!\C1|SQ_Y1\(10) & (\C1|LessThan213~17_cout\ & !\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y2\(10),
	cin => \C1|LessThan213~17_cout\,
	combout => \C1|LessThan213~18_combout\);

-- Location: LCCOMB_X30_Y17_N6
\C1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = \C1|SQ_X2\(4) $ (VCC)
-- \C1|Add2~1\ = CARRY(\C1|SQ_X2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X30_Y17_N8
\C1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(5) & (!\C1|Add2~1\)) # (!\C1|SQ_X2\(5) & ((\C1|Add2~1\) # (GND)))
-- \C1|Add2~3\ = CARRY((!\C1|Add2~1\) # (!\C1|SQ_X2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X30_Y17_N10
\C1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = (\C1|SQ_X2\(6) & (\C1|Add2~3\ $ (GND))) # (!\C1|SQ_X2\(6) & ((GND) # (!\C1|Add2~3\)))
-- \C1|Add2~5\ = CARRY((!\C1|Add2~3\) # (!\C1|SQ_X2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X30_Y17_N12
\C1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(7) & ((\C1|Add2~5\) # (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add2~5\))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(7)) # (!\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X30_Y17_N14
\C1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add2~7\ & VCC)) # (!\C1|SQ_X2\(8) & (\C1|Add2~7\ $ (GND)))
-- \C1|Add2~9\ = CARRY((!\C1|SQ_X2\(8) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X30_Y17_N16
\C1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(9) & (!\C1|Add2~9\)) # (!\C1|SQ_X2\(9) & ((\C1|Add2~9\) # (GND)))
-- \C1|Add2~11\ = CARRY((!\C1|Add2~9\) # (!\C1|SQ_X2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X30_Y17_N18
\C1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = (\C1|SQ_X2\(10) & (\C1|Add2~11\ $ (GND))) # (!\C1|SQ_X2\(10) & (!\C1|Add2~11\ & VCC))
-- \C1|Add2~13\ = CARRY((\C1|SQ_X2\(10) & !\C1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X30_Y17_N20
\C1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = \C1|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\);

-- Location: LCCOMB_X29_Y17_N0
\C1|SQ_X2[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[2]~10_combout\ = !\C1|Add28~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add28~2_combout\,
	combout => \C1|SQ_X2[2]~10_combout\);

-- Location: LCFF_X29_Y17_N1
\C1|SQ_X2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[2]~10_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(2));

-- Location: LCFF_X29_Y17_N7
\C1|SQ_X2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add28~0_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(1));

-- Location: LCCOMB_X30_Y16_N8
\C1|LessThan151~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~1_cout\ = CARRY((\C1|SQ_X1\(1) & \C1|SQ_X2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cout => \C1|LessThan151~1_cout\);

-- Location: LCCOMB_X30_Y16_N10
\C1|LessThan151~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~3_cout\ = CARRY((\C1|SQ_X1\(2) & ((\C1|SQ_X2\(2)) # (!\C1|LessThan151~1_cout\))) # (!\C1|SQ_X1\(2) & (\C1|SQ_X2\(2) & !\C1|LessThan151~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan151~1_cout\,
	cout => \C1|LessThan151~3_cout\);

-- Location: LCCOMB_X30_Y16_N12
\C1|LessThan151~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~5_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|SQ_X1\(3) & !\C1|LessThan151~3_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan151~3_cout\) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan151~3_cout\,
	cout => \C1|LessThan151~5_cout\);

-- Location: LCCOMB_X30_Y16_N14
\C1|LessThan151~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~7_cout\ = CARRY((\C1|SQ_X1\(4) & (!\C1|Add2~0_combout\ & !\C1|LessThan151~5_cout\)) # (!\C1|SQ_X1\(4) & ((!\C1|LessThan151~5_cout\) # (!\C1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|LessThan151~5_cout\,
	cout => \C1|LessThan151~7_cout\);

-- Location: LCCOMB_X30_Y16_N16
\C1|LessThan151~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~9_cout\ = CARRY((\C1|SQ_X1\(5) & ((\C1|Add2~2_combout\) # (!\C1|LessThan151~7_cout\))) # (!\C1|SQ_X1\(5) & (\C1|Add2~2_combout\ & !\C1|LessThan151~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|LessThan151~7_cout\,
	cout => \C1|LessThan151~9_cout\);

-- Location: LCCOMB_X30_Y16_N18
\C1|LessThan151~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~11_cout\ = CARRY((\C1|Add2~4_combout\ & (\C1|SQ_X1\(6) & !\C1|LessThan151~9_cout\)) # (!\C1|Add2~4_combout\ & ((\C1|SQ_X1\(6)) # (!\C1|LessThan151~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan151~9_cout\,
	cout => \C1|LessThan151~11_cout\);

-- Location: LCCOMB_X30_Y16_N20
\C1|LessThan151~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~13_cout\ = CARRY((\C1|Add2~6_combout\ & ((\C1|SQ_X1\(7)) # (!\C1|LessThan151~11_cout\))) # (!\C1|Add2~6_combout\ & (\C1|SQ_X1\(7) & !\C1|LessThan151~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan151~11_cout\,
	cout => \C1|LessThan151~13_cout\);

-- Location: LCCOMB_X30_Y16_N22
\C1|LessThan151~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~15_cout\ = CARRY((\C1|SQ_X1\(8) & (!\C1|Add2~8_combout\ & !\C1|LessThan151~13_cout\)) # (!\C1|SQ_X1\(8) & ((!\C1|LessThan151~13_cout\) # (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|Add2~8_combout\,
	datad => VCC,
	cin => \C1|LessThan151~13_cout\,
	cout => \C1|LessThan151~15_cout\);

-- Location: LCCOMB_X30_Y16_N24
\C1|LessThan151~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~17_cout\ = CARRY((\C1|Add2~10_combout\ & ((!\C1|LessThan151~15_cout\) # (!\C1|SQ_X1\(9)))) # (!\C1|Add2~10_combout\ & (!\C1|SQ_X1\(9) & !\C1|LessThan151~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|LessThan151~15_cout\,
	cout => \C1|LessThan151~17_cout\);

-- Location: LCCOMB_X30_Y16_N26
\C1|LessThan151~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan151~17_cout\ & \C1|Add2~12_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan151~17_cout\) # (\C1|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|Add2~12_combout\,
	cin => \C1|LessThan151~17_cout\,
	combout => \C1|LessThan151~18_combout\);

-- Location: LCCOMB_X29_Y17_N26
\C1|SQ_X2[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~9_combout\ = !\C1|Add28~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add28~4_combout\,
	combout => \C1|SQ_X2[3]~9_combout\);

-- Location: LCFF_X29_Y17_N27
\C1|SQ_X2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[3]~9_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(3));

-- Location: LCCOMB_X27_Y16_N8
\C1|LessThan210~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~1_cout\ = CARRY((!\C1|SQ_X2\(1) & !\C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan210~1_cout\);

-- Location: LCCOMB_X27_Y16_N10
\C1|LessThan210~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~3_cout\ = CARRY((\C1|SQ_X2\(2) & (!\C1|Add0~0_combout\ & !\C1|LessThan210~1_cout\)) # (!\C1|SQ_X2\(2) & ((!\C1|LessThan210~1_cout\) # (!\C1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|LessThan210~1_cout\,
	cout => \C1|LessThan210~3_cout\);

-- Location: LCCOMB_X27_Y16_N12
\C1|LessThan210~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~5_cout\ = CARRY((\C1|Add0~2_combout\ & ((\C1|SQ_X2\(3)) # (!\C1|LessThan210~3_cout\))) # (!\C1|Add0~2_combout\ & (\C1|SQ_X2\(3) & !\C1|LessThan210~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|LessThan210~3_cout\,
	cout => \C1|LessThan210~5_cout\);

-- Location: LCCOMB_X27_Y16_N14
\C1|LessThan210~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~7_cout\ = CARRY((\C1|Add0~4_combout\ & (\C1|Add2~0_combout\ & !\C1|LessThan210~5_cout\)) # (!\C1|Add0~4_combout\ & ((\C1|Add2~0_combout\) # (!\C1|LessThan210~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datab => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|LessThan210~5_cout\,
	cout => \C1|LessThan210~7_cout\);

-- Location: LCCOMB_X27_Y16_N16
\C1|LessThan210~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~9_cout\ = CARRY((\C1|Add2~2_combout\ & (\C1|Add0~6_combout\ & !\C1|LessThan210~7_cout\)) # (!\C1|Add2~2_combout\ & ((\C1|Add0~6_combout\) # (!\C1|LessThan210~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan210~7_cout\,
	cout => \C1|LessThan210~9_cout\);

-- Location: LCCOMB_X27_Y16_N18
\C1|LessThan210~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~11_cout\ = CARRY((\C1|Add2~4_combout\ & ((!\C1|LessThan210~9_cout\) # (!\C1|Add0~8_combout\))) # (!\C1|Add2~4_combout\ & (!\C1|Add0~8_combout\ & !\C1|LessThan210~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|LessThan210~9_cout\,
	cout => \C1|LessThan210~11_cout\);

-- Location: LCCOMB_X27_Y16_N20
\C1|LessThan210~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~13_cout\ = CARRY((\C1|Add2~6_combout\ & (\C1|Add0~10_combout\ & !\C1|LessThan210~11_cout\)) # (!\C1|Add2~6_combout\ & ((\C1|Add0~10_combout\) # (!\C1|LessThan210~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan210~11_cout\,
	cout => \C1|LessThan210~13_cout\);

-- Location: LCCOMB_X27_Y16_N22
\C1|LessThan210~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~15_cout\ = CARRY((\C1|Add2~8_combout\ & ((!\C1|LessThan210~13_cout\) # (!\C1|Add0~12_combout\))) # (!\C1|Add2~8_combout\ & (!\C1|Add0~12_combout\ & !\C1|LessThan210~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan210~13_cout\,
	cout => \C1|LessThan210~15_cout\);

-- Location: LCCOMB_X27_Y16_N24
\C1|LessThan210~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~17_cout\ = CARRY((\C1|Add2~10_combout\ & (\C1|Add0~14_combout\ & !\C1|LessThan210~15_cout\)) # (!\C1|Add2~10_combout\ & ((\C1|Add0~14_combout\) # (!\C1|LessThan210~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|LessThan210~15_cout\,
	cout => \C1|LessThan210~17_cout\);

-- Location: LCCOMB_X27_Y16_N26
\C1|LessThan210~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~19_cout\ = CARRY((\C1|Add0~16_combout\ & (\C1|Add2~12_combout\ & !\C1|LessThan210~17_cout\)) # (!\C1|Add0~16_combout\ & ((\C1|Add2~12_combout\) # (!\C1|LessThan210~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add2~12_combout\,
	datad => VCC,
	cin => \C1|LessThan210~17_cout\,
	cout => \C1|LessThan210~19_cout\);

-- Location: LCCOMB_X27_Y16_N28
\C1|LessThan210~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~20_combout\ = (\C1|Add2~14_combout\ & (!\C1|LessThan210~19_cout\ & \C1|Add0~18_combout\)) # (!\C1|Add2~14_combout\ & ((\C1|Add0~18_combout\) # (!\C1|LessThan210~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datad => \C1|Add0~18_combout\,
	cin => \C1|LessThan210~19_cout\,
	combout => \C1|LessThan210~20_combout\);

-- Location: LCCOMB_X26_Y14_N0
\C1|SQ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ~0_combout\ = (\C1|LessThan210~20_combout\ & ((\C1|Add2~14_combout\) # (\C1|LessThan151~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datac => \C1|LessThan151~18_combout\,
	datad => \C1|LessThan210~20_combout\,
	combout => \C1|SQ~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\C1|SQ_X2[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~3_combout\ = (\C1|SQ_X2[1]~2_combout\ & (((\C1|LessThan213~18_combout\) # (!\C1|SQ~0_combout\)) # (!\C1|LessThan214~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan214~18_combout\,
	datab => \C1|SQ_X2[1]~2_combout\,
	datac => \C1|LessThan213~18_combout\,
	datad => \C1|SQ~0_combout\,
	combout => \C1|SQ_X2[1]~3_combout\);

-- Location: LCCOMB_X30_Y17_N26
\C1|LessThan230~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan230~1_combout\ = (!\C1|Add2~14_combout\ & (!\C1|Add2~12_combout\ & ((!\C1|Add2~8_combout\) # (!\C1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan230~1_combout\);

-- Location: LCCOMB_X30_Y17_N4
\C1|LessThan246~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan246~0_combout\ = (\C1|Add2~10_combout\ & \C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~10_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan246~0_combout\);

-- Location: LCCOMB_X30_Y17_N22
\C1|LessThan250~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan250~1_combout\ = (\C1|Add2~2_combout\ & (\C1|Add2~10_combout\ & \C1|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~2_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan250~1_combout\);

-- Location: LCCOMB_X30_Y17_N0
\C1|LessThan250~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan250~2_combout\ = ((\C1|LessThan246~0_combout\) # ((\C1|LessThan250~0_combout\ & \C1|LessThan250~1_combout\))) # (!\C1|LessThan230~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan250~0_combout\,
	datab => \C1|LessThan230~1_combout\,
	datac => \C1|LessThan246~0_combout\,
	datad => \C1|LessThan250~1_combout\,
	combout => \C1|LessThan250~2_combout\);

-- Location: LCCOMB_X29_Y19_N4
\C1|LessThan225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~0_combout\ = (!\C1|Add2~12_combout\ & !\C1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~12_combout\,
	datad => \C1|Add2~14_combout\,
	combout => \C1|LessThan225~0_combout\);

-- Location: LCCOMB_X29_Y19_N24
\C1|LessThan260~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~3_combout\ = (\C1|Add2~6_combout\ & \C1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~6_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan260~3_combout\);

-- Location: LCCOMB_X29_Y18_N18
\C1|LessThan225~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~1_combout\ = (!\C1|Add2~2_combout\ & !\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan225~1_combout\);

-- Location: LCCOMB_X29_Y19_N16
\C1|LessThan256~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~0_combout\ = (\C1|LessThan260~3_combout\ & (((\C1|LessThan318~0_combout\ & \C1|Add2~0_combout\)) # (!\C1|LessThan225~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan318~0_combout\,
	datab => \C1|Add2~0_combout\,
	datac => \C1|LessThan260~3_combout\,
	datad => \C1|LessThan225~1_combout\,
	combout => \C1|LessThan256~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\C1|LessThan257~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~0_combout\ = ((!\C1|LessThan238~0_combout\ & (!\C1|Add2~0_combout\ & !\C1|Add2~2_combout\))) # (!\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan238~0_combout\,
	datab => \C1|Add2~0_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan257~0_combout\);

-- Location: LCCOMB_X30_Y19_N20
\C1|LessThan257~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~1_combout\ = ((!\C1|Add2~6_combout\ & (!\C1|Add2~8_combout\ & \C1|LessThan257~0_combout\))) # (!\C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|LessThan257~0_combout\,
	combout => \C1|LessThan257~1_combout\);

-- Location: LCCOMB_X29_Y19_N22
\C1|dMap~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~141_combout\ = (\C1|LessThan225~0_combout\ & (\C1|LessThan257~1_combout\ & ((\C1|Add2~10_combout\) # (\C1|LessThan256~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan225~0_combout\,
	datac => \C1|LessThan256~0_combout\,
	datad => \C1|LessThan257~1_combout\,
	combout => \C1|dMap~141_combout\);

-- Location: LCCOMB_X26_Y18_N4
\C1|LessThan281~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan281~0_combout\ = (\C1|SQ_Y2\(3) & (!\C1|SQ_Y2\(2) & \C1|Add13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan281~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\C1|LessThan269~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan269~0_combout\ = ((!\C1|LessThan281~0_combout\ & !\C1|Add13~8_combout\)) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datac => \C1|LessThan281~0_combout\,
	datad => \C1|Add13~8_combout\,
	combout => \C1|LessThan269~0_combout\);

-- Location: LCCOMB_X26_Y18_N14
\C1|dMap~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~171_combout\ = ((!\C1|SQ_Y2\(3) & !\C1|Add13~6_combout\)) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~171_combout\);

-- Location: LCCOMB_X25_Y18_N30
\C1|dMap~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~172_combout\ = (!\C1|Add13~20_combout\ & \C1|Add13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~20_combout\,
	datad => \C1|Add13~22_combout\,
	combout => \C1|dMap~172_combout\);

-- Location: LCCOMB_X25_Y18_N28
\C1|dMap~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~173_combout\ = (\C1|Add13~16_combout\ & (\C1|Add13~14_combout\ & (!\C1|Add13~18_combout\ & \C1|dMap~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~16_combout\,
	datab => \C1|Add13~14_combout\,
	datac => \C1|Add13~18_combout\,
	datad => \C1|dMap~172_combout\,
	combout => \C1|dMap~173_combout\);

-- Location: LCCOMB_X26_Y18_N0
\C1|dMap~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~174_combout\ = (((\C1|dMap~171_combout\) # (!\C1|dMap~173_combout\)) # (!\C1|LessThan269~0_combout\)) # (!\C1|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|LessThan269~0_combout\,
	datac => \C1|dMap~171_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~174_combout\);

-- Location: LCCOMB_X26_Y18_N30
\C1|dMap~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~175_combout\ = (!\C1|SQ_Y2\(3) & !\C1|Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~175_combout\);

-- Location: LCCOMB_X26_Y18_N28
\C1|dMap~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~176_combout\ = (\C1|Add13~8_combout\ & (!\C1|Add13~12_combout\ & ((!\C1|dMap~175_combout\) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~12_combout\,
	datac => \C1|SQ_Y2\(2),
	datad => \C1|dMap~175_combout\,
	combout => \C1|dMap~176_combout\);

-- Location: LCCOMB_X26_Y18_N26
\C1|dMap~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~283_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~283_combout\);

-- Location: LCCOMB_X26_Y18_N22
\C1|dMap~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~177_combout\ = (((\C1|dMap~283_combout\) # (!\C1|dMap~173_combout\)) # (!\C1|dMap~176_combout\)) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|dMap~176_combout\,
	datac => \C1|dMap~283_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~177_combout\);

-- Location: LCCOMB_X27_Y18_N30
\C1|dirQ2X2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~10_combout\ = (\C1|dMap~143_combout\ & (((\C1|dMap~141_combout\ & !\C1|dMap~177_combout\)) # (!\C1|dMap~174_combout\))) # (!\C1|dMap~143_combout\ & (\C1|dMap~141_combout\ & ((!\C1|dMap~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~143_combout\,
	datab => \C1|dMap~141_combout\,
	datac => \C1|dMap~174_combout\,
	datad => \C1|dMap~177_combout\,
	combout => \C1|dirQ2X2~10_combout\);

-- Location: LCCOMB_X27_Y18_N20
\C1|dirQ2X2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~11_combout\ = (\C1|dirQ2X2~10_combout\) # ((\C1|LessThan252~2_combout\ & (!\C1|LessThan250~2_combout\ & !\C1|dMap~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan252~2_combout\,
	datab => \C1|LessThan250~2_combout\,
	datac => \C1|dirQ2X2~10_combout\,
	datad => \C1|dMap~177_combout\,
	combout => \C1|dirQ2X2~11_combout\);

-- Location: LCCOMB_X29_Y17_N2
\C1|LessThan260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~0_combout\ = (\C1|SQ_X2\(2) & \C1|SQ_X2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan260~0_combout\);

-- Location: LCCOMB_X29_Y19_N2
\C1|LessThan260~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~1_combout\ = (\C1|Add2~0_combout\ & (\C1|Add2~4_combout\ & \C1|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~0_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan260~1_combout\);

-- Location: LCCOMB_X30_Y19_N16
\C1|LessThan227~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan227~0_combout\ = (!\C1|Add2~8_combout\ & !\C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~8_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan227~0_combout\);

-- Location: LCCOMB_X25_Y19_N8
\C1|LessThan261~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~0_combout\ = ((\C1|LessThan227~0_combout\ & ((\C1|LessThan260~0_combout\) # (!\C1|LessThan260~1_combout\)))) # (!\C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|LessThan260~1_combout\,
	datad => \C1|LessThan227~0_combout\,
	combout => \C1|LessThan261~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\C1|LessThan260~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~2_combout\ = (\C1|Add2~6_combout\ & (!\C1|LessThan260~0_combout\ & (\C1|Add2~8_combout\ & \C1|LessThan260~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|LessThan260~1_combout\,
	combout => \C1|LessThan260~2_combout\);

-- Location: LCCOMB_X24_Y19_N8
\C1|DRAWMAP~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~89_combout\ = (\C1|LessThan261~0_combout\ & ((\C1|Add2~10_combout\) # ((\C1|LessThan260~2_combout\) # (!\C1|LessThan225~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan225~0_combout\,
	datac => \C1|LessThan261~0_combout\,
	datad => \C1|LessThan260~2_combout\,
	combout => \C1|DRAWMAP~89_combout\);

-- Location: LCCOMB_X26_Y18_N10
\C1|dMap~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~183_combout\ = (\C1|Add13~10_combout\) # (((\C1|LessThan281~0_combout\) # (!\C1|dMap~173_combout\)) # (!\C1|dMap~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|dMap~176_combout\,
	datac => \C1|LessThan281~0_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~183_combout\);

-- Location: LCCOMB_X26_Y17_N14
\C1|dirQ2X2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~12_combout\ = (\C1|LessThan263~0_combout\) # ((\C1|LessThan225~0_combout\ & (\C1|DRAWMAP~89_combout\ & !\C1|dMap~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan263~0_combout\,
	datab => \C1|LessThan225~0_combout\,
	datac => \C1|DRAWMAP~89_combout\,
	datad => \C1|dMap~183_combout\,
	combout => \C1|dirQ2X2~12_combout\);

-- Location: LCCOMB_X30_Y17_N28
\C1|LessThan318~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan318~0_combout\ = (!\C1|SQ_X2\(3) & ((\C1|SQ_X2\(1)) # (!\C1|SQ_X2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datac => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan318~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\C1|LessThan224~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan224~0_combout\ = (\C1|Add2~4_combout\ & ((\C1|Add2~0_combout\) # ((\C1|Add2~2_combout\) # (\C1|LessThan318~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|Add2~0_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|LessThan318~0_combout\,
	combout => \C1|LessThan224~0_combout\);

-- Location: LCCOMB_X29_Y18_N14
\C1|LessThan224~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan224~1_combout\ = (\C1|Add2~12_combout\ & (\C1|Add2~10_combout\ & ((\C1|LessThan224~0_combout\) # (!\C1|LessThan227~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|LessThan224~0_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan227~0_combout\,
	combout => \C1|LessThan224~1_combout\);

-- Location: LCCOMB_X29_Y18_N30
\C1|LessThan225~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~3_combout\ = (\C1|Add2~14_combout\) # ((\C1|Add2~10_combout\ & \C1|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~10_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan225~3_combout\);

-- Location: LCCOMB_X29_Y18_N12
\C1|LessThan225~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~2_combout\ = ((\C1|LessThan225~1_combout\ & ((\C1|SQ_X2\(3)) # (!\C1|Add2~0_combout\)))) # (!\C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add2~0_combout\,
	datac => \C1|Add2~6_combout\,
	datad => \C1|LessThan225~1_combout\,
	combout => \C1|LessThan225~2_combout\);

-- Location: LCCOMB_X29_Y18_N28
\C1|LessThan225~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~4_combout\ = ((!\C1|Add2~8_combout\ & (!\C1|Add2~14_combout\ & \C1|LessThan225~2_combout\))) # (!\C1|LessThan225~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|LessThan225~3_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan225~2_combout\,
	combout => \C1|LessThan225~4_combout\);

-- Location: LCCOMB_X29_Y18_N16
\C1|dMap~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~133_combout\ = (\C1|LessThan225~4_combout\ & ((\C1|Add2~14_combout\) # (\C1|LessThan224~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datac => \C1|LessThan224~1_combout\,
	datad => \C1|LessThan225~4_combout\,
	combout => \C1|dMap~133_combout\);

-- Location: LCCOMB_X25_Y17_N0
\C1|LessThan218~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan218~0_combout\ = (!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|LessThan218~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\C1|dMap~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~181_combout\ = (\C1|Add13~10_combout\ & ((\C1|Add13~8_combout\) # ((\C1|LessThan218~0_combout\) # (!\C1|dMap~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|dMap~175_combout\,
	datac => \C1|LessThan218~0_combout\,
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~181_combout\);

-- Location: LCCOMB_X25_Y18_N0
\C1|LessThan262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~0_combout\ = (!\C1|Add13~12_combout\ & (!\C1|Add13~16_combout\ & !\C1|Add13~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datac => \C1|Add13~16_combout\,
	datad => \C1|Add13~14_combout\,
	combout => \C1|LessThan262~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\C1|dMap~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~182_combout\ = (((\C1|dMap~181_combout\) # (!\C1|LessThan262~0_combout\)) # (!\C1|dMap~172_combout\)) # (!\C1|Add13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~18_combout\,
	datab => \C1|dMap~172_combout\,
	datac => \C1|dMap~181_combout\,
	datad => \C1|LessThan262~0_combout\,
	combout => \C1|dMap~182_combout\);

-- Location: LCCOMB_X25_Y17_N2
\C1|dMap~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~185_combout\ = (\C1|Add13~12_combout\ & ((\C1|Add13~8_combout\ & (\C1|Add13~6_combout\ & !\C1|Add13~10_combout\)) # (!\C1|Add13~8_combout\ & (!\C1|Add13~6_combout\ & \C1|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~6_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|Add13~12_combout\,
	combout => \C1|dMap~185_combout\);

-- Location: LCCOMB_X25_Y17_N4
\C1|dMap~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~284_combout\ = (\C1|SQ_Y2\(3) & (!\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2))))) # (!\C1|SQ_Y2\(3) & (\C1|Add13~6_combout\ & (\C1|SQ_Y2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add13~6_combout\,
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|dMap~284_combout\);

-- Location: LCCOMB_X25_Y17_N12
\C1|dMap~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~186_combout\ = ((\C1|dMap~284_combout\) # (!\C1|dMap~173_combout\)) # (!\C1|dMap~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~185_combout\,
	datac => \C1|dMap~284_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~186_combout\);

-- Location: LCCOMB_X26_Y17_N22
\C1|dirQ2X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~5_combout\ = (\C1|dMap~137_combout\ & (((\C1|dMap~133_combout\ & !\C1|dMap~182_combout\)) # (!\C1|dMap~186_combout\))) # (!\C1|dMap~137_combout\ & (\C1|dMap~133_combout\ & (!\C1|dMap~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~137_combout\,
	datab => \C1|dMap~133_combout\,
	datac => \C1|dMap~182_combout\,
	datad => \C1|dMap~186_combout\,
	combout => \C1|dirQ2X2~5_combout\);

-- Location: LCCOMB_X30_Y19_N18
\C1|LessThan234~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan234~1_combout\ = ((\C1|LessThan246~0_combout\ & ((\C1|LessThan234~0_combout\) # (\C1|Add2~4_combout\)))) # (!\C1|LessThan230~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan234~0_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|LessThan230~1_combout\,
	datad => \C1|LessThan246~0_combout\,
	combout => \C1|LessThan234~1_combout\);

-- Location: LCCOMB_X29_Y19_N0
\C1|LessThan247~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~0_combout\ = (!\C1|Add2~0_combout\ & !\C1|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan247~0_combout\);

-- Location: LCCOMB_X29_Y19_N14
\C1|LessThan230~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan230~0_combout\ = (((\C1|SQ_X2\(1) & !\C1|SQ_X2\(2))) # (!\C1|LessThan247~0_combout\)) # (!\C1|SQ_X2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X2\(3),
	datac => \C1|SQ_X2\(2),
	datad => \C1|LessThan247~0_combout\,
	combout => \C1|LessThan230~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\C1|LessThan230~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan230~2_combout\ = ((\C1|Add2~4_combout\ & (\C1|LessThan230~0_combout\ & \C1|LessThan246~0_combout\))) # (!\C1|LessThan230~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|LessThan230~0_combout\,
	datac => \C1|LessThan230~1_combout\,
	datad => \C1|LessThan246~0_combout\,
	combout => \C1|LessThan230~2_combout\);

-- Location: LCCOMB_X30_Y19_N26
\C1|dMap~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~139_combout\ = (\C1|LessThan234~1_combout\ & !\C1|LessThan230~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan234~1_combout\,
	datad => \C1|LessThan230~2_combout\,
	combout => \C1|dMap~139_combout\);

-- Location: LCCOMB_X25_Y17_N26
\C1|dMap~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~285_combout\ = (\C1|SQ_Y2\(3) & ((\C1|Add13~6_combout\) # ((!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add13~6_combout\,
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|dMap~285_combout\);

-- Location: LCCOMB_X25_Y17_N16
\C1|dMap~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~190_combout\ = (\C1|Add13~8_combout\ & (\C1|Add13~6_combout\ & (\C1|Add13~10_combout\ & !\C1|Add13~12_combout\))) # (!\C1|Add13~8_combout\ & (!\C1|Add13~6_combout\ & (!\C1|Add13~10_combout\ & \C1|Add13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~6_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|Add13~12_combout\,
	combout => \C1|dMap~190_combout\);

-- Location: LCCOMB_X25_Y17_N6
\C1|dMap~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~191_combout\ = ((\C1|Add13~8_combout\ $ (\C1|dMap~285_combout\)) # (!\C1|dMap~173_combout\)) # (!\C1|dMap~190_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|dMap~285_combout\,
	datac => \C1|dMap~190_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~191_combout\);

-- Location: LCCOMB_X26_Y19_N12
\C1|dirQ2X2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~14_combout\ = (!\C1|LessThan246~2_combout\ & (\C1|LessThan250~2_combout\ & !\C1|dMap~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan246~2_combout\,
	datac => \C1|LessThan250~2_combout\,
	datad => \C1|dMap~191_combout\,
	combout => \C1|dirQ2X2~14_combout\);

-- Location: LCCOMB_X26_Y19_N18
\C1|dirQ2X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~7_combout\ = (\C1|dirQ2X2~14_combout\) # ((!\C1|dMap~174_combout\ & ((\C1|dMap~136_combout\) # (\C1|dMap~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~136_combout\,
	datab => \C1|dMap~174_combout\,
	datac => \C1|dMap~139_combout\,
	datad => \C1|dirQ2X2~14_combout\,
	combout => \C1|dirQ2X2~7_combout\);

-- Location: LCCOMB_X30_Y19_N30
\C1|LessThan238~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan238~0_combout\ = (\C1|SQ_X2\(1) & (!\C1|SQ_X2\(2) & !\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datac => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan238~0_combout\);

-- Location: LCCOMB_X29_Y19_N10
\C1|LessThan231~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan231~0_combout\ = (!\C1|Add2~4_combout\ & (((!\C1|LessThan238~0_combout\) # (!\C1|Add2~0_combout\)) # (!\C1|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|LessThan238~0_combout\,
	combout => \C1|LessThan231~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\C1|DRAWMAP~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~90_combout\ = (\C1|LessThan230~2_combout\ & (((\C1|LessThan231~0_combout\) # (!\C1|Add2~10_combout\)) # (!\C1|LessThan260~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan260~3_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan231~0_combout\,
	datad => \C1|LessThan230~2_combout\,
	combout => \C1|DRAWMAP~90_combout\);

-- Location: LCCOMB_X25_Y19_N30
\C1|LessThan220~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan220~0_combout\ = (\C1|Add2~4_combout\) # ((\C1|Add2~2_combout\ & ((\C1|Add2~0_combout\) # (!\C1|LessThan260~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan220~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\C1|DRAWMAP~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~92_combout\ = (!\C1|Add2~10_combout\ & (((\C1|LessThan260~3_combout\ & \C1|LessThan220~0_combout\)) # (!\C1|LessThan225~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan260~3_combout\,
	datab => \C1|LessThan220~0_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan225~0_combout\,
	combout => \C1|DRAWMAP~92_combout\);

-- Location: LCCOMB_X23_Y19_N24
\C1|DRAWMAP~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~131_combout\ = (\C1|DRAWMAP~92_combout\ & (((!\C1|Add2~8_combout\) # (!\C1|LessThan224~0_combout\)) # (!\C1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|LessThan224~0_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|DRAWMAP~92_combout\,
	combout => \C1|DRAWMAP~131_combout\);

-- Location: LCCOMB_X26_Y18_N12
\C1|dMap~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~178_combout\ = (\C1|Add13~18_combout\) # ((!\C1|Add13~10_combout\ & ((!\C1|Add13~8_combout\) # (!\C1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|Add13~6_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~18_combout\,
	combout => \C1|dMap~178_combout\);

-- Location: LCCOMB_X26_Y18_N6
\C1|dMap~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~179_combout\ = (\C1|dMap~178_combout\) # ((!\C1|Add13~10_combout\ & (!\C1|SQ_Y2\(3) & !\C1|LessThan218~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|SQ_Y2\(3),
	datac => \C1|LessThan218~0_combout\,
	datad => \C1|dMap~178_combout\,
	combout => \C1|dMap~179_combout\);

-- Location: LCCOMB_X25_Y17_N24
\C1|dMap~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~180_combout\ = (((\C1|dMap~179_combout\) # (!\C1|LessThan262~0_combout\)) # (!\C1|LessThan269~0_combout\)) # (!\C1|dMap~172_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~172_combout\,
	datab => \C1|LessThan269~0_combout\,
	datac => \C1|LessThan262~0_combout\,
	datad => \C1|dMap~179_combout\,
	combout => \C1|dMap~180_combout\);

-- Location: LCCOMB_X26_Y17_N18
\C1|dirQ2X2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~15_combout\ = (!\C1|Add2~12_combout\ & (!\C1|Add2~14_combout\ & (\C1|DRAWMAP~131_combout\ & !\C1|dMap~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|Add2~14_combout\,
	datac => \C1|DRAWMAP~131_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|dirQ2X2~15_combout\);

-- Location: LCCOMB_X26_Y17_N10
\C1|dirQ2X2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~8_combout\ = (\C1|dirQ2X2~15_combout\) # ((!\C1|dMap~174_combout\ & (\C1|LessThan225~0_combout\ & \C1|DRAWMAP~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~174_combout\,
	datab => \C1|LessThan225~0_combout\,
	datac => \C1|DRAWMAP~90_combout\,
	datad => \C1|dirQ2X2~15_combout\,
	combout => \C1|dirQ2X2~8_combout\);

-- Location: LCCOMB_X26_Y17_N12
\C1|dirQ2X2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~9_combout\ = (\C1|dirQ2X2~6_combout\) # ((\C1|dirQ2X2~5_combout\) # ((\C1|dirQ2X2~7_combout\) # (\C1|dirQ2X2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X2~6_combout\,
	datab => \C1|dirQ2X2~5_combout\,
	datac => \C1|dirQ2X2~7_combout\,
	datad => \C1|dirQ2X2~8_combout\,
	combout => \C1|dirQ2X2~9_combout\);

-- Location: LCCOMB_X26_Y17_N4
\C1|dirQ2X2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~13_combout\ = (\C1|dirQ2X2~4_combout\ & ((\C1|dirQ2X2~11_combout\) # ((\C1|dirQ2X2~12_combout\) # (\C1|dirQ2X2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X2~4_combout\,
	datab => \C1|dirQ2X2~11_combout\,
	datac => \C1|dirQ2X2~12_combout\,
	datad => \C1|dirQ2X2~9_combout\,
	combout => \C1|dirQ2X2~13_combout\);

-- Location: LCCOMB_X24_Y12_N10
\C1|LessThan211~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~1_cout\ = CARRY((\C1|SQ_Y2\(1) & !\C1|SQ_Y1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cout => \C1|LessThan211~1_cout\);

-- Location: LCCOMB_X24_Y12_N12
\C1|LessThan211~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~3_cout\ = CARRY((\C1|SQ_Y2\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan211~1_cout\)) # (!\C1|SQ_Y2\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan211~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan211~1_cout\,
	cout => \C1|LessThan211~3_cout\);

-- Location: LCCOMB_X24_Y12_N14
\C1|LessThan211~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~5_cout\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|SQ_Y2\(3) & !\C1|LessThan211~3_cout\)) # (!\C1|SQ_Y1\(3) & ((!\C1|LessThan211~3_cout\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan211~3_cout\,
	cout => \C1|LessThan211~5_cout\);

-- Location: LCCOMB_X24_Y12_N16
\C1|LessThan211~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~7_cout\ = CARRY((\C1|SQ_Y1\(4) & (\C1|Add13~6_combout\ & !\C1|LessThan211~5_cout\)) # (!\C1|SQ_Y1\(4) & ((\C1|Add13~6_combout\) # (!\C1|LessThan211~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|Add13~6_combout\,
	datad => VCC,
	cin => \C1|LessThan211~5_cout\,
	cout => \C1|LessThan211~7_cout\);

-- Location: LCCOMB_X24_Y12_N18
\C1|LessThan211~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~9_cout\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|LessThan211~7_cout\) # (!\C1|Add13~8_combout\))) # (!\C1|SQ_Y1\(5) & (!\C1|Add13~8_combout\ & !\C1|LessThan211~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|Add13~8_combout\,
	datad => VCC,
	cin => \C1|LessThan211~7_cout\,
	cout => \C1|LessThan211~9_cout\);

-- Location: LCCOMB_X24_Y12_N20
\C1|LessThan211~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~11_cout\ = CARRY((\C1|SQ_Y1\(6) & (\C1|Add13~10_combout\ & !\C1|LessThan211~9_cout\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add13~10_combout\) # (!\C1|LessThan211~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|Add13~10_combout\,
	datad => VCC,
	cin => \C1|LessThan211~9_cout\,
	cout => \C1|LessThan211~11_cout\);

-- Location: LCCOMB_X24_Y12_N22
\C1|LessThan211~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~13_cout\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|Add13~12_combout\ & !\C1|LessThan211~11_cout\)) # (!\C1|SQ_Y1\(7) & ((!\C1|LessThan211~11_cout\) # (!\C1|Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|Add13~12_combout\,
	datad => VCC,
	cin => \C1|LessThan211~11_cout\,
	cout => \C1|LessThan211~13_cout\);

-- Location: LCCOMB_X24_Y12_N24
\C1|LessThan211~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~15_cout\ = CARRY((\C1|Add13~14_combout\ & ((\C1|SQ_Y1\(8)) # (!\C1|LessThan211~13_cout\))) # (!\C1|Add13~14_combout\ & (\C1|SQ_Y1\(8) & !\C1|LessThan211~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~14_combout\,
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|LessThan211~13_cout\,
	cout => \C1|LessThan211~15_cout\);

-- Location: LCCOMB_X24_Y12_N26
\C1|LessThan211~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~17_cout\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|Add13~16_combout\ & !\C1|LessThan211~15_cout\)) # (!\C1|SQ_Y1\(9) & ((!\C1|LessThan211~15_cout\) # (!\C1|Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|Add13~16_combout\,
	datad => VCC,
	cin => \C1|LessThan211~15_cout\,
	cout => \C1|LessThan211~17_cout\);

-- Location: LCCOMB_X24_Y12_N28
\C1|LessThan211~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~18_combout\ = (\C1|SQ_Y1\(10) & ((\C1|LessThan211~17_cout\) # (!\C1|Add13~18_combout\))) # (!\C1|SQ_Y1\(10) & (\C1|LessThan211~17_cout\ & !\C1|Add13~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|Add13~18_combout\,
	cin => \C1|LessThan211~17_cout\,
	combout => \C1|LessThan211~18_combout\);

-- Location: LCCOMB_X19_Y14_N8
\C1|LessThan212~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~1_cout\ = CARRY((\C1|SQ_Y2\(1) & \C1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|LessThan212~1_cout\);

-- Location: LCCOMB_X19_Y14_N10
\C1|LessThan212~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~3_cout\ = CARRY((\C1|SQ_Y2\(2) & (!\C1|Add1~2_combout\ & !\C1|LessThan212~1_cout\)) # (!\C1|SQ_Y2\(2) & ((!\C1|LessThan212~1_cout\) # (!\C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan212~1_cout\,
	cout => \C1|LessThan212~3_cout\);

-- Location: LCCOMB_X19_Y14_N12
\C1|LessThan212~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~5_cout\ = CARRY((\C1|SQ_Y2\(3) & (\C1|Add1~4_combout\ & !\C1|LessThan212~3_cout\)) # (!\C1|SQ_Y2\(3) & ((\C1|Add1~4_combout\) # (!\C1|LessThan212~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|LessThan212~3_cout\,
	cout => \C1|LessThan212~5_cout\);

-- Location: LCCOMB_X19_Y14_N14
\C1|LessThan212~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~7_cout\ = CARRY((\C1|Add1~6_combout\ & (\C1|Add13~6_combout\ & !\C1|LessThan212~5_cout\)) # (!\C1|Add1~6_combout\ & ((\C1|Add13~6_combout\) # (!\C1|LessThan212~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add13~6_combout\,
	datad => VCC,
	cin => \C1|LessThan212~5_cout\,
	cout => \C1|LessThan212~7_cout\);

-- Location: LCCOMB_X19_Y14_N16
\C1|LessThan212~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~9_cout\ = CARRY((\C1|Add1~8_combout\ & ((!\C1|LessThan212~7_cout\) # (!\C1|Add13~8_combout\))) # (!\C1|Add1~8_combout\ & (!\C1|Add13~8_combout\ & !\C1|LessThan212~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add13~8_combout\,
	datad => VCC,
	cin => \C1|LessThan212~7_cout\,
	cout => \C1|LessThan212~9_cout\);

-- Location: LCCOMB_X19_Y14_N18
\C1|LessThan212~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~11_cout\ = CARRY((\C1|Add1~10_combout\ & (\C1|Add13~10_combout\ & !\C1|LessThan212~9_cout\)) # (!\C1|Add1~10_combout\ & ((\C1|Add13~10_combout\) # (!\C1|LessThan212~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add13~10_combout\,
	datad => VCC,
	cin => \C1|LessThan212~9_cout\,
	cout => \C1|LessThan212~11_cout\);

-- Location: LCCOMB_X19_Y14_N20
\C1|LessThan212~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~13_cout\ = CARRY((\C1|Add1~12_combout\ & ((!\C1|LessThan212~11_cout\) # (!\C1|Add13~12_combout\))) # (!\C1|Add1~12_combout\ & (!\C1|Add13~12_combout\ & !\C1|LessThan212~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add13~12_combout\,
	datad => VCC,
	cin => \C1|LessThan212~11_cout\,
	cout => \C1|LessThan212~13_cout\);

-- Location: LCCOMB_X19_Y14_N22
\C1|LessThan212~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~15_cout\ = CARRY((\C1|Add1~14_combout\ & (\C1|Add13~14_combout\ & !\C1|LessThan212~13_cout\)) # (!\C1|Add1~14_combout\ & ((\C1|Add13~14_combout\) # (!\C1|LessThan212~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|Add13~14_combout\,
	datad => VCC,
	cin => \C1|LessThan212~13_cout\,
	cout => \C1|LessThan212~15_cout\);

-- Location: LCCOMB_X19_Y14_N24
\C1|LessThan212~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~17_cout\ = CARRY((\C1|Add1~16_combout\ & ((!\C1|LessThan212~15_cout\) # (!\C1|Add13~16_combout\))) # (!\C1|Add1~16_combout\ & (!\C1|Add13~16_combout\ & !\C1|LessThan212~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add13~16_combout\,
	datad => VCC,
	cin => \C1|LessThan212~15_cout\,
	cout => \C1|LessThan212~17_cout\);

-- Location: LCCOMB_X19_Y14_N26
\C1|LessThan212~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~19_cout\ = CARRY((\C1|Add1~18_combout\ & (\C1|Add13~18_combout\ & !\C1|LessThan212~17_cout\)) # (!\C1|Add1~18_combout\ & ((\C1|Add13~18_combout\) # (!\C1|LessThan212~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add13~18_combout\,
	datad => VCC,
	cin => \C1|LessThan212~17_cout\,
	cout => \C1|LessThan212~19_cout\);

-- Location: LCCOMB_X19_Y14_N28
\C1|LessThan212~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan212~20_combout\ = (\C1|Add1~20_combout\ & ((!\C1|Add13~20_combout\) # (!\C1|LessThan212~19_cout\))) # (!\C1|Add1~20_combout\ & (!\C1|LessThan212~19_cout\ & !\C1|Add13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datad => \C1|Add13~20_combout\,
	cin => \C1|LessThan212~19_cout\,
	combout => \C1|LessThan212~20_combout\);

-- Location: LCCOMB_X24_Y14_N12
\C1|contatoD2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|contatoD2~0_combout\ = (\C1|Add13~22_combout\ & (\C1|LessThan212~20_combout\ & ((\C1|Add13~20_combout\) # (!\C1|LessThan211~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|Add13~22_combout\,
	datac => \C1|LessThan211~18_combout\,
	datad => \C1|LessThan212~20_combout\,
	combout => \C1|contatoD2~0_combout\);

-- Location: LCCOMB_X25_Y14_N22
\C1|SQ_X2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~0_combout\ = ((!\C1|contatoD2~0_combout\ & ((\C1|LessThan213~18_combout\) # (!\C1|Add1~20_combout\)))) # (!\C1|SQ~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan213~18_combout\,
	datab => \C1|SQ~0_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|contatoD2~0_combout\,
	combout => \C1|SQ_X2[1]~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\C1|SQ_X2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~1_combout\ = (\C1|SQ_X2[1]~0_combout\ & ((\C1|LessThan216~0_combout\) # ((!\C1|Add13~22_combout\) # (!\C1|Add13~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan216~0_combout\,
	datab => \C1|Add13~20_combout\,
	datac => \C1|Add13~22_combout\,
	datad => \C1|SQ_X2[1]~0_combout\,
	combout => \C1|SQ_X2[1]~1_combout\);

-- Location: LCCOMB_X26_Y17_N2
\C1|SQ_X2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~4_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|SQ_X2[1]~3_combout\ & (!\C1|dirQ2X2~13_combout\ & \C1|SQ_X2[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|SQ_X2[1]~3_combout\,
	datac => \C1|dirQ2X2~13_combout\,
	datad => \C1|SQ_X2[1]~1_combout\,
	combout => \C1|SQ_X2[1]~4_combout\);

-- Location: LCCOMB_X26_Y17_N0
\C1|SQ_X2[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~5_combout\ = (\SW~combout\(1) & (\C1|SQ_X1[1]~0_combout\ & ((\C1|process_0~17_combout\) # (\C1|SQ_X2[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \C1|SQ_X1[1]~0_combout\,
	datac => \C1|process_0~17_combout\,
	datad => \C1|SQ_X2[1]~4_combout\,
	combout => \C1|SQ_X2[1]~5_combout\);

-- Location: LCFF_X29_Y17_N5
\C1|SQ_X2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[6]~8_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(6));

-- Location: LCCOMB_X29_Y17_N30
\C1|SQ_X2[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[7]~7_combout\ = !\C1|Add28~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add28~12_combout\,
	combout => \C1|SQ_X2[7]~7_combout\);

-- Location: LCFF_X29_Y17_N31
\C1|SQ_X2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[7]~7_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(7));

-- Location: LCCOMB_X27_Y14_N28
\C1|LessThan318~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan318~1_combout\ = (\C1|SQ_X2\(5)) # (((\C1|LessThan318~0_combout\ & \C1|SQ_X2\(4))) # (!\C1|SQ_X2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|LessThan318~0_combout\,
	datac => \C1|SQ_X2\(6),
	datad => \C1|SQ_X2\(4),
	combout => \C1|LessThan318~1_combout\);

-- Location: LCCOMB_X27_Y14_N0
\C1|process_0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~23_combout\ = (\C1|SQ_X2\(10)) # ((!\C1|SQ_X2\(8) & (!\C1|SQ_X2\(7) & \C1|LessThan318~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|SQ_X2\(7),
	datac => \C1|SQ_X2\(10),
	datad => \C1|LessThan318~1_combout\,
	combout => \C1|process_0~23_combout\);

-- Location: LCCOMB_X27_Y17_N4
\C1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add9~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add9~0_combout\,
	cout => \C1|Add9~1\);

-- Location: LCCOMB_X27_Y17_N6
\C1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~2_combout\ = (\C1|SQ_X2\(2) & (!\C1|Add9~1\)) # (!\C1|SQ_X2\(2) & (\C1|Add9~1\ & VCC))
-- \C1|Add9~3\ = CARRY((\C1|SQ_X2\(2) & !\C1|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Add9~1\,
	combout => \C1|Add9~2_combout\,
	cout => \C1|Add9~3\);

-- Location: LCCOMB_X27_Y17_N8
\C1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = (\C1|SQ_X2\(3) & (\C1|Add9~3\ $ (GND))) # (!\C1|SQ_X2\(3) & ((GND) # (!\C1|Add9~3\)))
-- \C1|Add9~5\ = CARRY((!\C1|Add9~3\) # (!\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X27_Y17_N10
\C1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (\C1|SQ_X2\(4) & (\C1|Add9~5\ & VCC)) # (!\C1|SQ_X2\(4) & (!\C1|Add9~5\))
-- \C1|Add9~7\ = CARRY((!\C1|SQ_X2\(4) & !\C1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: LCCOMB_X27_Y17_N12
\C1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~8_combout\ = (\C1|SQ_X2\(5) & ((GND) # (!\C1|Add9~7\))) # (!\C1|SQ_X2\(5) & (\C1|Add9~7\ $ (GND)))
-- \C1|Add9~9\ = CARRY((\C1|SQ_X2\(5)) # (!\C1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add9~7\,
	combout => \C1|Add9~8_combout\,
	cout => \C1|Add9~9\);

-- Location: LCCOMB_X27_Y17_N14
\C1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~10_combout\ = (\C1|SQ_X2\(6) & (!\C1|Add9~9\)) # (!\C1|SQ_X2\(6) & (\C1|Add9~9\ & VCC))
-- \C1|Add9~11\ = CARRY((\C1|SQ_X2\(6) & !\C1|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add9~9\,
	combout => \C1|Add9~10_combout\,
	cout => \C1|Add9~11\);

-- Location: LCCOMB_X27_Y17_N16
\C1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~12_combout\ = (\C1|SQ_X2\(7) & (\C1|Add9~11\ $ (GND))) # (!\C1|SQ_X2\(7) & ((GND) # (!\C1|Add9~11\)))
-- \C1|Add9~13\ = CARRY((!\C1|Add9~11\) # (!\C1|SQ_X2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add9~11\,
	combout => \C1|Add9~12_combout\,
	cout => \C1|Add9~13\);

-- Location: LCCOMB_X27_Y17_N18
\C1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~14_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add9~13\)) # (!\C1|SQ_X2\(8) & (\C1|Add9~13\ & VCC))
-- \C1|Add9~15\ = CARRY((\C1|SQ_X2\(8) & !\C1|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add9~13\,
	combout => \C1|Add9~14_combout\,
	cout => \C1|Add9~15\);

-- Location: LCCOMB_X27_Y17_N20
\C1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~16_combout\ = (\C1|SQ_X2\(9) & ((GND) # (!\C1|Add9~15\))) # (!\C1|SQ_X2\(9) & (\C1|Add9~15\ $ (GND)))
-- \C1|Add9~17\ = CARRY((\C1|SQ_X2\(9)) # (!\C1|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add9~15\,
	combout => \C1|Add9~16_combout\,
	cout => \C1|Add9~17\);

-- Location: LCCOMB_X27_Y17_N22
\C1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~18_combout\ = (\C1|SQ_X2\(10) & (\C1|Add9~17\ & VCC)) # (!\C1|SQ_X2\(10) & (!\C1|Add9~17\))
-- \C1|Add9~19\ = CARRY((!\C1|SQ_X2\(10) & !\C1|Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add9~17\,
	combout => \C1|Add9~18_combout\,
	cout => \C1|Add9~19\);

-- Location: LCCOMB_X26_Y13_N6
\C1|LessThan282~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~1_cout\ = CARRY((\C1|Add9~0_combout\ & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~0_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan282~1_cout\);

-- Location: LCCOMB_X26_Y13_N8
\C1|LessThan282~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~3_cout\ = CARRY((\C1|SQ_X1\(2) & ((!\C1|LessThan282~1_cout\) # (!\C1|Add9~2_combout\))) # (!\C1|SQ_X1\(2) & (!\C1|Add9~2_combout\ & !\C1|LessThan282~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|Add9~2_combout\,
	datad => VCC,
	cin => \C1|LessThan282~1_cout\,
	cout => \C1|LessThan282~3_cout\);

-- Location: LCCOMB_X26_Y13_N10
\C1|LessThan282~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~5_cout\ = CARRY((\C1|SQ_X1\(3) & (\C1|Add9~4_combout\ & !\C1|LessThan282~3_cout\)) # (!\C1|SQ_X1\(3) & ((\C1|Add9~4_combout\) # (!\C1|LessThan282~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|Add9~4_combout\,
	datad => VCC,
	cin => \C1|LessThan282~3_cout\,
	cout => \C1|LessThan282~5_cout\);

-- Location: LCCOMB_X26_Y13_N12
\C1|LessThan282~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~7_cout\ = CARRY((\C1|SQ_X1\(4) & (!\C1|Add9~6_combout\ & !\C1|LessThan282~5_cout\)) # (!\C1|SQ_X1\(4) & ((!\C1|LessThan282~5_cout\) # (!\C1|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|Add9~6_combout\,
	datad => VCC,
	cin => \C1|LessThan282~5_cout\,
	cout => \C1|LessThan282~7_cout\);

-- Location: LCCOMB_X26_Y13_N14
\C1|LessThan282~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~9_cout\ = CARRY((\C1|Add9~8_combout\ & ((\C1|SQ_X1\(5)) # (!\C1|LessThan282~7_cout\))) # (!\C1|Add9~8_combout\ & (\C1|SQ_X1\(5) & !\C1|LessThan282~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan282~7_cout\,
	cout => \C1|LessThan282~9_cout\);

-- Location: LCCOMB_X26_Y13_N16
\C1|LessThan282~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~11_cout\ = CARRY((\C1|Add9~10_combout\ & (\C1|SQ_X1\(6) & !\C1|LessThan282~9_cout\)) # (!\C1|Add9~10_combout\ & ((\C1|SQ_X1\(6)) # (!\C1|LessThan282~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan282~9_cout\,
	cout => \C1|LessThan282~11_cout\);

-- Location: LCCOMB_X26_Y13_N18
\C1|LessThan282~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~13_cout\ = CARRY((\C1|Add9~12_combout\ & ((\C1|SQ_X1\(7)) # (!\C1|LessThan282~11_cout\))) # (!\C1|Add9~12_combout\ & (\C1|SQ_X1\(7) & !\C1|LessThan282~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan282~11_cout\,
	cout => \C1|LessThan282~13_cout\);

-- Location: LCCOMB_X26_Y13_N20
\C1|LessThan282~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~15_cout\ = CARRY((\C1|SQ_X1\(8) & (!\C1|Add9~14_combout\ & !\C1|LessThan282~13_cout\)) # (!\C1|SQ_X1\(8) & ((!\C1|LessThan282~13_cout\) # (!\C1|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|Add9~14_combout\,
	datad => VCC,
	cin => \C1|LessThan282~13_cout\,
	cout => \C1|LessThan282~15_cout\);

-- Location: LCCOMB_X26_Y13_N22
\C1|LessThan282~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|Add9~16_combout\ & !\C1|LessThan282~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|Add9~16_combout\) # (!\C1|LessThan282~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|Add9~16_combout\,
	datad => VCC,
	cin => \C1|LessThan282~15_cout\,
	cout => \C1|LessThan282~17_cout\);

-- Location: LCCOMB_X26_Y13_N24
\C1|LessThan282~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan282~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan282~17_cout\ & \C1|Add9~18_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan282~17_cout\) # (\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|Add9~18_combout\,
	cin => \C1|LessThan282~17_cout\,
	combout => \C1|LessThan282~18_combout\);

-- Location: LCCOMB_X26_Y14_N8
\C1|LessThan283~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~1_cout\ = CARRY((!\C1|Add9~0_combout\ & !\C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~0_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan283~1_cout\);

-- Location: LCCOMB_X26_Y14_N10
\C1|LessThan283~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~3_cout\ = CARRY((\C1|Add0~0_combout\ & (\C1|Add9~2_combout\ & !\C1|LessThan283~1_cout\)) # (!\C1|Add0~0_combout\ & ((\C1|Add9~2_combout\) # (!\C1|LessThan283~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Add9~2_combout\,
	datad => VCC,
	cin => \C1|LessThan283~1_cout\,
	cout => \C1|LessThan283~3_cout\);

-- Location: LCCOMB_X26_Y14_N12
\C1|LessThan283~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~5_cout\ = CARRY((\C1|Add0~2_combout\ & ((!\C1|LessThan283~3_cout\) # (!\C1|Add9~4_combout\))) # (!\C1|Add0~2_combout\ & (!\C1|Add9~4_combout\ & !\C1|LessThan283~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Add9~4_combout\,
	datad => VCC,
	cin => \C1|LessThan283~3_cout\,
	cout => \C1|LessThan283~5_cout\);

-- Location: LCCOMB_X26_Y14_N14
\C1|LessThan283~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~7_cout\ = CARRY((\C1|Add0~4_combout\ & (\C1|Add9~6_combout\ & !\C1|LessThan283~5_cout\)) # (!\C1|Add0~4_combout\ & ((\C1|Add9~6_combout\) # (!\C1|LessThan283~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datab => \C1|Add9~6_combout\,
	datad => VCC,
	cin => \C1|LessThan283~5_cout\,
	cout => \C1|LessThan283~7_cout\);

-- Location: LCCOMB_X26_Y14_N16
\C1|LessThan283~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~9_cout\ = CARRY((\C1|Add9~8_combout\ & (\C1|Add0~6_combout\ & !\C1|LessThan283~7_cout\)) # (!\C1|Add9~8_combout\ & ((\C1|Add0~6_combout\) # (!\C1|LessThan283~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan283~7_cout\,
	cout => \C1|LessThan283~9_cout\);

-- Location: LCCOMB_X26_Y14_N18
\C1|LessThan283~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~11_cout\ = CARRY((\C1|Add9~10_combout\ & ((!\C1|LessThan283~9_cout\) # (!\C1|Add0~8_combout\))) # (!\C1|Add9~10_combout\ & (!\C1|Add0~8_combout\ & !\C1|LessThan283~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|LessThan283~9_cout\,
	cout => \C1|LessThan283~11_cout\);

-- Location: LCCOMB_X26_Y14_N20
\C1|LessThan283~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~13_cout\ = CARRY((\C1|Add9~12_combout\ & (\C1|Add0~10_combout\ & !\C1|LessThan283~11_cout\)) # (!\C1|Add9~12_combout\ & ((\C1|Add0~10_combout\) # (!\C1|LessThan283~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan283~11_cout\,
	cout => \C1|LessThan283~13_cout\);

-- Location: LCCOMB_X26_Y14_N22
\C1|LessThan283~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~15_cout\ = CARRY((\C1|Add9~14_combout\ & ((!\C1|LessThan283~13_cout\) # (!\C1|Add0~12_combout\))) # (!\C1|Add9~14_combout\ & (!\C1|Add0~12_combout\ & !\C1|LessThan283~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~14_combout\,
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan283~13_cout\,
	cout => \C1|LessThan283~15_cout\);

-- Location: LCCOMB_X26_Y14_N24
\C1|LessThan283~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~17_cout\ = CARRY((\C1|Add0~14_combout\ & ((!\C1|LessThan283~15_cout\) # (!\C1|Add9~16_combout\))) # (!\C1|Add0~14_combout\ & (!\C1|Add9~16_combout\ & !\C1|LessThan283~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~14_combout\,
	datab => \C1|Add9~16_combout\,
	datad => VCC,
	cin => \C1|LessThan283~15_cout\,
	cout => \C1|LessThan283~17_cout\);

-- Location: LCCOMB_X26_Y14_N26
\C1|LessThan283~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~19_cout\ = CARRY((\C1|Add0~16_combout\ & (\C1|Add9~18_combout\ & !\C1|LessThan283~17_cout\)) # (!\C1|Add0~16_combout\ & ((\C1|Add9~18_combout\) # (!\C1|LessThan283~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add9~18_combout\,
	datad => VCC,
	cin => \C1|LessThan283~17_cout\,
	cout => \C1|LessThan283~19_cout\);

-- Location: LCCOMB_X26_Y14_N28
\C1|LessThan283~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan283~20_combout\ = (\C1|Add0~18_combout\ & ((\C1|Add9~20_combout\) # (!\C1|LessThan283~19_cout\))) # (!\C1|Add0~18_combout\ & (!\C1|LessThan283~19_cout\ & \C1|Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~18_combout\,
	datad => \C1|Add9~20_combout\,
	cin => \C1|LessThan283~19_cout\,
	combout => \C1|LessThan283~20_combout\);

-- Location: LCCOMB_X25_Y14_N26
\C1|contatoB2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|contatoB2~0_combout\ = (\C1|Add9~20_combout\ & (\C1|LessThan282~18_combout\ & \C1|LessThan283~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~20_combout\,
	datac => \C1|LessThan282~18_combout\,
	datad => \C1|LessThan283~20_combout\,
	combout => \C1|contatoB2~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\C1|LessThan214~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~1_cout\ = CARRY((\C1|SQ_Y2\(1) & \C1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|LessThan214~1_cout\);

-- Location: LCCOMB_X19_Y13_N14
\C1|LessThan214~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~3_cout\ = CARRY((\C1|SQ_Y2\(2) & (!\C1|Add1~2_combout\ & !\C1|LessThan214~1_cout\)) # (!\C1|SQ_Y2\(2) & ((!\C1|LessThan214~1_cout\) # (!\C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan214~1_cout\,
	cout => \C1|LessThan214~3_cout\);

-- Location: LCCOMB_X19_Y13_N16
\C1|LessThan214~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~5_cout\ = CARRY((\C1|Add1~4_combout\ & ((\C1|SQ_Y2\(3)) # (!\C1|LessThan214~3_cout\))) # (!\C1|Add1~4_combout\ & (\C1|SQ_Y2\(3) & !\C1|LessThan214~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan214~3_cout\,
	cout => \C1|LessThan214~5_cout\);

-- Location: LCCOMB_X19_Y13_N18
\C1|LessThan214~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~7_cout\ = CARRY((\C1|Add1~6_combout\ & (\C1|SQ_Y2\(4) & !\C1|LessThan214~5_cout\)) # (!\C1|Add1~6_combout\ & ((\C1|SQ_Y2\(4)) # (!\C1|LessThan214~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|LessThan214~5_cout\,
	cout => \C1|LessThan214~7_cout\);

-- Location: LCCOMB_X19_Y13_N20
\C1|LessThan214~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~9_cout\ = CARRY((\C1|SQ_Y2\(5) & (\C1|Add1~8_combout\ & !\C1|LessThan214~7_cout\)) # (!\C1|SQ_Y2\(5) & ((\C1|Add1~8_combout\) # (!\C1|LessThan214~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|Add1~8_combout\,
	datad => VCC,
	cin => \C1|LessThan214~7_cout\,
	cout => \C1|LessThan214~9_cout\);

-- Location: LCCOMB_X19_Y13_N22
\C1|LessThan214~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~11_cout\ = CARRY((\C1|Add1~10_combout\ & (\C1|SQ_Y2\(6) & !\C1|LessThan214~9_cout\)) # (!\C1|Add1~10_combout\ & ((\C1|SQ_Y2\(6)) # (!\C1|LessThan214~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|LessThan214~9_cout\,
	cout => \C1|LessThan214~11_cout\);

-- Location: LCCOMB_X19_Y13_N24
\C1|LessThan214~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~13_cout\ = CARRY((\C1|Add1~12_combout\ & ((\C1|SQ_Y2\(7)) # (!\C1|LessThan214~11_cout\))) # (!\C1|Add1~12_combout\ & (\C1|SQ_Y2\(7) & !\C1|LessThan214~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan214~11_cout\,
	cout => \C1|LessThan214~13_cout\);

-- Location: LCCOMB_X19_Y13_N26
\C1|LessThan214~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~15_cout\ = CARRY((\C1|Add1~14_combout\ & (!\C1|SQ_Y2\(8) & !\C1|LessThan214~13_cout\)) # (!\C1|Add1~14_combout\ & ((!\C1|LessThan214~13_cout\) # (!\C1|SQ_Y2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|LessThan214~13_cout\,
	cout => \C1|LessThan214~15_cout\);

-- Location: LCCOMB_X19_Y13_N28
\C1|LessThan214~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~17_cout\ = CARRY((\C1|Add1~16_combout\ & ((\C1|SQ_Y2\(9)) # (!\C1|LessThan214~15_cout\))) # (!\C1|Add1~16_combout\ & (\C1|SQ_Y2\(9) & !\C1|LessThan214~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|LessThan214~15_cout\,
	cout => \C1|LessThan214~17_cout\);

-- Location: LCCOMB_X19_Y13_N30
\C1|LessThan214~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~18_combout\ = (\C1|SQ_Y2\(10) & (\C1|LessThan214~17_cout\ & \C1|Add1~18_combout\)) # (!\C1|SQ_Y2\(10) & ((\C1|LessThan214~17_cout\) # (\C1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datad => \C1|Add1~18_combout\,
	cin => \C1|LessThan214~17_cout\,
	combout => \C1|LessThan214~18_combout\);

-- Location: LCCOMB_X24_Y14_N24
\C1|process_0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~15_combout\ = (!\KEY~combout\(1) & ((\C1|LessThan213~18_combout\) # ((!\C1|LessThan214~18_combout\) # (!\C1|contatoB2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \C1|LessThan213~18_combout\,
	datac => \C1|contatoB2~0_combout\,
	datad => \C1|LessThan214~18_combout\,
	combout => \C1|process_0~15_combout\);

-- Location: LCCOMB_X24_Y14_N26
\C1|process_0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~14_combout\ = ((!\C1|contatoD2~0_combout\ & ((\C1|LessThan213~18_combout\) # (!\C1|Add1~20_combout\)))) # (!\C1|contatoB2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan213~18_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|contatoB2~0_combout\,
	datad => \C1|contatoD2~0_combout\,
	combout => \C1|process_0~14_combout\);

-- Location: LCCOMB_X24_Y14_N8
\C1|process_0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~24_combout\ = (\C1|process_0~15_combout\ & (\C1|process_0~14_combout\ & ((\C1|SQ_X2\(9)) # (\C1|process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|process_0~23_combout\,
	datac => \C1|process_0~15_combout\,
	datad => \C1|process_0~14_combout\,
	combout => \C1|process_0~24_combout\);

-- Location: LCCOMB_X25_Y17_N10
\C1|LessThan262~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~2_combout\ = (\C1|LessThan262~1_combout\ & (!\C1|Add13~10_combout\ & (\C1|LessThan262~0_combout\ & !\C1|Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan262~1_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|LessThan262~0_combout\,
	datad => \C1|Add13~18_combout\,
	combout => \C1|LessThan262~2_combout\);

-- Location: LCCOMB_X27_Y17_N30
\C1|DRAWMAP~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~54_combout\ = (\C1|Add9~20_combout\ & (!\C1|Add9~14_combout\ & (\C1|Add9~16_combout\ & !\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|DRAWMAP~54_combout\);

-- Location: LCCOMB_X27_Y15_N16
\C1|DRAWMAP~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~58_combout\ = (!\C1|Add9~10_combout\ & !\C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~10_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|DRAWMAP~58_combout\);

-- Location: LCCOMB_X23_Y17_N14
\C1|LessThan299~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan299~0_combout\ = (\C1|Add9~12_combout\ & ((\C1|LessThan307~0_combout\) # ((\C1|Add9~6_combout\) # (!\C1|DRAWMAP~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan307~0_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|DRAWMAP~58_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan299~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\C1|LessThan297~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan297~1_combout\ = (\C1|Add9~4_combout\ & (\C1|Add9~0_combout\ & (\C1|Add9~6_combout\ & \C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan297~1_combout\);

-- Location: LCCOMB_X23_Y17_N18
\C1|LessThan297~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan297~2_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~10_combout\) # ((\C1|Add9~8_combout\) # (\C1|LessThan297~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|LessThan297~1_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan297~2_combout\);

-- Location: LCCOMB_X23_Y17_N12
\C1|DRAWMAP~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~78_combout\ = (\C1|DRAWMAP~54_combout\ & (\C1|LessThan299~0_combout\ & !\C1|LessThan297~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~54_combout\,
	datac => \C1|LessThan299~0_combout\,
	datad => \C1|LessThan297~2_combout\,
	combout => \C1|DRAWMAP~78_combout\);

-- Location: LCCOMB_X26_Y16_N2
\C1|LessThan303~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan303~2_combout\ = (!\C1|Add9~4_combout\ & (!\C1|Add9~0_combout\ & !\C1|Add9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~4_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan303~2_combout\);

-- Location: LCCOMB_X26_Y16_N4
\C1|LessThan295~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan295~0_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~10_combout\) # ((\C1|LessThan285~1_combout\ & !\C1|LessThan303~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan285~1_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|LessThan303~2_combout\,
	combout => \C1|LessThan295~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\C1|DRAWMAP~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~120_combout\ = (\C1|LessThan297~2_combout\ & (!\C1|LessThan295~0_combout\ & (\C1|DRAWMAP~54_combout\ & !\C1|dMap~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan297~2_combout\,
	datab => \C1|LessThan295~0_combout\,
	datac => \C1|DRAWMAP~54_combout\,
	datad => \C1|dMap~186_combout\,
	combout => \C1|DRAWMAP~120_combout\);

-- Location: LCCOMB_X26_Y16_N26
\C1|LessThan304~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan304~0_combout\ = (!\C1|Add9~4_combout\ & ((!\C1|Add9~2_combout\) # (!\C1|Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~4_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan304~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\C1|LessThan301~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan301~0_combout\ = (\C1|Add9~10_combout\ & (\C1|Add9~8_combout\ & (\C1|Add9~6_combout\ & !\C1|LessThan304~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|LessThan304~0_combout\,
	combout => \C1|LessThan301~0_combout\);

-- Location: LCCOMB_X23_Y17_N2
\C1|DRAWMAP~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~76_combout\ = (\C1|LessThan303~1_combout\ & (\C1|DRAWMAP~54_combout\ & (!\C1|Add9~12_combout\ & !\C1|LessThan301~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan303~1_combout\,
	datab => \C1|DRAWMAP~54_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|LessThan301~0_combout\,
	combout => \C1|DRAWMAP~76_combout\);

-- Location: LCCOMB_X23_Y17_N8
\C1|DRAWMAP~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~75_combout\ = (\C1|DRAWMAP~54_combout\ & (!\C1|LessThan299~0_combout\ & ((\C1|Add9~12_combout\) # (\C1|LessThan301~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|DRAWMAP~54_combout\,
	datac => \C1|LessThan299~0_combout\,
	datad => \C1|LessThan301~0_combout\,
	combout => \C1|DRAWMAP~75_combout\);

-- Location: LCCOMB_X27_Y18_N28
\C1|LessThan217~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~22_combout\ = (!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|LessThan217~22_combout\);

-- Location: LCCOMB_X26_Y18_N24
\C1|dMap~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~187_combout\ = (\C1|Add13~6_combout\) # ((\C1|SQ_Y2\(3) & ((!\C1|SQ_Y2\(2)))) # (!\C1|SQ_Y2\(3) & (\C1|Add13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~187_combout\);

-- Location: LCCOMB_X26_Y18_N18
\C1|dMap~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~188_combout\ = ((\C1|Add13~8_combout\ & ((\C1|LessThan217~22_combout\) # (!\C1|dMap~175_combout\)))) # (!\C1|dMap~187_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|LessThan217~22_combout\,
	datac => \C1|dMap~187_combout\,
	datad => \C1|dMap~175_combout\,
	combout => \C1|dMap~188_combout\);

-- Location: LCCOMB_X26_Y18_N20
\C1|dMap~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~189_combout\ = (\C1|Add13~10_combout\) # ((\C1|dMap~188_combout\) # ((!\C1|dMap~173_combout\) # (!\C1|Add13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|dMap~188_combout\,
	datac => \C1|Add13~12_combout\,
	datad => \C1|dMap~173_combout\,
	combout => \C1|dMap~189_combout\);

-- Location: LCCOMB_X25_Y17_N28
\C1|esqQ2X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~4_combout\ = (\C1|dMap~191_combout\ & (((\C1|DRAWMAP~75_combout\ & !\C1|dMap~189_combout\)))) # (!\C1|dMap~191_combout\ & ((\C1|DRAWMAP~76_combout\) # ((\C1|DRAWMAP~75_combout\ & !\C1|dMap~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~191_combout\,
	datab => \C1|DRAWMAP~76_combout\,
	datac => \C1|DRAWMAP~75_combout\,
	datad => \C1|dMap~189_combout\,
	combout => \C1|esqQ2X2~4_combout\);

-- Location: LCCOMB_X25_Y17_N30
\C1|esqQ2X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~5_combout\ = (\C1|DRAWMAP~120_combout\) # ((\C1|esqQ2X2~4_combout\) # ((!\C1|dMap~193_combout\ & \C1|DRAWMAP~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~193_combout\,
	datab => \C1|DRAWMAP~78_combout\,
	datac => \C1|DRAWMAP~120_combout\,
	datad => \C1|esqQ2X2~4_combout\,
	combout => \C1|esqQ2X2~5_combout\);

-- Location: LCCOMB_X26_Y16_N22
\C1|LessThan302~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan302~0_combout\ = (!\C1|Add9~6_combout\ & !\C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|LessThan302~0_combout\);

-- Location: LCCOMB_X26_Y16_N8
\C1|LessThan293~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan293~0_combout\ = (\C1|Add9~10_combout\ & (\C1|Add9~12_combout\ & ((!\C1|LessThan302~0_combout\) # (!\C1|LessThan304~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan304~0_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|LessThan302~0_combout\,
	combout => \C1|LessThan293~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\C1|DRAWMAP~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~69_combout\ = (\C1|Add9~20_combout\ & (!\C1|Add9~18_combout\ & \C1|Add9~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~69_combout\);

-- Location: LCCOMB_X26_Y16_N20
\C1|DRAWMAP~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~71_combout\ = (\C1|DRAWMAP~69_combout\ & ((\C1|Add9~14_combout\ & (!\C1|DRAWMAP~70_combout\)) # (!\C1|Add9~14_combout\ & ((\C1|LessThan293~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~70_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|LessThan293~0_combout\,
	datad => \C1|DRAWMAP~69_combout\,
	combout => \C1|DRAWMAP~71_combout\);

-- Location: LCCOMB_X26_Y16_N24
\C1|DRAWMAP~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~63_combout\ = (\C1|Add9~12_combout\) # ((\C1|Add9~10_combout\ & \C1|Add9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~12_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|DRAWMAP~63_combout\);

-- Location: LCCOMB_X26_Y16_N28
\C1|DRAWMAP~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~64_combout\ = (\C1|DRAWMAP~63_combout\) # ((\C1|Add9~6_combout\ & (\C1|Add9~10_combout\ & !\C1|LessThan304~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|DRAWMAP~63_combout\,
	datad => \C1|LessThan304~0_combout\,
	combout => \C1|DRAWMAP~64_combout\);

-- Location: LCCOMB_X26_Y16_N16
\C1|LessThan307~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan307~2_combout\ = (\C1|Add9~18_combout\ & \C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|LessThan307~2_combout\);

-- Location: LCCOMB_X27_Y17_N28
\C1|LessThan297~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan297~0_combout\ = (\C1|Add9~0_combout\ & (\C1|Add9~4_combout\ & \C1|Add9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan297~0_combout\);

-- Location: LCCOMB_X27_Y15_N4
\C1|LessThan308~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan308~0_combout\ = ((!\C1|Add9~6_combout\ & (!\C1|LessThan297~0_combout\ & !\C1|Add9~8_combout\))) # (!\C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|LessThan297~0_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|LessThan308~0_combout\);

-- Location: LCCOMB_X26_Y16_N18
\C1|DRAWMAP~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~66_combout\ = (!\C1|Add9~16_combout\ & (!\C1|Add9~12_combout\ & (\C1|LessThan307~2_combout\ & \C1|LessThan308~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|LessThan307~2_combout\,
	datad => \C1|LessThan308~0_combout\,
	combout => \C1|DRAWMAP~66_combout\);

-- Location: LCCOMB_X26_Y16_N0
\C1|DRAWMAP~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~67_combout\ = (\C1|DRAWMAP~65_combout\ & ((\C1|DRAWMAP~64_combout\) # ((\C1|Add9~14_combout\ & \C1|DRAWMAP~66_combout\)))) # (!\C1|DRAWMAP~65_combout\ & (((\C1|Add9~14_combout\ & \C1|DRAWMAP~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~65_combout\,
	datab => \C1|DRAWMAP~64_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|DRAWMAP~66_combout\,
	combout => \C1|DRAWMAP~67_combout\);

-- Location: LCCOMB_X26_Y16_N14
\C1|DRAWMAP~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~83_combout\ = (!\C1|LessThan293~0_combout\ & (\C1|LessThan295~0_combout\ & \C1|DRAWMAP~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan293~0_combout\,
	datac => \C1|LessThan295~0_combout\,
	datad => \C1|DRAWMAP~54_combout\,
	combout => \C1|DRAWMAP~83_combout\);

-- Location: LCCOMB_X25_Y16_N20
\C1|esqQ2X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~0_combout\ = (!\C1|DRAWMAP~71_combout\ & (!\C1|DRAWMAP~67_combout\ & !\C1|DRAWMAP~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~71_combout\,
	datac => \C1|DRAWMAP~67_combout\,
	datad => \C1|DRAWMAP~83_combout\,
	combout => \C1|esqQ2X2~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\C1|esqQ2X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~1_combout\ = (!\C1|dMap~174_combout\ & ((\C1|DRAWMAP~130_combout\) # (!\C1|esqQ2X2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~130_combout\,
	datac => \C1|esqQ2X2~0_combout\,
	datad => \C1|dMap~174_combout\,
	combout => \C1|esqQ2X2~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\C1|DRAWMAP~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~84_combout\ = (!\C1|Add9~14_combout\ & \C1|Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~84_combout\);

-- Location: LCCOMB_X27_Y17_N26
\C1|LessThan307~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan307~0_combout\ = (\C1|Add9~4_combout\ & ((\C1|Add9~0_combout\) # (\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan307~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\C1|LessThan286~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan286~0_combout\ = ((!\C1|Add9~8_combout\ & (!\C1|Add9~6_combout\ & !\C1|LessThan307~0_combout\))) # (!\C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|LessThan307~0_combout\,
	datad => \C1|Add9~10_combout\,
	combout => \C1|LessThan286~0_combout\);

-- Location: LCCOMB_X27_Y15_N20
\C1|LessThan288~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan288~0_combout\ = ((\C1|DRAWMAP~58_combout\ & ((!\C1|Add9~4_combout\) # (!\C1|Add9~6_combout\)))) # (!\C1|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|DRAWMAP~58_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan288~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\C1|DRAWMAP~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~85_combout\ = (\C1|DRAWMAP~84_combout\ & (\C1|LessThan288~0_combout\ & ((!\C1|LessThan286~0_combout\) # (!\C1|LessThan287~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan287~0_combout\,
	datab => \C1|DRAWMAP~84_combout\,
	datac => \C1|LessThan286~0_combout\,
	datad => \C1|LessThan288~0_combout\,
	combout => \C1|DRAWMAP~85_combout\);

-- Location: LCCOMB_X24_Y17_N8
\C1|DRAWMAP~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~132_combout\ = (\C1|Add9~20_combout\ & (\C1|DRAWMAP~85_combout\ & (\C1|Add9~18_combout\ & !\C1|dMap~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datab => \C1|DRAWMAP~85_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|dMap~182_combout\,
	combout => \C1|DRAWMAP~132_combout\);

-- Location: LCCOMB_X27_Y15_N0
\C1|DRAWMAP~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~56_combout\ = (\C1|Add9~20_combout\ & ((\C1|Add9~16_combout\) # (\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|DRAWMAP~56_combout\);

-- Location: LCCOMB_X27_Y17_N2
\C1|LessThan303~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan303~0_combout\ = (\C1|Add9~2_combout\) # ((\C1|Add9~0_combout\) # ((\C1|Add9~4_combout\) # (\C1|Add9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan303~0_combout\);

-- Location: LCCOMB_X27_Y17_N0
\C1|LessThan303~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan303~1_combout\ = (\C1|Add9~8_combout\ & (\C1|Add9~10_combout\ & \C1|LessThan303~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan303~0_combout\,
	combout => \C1|LessThan303~1_combout\);

-- Location: LCCOMB_X27_Y15_N14
\C1|DRAWMAP~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~55_combout\ = (!\C1|Add9~12_combout\ & (\C1|DRAWMAP~54_combout\ & !\C1|LessThan303~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datac => \C1|DRAWMAP~54_combout\,
	datad => \C1|LessThan303~1_combout\,
	combout => \C1|DRAWMAP~55_combout\);

-- Location: LCCOMB_X24_Y17_N20
\C1|LessThan287~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan287~0_combout\ = (!\C1|Add9~14_combout\ & !\C1|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan287~0_combout\);

-- Location: LCCOMB_X27_Y15_N30
\C1|DRAWMAP~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~57_combout\ = (\C1|Add9~14_combout\ & (\C1|Add9~12_combout\ & \C1|Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~57_combout\);

-- Location: LCCOMB_X27_Y15_N18
\C1|LessThan307~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan307~1_combout\ = (\C1|DRAWMAP~57_combout\ & (((\C1|Add9~6_combout\ & \C1|LessThan307~0_combout\)) # (!\C1|DRAWMAP~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~58_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|LessThan307~0_combout\,
	datad => \C1|DRAWMAP~57_combout\,
	combout => \C1|LessThan307~1_combout\);

-- Location: LCCOMB_X27_Y15_N12
\C1|DRAWMAP~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~59_combout\ = (\C1|DRAWMAP~56_combout\ & (!\C1|Add9~18_combout\ & (\C1|LessThan287~0_combout\))) # (!\C1|DRAWMAP~56_combout\ & (((\C1|LessThan307~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~18_combout\,
	datab => \C1|DRAWMAP~56_combout\,
	datac => \C1|LessThan287~0_combout\,
	datad => \C1|LessThan307~1_combout\,
	combout => \C1|DRAWMAP~59_combout\);

-- Location: LCCOMB_X27_Y15_N26
\C1|DRAWMAP~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~60_combout\ = (\C1|LessThan308~0_combout\ & (((\C1|DRAWMAP~59_combout\)))) # (!\C1|LessThan308~0_combout\ & ((\C1|DRAWMAP~55_combout\) # ((!\C1|DRAWMAP~56_combout\ & \C1|DRAWMAP~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan308~0_combout\,
	datab => \C1|DRAWMAP~56_combout\,
	datac => \C1|DRAWMAP~55_combout\,
	datad => \C1|DRAWMAP~59_combout\,
	combout => \C1|DRAWMAP~60_combout\);

-- Location: LCCOMB_X24_Y17_N28
\C1|esqQ2X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~2_combout\ = (\C1|DRAWMAP~62_combout\ & (((!\C1|dMap~177_combout\ & \C1|DRAWMAP~60_combout\)) # (!\C1|dMap~180_combout\))) # (!\C1|DRAWMAP~62_combout\ & (!\C1|dMap~177_combout\ & (\C1|DRAWMAP~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~62_combout\,
	datab => \C1|dMap~177_combout\,
	datac => \C1|DRAWMAP~60_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|esqQ2X2~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\C1|esqQ2X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~3_combout\ = (\C1|DRAWMAP~132_combout\) # ((\C1|esqQ2X2~2_combout\) # ((\C1|dMap~108_combout\ & !\C1|dMap~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~108_combout\,
	datab => \C1|DRAWMAP~132_combout\,
	datac => \C1|dMap~183_combout\,
	datad => \C1|esqQ2X2~2_combout\,
	combout => \C1|esqQ2X2~3_combout\);

-- Location: LCCOMB_X24_Y17_N12
\C1|esqQ2X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~6_combout\ = (\C1|LessThan263~0_combout\) # ((\C1|esqQ2X2~5_combout\) # ((\C1|esqQ2X2~1_combout\) # (\C1|esqQ2X2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan263~0_combout\,
	datab => \C1|esqQ2X2~5_combout\,
	datac => \C1|esqQ2X2~1_combout\,
	datad => \C1|esqQ2X2~3_combout\,
	combout => \C1|esqQ2X2~6_combout\);

-- Location: LCCOMB_X24_Y17_N10
\C1|process_0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~16_combout\ = (!\C1|LessThan284~0_combout\ & ((\C1|Add13~20_combout\) # ((!\C1|LessThan262~2_combout\ & \C1|esqQ2X2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|LessThan262~2_combout\,
	datac => \C1|LessThan284~0_combout\,
	datad => \C1|esqQ2X2~6_combout\,
	combout => \C1|process_0~16_combout\);

-- Location: LCCOMB_X24_Y17_N4
\C1|process_0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~17_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|process_0~24_combout\ & ((!\C1|process_0~16_combout\) # (!\C1|Add13~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add13~22_combout\,
	datac => \C1|process_0~24_combout\,
	datad => \C1|process_0~16_combout\,
	combout => \C1|process_0~17_combout\);

-- Location: LCCOMB_X29_Y17_N24
\C1|Add28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add28~18_combout\ = \C1|SQ_X2\(10) $ (\C1|Add28~17\ $ (\C1|process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datad => \C1|process_0~17_combout\,
	cin => \C1|Add28~17\,
	combout => \C1|Add28~18_combout\);

-- Location: LCFF_X29_Y17_N25
\C1|SQ_X2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add28~18_combout\,
	ena => \C1|SQ_X2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(10));

-- Location: LCCOMB_X27_Y17_N24
\C1|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~20_combout\ = !\C1|Add9~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add9~19\,
	combout => \C1|Add9~20_combout\);

-- Location: LCCOMB_X24_Y17_N22
\C1|DRAWMAP~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~53_combout\ = (!\C1|Add9~18_combout\ & !\C1|Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~53_combout\);

-- Location: LCCOMB_X24_Y17_N24
\C1|LessThan284~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan284~0_combout\ = ((\C1|DRAWMAP~53_combout\ & ((\C1|LessThan288~0_combout\) # (!\C1|Add9~14_combout\)))) # (!\C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan288~0_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|DRAWMAP~53_combout\,
	combout => \C1|LessThan284~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\C1|dMap~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~130_combout\ = (\C1|SQ_Y2\(4) & (((!\C1|SQ_Y2\(1) & !\C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~130_combout\);

-- Location: LCCOMB_X21_Y17_N10
\C1|dMap~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~118_combout\ = (!\C1|SQ_Y2\(9) & (!\C1|SQ_Y2\(8) & (!\C1|SQ_Y2\(10) & !\C1|SQ_Y2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(8),
	datac => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~118_combout\);

-- Location: LCCOMB_X22_Y17_N22
\C1|dMap~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~131_combout\ = (\C1|SQ_Y2\(6)) # (((\C1|dMap~130_combout\) # (!\C1|dMap~118_combout\)) # (!\C1|SQ_Y2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~130_combout\,
	datad => \C1|dMap~118_combout\,
	combout => \C1|dMap~131_combout\);

-- Location: LCCOMB_X20_Y17_N22
\C1|dMap~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~123_combout\ = (!\C1|SQ_Y2\(5) & (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(2)) # (\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(4),
	combout => \C1|dMap~123_combout\);

-- Location: LCCOMB_X21_Y17_N4
\C1|dMap~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~111_combout\ = (!\C1|SQ_Y2\(4) & \C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~111_combout\);

-- Location: LCCOMB_X20_Y17_N0
\C1|dMap~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~124_combout\ = (\C1|SQ_Y2\(5) & (((!\C1|dMap~111_combout\) # (!\C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|dMap~111_combout\,
	combout => \C1|dMap~124_combout\);

-- Location: LCCOMB_X20_Y17_N18
\C1|dMap~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~125_combout\ = (\C1|SQ_Y2\(6)) # ((\C1|dMap~123_combout\) # ((\C1|dMap~124_combout\) # (!\C1|dMap~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|dMap~123_combout\,
	datac => \C1|dMap~118_combout\,
	datad => \C1|dMap~124_combout\,
	combout => \C1|dMap~125_combout\);

-- Location: LCCOMB_X22_Y17_N30
\C1|DRAWMAP~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~77_combout\ = (\C1|dMap~129_combout\ & (\C1|DRAWMAP~75_combout\ & (!\C1|dMap~125_combout\))) # (!\C1|dMap~129_combout\ & ((\C1|DRAWMAP~76_combout\) # ((\C1|DRAWMAP~75_combout\ & !\C1|dMap~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~129_combout\,
	datab => \C1|DRAWMAP~75_combout\,
	datac => \C1|dMap~125_combout\,
	datad => \C1|DRAWMAP~76_combout\,
	combout => \C1|DRAWMAP~77_combout\);

-- Location: LCCOMB_X21_Y17_N0
\C1|LessThan233~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan233~0_combout\ = (!\C1|SQ_Y2\(5) & ((\C1|SQ_Y2\(2)) # ((\C1|SQ_Y2\(3)) # (!\C1|SQ_Y2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|LessThan233~0_combout\);

-- Location: LCCOMB_X21_Y17_N8
\C1|dMap~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~119_combout\ = (((\C1|dMap~111_combout\) # (!\C1|dMap~118_combout\)) # (!\C1|LessThan233~0_combout\)) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|LessThan233~0_combout\,
	datac => \C1|dMap~111_combout\,
	datad => \C1|dMap~118_combout\,
	combout => \C1|dMap~119_combout\);

-- Location: LCCOMB_X20_Y17_N16
\C1|LessThan215~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan215~2_combout\ = (\C1|SQ_Y2\(9) & (\C1|SQ_Y2\(7) & \C1|SQ_Y2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datac => \C1|SQ_Y2\(7),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|LessThan215~2_combout\);

-- Location: LCCOMB_X21_Y17_N18
\C1|LessThan223~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan223~0_combout\ = ((!\C1|SQ_Y2\(5) & (\C1|dMap~111_combout\ & !\C1|LessThan218~0_combout\))) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~111_combout\,
	datad => \C1|LessThan218~0_combout\,
	combout => \C1|LessThan223~0_combout\);

-- Location: LCCOMB_X21_Y17_N28
\C1|dMap~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~132_combout\ = (\C1|LessThan215~2_combout\ & (\C1|SQ_Y2\(10) & \C1|LessThan223~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan215~2_combout\,
	datac => \C1|SQ_Y2\(10),
	datad => \C1|LessThan223~0_combout\,
	combout => \C1|dMap~132_combout\);

-- Location: LCCOMB_X24_Y17_N26
\C1|DRAWMAP~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~86_combout\ = (\C1|LessThan217~23_combout\) # ((\C1|dMap~132_combout\ & (\C1|LessThan307~2_combout\ & \C1|DRAWMAP~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan217~23_combout\,
	datab => \C1|dMap~132_combout\,
	datac => \C1|LessThan307~2_combout\,
	datad => \C1|DRAWMAP~85_combout\,
	combout => \C1|DRAWMAP~86_combout\);

-- Location: LCCOMB_X27_Y15_N22
\C1|DRAWMAP~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~80_combout\ = (\C1|Add9~6_combout\ & ((\C1|Add9~4_combout\) # ((\C1|Add9~2_combout\ & \C1|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|DRAWMAP~80_combout\);

-- Location: LCCOMB_X27_Y15_N8
\C1|DRAWMAP~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~81_combout\ = (\C1|Add9~12_combout\ & (\C1|Add9~14_combout\)) # (!\C1|Add9~12_combout\ & (!\C1|Add9~14_combout\ & (\C1|DRAWMAP~58_combout\ & !\C1|DRAWMAP~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|DRAWMAP~58_combout\,
	datad => \C1|DRAWMAP~80_combout\,
	combout => \C1|DRAWMAP~81_combout\);

-- Location: LCCOMB_X27_Y15_N28
\C1|DRAWMAP~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~79_combout\ = (\C1|Add9~8_combout\) # ((\C1|Add9~10_combout\) # (\C1|LessThan303~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan303~0_combout\,
	combout => \C1|DRAWMAP~79_combout\);

-- Location: LCCOMB_X27_Y15_N10
\C1|DRAWMAP~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~82_combout\ = (\C1|DRAWMAP~81_combout\ & ((\C1|Add9~12_combout\ & (!\C1|Add9~16_combout\ & \C1|DRAWMAP~79_combout\)) # (!\C1|Add9~12_combout\ & (\C1|Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|DRAWMAP~81_combout\,
	datad => \C1|DRAWMAP~79_combout\,
	combout => \C1|DRAWMAP~82_combout\);

-- Location: LCCOMB_X24_Y17_N6
\C1|DRAWMAP~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~130_combout\ = (\C1|Add9~20_combout\ & (\C1|Add9~18_combout\ & \C1|DRAWMAP~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|DRAWMAP~82_combout\,
	combout => \C1|DRAWMAP~130_combout\);

-- Location: LCCOMB_X23_Y17_N10
\C1|DRAWMAP~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~87_combout\ = (\C1|DRAWMAP~86_combout\) # ((!\C1|dMap~119_combout\ & ((\C1|DRAWMAP~83_combout\) # (\C1|DRAWMAP~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~83_combout\,
	datab => \C1|dMap~119_combout\,
	datac => \C1|DRAWMAP~86_combout\,
	datad => \C1|DRAWMAP~130_combout\,
	combout => \C1|DRAWMAP~87_combout\);

-- Location: LCCOMB_X23_Y17_N4
\C1|DRAWMAP~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~88_combout\ = (\C1|DRAWMAP~77_combout\) # ((\C1|DRAWMAP~87_combout\) # ((\C1|DRAWMAP~78_combout\ & !\C1|dMap~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~78_combout\,
	datab => \C1|dMap~131_combout\,
	datac => \C1|DRAWMAP~77_combout\,
	datad => \C1|DRAWMAP~87_combout\,
	combout => \C1|DRAWMAP~88_combout\);

-- Location: LCCOMB_X20_Y17_N2
\C1|dMap~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~116_combout\ = (((\C1|SQ_Y2\(3) & !\C1|LessThan218~0_combout\)) # (!\C1|SQ_Y2\(4))) # (!\C1|SQ_Y2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|LessThan218~0_combout\,
	datad => \C1|SQ_Y2\(4),
	combout => \C1|dMap~116_combout\);

-- Location: LCCOMB_X20_Y17_N24
\C1|dMap~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~117_combout\ = (\C1|dMap~115_combout\) # ((\C1|SQ_Y2\(6) & (!\C1|LessThan233~0_combout\)) # (!\C1|SQ_Y2\(6) & ((\C1|dMap~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~115_combout\,
	datab => \C1|SQ_Y2\(6),
	datac => \C1|LessThan233~0_combout\,
	datad => \C1|dMap~116_combout\,
	combout => \C1|dMap~117_combout\);

-- Location: LCCOMB_X23_Y17_N22
\C1|DRAWMAP~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~68_combout\ = (\C1|DRAWMAP~62_combout\ & (((!\C1|dMap~119_combout\ & \C1|DRAWMAP~67_combout\)) # (!\C1|dMap~117_combout\))) # (!\C1|DRAWMAP~62_combout\ & (!\C1|dMap~119_combout\ & ((\C1|DRAWMAP~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~62_combout\,
	datab => \C1|dMap~119_combout\,
	datac => \C1|dMap~117_combout\,
	datad => \C1|DRAWMAP~67_combout\,
	combout => \C1|DRAWMAP~68_combout\);

-- Location: LCCOMB_X24_Y16_N0
\C1|DRAWMAP~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~72_combout\ = (\C1|DRAWMAP~54_combout\ & (\C1|LessThan297~2_combout\ & !\C1|LessThan295~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~54_combout\,
	datac => \C1|LessThan297~2_combout\,
	datad => \C1|LessThan295~0_combout\,
	combout => \C1|DRAWMAP~72_combout\);

-- Location: LCCOMB_X23_Y17_N20
\C1|DRAWMAP~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~73_combout\ = (\C1|dMap~122_combout\ & (!\C1|dMap~119_combout\ & (\C1|DRAWMAP~71_combout\))) # (!\C1|dMap~122_combout\ & ((\C1|DRAWMAP~72_combout\) # ((!\C1|dMap~119_combout\ & \C1|DRAWMAP~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~122_combout\,
	datab => \C1|dMap~119_combout\,
	datac => \C1|DRAWMAP~71_combout\,
	datad => \C1|DRAWMAP~72_combout\,
	combout => \C1|DRAWMAP~73_combout\);

-- Location: LCCOMB_X23_Y17_N16
\C1|LessThan310~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan310~0_combout\ = (\C1|Add9~6_combout\ & (\C1|Add9~8_combout\ & ((\C1|Add9~2_combout\) # (\C1|Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|LessThan310~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\C1|LessThan310~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan310~1_combout\ = (\C1|LessThan287~0_combout\ & (!\C1|Add9~18_combout\ & ((!\C1|LessThan310~0_combout\) # (!\C1|Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan287~0_combout\,
	datac => \C1|LessThan310~0_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|LessThan310~1_combout\);

-- Location: LCCOMB_X23_Y16_N28
\C1|LessThan309~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan309~0_combout\ = (\C1|Add9~10_combout\ & (\C1|Add9~12_combout\ & (\C1|LessThan310~0_combout\ & \C1|Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|LessThan310~0_combout\,
	datad => \C1|Add9~14_combout\,
	combout => \C1|LessThan309~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\C1|dMap~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~108_combout\ = (\C1|Add9~20_combout\ & ((\C1|DRAWMAP~53_combout\ & ((\C1|LessThan309~0_combout\))) # (!\C1|DRAWMAP~53_combout\ & (\C1|LessThan310~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~53_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|LessThan310~1_combout\,
	datad => \C1|LessThan309~0_combout\,
	combout => \C1|dMap~108_combout\);

-- Location: LCCOMB_X21_Y17_N6
\C1|dMap~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~110_combout\ = (!\C1|SQ_Y2\(9) & (!\C1|SQ_Y2\(8) & (!\C1|SQ_Y2\(10) & \C1|SQ_Y2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(8),
	datac => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~110_combout\);

-- Location: LCCOMB_X21_Y17_N30
\C1|dMap~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~112_combout\ = (\C1|SQ_Y2\(5) & (\C1|dMap~110_combout\ & ((!\C1|dMap~111_combout\) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~111_combout\,
	datad => \C1|dMap~110_combout\,
	combout => \C1|dMap~112_combout\);

-- Location: LCCOMB_X22_Y17_N0
\C1|dMap~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~109_combout\ = (\C1|SQ_Y2\(4) & !\C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(3),
	combout => \C1|dMap~109_combout\);

-- Location: LCCOMB_X22_Y17_N2
\C1|dMap~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~113_combout\ = (\C1|SQ_Y2\(6)) # (((!\C1|SQ_Y2\(2) & \C1|dMap~109_combout\)) # (!\C1|dMap~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|dMap~112_combout\,
	datad => \C1|dMap~109_combout\,
	combout => \C1|dMap~113_combout\);

-- Location: LCCOMB_X23_Y17_N26
\C1|DRAWMAP~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~61_combout\ = (\C1|dMap~114_combout\ & (\C1|dMap~108_combout\ & ((!\C1|dMap~113_combout\)))) # (!\C1|dMap~114_combout\ & ((\C1|DRAWMAP~60_combout\) # ((\C1|dMap~108_combout\ & !\C1|dMap~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~114_combout\,
	datab => \C1|dMap~108_combout\,
	datac => \C1|DRAWMAP~60_combout\,
	datad => \C1|dMap~113_combout\,
	combout => \C1|DRAWMAP~61_combout\);

-- Location: LCCOMB_X23_Y17_N6
\C1|DRAWMAP~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~74_combout\ = (\C1|DRAWMAP~68_combout\) # ((\C1|DRAWMAP~73_combout\) # (\C1|DRAWMAP~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~68_combout\,
	datac => \C1|DRAWMAP~73_combout\,
	datad => \C1|DRAWMAP~61_combout\,
	combout => \C1|DRAWMAP~74_combout\);

-- Location: LCCOMB_X23_Y17_N30
\C1|esqQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~0_combout\ = (!\C1|LessThan215~1_combout\ & (!\C1|LessThan284~0_combout\ & ((\C1|DRAWMAP~88_combout\) # (\C1|DRAWMAP~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan215~1_combout\,
	datab => \C1|LessThan284~0_combout\,
	datac => \C1|DRAWMAP~88_combout\,
	datad => \C1|DRAWMAP~74_combout\,
	combout => \C1|esqQ2X1~0_combout\);

-- Location: LCCOMB_X29_Y18_N2
\C1|LessThan216~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~0_combout\ = (!\C1|Add2~10_combout\ & (\C1|LessThan225~0_combout\ & ((\C1|LessThan225~2_combout\) # (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan225~2_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan225~0_combout\,
	combout => \C1|LessThan216~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\C1|LessThan217~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~6_combout\ = (!\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(4) & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan217~6_combout\);

-- Location: LCCOMB_X23_Y18_N28
\C1|LessThan217~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~3_combout\ = (((\C1|LessThan217~6_combout\) # (!\C1|SQ_Y2\(7))) # (!\C1|SQ_Y2\(8))) # (!\C1|SQ_Y2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(8),
	datac => \C1|SQ_Y2\(7),
	datad => \C1|LessThan217~6_combout\,
	combout => \C1|LessThan217~3_combout\);

-- Location: LCCOMB_X24_Y18_N8
\C1|LessThan217~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~23_combout\ = (\C1|SQ_Y2\(10) & ((\C1|SQ_Y2\(5)) # ((\C1|SQ_Y2\(6)) # (\C1|LessThan217~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(10),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|LessThan217~3_combout\,
	combout => \C1|LessThan217~23_combout\);

-- Location: LCCOMB_X22_Y17_N8
\C1|dMap~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~114_combout\ = (((\C1|dMap~109_combout\ & \C1|LessThan217~22_combout\)) # (!\C1|dMap~112_combout\)) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|dMap~109_combout\,
	datac => \C1|dMap~112_combout\,
	datad => \C1|LessThan217~22_combout\,
	combout => \C1|dMap~114_combout\);

-- Location: LCCOMB_X26_Y19_N20
\C1|dMap~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~142_combout\ = (\C1|LessThan252~2_combout\ & (!\C1|LessThan250~2_combout\ & !\C1|dMap~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan252~2_combout\,
	datac => \C1|LessThan250~2_combout\,
	datad => \C1|dMap~114_combout\,
	combout => \C1|dMap~142_combout\);

-- Location: LCCOMB_X29_Y18_N20
\C1|LessThan227~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan227~2_combout\ = (\C1|LessThan227~1_combout\ & (\C1|LessThan225~1_combout\ & (!\C1|Add2~14_combout\ & \C1|LessThan227~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan227~1_combout\,
	datab => \C1|LessThan225~1_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan227~0_combout\,
	combout => \C1|LessThan227~2_combout\);

-- Location: LCCOMB_X29_Y18_N26
\C1|LessThan226~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan226~0_combout\ = (\C1|LessThan260~3_combout\ & (\C1|Add2~12_combout\ & ((\C1|LessThan250~0_combout\) # (!\C1|LessThan225~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan250~0_combout\,
	datab => \C1|LessThan225~1_combout\,
	datac => \C1|LessThan260~3_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan226~0_combout\);

-- Location: LCCOMB_X29_Y18_N24
\C1|dMap~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~143_combout\ = (\C1|LessThan225~3_combout\ & (\C1|LessThan227~2_combout\)) # (!\C1|LessThan225~3_combout\ & ((\C1|LessThan226~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan225~3_combout\,
	datac => \C1|LessThan227~2_combout\,
	datad => \C1|LessThan226~0_combout\,
	combout => \C1|dMap~143_combout\);

-- Location: LCCOMB_X26_Y19_N14
\C1|DRAWMAP~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~99_combout\ = (\C1|LessThan217~23_combout\) # ((\C1|dMap~142_combout\) # ((!\C1|dMap~119_combout\ & \C1|dMap~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~119_combout\,
	datab => \C1|LessThan217~23_combout\,
	datac => \C1|dMap~142_combout\,
	datad => \C1|dMap~143_combout\,
	combout => \C1|DRAWMAP~99_combout\);

-- Location: LCCOMB_X29_Y19_N28
\C1|dMap~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~144_combout\ = (!\C1|LessThan246~2_combout\ & \C1|LessThan250~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan246~2_combout\,
	datac => \C1|LessThan250~2_combout\,
	combout => \C1|dMap~144_combout\);

-- Location: LCCOMB_X29_Y19_N26
\C1|LessThan242~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan242~0_combout\ = (\C1|LessThan246~0_combout\ & ((\C1|LessThan318~0_combout\) # ((\C1|Add2~4_combout\) # (!\C1|LessThan247~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan318~0_combout\,
	datab => \C1|LessThan247~0_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|LessThan246~0_combout\,
	combout => \C1|LessThan242~0_combout\);

-- Location: LCCOMB_X29_Y19_N6
\C1|LessThan238~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan238~1_combout\ = (\C1|LessThan246~0_combout\ & (((\C1|LessThan238~0_combout\ & \C1|Add2~0_combout\)) # (!\C1|LessThan225~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan246~0_combout\,
	datab => \C1|LessThan238~0_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|LessThan225~1_combout\,
	combout => \C1|LessThan238~1_combout\);

-- Location: LCCOMB_X29_Y19_N30
\C1|dMap~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~140_combout\ = (\C1|LessThan242~0_combout\ & (\C1|LessThan230~1_combout\ & !\C1|LessThan238~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan242~0_combout\,
	datac => \C1|LessThan230~1_combout\,
	datad => \C1|LessThan238~1_combout\,
	combout => \C1|dMap~140_combout\);

-- Location: LCCOMB_X26_Y19_N28
\C1|DRAWMAP~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~97_combout\ = (\C1|dMap~119_combout\ & (!\C1|dMap~131_combout\ & (\C1|dMap~140_combout\))) # (!\C1|dMap~119_combout\ & ((\C1|dMap~139_combout\) # ((!\C1|dMap~131_combout\ & \C1|dMap~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~119_combout\,
	datab => \C1|dMap~131_combout\,
	datac => \C1|dMap~140_combout\,
	datad => \C1|dMap~139_combout\,
	combout => \C1|DRAWMAP~97_combout\);

-- Location: LCCOMB_X26_Y19_N10
\C1|DRAWMAP~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~98_combout\ = (\C1|DRAWMAP~97_combout\) # ((!\C1|dMap~114_combout\ & \C1|dMap~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~114_combout\,
	datab => \C1|dMap~141_combout\,
	datad => \C1|DRAWMAP~97_combout\,
	combout => \C1|DRAWMAP~98_combout\);

-- Location: LCCOMB_X26_Y19_N16
\C1|DRAWMAP~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~100_combout\ = (\C1|DRAWMAP~99_combout\) # ((\C1|DRAWMAP~98_combout\) # ((!\C1|dMap~129_combout\ & \C1|dMap~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~129_combout\,
	datab => \C1|DRAWMAP~99_combout\,
	datac => \C1|dMap~144_combout\,
	datad => \C1|DRAWMAP~98_combout\,
	combout => \C1|DRAWMAP~100_combout\);

-- Location: LCCOMB_X29_Y19_N20
\C1|LessThan246~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan246~2_combout\ = ((\C1|LessThan246~0_combout\) # ((\C1|LessThan246~1_combout\ & \C1|LessThan260~1_combout\))) # (!\C1|LessThan230~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan246~1_combout\,
	datab => \C1|LessThan260~1_combout\,
	datac => \C1|LessThan230~1_combout\,
	datad => \C1|LessThan246~0_combout\,
	combout => \C1|LessThan246~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\C1|dMap~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~138_combout\ = (\C1|LessThan230~1_combout\ & (\C1|LessThan246~2_combout\ & !\C1|LessThan242~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan230~1_combout\,
	datac => \C1|LessThan246~2_combout\,
	datad => \C1|LessThan242~0_combout\,
	combout => \C1|dMap~138_combout\);

-- Location: LCCOMB_X30_Y19_N8
\C1|dMap~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~137_combout\ = (!\C1|LessThan234~1_combout\ & ((\C1|LessThan238~1_combout\) # (!\C1|LessThan230~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan230~1_combout\,
	datac => \C1|LessThan238~1_combout\,
	datad => \C1|LessThan234~1_combout\,
	combout => \C1|dMap~137_combout\);

-- Location: LCCOMB_X22_Y19_N16
\C1|DRAWMAP~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~95_combout\ = (\C1|dMap~122_combout\ & (!\C1|dMap~125_combout\ & (\C1|dMap~138_combout\))) # (!\C1|dMap~122_combout\ & ((\C1|dMap~137_combout\) # ((!\C1|dMap~125_combout\ & \C1|dMap~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~122_combout\,
	datab => \C1|dMap~125_combout\,
	datac => \C1|dMap~138_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|DRAWMAP~95_combout\);

-- Location: LCCOMB_X23_Y19_N12
\C1|DRAWMAP~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~91_combout\ = (\C1|dMap~119_combout\ & (!\C1|dMap~113_combout\ & (\C1|DRAWMAP~89_combout\))) # (!\C1|dMap~119_combout\ & ((\C1|DRAWMAP~90_combout\) # ((!\C1|dMap~113_combout\ & \C1|DRAWMAP~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~119_combout\,
	datab => \C1|dMap~113_combout\,
	datac => \C1|DRAWMAP~89_combout\,
	datad => \C1|DRAWMAP~90_combout\,
	combout => \C1|DRAWMAP~91_combout\);

-- Location: LCCOMB_X23_Y19_N6
\C1|DRAWMAP~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~93_combout\ = (\C1|LessThan225~0_combout\ & ((\C1|DRAWMAP~91_combout\) # ((!\C1|dMap~117_combout\ & \C1|DRAWMAP~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan225~0_combout\,
	datab => \C1|dMap~117_combout\,
	datac => \C1|DRAWMAP~131_combout\,
	datad => \C1|DRAWMAP~91_combout\,
	combout => \C1|DRAWMAP~93_combout\);

-- Location: LCCOMB_X22_Y18_N22
\C1|DRAWMAP~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~96_combout\ = (\C1|DRAWMAP~94_combout\) # ((\C1|DRAWMAP~95_combout\) # (\C1|DRAWMAP~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~94_combout\,
	datac => \C1|DRAWMAP~95_combout\,
	datad => \C1|DRAWMAP~93_combout\,
	combout => \C1|DRAWMAP~96_combout\);

-- Location: LCCOMB_X22_Y18_N16
\C1|dirQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X1~0_combout\ = (!\C1|LessThan215~1_combout\ & (!\C1|LessThan216~0_combout\ & ((\C1|DRAWMAP~100_combout\) # (\C1|DRAWMAP~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan215~1_combout\,
	datab => \C1|LessThan216~0_combout\,
	datac => \C1|DRAWMAP~100_combout\,
	datad => \C1|DRAWMAP~96_combout\,
	combout => \C1|dirQ2X1~0_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X24_Y18_N30
\C1|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~20_combout\ = !\C1|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add3~19\,
	combout => \C1|Add3~20_combout\);

-- Location: LCCOMB_X24_Y18_N20
\C1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~10_combout\ = (\C1|SQ_Y2\(6) & (!\C1|Add3~9\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add3~9\) # (GND)))
-- \C1|Add3~11\ = CARRY((!\C1|Add3~9\) # (!\C1|SQ_Y2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add3~9\,
	combout => \C1|Add3~10_combout\,
	cout => \C1|Add3~11\);

-- Location: LCCOMB_X25_Y16_N28
\C1|dMap~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~151_combout\ = (\C1|Add3~4_combout\ & (((\C1|Add3~2_combout\) # (\C1|Add3~8_combout\)))) # (!\C1|Add3~4_combout\ & (\C1|Add3~0_combout\ & (\C1|Add3~2_combout\ & \C1|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~151_combout\);

-- Location: LCCOMB_X25_Y16_N2
\C1|dMap~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~152_combout\ = (\C1|Add3~8_combout\ & (\C1|Add3~6_combout\ & (!\C1|Add3~10_combout\ & \C1|dMap~151_combout\))) # (!\C1|Add3~8_combout\ & (\C1|Add3~10_combout\ & ((!\C1|dMap~151_combout\) # (!\C1|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~151_combout\,
	combout => \C1|dMap~152_combout\);

-- Location: LCCOMB_X24_Y16_N24
\C1|dMap~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~153_combout\ = ((\C1|Add3~20_combout\) # ((\C1|Add3~18_combout\) # (!\C1|dMap~152_combout\))) # (!\C1|LessThan180~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan180~0_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|Add3~18_combout\,
	datad => \C1|dMap~152_combout\,
	combout => \C1|dMap~153_combout\);

-- Location: LCCOMB_X24_Y17_N16
\C1|DRAWMAP~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~62_combout\ = (\C1|LessThan285~0_combout\ & (\C1|DRAWMAP~53_combout\ & (\C1|LessThan286~0_combout\ & \C1|DRAWMAP~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan285~0_combout\,
	datab => \C1|DRAWMAP~53_combout\,
	datac => \C1|LessThan286~0_combout\,
	datad => \C1|DRAWMAP~57_combout\,
	combout => \C1|DRAWMAP~62_combout\);

-- Location: LCCOMB_X23_Y16_N18
\C1|DRAWMAP~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~115_combout\ = (\C1|dMap~163_combout\ & (!\C1|dMap~153_combout\ & (\C1|DRAWMAP~62_combout\))) # (!\C1|dMap~163_combout\ & ((\C1|DRAWMAP~60_combout\) # ((!\C1|dMap~153_combout\ & \C1|DRAWMAP~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~163_combout\,
	datab => \C1|dMap~153_combout\,
	datac => \C1|DRAWMAP~62_combout\,
	datad => \C1|DRAWMAP~60_combout\,
	combout => \C1|DRAWMAP~115_combout\);

-- Location: LCCOMB_X23_Y14_N28
\C1|dMap~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~146_combout\ = (\C1|Add3~16_combout\ & ((\C1|Add3~4_combout\ & ((!\C1|Add3~6_combout\) # (!\C1|Add3~2_combout\))) # (!\C1|Add3~4_combout\ & ((\C1|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add3~16_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~146_combout\);

-- Location: LCCOMB_X23_Y14_N26
\C1|dMap~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~147_combout\ = (((!\C1|Add3~14_combout\) # (!\C1|Add3~10_combout\)) # (!\C1|dMap~146_combout\)) # (!\C1|dMap~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~145_combout\,
	datab => \C1|dMap~146_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|Add3~14_combout\,
	combout => \C1|dMap~147_combout\);

-- Location: LCCOMB_X24_Y16_N10
\C1|dMap~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~154_combout\ = (!\C1|Add3~4_combout\ & ((!\C1|Add3~0_combout\) # (!\C1|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~2_combout\,
	datad => \C1|Add3~0_combout\,
	combout => \C1|dMap~154_combout\);

-- Location: LCCOMB_X24_Y16_N4
\C1|dMap~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~155_combout\ = (\C1|Add3~10_combout\ & ((\C1|Add3~8_combout\) # ((\C1|Add3~6_combout\) # (!\C1|dMap~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|dMap~154_combout\,
	combout => \C1|dMap~155_combout\);

-- Location: LCCOMB_X24_Y18_N6
\C1|LessThan180~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan180~0_combout\ = (!\C1|Add3~12_combout\ & (!\C1|Add3~14_combout\ & !\C1|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datac => \C1|Add3~14_combout\,
	datad => \C1|Add3~16_combout\,
	combout => \C1|LessThan180~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\C1|dMap~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~156_combout\ = ((\C1|dMap~155_combout\) # ((\C1|Add3~20_combout\) # (!\C1|LessThan180~0_combout\))) # (!\C1|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|dMap~155_combout\,
	datac => \C1|LessThan180~0_combout\,
	datad => \C1|Add3~20_combout\,
	combout => \C1|dMap~156_combout\);

-- Location: LCCOMB_X23_Y16_N24
\C1|DRAWMAP~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~112_combout\ = (\C1|DRAWMAP~82_combout\ & (((!\C1|dMap~156_combout\ & \C1|DRAWMAP~85_combout\)) # (!\C1|dMap~147_combout\))) # (!\C1|DRAWMAP~82_combout\ & (!\C1|dMap~156_combout\ & ((\C1|DRAWMAP~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~82_combout\,
	datab => \C1|dMap~156_combout\,
	datac => \C1|dMap~147_combout\,
	datad => \C1|DRAWMAP~85_combout\,
	combout => \C1|DRAWMAP~112_combout\);

-- Location: LCCOMB_X23_Y16_N6
\C1|DRAWMAP~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~113_combout\ = (\C1|dMap~150_combout\ & (\C1|LessThan307~2_combout\ & (\C1|DRAWMAP~112_combout\))) # (!\C1|dMap~150_combout\ & ((\C1|dMap~108_combout\) # ((\C1|LessThan307~2_combout\ & \C1|DRAWMAP~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~150_combout\,
	datab => \C1|LessThan307~2_combout\,
	datac => \C1|DRAWMAP~112_combout\,
	datad => \C1|dMap~108_combout\,
	combout => \C1|DRAWMAP~113_combout\);

-- Location: LCCOMB_X23_Y16_N8
\C1|DRAWMAP~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~114_combout\ = (\C1|DRAWMAP~113_combout\) # ((!\C1|dMap~147_combout\ & !\C1|esqQ2X2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~147_combout\,
	datac => \C1|esqQ2X2~0_combout\,
	datad => \C1|DRAWMAP~113_combout\,
	combout => \C1|DRAWMAP~114_combout\);

-- Location: LCCOMB_X24_Y16_N14
\C1|dMap~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~148_combout\ = (\C1|Add3~16_combout\ & (!\C1|Add3~20_combout\ & (!\C1|Add3~18_combout\ & \C1|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~16_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|Add3~18_combout\,
	datad => \C1|Add3~14_combout\,
	combout => \C1|dMap~148_combout\);

-- Location: LCCOMB_X25_Y16_N30
\C1|dMap~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~158_combout\ = (\C1|dMap~157_combout\ & (((\C1|Add3~10_combout\) # (!\C1|Add3~8_combout\)) # (!\C1|Add3~6_combout\))) # (!\C1|dMap~157_combout\ & ((\C1|Add3~6_combout\) # ((\C1|Add3~8_combout\) # (!\C1|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~157_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~158_combout\);

-- Location: LCCOMB_X24_Y16_N8
\C1|dMap~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~159_combout\ = ((\C1|dMap~158_combout\) # (!\C1|dMap~148_combout\)) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datac => \C1|dMap~148_combout\,
	datad => \C1|dMap~158_combout\,
	combout => \C1|dMap~159_combout\);

-- Location: LCCOMB_X23_Y16_N20
\C1|DRAWMAP~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~116_combout\ = (\C1|dMap~168_combout\ & (!\C1|dMap~159_combout\ & (\C1|DRAWMAP~72_combout\))) # (!\C1|dMap~168_combout\ & ((\C1|DRAWMAP~78_combout\) # ((!\C1|dMap~159_combout\ & \C1|DRAWMAP~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~168_combout\,
	datab => \C1|dMap~159_combout\,
	datac => \C1|DRAWMAP~72_combout\,
	datad => \C1|DRAWMAP~78_combout\,
	combout => \C1|DRAWMAP~116_combout\);

-- Location: LCCOMB_X24_Y15_N0
\C1|dMap~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~169_combout\ = (!\C1|Add3~6_combout\ & ((\C1|Add3~4_combout\ & ((!\C1|Add3~2_combout\))) # (!\C1|Add3~4_combout\ & (!\C1|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~4_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~169_combout\);

-- Location: LCCOMB_X25_Y16_N14
\C1|dMap~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~170_combout\ = (\C1|Add3~8_combout\ & ((\C1|Add3~0_combout\) # ((\C1|Add3~2_combout\) # (\C1|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~170_combout\);

-- Location: LCCOMB_X24_Y16_N6
\C1|DRAWMAP~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~117_combout\ = (\C1|dMap~167_combout\ & (!\C1|dMap~169_combout\ & (!\C1|dMap~170_combout\ & \C1|DRAWMAP~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~167_combout\,
	datab => \C1|dMap~169_combout\,
	datac => \C1|dMap~170_combout\,
	datad => \C1|DRAWMAP~75_combout\,
	combout => \C1|DRAWMAP~117_combout\);

-- Location: LCCOMB_X23_Y16_N10
\C1|DRAWMAP~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~118_combout\ = (\C1|DRAWMAP~116_combout\) # ((\C1|DRAWMAP~117_combout\) # ((!\C1|dMap~166_combout\ & \C1|DRAWMAP~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~166_combout\,
	datab => \C1|DRAWMAP~76_combout\,
	datac => \C1|DRAWMAP~116_combout\,
	datad => \C1|DRAWMAP~117_combout\,
	combout => \C1|DRAWMAP~118_combout\);

-- Location: LCCOMB_X23_Y16_N4
\C1|DRAWMAP~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~119_combout\ = (\C1|LessThan180~2_combout\) # ((\C1|DRAWMAP~115_combout\) # ((\C1|DRAWMAP~114_combout\) # (\C1|DRAWMAP~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan180~2_combout\,
	datab => \C1|DRAWMAP~115_combout\,
	datac => \C1|DRAWMAP~114_combout\,
	datad => \C1|DRAWMAP~118_combout\,
	combout => \C1|DRAWMAP~119_combout\);

-- Location: LCCOMB_X30_Y19_N22
\C1|dMap~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~134_combout\ = (\C1|Add2~14_combout\) # ((\C1|Add2~8_combout\ & ((\C1|Add2~6_combout\) # (!\C1|LessThan257~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|LessThan257~0_combout\,
	combout => \C1|dMap~134_combout\);

-- Location: LCCOMB_X30_Y19_N14
\C1|dMap~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~136_combout\ = (!\C1|dMap~135_combout\ & (\C1|Add2~12_combout\ & (!\C1|Add2~10_combout\ & !\C1|dMap~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~135_combout\,
	datab => \C1|Add2~12_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|dMap~134_combout\,
	combout => \C1|dMap~136_combout\);

-- Location: LCCOMB_X22_Y18_N4
\C1|DRAWMAP~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~103_combout\ = (!\C1|dMap~147_combout\ & ((\C1|dMap~139_combout\) # ((\C1|dMap~136_combout\) # (\C1|dMap~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~139_combout\,
	datab => \C1|dMap~136_combout\,
	datac => \C1|dMap~143_combout\,
	datad => \C1|dMap~147_combout\,
	combout => \C1|DRAWMAP~103_combout\);

-- Location: LCCOMB_X23_Y19_N28
\C1|DRAWMAP~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~101_combout\ = (\C1|dMap~150_combout\ & (!\C1|dMap~147_combout\ & ((\C1|DRAWMAP~90_combout\)))) # (!\C1|dMap~150_combout\ & ((\C1|DRAWMAP~89_combout\) # ((!\C1|dMap~147_combout\ & \C1|DRAWMAP~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~150_combout\,
	datab => \C1|dMap~147_combout\,
	datac => \C1|DRAWMAP~89_combout\,
	datad => \C1|DRAWMAP~90_combout\,
	combout => \C1|DRAWMAP~101_combout\);

-- Location: LCCOMB_X23_Y19_N26
\C1|DRAWMAP~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~102_combout\ = (\C1|LessThan225~0_combout\ & ((\C1|DRAWMAP~101_combout\) # ((!\C1|dMap~153_combout\ & \C1|DRAWMAP~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan225~0_combout\,
	datab => \C1|dMap~153_combout\,
	datac => \C1|DRAWMAP~131_combout\,
	datad => \C1|DRAWMAP~101_combout\,
	combout => \C1|DRAWMAP~102_combout\);

-- Location: LCCOMB_X22_Y18_N2
\C1|DRAWMAP~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~104_combout\ = (\C1|dMap~133_combout\ & (((!\C1|dMap~159_combout\ & \C1|dMap~137_combout\)) # (!\C1|dMap~156_combout\))) # (!\C1|dMap~133_combout\ & (!\C1|dMap~159_combout\ & ((\C1|dMap~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~133_combout\,
	datab => \C1|dMap~159_combout\,
	datac => \C1|dMap~156_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|DRAWMAP~104_combout\);

-- Location: LCCOMB_X22_Y18_N20
\C1|DRAWMAP~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~105_combout\ = (\C1|DRAWMAP~103_combout\) # ((\C1|DRAWMAP~102_combout\) # (\C1|DRAWMAP~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~103_combout\,
	datac => \C1|DRAWMAP~102_combout\,
	datad => \C1|DRAWMAP~104_combout\,
	combout => \C1|DRAWMAP~105_combout\);

-- Location: LCCOMB_X24_Y16_N20
\C1|dMap~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~167_combout\ = (\C1|Add3~12_combout\ & (\C1|dMap~148_combout\ & !\C1|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datac => \C1|dMap~148_combout\,
	datad => \C1|Add3~10_combout\,
	combout => \C1|dMap~167_combout\);

-- Location: LCCOMB_X23_Y16_N26
\C1|dMap~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~168_combout\ = (((\C1|Add3~6_combout\ & !\C1|dMap~154_combout\)) # (!\C1|dMap~167_combout\)) # (!\C1|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|dMap~154_combout\,
	datad => \C1|dMap~167_combout\,
	combout => \C1|dMap~168_combout\);

-- Location: LCCOMB_X25_Y16_N26
\C1|DRAWMAP~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~107_combout\ = (\C1|Add3~2_combout\ & (((\C1|Add3~4_combout\) # (\C1|Add3~8_combout\)))) # (!\C1|Add3~2_combout\ & (\C1|Add3~8_combout\ & ((\C1|Add3~0_combout\) # (\C1|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|DRAWMAP~107_combout\);

-- Location: LCCOMB_X25_Y16_N0
\C1|DRAWMAP~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~106_combout\ = (\C1|dMap~148_combout\ & (\C1|Add3~12_combout\ & (!\C1|Add3~10_combout\ & \C1|dMap~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~148_combout\,
	datab => \C1|Add3~12_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~138_combout\,
	combout => \C1|DRAWMAP~106_combout\);

-- Location: LCCOMB_X25_Y16_N4
\C1|DRAWMAP~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~108_combout\ = (\C1|DRAWMAP~106_combout\ & (\C1|Add3~8_combout\ $ (((\C1|DRAWMAP~107_combout\) # (\C1|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|DRAWMAP~107_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|DRAWMAP~106_combout\,
	combout => \C1|DRAWMAP~108_combout\);

-- Location: LCCOMB_X25_Y16_N22
\C1|dMap~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~160_combout\ = (\C1|Add3~4_combout\ & (\C1|Add3~6_combout\ & ((\C1|Add3~0_combout\) # (\C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~160_combout\);

-- Location: LCCOMB_X24_Y16_N22
\C1|LessThan180~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan180~1_combout\ = (\C1|Add3~10_combout\) # ((\C1|Add3~8_combout\) # ((\C1|dMap~160_combout\) # (!\C1|LessThan180~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|LessThan180~0_combout\,
	datad => \C1|dMap~160_combout\,
	combout => \C1|LessThan180~1_combout\);

-- Location: LCCOMB_X24_Y16_N12
\C1|LessThan180~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan180~2_combout\ = (\C1|Add3~20_combout\) # ((\C1|Add3~18_combout\ & \C1|LessThan180~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~20_combout\,
	datac => \C1|Add3~18_combout\,
	datad => \C1|LessThan180~1_combout\,
	combout => \C1|LessThan180~2_combout\);

-- Location: LCCOMB_X25_Y16_N12
\C1|dMap~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~165_combout\ = (\C1|Add3~6_combout\ & (!\C1|Add3~12_combout\ & (\C1|Add3~10_combout\ & \C1|Add3~8_combout\))) # (!\C1|Add3~6_combout\ & (\C1|Add3~12_combout\ & (!\C1|Add3~10_combout\ & !\C1|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add3~12_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~165_combout\);

-- Location: LCCOMB_X25_Y16_N6
\C1|dMap~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~164_combout\ = (\C1|Add3~4_combout\ & ((\C1|Add3~8_combout\) # ((\C1|Add3~2_combout\ & \C1|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~164_combout\);

-- Location: LCCOMB_X24_Y16_N26
\C1|dMap~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~166_combout\ = ((\C1|Add3~6_combout\ $ (\C1|dMap~164_combout\)) # (!\C1|dMap~165_combout\)) # (!\C1|dMap~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|dMap~148_combout\,
	datac => \C1|dMap~165_combout\,
	datad => \C1|dMap~164_combout\,
	combout => \C1|dMap~166_combout\);

-- Location: LCCOMB_X25_Y16_N8
\C1|dMap~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~162_combout\ = (\C1|Add3~4_combout\ & (((!\C1|Add3~0_combout\ & !\C1|Add3~2_combout\)) # (!\C1|Add3~6_combout\))) # (!\C1|Add3~4_combout\ & (((\C1|Add3~2_combout\) # (\C1|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~162_combout\);

-- Location: LCCOMB_X24_Y16_N30
\C1|dMap~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~161_combout\ = (\C1|Add3~10_combout\ & (!\C1|Add3~12_combout\ & \C1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~10_combout\,
	datac => \C1|Add3~12_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~161_combout\);

-- Location: LCCOMB_X24_Y16_N16
\C1|dMap~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~163_combout\ = ((!\C1|dMap~161_combout\) # (!\C1|dMap~162_combout\)) # (!\C1|dMap~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~148_combout\,
	datac => \C1|dMap~162_combout\,
	datad => \C1|dMap~161_combout\,
	combout => \C1|dMap~163_combout\);

-- Location: LCCOMB_X24_Y19_N26
\C1|DRAWMAP~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~109_combout\ = (!\C1|dMap~163_combout\ & ((\C1|dMap~141_combout\) # ((\C1|LessThan252~2_combout\ & !\C1|LessThan250~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan252~2_combout\,
	datab => \C1|dMap~163_combout\,
	datac => \C1|LessThan250~2_combout\,
	datad => \C1|dMap~141_combout\,
	combout => \C1|DRAWMAP~109_combout\);

-- Location: LCCOMB_X23_Y18_N2
\C1|DRAWMAP~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~110_combout\ = (\C1|LessThan180~2_combout\) # ((\C1|DRAWMAP~109_combout\) # ((\C1|dMap~144_combout\ & !\C1|dMap~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~144_combout\,
	datab => \C1|LessThan180~2_combout\,
	datac => \C1|dMap~166_combout\,
	datad => \C1|DRAWMAP~109_combout\,
	combout => \C1|DRAWMAP~110_combout\);

-- Location: LCCOMB_X22_Y18_N30
\C1|DRAWMAP~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~111_combout\ = (\C1|DRAWMAP~108_combout\) # ((\C1|DRAWMAP~110_combout\) # ((\C1|dMap~140_combout\ & !\C1|dMap~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~140_combout\,
	datab => \C1|dMap~168_combout\,
	datac => \C1|DRAWMAP~108_combout\,
	datad => \C1|DRAWMAP~110_combout\,
	combout => \C1|DRAWMAP~111_combout\);

-- Location: LCCOMB_X22_Y18_N24
\C1|arQ2X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X2~0_combout\ = (!\C1|LessThan179~1_combout\ & (!\C1|LessThan216~0_combout\ & ((\C1|DRAWMAP~105_combout\) # (\C1|DRAWMAP~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan179~1_combout\,
	datab => \C1|LessThan216~0_combout\,
	datac => \C1|DRAWMAP~105_combout\,
	datad => \C1|DRAWMAP~111_combout\,
	combout => \C1|arQ2X2~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\C1|LessThan200~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~1_cout\ = CARRY((!\C1|Add3~0_combout\ & \C1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|LessThan200~1_cout\);

-- Location: LCCOMB_X23_Y14_N4
\C1|LessThan200~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~3_cout\ = CARRY((\C1|Add1~2_combout\ & (\C1|Add3~2_combout\ & !\C1|LessThan200~1_cout\)) # (!\C1|Add1~2_combout\ & ((\C1|Add3~2_combout\) # (!\C1|LessThan200~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan200~1_cout\,
	cout => \C1|LessThan200~3_cout\);

-- Location: LCCOMB_X23_Y14_N6
\C1|LessThan200~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~5_cout\ = CARRY((\C1|Add1~4_combout\ & ((!\C1|LessThan200~3_cout\) # (!\C1|Add3~4_combout\))) # (!\C1|Add1~4_combout\ & (!\C1|Add3~4_combout\ & !\C1|LessThan200~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan200~3_cout\,
	cout => \C1|LessThan200~5_cout\);

-- Location: LCCOMB_X23_Y14_N8
\C1|LessThan200~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~7_cout\ = CARRY((\C1|Add3~6_combout\ & ((!\C1|LessThan200~5_cout\) # (!\C1|Add1~6_combout\))) # (!\C1|Add3~6_combout\ & (!\C1|Add1~6_combout\ & !\C1|LessThan200~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|LessThan200~5_cout\,
	cout => \C1|LessThan200~7_cout\);

-- Location: LCCOMB_X23_Y14_N10
\C1|LessThan200~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~9_cout\ = CARRY((\C1|Add1~8_combout\ & ((!\C1|LessThan200~7_cout\) # (!\C1|Add3~8_combout\))) # (!\C1|Add1~8_combout\ & (!\C1|Add3~8_combout\ & !\C1|LessThan200~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan200~7_cout\,
	cout => \C1|LessThan200~9_cout\);

-- Location: LCCOMB_X23_Y14_N12
\C1|LessThan200~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~11_cout\ = CARRY((\C1|Add1~10_combout\ & (\C1|Add3~10_combout\ & !\C1|LessThan200~9_cout\)) # (!\C1|Add1~10_combout\ & ((\C1|Add3~10_combout\) # (!\C1|LessThan200~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan200~9_cout\,
	cout => \C1|LessThan200~11_cout\);

-- Location: LCCOMB_X23_Y14_N14
\C1|LessThan200~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~13_cout\ = CARRY((\C1|Add3~12_combout\ & (\C1|Add1~12_combout\ & !\C1|LessThan200~11_cout\)) # (!\C1|Add3~12_combout\ & ((\C1|Add1~12_combout\) # (!\C1|LessThan200~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|LessThan200~11_cout\,
	cout => \C1|LessThan200~13_cout\);

-- Location: LCCOMB_X23_Y14_N16
\C1|LessThan200~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~15_cout\ = CARRY((\C1|Add3~14_combout\ & ((!\C1|LessThan200~13_cout\) # (!\C1|Add1~14_combout\))) # (!\C1|Add3~14_combout\ & (!\C1|Add1~14_combout\ & !\C1|LessThan200~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~14_combout\,
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|LessThan200~13_cout\,
	cout => \C1|LessThan200~15_cout\);

-- Location: LCCOMB_X23_Y14_N18
\C1|LessThan200~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~17_cout\ = CARRY((\C1|Add1~16_combout\ & ((!\C1|LessThan200~15_cout\) # (!\C1|Add3~16_combout\))) # (!\C1|Add1~16_combout\ & (!\C1|Add3~16_combout\ & !\C1|LessThan200~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|LessThan200~15_cout\,
	cout => \C1|LessThan200~17_cout\);

-- Location: LCCOMB_X23_Y14_N20
\C1|LessThan200~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~19_cout\ = CARRY((\C1|Add3~18_combout\ & ((!\C1|LessThan200~17_cout\) # (!\C1|Add1~18_combout\))) # (!\C1|Add3~18_combout\ & (!\C1|Add1~18_combout\ & !\C1|LessThan200~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|Add1~18_combout\,
	datad => VCC,
	cin => \C1|LessThan200~17_cout\,
	cout => \C1|LessThan200~19_cout\);

-- Location: LCCOMB_X23_Y14_N22
\C1|LessThan200~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~20_combout\ = (\C1|Add3~20_combout\ & (!\C1|LessThan200~19_cout\ & \C1|Add1~20_combout\)) # (!\C1|Add3~20_combout\ & ((\C1|Add1~20_combout\) # (!\C1|LessThan200~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datad => \C1|Add1~20_combout\,
	cin => \C1|LessThan200~19_cout\,
	combout => \C1|LessThan200~20_combout\);

-- Location: LCCOMB_X30_Y15_N10
\C1|Q2Xi[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[2]~0_combout\ = \C1|SQ_X2\(2) $ (GND)
-- \C1|Q2Xi[2]~1\ = CARRY(!\C1|SQ_X2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	combout => \C1|Q2Xi[2]~0_combout\,
	cout => \C1|Q2Xi[2]~1\);

-- Location: LCCOMB_X30_Y15_N12
\C1|Q2Xi[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[3]~2_combout\ = (\C1|SQ_X2\(3) & ((\C1|Q2Xi[2]~1\) # (GND))) # (!\C1|SQ_X2\(3) & (!\C1|Q2Xi[2]~1\))
-- \C1|Q2Xi[3]~3\ = CARRY((\C1|SQ_X2\(3)) # (!\C1|Q2Xi[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Q2Xi[2]~1\,
	combout => \C1|Q2Xi[3]~2_combout\,
	cout => \C1|Q2Xi[3]~3\);

-- Location: LCCOMB_X30_Y15_N16
\C1|Q2Xi[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[5]~6_combout\ = (\C1|SQ_X2\(5) & (\C1|Q2Xi[4]~5\ & VCC)) # (!\C1|SQ_X2\(5) & (!\C1|Q2Xi[4]~5\))
-- \C1|Q2Xi[5]~7\ = CARRY((!\C1|SQ_X2\(5) & !\C1|Q2Xi[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Q2Xi[4]~5\,
	combout => \C1|Q2Xi[5]~6_combout\,
	cout => \C1|Q2Xi[5]~7\);

-- Location: LCCOMB_X30_Y15_N18
\C1|Q2Xi[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[6]~8_combout\ = (\C1|SQ_X2\(6) & (!\C1|Q2Xi[5]~7\ & VCC)) # (!\C1|SQ_X2\(6) & (\C1|Q2Xi[5]~7\ $ (GND)))
-- \C1|Q2Xi[6]~9\ = CARRY((!\C1|SQ_X2\(6) & !\C1|Q2Xi[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Q2Xi[5]~7\,
	combout => \C1|Q2Xi[6]~8_combout\,
	cout => \C1|Q2Xi[6]~9\);

-- Location: LCCOMB_X30_Y15_N20
\C1|Q2Xi[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[7]~10_combout\ = (\C1|SQ_X2\(7) & ((\C1|Q2Xi[6]~9\) # (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Q2Xi[6]~9\))
-- \C1|Q2Xi[7]~11\ = CARRY((\C1|SQ_X2\(7)) # (!\C1|Q2Xi[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Q2Xi[6]~9\,
	combout => \C1|Q2Xi[7]~10_combout\,
	cout => \C1|Q2Xi[7]~11\);

-- Location: LCCOMB_X30_Y15_N24
\C1|Q2Xi[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[9]~14_combout\ = (\C1|SQ_X2\(9) & (!\C1|Q2Xi[8]~13\)) # (!\C1|SQ_X2\(9) & ((\C1|Q2Xi[8]~13\) # (GND)))
-- \C1|Q2Xi[9]~15\ = CARRY((!\C1|Q2Xi[8]~13\) # (!\C1|SQ_X2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Q2Xi[8]~13\,
	combout => \C1|Q2Xi[9]~14_combout\,
	cout => \C1|Q2Xi[9]~15\);

-- Location: LCCOMB_X30_Y15_N26
\C1|Q2Xi[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xi[10]~16_combout\ = (\C1|SQ_X2\(10) & (\C1|Q2Xi[9]~15\ $ (GND))) # (!\C1|SQ_X2\(10) & (!\C1|Q2Xi[9]~15\ & VCC))
-- \C1|Q2Xi[10]~17\ = CARRY((\C1|SQ_X2\(10) & !\C1|Q2Xi[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Q2Xi[9]~15\,
	combout => \C1|Q2Xi[10]~16_combout\,
	cout => \C1|Q2Xi[10]~17\);

-- Location: LCCOMB_X30_Y15_N28
\C1|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~0_combout\ = \C1|Q2Xi[10]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Q2Xi[10]~17\,
	combout => \C1|Add16~0_combout\);

-- Location: LCCOMB_X29_Y16_N2
\C1|LessThan206~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~1_cout\ = CARRY((\C1|SQ_X2\(1) & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan206~1_cout\);

-- Location: LCCOMB_X29_Y16_N4
\C1|LessThan206~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~3_cout\ = CARRY((\C1|Add0~0_combout\ & ((!\C1|LessThan206~1_cout\) # (!\C1|Q2Xi[2]~0_combout\))) # (!\C1|Add0~0_combout\ & (!\C1|Q2Xi[2]~0_combout\ & !\C1|LessThan206~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Q2Xi[2]~0_combout\,
	datad => VCC,
	cin => \C1|LessThan206~1_cout\,
	cout => \C1|LessThan206~3_cout\);

-- Location: LCCOMB_X29_Y16_N6
\C1|LessThan206~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~5_cout\ = CARRY((\C1|Add0~2_combout\ & (\C1|Q2Xi[3]~2_combout\ & !\C1|LessThan206~3_cout\)) # (!\C1|Add0~2_combout\ & ((\C1|Q2Xi[3]~2_combout\) # (!\C1|LessThan206~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Q2Xi[3]~2_combout\,
	datad => VCC,
	cin => \C1|LessThan206~3_cout\,
	cout => \C1|LessThan206~5_cout\);

-- Location: LCCOMB_X29_Y16_N8
\C1|LessThan206~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~7_cout\ = CARRY((\C1|Q2Xi[4]~4_combout\ & (\C1|Add0~4_combout\ & !\C1|LessThan206~5_cout\)) # (!\C1|Q2Xi[4]~4_combout\ & ((\C1|Add0~4_combout\) # (!\C1|LessThan206~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xi[4]~4_combout\,
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan206~5_cout\,
	cout => \C1|LessThan206~7_cout\);

-- Location: LCCOMB_X29_Y16_N10
\C1|LessThan206~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~9_cout\ = CARRY((\C1|Add0~6_combout\ & (\C1|Q2Xi[5]~6_combout\ & !\C1|LessThan206~7_cout\)) # (!\C1|Add0~6_combout\ & ((\C1|Q2Xi[5]~6_combout\) # (!\C1|LessThan206~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|Q2Xi[5]~6_combout\,
	datad => VCC,
	cin => \C1|LessThan206~7_cout\,
	cout => \C1|LessThan206~9_cout\);

-- Location: LCCOMB_X29_Y16_N12
\C1|LessThan206~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~11_cout\ = CARRY((\C1|Add0~8_combout\ & ((!\C1|LessThan206~9_cout\) # (!\C1|Q2Xi[6]~8_combout\))) # (!\C1|Add0~8_combout\ & (!\C1|Q2Xi[6]~8_combout\ & !\C1|LessThan206~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|Q2Xi[6]~8_combout\,
	datad => VCC,
	cin => \C1|LessThan206~9_cout\,
	cout => \C1|LessThan206~11_cout\);

-- Location: LCCOMB_X29_Y16_N14
\C1|LessThan206~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~13_cout\ = CARRY((\C1|Add0~10_combout\ & (\C1|Q2Xi[7]~10_combout\ & !\C1|LessThan206~11_cout\)) # (!\C1|Add0~10_combout\ & ((\C1|Q2Xi[7]~10_combout\) # (!\C1|LessThan206~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|Q2Xi[7]~10_combout\,
	datad => VCC,
	cin => \C1|LessThan206~11_cout\,
	cout => \C1|LessThan206~13_cout\);

-- Location: LCCOMB_X29_Y16_N16
\C1|LessThan206~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~15_cout\ = CARRY((\C1|Q2Xi[8]~12_combout\ & (\C1|Add0~12_combout\ & !\C1|LessThan206~13_cout\)) # (!\C1|Q2Xi[8]~12_combout\ & ((\C1|Add0~12_combout\) # (!\C1|LessThan206~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xi[8]~12_combout\,
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan206~13_cout\,
	cout => \C1|LessThan206~15_cout\);

-- Location: LCCOMB_X29_Y16_N18
\C1|LessThan206~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~17_cout\ = CARRY((\C1|Add0~14_combout\ & (\C1|Q2Xi[9]~14_combout\ & !\C1|LessThan206~15_cout\)) # (!\C1|Add0~14_combout\ & ((\C1|Q2Xi[9]~14_combout\) # (!\C1|LessThan206~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~14_combout\,
	datab => \C1|Q2Xi[9]~14_combout\,
	datad => VCC,
	cin => \C1|LessThan206~15_cout\,
	cout => \C1|LessThan206~17_cout\);

-- Location: LCCOMB_X29_Y16_N20
\C1|LessThan206~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~19_cout\ = CARRY((\C1|Add0~16_combout\ & ((!\C1|LessThan206~17_cout\) # (!\C1|Q2Xi[10]~16_combout\))) # (!\C1|Add0~16_combout\ & (!\C1|Q2Xi[10]~16_combout\ & !\C1|LessThan206~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Q2Xi[10]~16_combout\,
	datad => VCC,
	cin => \C1|LessThan206~17_cout\,
	cout => \C1|LessThan206~19_cout\);

-- Location: LCCOMB_X29_Y16_N22
\C1|LessThan206~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan206~20_combout\ = (\C1|Add0~18_combout\ & (!\C1|LessThan206~19_cout\ & \C1|Add16~0_combout\)) # (!\C1|Add0~18_combout\ & ((\C1|Add16~0_combout\) # (!\C1|LessThan206~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~18_combout\,
	datad => \C1|Add16~0_combout\,
	cin => \C1|LessThan206~19_cout\,
	combout => \C1|LessThan206~20_combout\);

-- Location: LCCOMB_X25_Y14_N24
\C1|touchDown2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown2~3_combout\ = (\C1|contatoB2~0_combout\) # ((!\C1|LessThan206~20_combout\ & ((\C1|LessThan205~18_combout\) # (\C1|Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan205~18_combout\,
	datab => \C1|Add16~0_combout\,
	datac => \C1|LessThan206~20_combout\,
	datad => \C1|contatoB2~0_combout\,
	combout => \C1|touchDown2~3_combout\);

-- Location: LCCOMB_X27_Y14_N6
\C1|Q2Xa[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[1]~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Q2Xa[1]~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Q2Xa[1]~0_combout\,
	cout => \C1|Q2Xa[1]~1\);

-- Location: LCCOMB_X27_Y14_N8
\C1|Q2Xa[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[2]~2_combout\ = (\C1|SQ_X2\(2) & ((\C1|Q2Xa[1]~1\) # (GND))) # (!\C1|SQ_X2\(2) & (!\C1|Q2Xa[1]~1\))
-- \C1|Q2Xa[2]~3\ = CARRY((\C1|SQ_X2\(2)) # (!\C1|Q2Xa[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Q2Xa[1]~1\,
	combout => \C1|Q2Xa[2]~2_combout\,
	cout => \C1|Q2Xa[2]~3\);

-- Location: LCCOMB_X27_Y14_N10
\C1|Q2Xa[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[3]~4_combout\ = (\C1|SQ_X2\(3) & (!\C1|Q2Xa[2]~3\ & VCC)) # (!\C1|SQ_X2\(3) & (\C1|Q2Xa[2]~3\ $ (GND)))
-- \C1|Q2Xa[3]~5\ = CARRY((!\C1|SQ_X2\(3) & !\C1|Q2Xa[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Q2Xa[2]~3\,
	combout => \C1|Q2Xa[3]~4_combout\,
	cout => \C1|Q2Xa[3]~5\);

-- Location: LCCOMB_X27_Y14_N14
\C1|Q2Xa[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[5]~8_combout\ = (\C1|SQ_X2\(5) & (\C1|Q2Xa[4]~7\ $ (GND))) # (!\C1|SQ_X2\(5) & (!\C1|Q2Xa[4]~7\ & VCC))
-- \C1|Q2Xa[5]~9\ = CARRY((\C1|SQ_X2\(5) & !\C1|Q2Xa[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Q2Xa[4]~7\,
	combout => \C1|Q2Xa[5]~8_combout\,
	cout => \C1|Q2Xa[5]~9\);

-- Location: LCCOMB_X27_Y14_N16
\C1|Q2Xa[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[6]~10_combout\ = (\C1|SQ_X2\(6) & ((\C1|Q2Xa[5]~9\) # (GND))) # (!\C1|SQ_X2\(6) & (!\C1|Q2Xa[5]~9\))
-- \C1|Q2Xa[6]~11\ = CARRY((\C1|SQ_X2\(6)) # (!\C1|Q2Xa[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Q2Xa[5]~9\,
	combout => \C1|Q2Xa[6]~10_combout\,
	cout => \C1|Q2Xa[6]~11\);

-- Location: LCCOMB_X27_Y14_N20
\C1|Q2Xa[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[8]~14_combout\ = (\C1|SQ_X2\(8) & ((\C1|Q2Xa[7]~13\) # (GND))) # (!\C1|SQ_X2\(8) & (!\C1|Q2Xa[7]~13\))
-- \C1|Q2Xa[8]~15\ = CARRY((\C1|SQ_X2\(8)) # (!\C1|Q2Xa[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Q2Xa[7]~13\,
	combout => \C1|Q2Xa[8]~14_combout\,
	cout => \C1|Q2Xa[8]~15\);

-- Location: LCCOMB_X27_Y14_N22
\C1|Q2Xa[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[9]~16_combout\ = (\C1|SQ_X2\(9) & (\C1|Q2Xa[8]~15\ $ (GND))) # (!\C1|SQ_X2\(9) & (!\C1|Q2Xa[8]~15\ & VCC))
-- \C1|Q2Xa[9]~17\ = CARRY((\C1|SQ_X2\(9) & !\C1|Q2Xa[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Q2Xa[8]~15\,
	combout => \C1|Q2Xa[9]~16_combout\,
	cout => \C1|Q2Xa[9]~17\);

-- Location: LCCOMB_X27_Y14_N24
\C1|Q2Xa[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Q2Xa[10]~18_combout\ = (\C1|SQ_X2\(10) & (!\C1|Q2Xa[9]~17\)) # (!\C1|SQ_X2\(10) & ((\C1|Q2Xa[9]~17\) # (GND)))
-- \C1|Q2Xa[10]~19\ = CARRY((!\C1|Q2Xa[9]~17\) # (!\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Q2Xa[9]~17\,
	combout => \C1|Q2Xa[10]~18_combout\,
	cout => \C1|Q2Xa[10]~19\);

-- Location: LCCOMB_X27_Y14_N26
\C1|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add14~0_combout\ = !\C1|Q2Xa[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Q2Xa[10]~19\,
	combout => \C1|Add14~0_combout\);

-- Location: LCCOMB_X26_Y12_N4
\C1|LessThan202~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~1_cout\ = CARRY((\C1|Q2Xa[1]~0_combout\ & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[1]~0_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan202~1_cout\);

-- Location: LCCOMB_X26_Y12_N6
\C1|LessThan202~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~3_cout\ = CARRY((\C1|Add0~0_combout\ & ((!\C1|LessThan202~1_cout\) # (!\C1|Q2Xa[2]~2_combout\))) # (!\C1|Add0~0_combout\ & (!\C1|Q2Xa[2]~2_combout\ & !\C1|LessThan202~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Q2Xa[2]~2_combout\,
	datad => VCC,
	cin => \C1|LessThan202~1_cout\,
	cout => \C1|LessThan202~3_cout\);

-- Location: LCCOMB_X26_Y12_N8
\C1|LessThan202~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~5_cout\ = CARRY((\C1|Add0~2_combout\ & (\C1|Q2Xa[3]~4_combout\ & !\C1|LessThan202~3_cout\)) # (!\C1|Add0~2_combout\ & ((\C1|Q2Xa[3]~4_combout\) # (!\C1|LessThan202~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Q2Xa[3]~4_combout\,
	datad => VCC,
	cin => \C1|LessThan202~3_cout\,
	cout => \C1|LessThan202~5_cout\);

-- Location: LCCOMB_X26_Y12_N10
\C1|LessThan202~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~7_cout\ = CARRY((\C1|Q2Xa[4]~6_combout\ & (\C1|Add0~4_combout\ & !\C1|LessThan202~5_cout\)) # (!\C1|Q2Xa[4]~6_combout\ & ((\C1|Add0~4_combout\) # (!\C1|LessThan202~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[4]~6_combout\,
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan202~5_cout\,
	cout => \C1|LessThan202~7_cout\);

-- Location: LCCOMB_X26_Y12_N12
\C1|LessThan202~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~9_cout\ = CARRY((\C1|Add0~6_combout\ & (\C1|Q2Xa[5]~8_combout\ & !\C1|LessThan202~7_cout\)) # (!\C1|Add0~6_combout\ & ((\C1|Q2Xa[5]~8_combout\) # (!\C1|LessThan202~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|Q2Xa[5]~8_combout\,
	datad => VCC,
	cin => \C1|LessThan202~7_cout\,
	cout => \C1|LessThan202~9_cout\);

-- Location: LCCOMB_X26_Y12_N14
\C1|LessThan202~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~11_cout\ = CARRY((\C1|Add0~8_combout\ & ((!\C1|LessThan202~9_cout\) # (!\C1|Q2Xa[6]~10_combout\))) # (!\C1|Add0~8_combout\ & (!\C1|Q2Xa[6]~10_combout\ & !\C1|LessThan202~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|Q2Xa[6]~10_combout\,
	datad => VCC,
	cin => \C1|LessThan202~9_cout\,
	cout => \C1|LessThan202~11_cout\);

-- Location: LCCOMB_X26_Y12_N16
\C1|LessThan202~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~13_cout\ = CARRY((\C1|Q2Xa[7]~12_combout\ & ((!\C1|LessThan202~11_cout\) # (!\C1|Add0~10_combout\))) # (!\C1|Q2Xa[7]~12_combout\ & (!\C1|Add0~10_combout\ & !\C1|LessThan202~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[7]~12_combout\,
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan202~11_cout\,
	cout => \C1|LessThan202~13_cout\);

-- Location: LCCOMB_X26_Y12_N18
\C1|LessThan202~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~15_cout\ = CARRY((\C1|Add0~12_combout\ & ((!\C1|LessThan202~13_cout\) # (!\C1|Q2Xa[8]~14_combout\))) # (!\C1|Add0~12_combout\ & (!\C1|Q2Xa[8]~14_combout\ & !\C1|LessThan202~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|Q2Xa[8]~14_combout\,
	datad => VCC,
	cin => \C1|LessThan202~13_cout\,
	cout => \C1|LessThan202~15_cout\);

-- Location: LCCOMB_X26_Y12_N20
\C1|LessThan202~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~17_cout\ = CARRY((\C1|Q2Xa[9]~16_combout\ & ((!\C1|LessThan202~15_cout\) # (!\C1|Add0~14_combout\))) # (!\C1|Q2Xa[9]~16_combout\ & (!\C1|Add0~14_combout\ & !\C1|LessThan202~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[9]~16_combout\,
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|LessThan202~15_cout\,
	cout => \C1|LessThan202~17_cout\);

-- Location: LCCOMB_X26_Y12_N22
\C1|LessThan202~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~19_cout\ = CARRY((\C1|Add0~16_combout\ & ((!\C1|LessThan202~17_cout\) # (!\C1|Q2Xa[10]~18_combout\))) # (!\C1|Add0~16_combout\ & (!\C1|Q2Xa[10]~18_combout\ & !\C1|LessThan202~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Q2Xa[10]~18_combout\,
	datad => VCC,
	cin => \C1|LessThan202~17_cout\,
	cout => \C1|LessThan202~19_cout\);

-- Location: LCCOMB_X26_Y12_N24
\C1|LessThan202~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan202~20_combout\ = (\C1|Add0~18_combout\ & (!\C1|LessThan202~19_cout\ & \C1|Add14~0_combout\)) # (!\C1|Add0~18_combout\ & ((\C1|Add14~0_combout\) # (!\C1|LessThan202~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~18_combout\,
	datad => \C1|Add14~0_combout\,
	cin => \C1|LessThan202~19_cout\,
	combout => \C1|LessThan202~20_combout\);

-- Location: LCCOMB_X27_Y18_N0
\C1|LessThan201~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~1_cout\ = CARRY((\C1|SQ_X1\(1) & \C1|Q2Xa[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|Q2Xa[1]~0_combout\,
	datad => VCC,
	cout => \C1|LessThan201~1_cout\);

-- Location: LCCOMB_X27_Y18_N2
\C1|LessThan201~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~3_cout\ = CARRY((\C1|SQ_X1\(2) & ((!\C1|LessThan201~1_cout\) # (!\C1|Q2Xa[2]~2_combout\))) # (!\C1|SQ_X1\(2) & (!\C1|Q2Xa[2]~2_combout\ & !\C1|LessThan201~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|Q2Xa[2]~2_combout\,
	datad => VCC,
	cin => \C1|LessThan201~1_cout\,
	cout => \C1|LessThan201~3_cout\);

-- Location: LCCOMB_X27_Y18_N4
\C1|LessThan201~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~5_cout\ = CARRY((\C1|SQ_X1\(3) & (\C1|Q2Xa[3]~4_combout\ & !\C1|LessThan201~3_cout\)) # (!\C1|SQ_X1\(3) & ((\C1|Q2Xa[3]~4_combout\) # (!\C1|LessThan201~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|Q2Xa[3]~4_combout\,
	datad => VCC,
	cin => \C1|LessThan201~3_cout\,
	cout => \C1|LessThan201~5_cout\);

-- Location: LCCOMB_X27_Y18_N6
\C1|LessThan201~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~7_cout\ = CARRY((\C1|Q2Xa[4]~6_combout\ & (!\C1|SQ_X1\(4) & !\C1|LessThan201~5_cout\)) # (!\C1|Q2Xa[4]~6_combout\ & ((!\C1|LessThan201~5_cout\) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[4]~6_combout\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan201~5_cout\,
	cout => \C1|LessThan201~7_cout\);

-- Location: LCCOMB_X27_Y18_N8
\C1|LessThan201~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~9_cout\ = CARRY((\C1|Q2Xa[5]~8_combout\ & ((\C1|SQ_X1\(5)) # (!\C1|LessThan201~7_cout\))) # (!\C1|Q2Xa[5]~8_combout\ & (\C1|SQ_X1\(5) & !\C1|LessThan201~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[5]~8_combout\,
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan201~7_cout\,
	cout => \C1|LessThan201~9_cout\);

-- Location: LCCOMB_X27_Y18_N10
\C1|LessThan201~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~11_cout\ = CARRY((\C1|SQ_X1\(6) & ((!\C1|LessThan201~9_cout\) # (!\C1|Q2Xa[6]~10_combout\))) # (!\C1|SQ_X1\(6) & (!\C1|Q2Xa[6]~10_combout\ & !\C1|LessThan201~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|Q2Xa[6]~10_combout\,
	datad => VCC,
	cin => \C1|LessThan201~9_cout\,
	cout => \C1|LessThan201~11_cout\);

-- Location: LCCOMB_X27_Y18_N12
\C1|LessThan201~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~13_cout\ = CARRY((\C1|Q2Xa[7]~12_combout\ & ((\C1|SQ_X1\(7)) # (!\C1|LessThan201~11_cout\))) # (!\C1|Q2Xa[7]~12_combout\ & (\C1|SQ_X1\(7) & !\C1|LessThan201~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[7]~12_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan201~11_cout\,
	cout => \C1|LessThan201~13_cout\);

-- Location: LCCOMB_X27_Y18_N14
\C1|LessThan201~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~15_cout\ = CARRY((\C1|Q2Xa[8]~14_combout\ & (!\C1|SQ_X1\(8) & !\C1|LessThan201~13_cout\)) # (!\C1|Q2Xa[8]~14_combout\ & ((!\C1|LessThan201~13_cout\) # (!\C1|SQ_X1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Q2Xa[8]~14_combout\,
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|LessThan201~13_cout\,
	cout => \C1|LessThan201~15_cout\);

-- Location: LCCOMB_X27_Y18_N16
\C1|LessThan201~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|Q2Xa[9]~16_combout\ & !\C1|LessThan201~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|Q2Xa[9]~16_combout\) # (!\C1|LessThan201~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|Q2Xa[9]~16_combout\,
	datad => VCC,
	cin => \C1|LessThan201~15_cout\,
	cout => \C1|LessThan201~17_cout\);

-- Location: LCCOMB_X27_Y18_N18
\C1|LessThan201~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan201~17_cout\ & \C1|Q2Xa[10]~18_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan201~17_cout\) # (\C1|Q2Xa[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|Q2Xa[10]~18_combout\,
	cin => \C1|LessThan201~17_cout\,
	combout => \C1|LessThan201~18_combout\);

-- Location: LCCOMB_X25_Y14_N16
\C1|touchDown2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown2~2_combout\ = (\C1|SQ~0_combout\) # ((!\C1|LessThan202~20_combout\ & ((\C1|Add14~0_combout\) # (\C1|LessThan201~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add14~0_combout\,
	datab => \C1|LessThan202~20_combout\,
	datac => \C1|SQ~0_combout\,
	datad => \C1|LessThan201~18_combout\,
	combout => \C1|touchDown2~2_combout\);

-- Location: LCCOMB_X26_Y15_N4
\C1|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~2_combout\ = (\C1|SQ_X2\(2) & (!\C1|Add15~1\)) # (!\C1|SQ_X2\(2) & (\C1|Add15~1\ & VCC))
-- \C1|Add15~3\ = CARRY((\C1|SQ_X2\(2) & !\C1|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Add15~1\,
	combout => \C1|Add15~2_combout\,
	cout => \C1|Add15~3\);

-- Location: LCCOMB_X26_Y15_N6
\C1|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~4_combout\ = (\C1|SQ_X2\(3) & (\C1|Add15~3\ $ (GND))) # (!\C1|SQ_X2\(3) & ((GND) # (!\C1|Add15~3\)))
-- \C1|Add15~5\ = CARRY((!\C1|Add15~3\) # (!\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add15~3\,
	combout => \C1|Add15~4_combout\,
	cout => \C1|Add15~5\);

-- Location: LCCOMB_X26_Y15_N8
\C1|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~6_combout\ = (\C1|Add2~0_combout\ & (!\C1|Add15~5\)) # (!\C1|Add2~0_combout\ & ((\C1|Add15~5\) # (GND)))
-- \C1|Add15~7\ = CARRY((!\C1|Add15~5\) # (!\C1|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|Add15~5\,
	combout => \C1|Add15~6_combout\,
	cout => \C1|Add15~7\);

-- Location: LCCOMB_X26_Y15_N10
\C1|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~8_combout\ = (\C1|Add2~2_combout\ & ((GND) # (!\C1|Add15~7\))) # (!\C1|Add2~2_combout\ & (\C1|Add15~7\ $ (GND)))
-- \C1|Add15~9\ = CARRY((\C1|Add2~2_combout\) # (!\C1|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|Add15~7\,
	combout => \C1|Add15~8_combout\,
	cout => \C1|Add15~9\);

-- Location: LCCOMB_X26_Y15_N12
\C1|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~10_combout\ = (\C1|Add2~4_combout\ & (\C1|Add15~9\ & VCC)) # (!\C1|Add2~4_combout\ & (!\C1|Add15~9\))
-- \C1|Add15~11\ = CARRY((!\C1|Add2~4_combout\ & !\C1|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|Add15~9\,
	combout => \C1|Add15~10_combout\,
	cout => \C1|Add15~11\);

-- Location: LCCOMB_X26_Y15_N14
\C1|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~12_combout\ = (\C1|Add2~6_combout\ & ((GND) # (!\C1|Add15~11\))) # (!\C1|Add2~6_combout\ & (\C1|Add15~11\ $ (GND)))
-- \C1|Add15~13\ = CARRY((\C1|Add2~6_combout\) # (!\C1|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|Add15~11\,
	combout => \C1|Add15~12_combout\,
	cout => \C1|Add15~13\);

-- Location: LCCOMB_X26_Y15_N16
\C1|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~14_combout\ = (\C1|Add2~8_combout\ & (\C1|Add15~13\ & VCC)) # (!\C1|Add2~8_combout\ & (!\C1|Add15~13\))
-- \C1|Add15~15\ = CARRY((!\C1|Add2~8_combout\ & !\C1|Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~8_combout\,
	datad => VCC,
	cin => \C1|Add15~13\,
	combout => \C1|Add15~14_combout\,
	cout => \C1|Add15~15\);

-- Location: LCCOMB_X26_Y15_N18
\C1|Add15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~16_combout\ = (\C1|Add2~10_combout\ & ((GND) # (!\C1|Add15~15\))) # (!\C1|Add2~10_combout\ & (\C1|Add15~15\ $ (GND)))
-- \C1|Add15~17\ = CARRY((\C1|Add2~10_combout\) # (!\C1|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datad => VCC,
	cin => \C1|Add15~15\,
	combout => \C1|Add15~16_combout\,
	cout => \C1|Add15~17\);

-- Location: LCCOMB_X26_Y15_N20
\C1|Add15~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add15~18_combout\ = (\C1|Add2~12_combout\ & (\C1|Add15~17\ & VCC)) # (!\C1|Add2~12_combout\ & (!\C1|Add15~17\))
-- \C1|Add15~19\ = CARRY((!\C1|Add2~12_combout\ & !\C1|Add15~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~12_combout\,
	datad => VCC,
	cin => \C1|Add15~17\,
	combout => \C1|Add15~18_combout\,
	cout => \C1|Add15~19\);

-- Location: LCCOMB_X25_Y12_N10
\C1|LessThan204~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~1_cout\ = CARRY((\C1|Add15~0_combout\ & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~0_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan204~1_cout\);

-- Location: LCCOMB_X25_Y12_N12
\C1|LessThan204~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~3_cout\ = CARRY((\C1|Add0~0_combout\ & ((!\C1|LessThan204~1_cout\) # (!\C1|Add15~2_combout\))) # (!\C1|Add0~0_combout\ & (!\C1|Add15~2_combout\ & !\C1|LessThan204~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Add15~2_combout\,
	datad => VCC,
	cin => \C1|LessThan204~1_cout\,
	cout => \C1|LessThan204~3_cout\);

-- Location: LCCOMB_X25_Y12_N14
\C1|LessThan204~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~5_cout\ = CARRY((\C1|Add0~2_combout\ & (\C1|Add15~4_combout\ & !\C1|LessThan204~3_cout\)) # (!\C1|Add0~2_combout\ & ((\C1|Add15~4_combout\) # (!\C1|LessThan204~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Add15~4_combout\,
	datad => VCC,
	cin => \C1|LessThan204~3_cout\,
	cout => \C1|LessThan204~5_cout\);

-- Location: LCCOMB_X25_Y12_N16
\C1|LessThan204~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~7_cout\ = CARRY((\C1|Add0~4_combout\ & ((!\C1|LessThan204~5_cout\) # (!\C1|Add15~6_combout\))) # (!\C1|Add0~4_combout\ & (!\C1|Add15~6_combout\ & !\C1|LessThan204~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datab => \C1|Add15~6_combout\,
	datad => VCC,
	cin => \C1|LessThan204~5_cout\,
	cout => \C1|LessThan204~7_cout\);

-- Location: LCCOMB_X25_Y12_N18
\C1|LessThan204~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~9_cout\ = CARRY((\C1|Add15~8_combout\ & ((!\C1|LessThan204~7_cout\) # (!\C1|Add0~6_combout\))) # (!\C1|Add15~8_combout\ & (!\C1|Add0~6_combout\ & !\C1|LessThan204~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~8_combout\,
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan204~7_cout\,
	cout => \C1|LessThan204~9_cout\);

-- Location: LCCOMB_X25_Y12_N20
\C1|LessThan204~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~11_cout\ = CARRY((\C1|Add0~8_combout\ & ((!\C1|LessThan204~9_cout\) # (!\C1|Add15~10_combout\))) # (!\C1|Add0~8_combout\ & (!\C1|Add15~10_combout\ & !\C1|LessThan204~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|Add15~10_combout\,
	datad => VCC,
	cin => \C1|LessThan204~9_cout\,
	cout => \C1|LessThan204~11_cout\);

-- Location: LCCOMB_X25_Y12_N22
\C1|LessThan204~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~13_cout\ = CARRY((\C1|Add0~10_combout\ & (\C1|Add15~12_combout\ & !\C1|LessThan204~11_cout\)) # (!\C1|Add0~10_combout\ & ((\C1|Add15~12_combout\) # (!\C1|LessThan204~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|Add15~12_combout\,
	datad => VCC,
	cin => \C1|LessThan204~11_cout\,
	cout => \C1|LessThan204~13_cout\);

-- Location: LCCOMB_X25_Y12_N24
\C1|LessThan204~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~15_cout\ = CARRY((\C1|Add0~12_combout\ & ((!\C1|LessThan204~13_cout\) # (!\C1|Add15~14_combout\))) # (!\C1|Add0~12_combout\ & (!\C1|Add15~14_combout\ & !\C1|LessThan204~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|Add15~14_combout\,
	datad => VCC,
	cin => \C1|LessThan204~13_cout\,
	cout => \C1|LessThan204~15_cout\);

-- Location: LCCOMB_X25_Y12_N26
\C1|LessThan204~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~17_cout\ = CARRY((\C1|Add0~14_combout\ & (\C1|Add15~16_combout\ & !\C1|LessThan204~15_cout\)) # (!\C1|Add0~14_combout\ & ((\C1|Add15~16_combout\) # (!\C1|LessThan204~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~14_combout\,
	datab => \C1|Add15~16_combout\,
	datad => VCC,
	cin => \C1|LessThan204~15_cout\,
	cout => \C1|LessThan204~17_cout\);

-- Location: LCCOMB_X25_Y12_N28
\C1|LessThan204~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~19_cout\ = CARRY((\C1|Add0~16_combout\ & ((!\C1|LessThan204~17_cout\) # (!\C1|Add15~18_combout\))) # (!\C1|Add0~16_combout\ & (!\C1|Add15~18_combout\ & !\C1|LessThan204~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add15~18_combout\,
	datad => VCC,
	cin => \C1|LessThan204~17_cout\,
	cout => \C1|LessThan204~19_cout\);

-- Location: LCCOMB_X25_Y12_N30
\C1|LessThan204~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~20_combout\ = (\C1|Add0~18_combout\ & (!\C1|LessThan204~19_cout\ & \C1|Add15~20_combout\)) # (!\C1|Add0~18_combout\ & ((\C1|Add15~20_combout\) # (!\C1|LessThan204~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~18_combout\,
	datad => \C1|Add15~20_combout\,
	cin => \C1|LessThan204~19_cout\,
	combout => \C1|LessThan204~20_combout\);

-- Location: LCCOMB_X25_Y15_N2
\C1|LessThan203~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~1_cout\ = CARRY((\C1|Add15~0_combout\ & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~0_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan203~1_cout\);

-- Location: LCCOMB_X25_Y15_N4
\C1|LessThan203~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~3_cout\ = CARRY((\C1|Add15~2_combout\ & (\C1|SQ_X1\(2) & !\C1|LessThan203~1_cout\)) # (!\C1|Add15~2_combout\ & ((\C1|SQ_X1\(2)) # (!\C1|LessThan203~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~2_combout\,
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan203~1_cout\,
	cout => \C1|LessThan203~3_cout\);

-- Location: LCCOMB_X25_Y15_N6
\C1|LessThan203~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~5_cout\ = CARRY((\C1|Add15~4_combout\ & ((!\C1|LessThan203~3_cout\) # (!\C1|SQ_X1\(3)))) # (!\C1|Add15~4_combout\ & (!\C1|SQ_X1\(3) & !\C1|LessThan203~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~4_combout\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan203~3_cout\,
	cout => \C1|LessThan203~5_cout\);

-- Location: LCCOMB_X25_Y15_N8
\C1|LessThan203~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~7_cout\ = CARRY((\C1|SQ_X1\(4) & (!\C1|Add15~6_combout\ & !\C1|LessThan203~5_cout\)) # (!\C1|SQ_X1\(4) & ((!\C1|LessThan203~5_cout\) # (!\C1|Add15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|Add15~6_combout\,
	datad => VCC,
	cin => \C1|LessThan203~5_cout\,
	cout => \C1|LessThan203~7_cout\);

-- Location: LCCOMB_X25_Y15_N10
\C1|LessThan203~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~9_cout\ = CARRY((\C1|SQ_X1\(5) & ((\C1|Add15~8_combout\) # (!\C1|LessThan203~7_cout\))) # (!\C1|SQ_X1\(5) & (\C1|Add15~8_combout\ & !\C1|LessThan203~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|Add15~8_combout\,
	datad => VCC,
	cin => \C1|LessThan203~7_cout\,
	cout => \C1|LessThan203~9_cout\);

-- Location: LCCOMB_X25_Y15_N12
\C1|LessThan203~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~11_cout\ = CARRY((\C1|SQ_X1\(6) & ((!\C1|LessThan203~9_cout\) # (!\C1|Add15~10_combout\))) # (!\C1|SQ_X1\(6) & (!\C1|Add15~10_combout\ & !\C1|LessThan203~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|Add15~10_combout\,
	datad => VCC,
	cin => \C1|LessThan203~9_cout\,
	cout => \C1|LessThan203~11_cout\);

-- Location: LCCOMB_X25_Y15_N14
\C1|LessThan203~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~13_cout\ = CARRY((\C1|SQ_X1\(7) & ((\C1|Add15~12_combout\) # (!\C1|LessThan203~11_cout\))) # (!\C1|SQ_X1\(7) & (\C1|Add15~12_combout\ & !\C1|LessThan203~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|Add15~12_combout\,
	datad => VCC,
	cin => \C1|LessThan203~11_cout\,
	cout => \C1|LessThan203~13_cout\);

-- Location: LCCOMB_X25_Y15_N16
\C1|LessThan203~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~15_cout\ = CARRY((\C1|Add15~14_combout\ & (!\C1|SQ_X1\(8) & !\C1|LessThan203~13_cout\)) # (!\C1|Add15~14_combout\ & ((!\C1|LessThan203~13_cout\) # (!\C1|SQ_X1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~14_combout\,
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|LessThan203~13_cout\,
	cout => \C1|LessThan203~15_cout\);

-- Location: LCCOMB_X25_Y15_N18
\C1|LessThan203~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|Add15~16_combout\ & !\C1|LessThan203~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|Add15~16_combout\) # (!\C1|LessThan203~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|Add15~16_combout\,
	datad => VCC,
	cin => \C1|LessThan203~15_cout\,
	cout => \C1|LessThan203~17_cout\);

-- Location: LCCOMB_X25_Y15_N20
\C1|LessThan203~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan203~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan203~17_cout\ & \C1|Add15~18_combout\)) # (!\C1|SQ_X1\(10) & ((\C1|LessThan203~17_cout\) # (\C1|Add15~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datad => \C1|Add15~18_combout\,
	cin => \C1|LessThan203~17_cout\,
	combout => \C1|LessThan203~18_combout\);

-- Location: LCCOMB_X24_Y14_N28
\C1|touchDown2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown2~0_combout\ = (\C1|Add15~22_combout\ & (!\C1|LessThan204~20_combout\ & ((\C1|Add15~20_combout\) # (\C1|LessThan203~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~22_combout\,
	datab => \C1|Add15~20_combout\,
	datac => \C1|LessThan204~20_combout\,
	datad => \C1|LessThan203~18_combout\,
	combout => \C1|touchDown2~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\C1|touchDown2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|touchDown2~4_combout\ = (\C1|touchDown2~1_combout\) # ((\C1|touchDown2~3_combout\) # ((\C1|touchDown2~2_combout\) # (\C1|touchDown2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|touchDown2~1_combout\,
	datab => \C1|touchDown2~3_combout\,
	datac => \C1|touchDown2~2_combout\,
	datad => \C1|touchDown2~0_combout\,
	combout => \C1|touchDown2~4_combout\);

-- Location: LCCOMB_X23_Y14_N0
\C1|SQ2_noAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_noAR~0_combout\ = (\C1|LessThan200~20_combout\ & (\C1|touchDown2~4_combout\ & ((\C1|Add3~20_combout\) # (!\C1|LessThan199~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan199~18_combout\,
	datab => \C1|LessThan200~20_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|touchDown2~4_combout\,
	combout => \C1|SQ2_noAR~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\C1|SQ2_noAR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_noAR~1_combout\ = (\C1|arQ2X2~0_combout\) # ((\C1|SQ2_noAR~0_combout\) # ((\C1|arQ2X1~0_combout\ & \C1|DRAWMAP~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|arQ2X1~0_combout\,
	datab => \C1|DRAWMAP~119_combout\,
	datac => \C1|arQ2X2~0_combout\,
	datad => \C1|SQ2_noAR~0_combout\,
	combout => \C1|SQ2_noAR~1_combout\);

-- Location: LCCOMB_X22_Y18_N0
\C1|SQ2_Jump[4]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump[4]~64_combout\ = (\C1|touchDown1~1_combout\) # ((\KEY~combout\(2)) # ((!\C1|SQ2_noAR~1_combout\) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|touchDown1~1_combout\,
	datab => \KEY~combout\(2),
	datac => \SW~combout\(1),
	datad => \C1|SQ2_noAR~1_combout\,
	combout => \C1|SQ2_Jump[4]~64_combout\);

-- Location: LCCOMB_X20_Y18_N28
\C1|SQ2_Jump~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~77_combout\ = (\C1|Add25~20_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~20_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~77_combout\);

-- Location: LCCOMB_X22_Y18_N6
\C1|SQ2_Jump[31]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump[31]~65_combout\ = (\C1|SQ_X1[1]~0_combout\ & ((!\C1|SQ2_Jump[4]~64_combout\) # (!\C1|LessThan314~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan314~10_combout\,
	datac => \C1|SQ_X1[1]~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump[31]~65_combout\);

-- Location: LCFF_X20_Y18_N29
\C1|SQ2_Jump[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~77_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(10));

-- Location: LCCOMB_X21_Y18_N0
\C1|SQ2_Jump~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~73_combout\ = (\C1|Add25~12_combout\ & (!\C1|dirQ2X1~0_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~12_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~73_combout\);

-- Location: LCFF_X21_Y18_N1
\C1|SQ2_Jump[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~73_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(6));

-- Location: LCCOMB_X20_Y18_N12
\C1|SQ2_Jump~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~67_combout\ = (\C1|Add25~0_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~0_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~67_combout\);

-- Location: LCFF_X20_Y18_N13
\C1|SQ2_Jump[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~67_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(0));

-- Location: LCCOMB_X19_Y18_N4
\C1|Add25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~4_combout\ = (\C1|SQ2_Jump\(2) & ((GND) # (!\C1|Add25~3\))) # (!\C1|SQ2_Jump\(2) & (\C1|Add25~3\ $ (GND)))
-- \C1|Add25~5\ = CARRY((\C1|SQ2_Jump\(2)) # (!\C1|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(2),
	datad => VCC,
	cin => \C1|Add25~3\,
	combout => \C1|Add25~4_combout\,
	cout => \C1|Add25~5\);

-- Location: LCCOMB_X21_Y18_N16
\C1|SQ2_Jump~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~69_combout\ = ((!\C1|dirQ2X1~0_combout\ & (\C1|Add25~4_combout\ & !\C1|esqQ2X1~0_combout\))) # (!\C1|SQ2_Jump[4]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~4_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~69_combout\);

-- Location: LCFF_X21_Y18_N17
\C1|SQ2_Jump[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~69_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(2));

-- Location: LCCOMB_X19_Y18_N8
\C1|Add25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~8_combout\ = (\C1|SQ2_Jump\(4) & ((GND) # (!\C1|Add25~7\))) # (!\C1|SQ2_Jump\(4) & (\C1|Add25~7\ $ (GND)))
-- \C1|Add25~9\ = CARRY((\C1|SQ2_Jump\(4)) # (!\C1|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(4),
	datad => VCC,
	cin => \C1|Add25~7\,
	combout => \C1|Add25~8_combout\,
	cout => \C1|Add25~9\);

-- Location: LCCOMB_X19_Y18_N10
\C1|Add25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~10_combout\ = (\C1|SQ2_Jump\(5) & (\C1|Add25~9\ & VCC)) # (!\C1|SQ2_Jump\(5) & (!\C1|Add25~9\))
-- \C1|Add25~11\ = CARRY((!\C1|SQ2_Jump\(5) & !\C1|Add25~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(5),
	datad => VCC,
	cin => \C1|Add25~9\,
	combout => \C1|Add25~10_combout\,
	cout => \C1|Add25~11\);

-- Location: LCCOMB_X21_Y18_N22
\C1|SQ2_Jump~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~72_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add25~10_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add25~10_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~72_combout\);

-- Location: LCFF_X21_Y18_N23
\C1|SQ2_Jump[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~72_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(5));

-- Location: LCCOMB_X19_Y18_N16
\C1|Add25~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~16_combout\ = (\C1|SQ2_Jump\(8) & ((GND) # (!\C1|Add25~15\))) # (!\C1|SQ2_Jump\(8) & (\C1|Add25~15\ $ (GND)))
-- \C1|Add25~17\ = CARRY((\C1|SQ2_Jump\(8)) # (!\C1|Add25~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(8),
	datad => VCC,
	cin => \C1|Add25~15\,
	combout => \C1|Add25~16_combout\,
	cout => \C1|Add25~17\);

-- Location: LCCOMB_X20_Y18_N24
\C1|SQ2_Jump~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~75_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~16_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~16_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~75_combout\);

-- Location: LCFF_X20_Y18_N25
\C1|SQ2_Jump[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~75_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(8));

-- Location: LCCOMB_X19_Y18_N18
\C1|Add25~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~18_combout\ = (\C1|SQ2_Jump\(9) & (\C1|Add25~17\ & VCC)) # (!\C1|SQ2_Jump\(9) & (!\C1|Add25~17\))
-- \C1|Add25~19\ = CARRY((!\C1|SQ2_Jump\(9) & !\C1|Add25~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(9),
	datad => VCC,
	cin => \C1|Add25~17\,
	combout => \C1|Add25~18_combout\,
	cout => \C1|Add25~19\);

-- Location: LCCOMB_X20_Y18_N30
\C1|SQ2_Jump~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~76_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~18_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~18_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~76_combout\);

-- Location: LCFF_X20_Y18_N31
\C1|SQ2_Jump[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~76_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(9));

-- Location: LCCOMB_X19_Y18_N22
\C1|Add25~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~22_combout\ = (\C1|SQ2_Jump\(11) & (\C1|Add25~21\ & VCC)) # (!\C1|SQ2_Jump\(11) & (!\C1|Add25~21\))
-- \C1|Add25~23\ = CARRY((!\C1|SQ2_Jump\(11) & !\C1|Add25~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(11),
	datad => VCC,
	cin => \C1|Add25~21\,
	combout => \C1|Add25~22_combout\,
	cout => \C1|Add25~23\);

-- Location: LCCOMB_X20_Y18_N10
\C1|SQ2_Jump~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~78_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~22_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~22_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~78_combout\);

-- Location: LCFF_X20_Y18_N11
\C1|SQ2_Jump[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~78_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(11));

-- Location: LCCOMB_X19_Y18_N24
\C1|Add25~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~24_combout\ = (\C1|SQ2_Jump\(12) & ((GND) # (!\C1|Add25~23\))) # (!\C1|SQ2_Jump\(12) & (\C1|Add25~23\ $ (GND)))
-- \C1|Add25~25\ = CARRY((\C1|SQ2_Jump\(12)) # (!\C1|Add25~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(12),
	datad => VCC,
	cin => \C1|Add25~23\,
	combout => \C1|Add25~24_combout\,
	cout => \C1|Add25~25\);

-- Location: LCCOMB_X20_Y18_N14
\C1|SQ2_Jump~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~79_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~24_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~24_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~79_combout\);

-- Location: LCFF_X20_Y18_N15
\C1|SQ2_Jump[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~79_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(12));

-- Location: LCCOMB_X19_Y18_N26
\C1|Add25~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~26_combout\ = (\C1|SQ2_Jump\(13) & (\C1|Add25~25\ & VCC)) # (!\C1|SQ2_Jump\(13) & (!\C1|Add25~25\))
-- \C1|Add25~27\ = CARRY((!\C1|SQ2_Jump\(13) & !\C1|Add25~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(13),
	datad => VCC,
	cin => \C1|Add25~25\,
	combout => \C1|Add25~26_combout\,
	cout => \C1|Add25~27\);

-- Location: LCCOMB_X19_Y18_N28
\C1|Add25~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~28_combout\ = (\C1|SQ2_Jump\(14) & ((GND) # (!\C1|Add25~27\))) # (!\C1|SQ2_Jump\(14) & (\C1|Add25~27\ $ (GND)))
-- \C1|Add25~29\ = CARRY((\C1|SQ2_Jump\(14)) # (!\C1|Add25~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(14),
	datad => VCC,
	cin => \C1|Add25~27\,
	combout => \C1|Add25~28_combout\,
	cout => \C1|Add25~29\);

-- Location: LCCOMB_X20_Y18_N8
\C1|SQ2_Jump~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~81_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~28_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~28_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~81_combout\);

-- Location: LCFF_X20_Y18_N9
\C1|SQ2_Jump[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~81_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(14));

-- Location: LCCOMB_X19_Y17_N2
\C1|Add25~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~34_combout\ = (\C1|SQ2_Jump\(17) & (\C1|Add25~33\ & VCC)) # (!\C1|SQ2_Jump\(17) & (!\C1|Add25~33\))
-- \C1|Add25~35\ = CARRY((!\C1|SQ2_Jump\(17) & !\C1|Add25~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(17),
	datad => VCC,
	cin => \C1|Add25~33\,
	combout => \C1|Add25~34_combout\,
	cout => \C1|Add25~35\);

-- Location: LCCOMB_X21_Y18_N18
\C1|SQ2_Jump~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~90_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~34_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~34_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~90_combout\);

-- Location: LCFF_X21_Y18_N19
\C1|SQ2_Jump[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~90_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(17));

-- Location: LCCOMB_X21_Y18_N28
\C1|SQ2_Jump~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~89_combout\ = (\C1|Add25~32_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~32_combout\,
	datab => \C1|SQ2_Jump[4]~64_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~89_combout\);

-- Location: LCFF_X21_Y18_N29
\C1|SQ2_Jump[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~89_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(16));

-- Location: LCCOMB_X21_Y18_N2
\C1|SQ2_Jump~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~87_combout\ = (\C1|Add25~44_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~44_combout\,
	datab => \C1|SQ2_Jump[4]~64_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~87_combout\);

-- Location: LCFF_X21_Y18_N3
\C1|SQ2_Jump[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~87_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(22));

-- Location: LCCOMB_X19_Y17_N8
\C1|Add25~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~40_combout\ = (\C1|SQ2_Jump\(20) & ((GND) # (!\C1|Add25~39\))) # (!\C1|SQ2_Jump\(20) & (\C1|Add25~39\ $ (GND)))
-- \C1|Add25~41\ = CARRY((\C1|SQ2_Jump\(20)) # (!\C1|Add25~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(20),
	datad => VCC,
	cin => \C1|Add25~39\,
	combout => \C1|Add25~40_combout\,
	cout => \C1|Add25~41\);

-- Location: LCCOMB_X21_Y18_N6
\C1|SQ2_Jump~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~85_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~40_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~40_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~85_combout\);

-- Location: LCFF_X21_Y18_N7
\C1|SQ2_Jump[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~85_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(20));

-- Location: LCCOMB_X19_Y17_N10
\C1|Add25~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~42_combout\ = (\C1|SQ2_Jump\(21) & (\C1|Add25~41\ & VCC)) # (!\C1|SQ2_Jump\(21) & (!\C1|Add25~41\))
-- \C1|Add25~43\ = CARRY((!\C1|SQ2_Jump\(21) & !\C1|Add25~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(21),
	datad => VCC,
	cin => \C1|Add25~41\,
	combout => \C1|Add25~42_combout\,
	cout => \C1|Add25~43\);

-- Location: LCCOMB_X21_Y18_N4
\C1|SQ2_Jump~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~86_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~42_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~42_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~86_combout\);

-- Location: LCFF_X21_Y18_N5
\C1|SQ2_Jump[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~86_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(21));

-- Location: LCCOMB_X21_Y18_N10
\C1|LessThan314~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~6_combout\ = (!\C1|SQ2_Jump\(23) & (!\C1|SQ2_Jump\(22) & (!\C1|SQ2_Jump\(21) & !\C1|SQ2_Jump\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(23),
	datab => \C1|SQ2_Jump\(22),
	datac => \C1|SQ2_Jump\(21),
	datad => \C1|SQ2_Jump\(20),
	combout => \C1|LessThan314~6_combout\);

-- Location: LCCOMB_X21_Y17_N22
\C1|LessThan314~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~7_combout\ = (\C1|LessThan314~5_combout\ & (!\C1|SQ2_Jump\(17) & (!\C1|SQ2_Jump\(16) & \C1|LessThan314~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan314~5_combout\,
	datab => \C1|SQ2_Jump\(17),
	datac => \C1|SQ2_Jump\(16),
	datad => \C1|LessThan314~6_combout\,
	combout => \C1|LessThan314~7_combout\);

-- Location: LCCOMB_X22_Y17_N28
\C1|SQ2_Jump~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~92_combout\ = (\C1|Add25~50_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~50_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~92_combout\);

-- Location: LCFF_X22_Y17_N29
\C1|SQ2_Jump[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~92_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(25));

-- Location: LCCOMB_X22_Y17_N24
\C1|SQ2_Jump~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~94_combout\ = (\C1|Add25~54_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~54_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~94_combout\);

-- Location: LCFF_X22_Y17_N25
\C1|SQ2_Jump[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~94_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(27));

-- Location: LCCOMB_X22_Y17_N6
\C1|SQ2_Jump~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~91_combout\ = (\C1|Add25~48_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~48_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~91_combout\);

-- Location: LCFF_X22_Y17_N7
\C1|SQ2_Jump[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~91_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(24));

-- Location: LCCOMB_X19_Y17_N14
\C1|Add25~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add25~46_combout\ = (\C1|SQ2_Jump\(23) & (\C1|Add25~45\ & VCC)) # (!\C1|SQ2_Jump\(23) & (!\C1|Add25~45\))
-- \C1|Add25~47\ = CARRY((!\C1|SQ2_Jump\(23) & !\C1|Add25~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(23),
	datad => VCC,
	cin => \C1|Add25~45\,
	combout => \C1|Add25~46_combout\,
	cout => \C1|Add25~47\);

-- Location: LCCOMB_X21_Y18_N20
\C1|SQ2_Jump~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~88_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~46_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~46_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~88_combout\);

-- Location: LCFF_X21_Y18_N21
\C1|SQ2_Jump[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~88_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(23));

-- Location: LCCOMB_X22_Y17_N26
\C1|SQ2_Jump~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~93_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add25~52_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add25~52_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~93_combout\);

-- Location: LCFF_X22_Y17_N27
\C1|SQ2_Jump[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~93_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(26));

-- Location: LCCOMB_X22_Y17_N18
\C1|LessThan314~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~8_combout\ = (!\C1|SQ2_Jump\(24) & (!\C1|SQ2_Jump\(25) & (!\C1|SQ2_Jump\(27) & !\C1|SQ2_Jump\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(24),
	datab => \C1|SQ2_Jump\(25),
	datac => \C1|SQ2_Jump\(27),
	datad => \C1|SQ2_Jump\(26),
	combout => \C1|LessThan314~8_combout\);

-- Location: LCCOMB_X22_Y17_N20
\C1|SQ2_Jump~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~97_combout\ = (\C1|Add25~60_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~60_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~97_combout\);

-- Location: LCFF_X22_Y17_N21
\C1|SQ2_Jump[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~97_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(30));

-- Location: LCCOMB_X22_Y17_N12
\C1|SQ2_Jump~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~95_combout\ = (\C1|Add25~56_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~56_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~95_combout\);

-- Location: LCFF_X22_Y17_N13
\C1|SQ2_Jump[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~95_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(28));

-- Location: LCCOMB_X22_Y17_N14
\C1|LessThan314~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~9_combout\ = (!\C1|SQ2_Jump\(29) & (\C1|LessThan314~8_combout\ & (!\C1|SQ2_Jump\(30) & !\C1|SQ2_Jump\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(29),
	datab => \C1|LessThan314~8_combout\,
	datac => \C1|SQ2_Jump\(30),
	datad => \C1|SQ2_Jump\(28),
	combout => \C1|LessThan314~9_combout\);

-- Location: LCCOMB_X20_Y18_N26
\C1|SQ2_Jump~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~68_combout\ = ((\C1|Add25~2_combout\ & (!\C1|esqQ2X1~0_combout\ & !\C1|dirQ2X1~0_combout\))) # (!\C1|SQ2_Jump[4]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~2_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~68_combout\);

-- Location: LCFF_X20_Y18_N27
\C1|SQ2_Jump[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~68_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(1));

-- Location: LCCOMB_X21_Y18_N30
\C1|SQ2_Jump~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~70_combout\ = ((\C1|Add25~6_combout\ & (!\C1|esqQ2X1~0_combout\ & !\C1|dirQ2X1~0_combout\))) # (!\C1|SQ2_Jump[4]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~6_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[4]~64_combout\,
	combout => \C1|SQ2_Jump~70_combout\);

-- Location: LCFF_X21_Y18_N31
\C1|SQ2_Jump[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~70_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(3));

-- Location: LCCOMB_X20_Y18_N4
\C1|LessThan314~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~0_combout\ = (!\C1|SQ2_Jump\(0) & (!\C1|SQ2_Jump\(1) & (!\C1|SQ2_Jump\(2) & !\C1|SQ2_Jump\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(0),
	datab => \C1|SQ2_Jump\(1),
	datac => \C1|SQ2_Jump\(2),
	datad => \C1|SQ2_Jump\(3),
	combout => \C1|LessThan314~0_combout\);

-- Location: LCCOMB_X21_Y18_N12
\C1|SQ2_Jump~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~80_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add25~26_combout\ & (\C1|SQ2_Jump[4]~64_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~26_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~80_combout\);

-- Location: LCFF_X21_Y18_N13
\C1|SQ2_Jump[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~80_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(13));

-- Location: LCCOMB_X20_Y18_N20
\C1|LessThan314~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~3_combout\ = (!\C1|SQ2_Jump\(15) & (!\C1|SQ2_Jump\(14) & (!\C1|SQ2_Jump\(13) & !\C1|SQ2_Jump\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(15),
	datab => \C1|SQ2_Jump\(14),
	datac => \C1|SQ2_Jump\(13),
	datad => \C1|SQ2_Jump\(12),
	combout => \C1|LessThan314~3_combout\);

-- Location: LCCOMB_X21_Y18_N24
\C1|SQ2_Jump~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~71_combout\ = ((!\C1|dirQ2X1~0_combout\ & (\C1|Add25~8_combout\ & !\C1|esqQ2X1~0_combout\))) # (!\C1|SQ2_Jump[4]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add25~8_combout\,
	datac => \C1|SQ2_Jump[4]~64_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~71_combout\);

-- Location: LCFF_X21_Y18_N25
\C1|SQ2_Jump[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~71_combout\,
	ena => \C1|SQ2_Jump[31]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(4));

-- Location: LCCOMB_X20_Y18_N2
\C1|LessThan314~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~1_combout\ = (!\C1|SQ2_Jump\(7) & (!\C1|SQ2_Jump\(5) & (!\C1|SQ2_Jump\(6) & !\C1|SQ2_Jump\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(7),
	datab => \C1|SQ2_Jump\(5),
	datac => \C1|SQ2_Jump\(6),
	datad => \C1|SQ2_Jump\(4),
	combout => \C1|LessThan314~1_combout\);

-- Location: LCCOMB_X20_Y18_N18
\C1|LessThan314~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~4_combout\ = (\C1|LessThan314~2_combout\ & (\C1|LessThan314~0_combout\ & (\C1|LessThan314~3_combout\ & \C1|LessThan314~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan314~2_combout\,
	datab => \C1|LessThan314~0_combout\,
	datac => \C1|LessThan314~3_combout\,
	datad => \C1|LessThan314~1_combout\,
	combout => \C1|LessThan314~4_combout\);

-- Location: LCCOMB_X21_Y17_N24
\C1|LessThan314~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan314~10_combout\ = (\C1|SQ2_Jump\(31)) # ((\C1|LessThan314~7_combout\ & (\C1|LessThan314~9_combout\ & \C1|LessThan314~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(31),
	datab => \C1|LessThan314~7_combout\,
	datac => \C1|LessThan314~9_combout\,
	datad => \C1|LessThan314~4_combout\,
	combout => \C1|LessThan314~10_combout\);

-- Location: LCCOMB_X22_Y18_N14
\C1|SQ_Y2[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~0_combout\ = (\C1|LessThan314~10_combout\) # ((\C1|dirQ2X1~0_combout\) # (\C1|esqQ2X1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan314~10_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ_Y2[7]~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\C1|SQ_Y2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~1_combout\ = (\C1|SQ_X1[1]~0_combout\ & ((!\C1|SQ2_noAR~1_combout\) # (!\C1|SQ_Y2[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[1]~0_combout\,
	datac => \C1|SQ_Y2[7]~0_combout\,
	datad => \C1|SQ2_noAR~1_combout\,
	combout => \C1|SQ_Y2[1]~1_combout\);

-- Location: LCFF_X24_Y18_N1
\C1|SQ_Y2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[1]~7_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(1));

-- Location: LCCOMB_X23_Y18_N10
\C1|Add21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~2_combout\ = (\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(2) & ((\C1|Add21~1\) # (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|Add21~1\)))) # (!\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(2) & (!\C1|Add21~1\)) # (!\C1|SQ_Y2\(2) & (\C1|Add21~1\ & VCC))))
-- \C1|Add21~3\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(2)) # (!\C1|Add21~1\))) # (!\C1|SQ_Y2[7]~0_combout\ & (\C1|SQ_Y2\(2) & !\C1|Add21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add21~1\,
	combout => \C1|Add21~2_combout\,
	cout => \C1|Add21~3\);

-- Location: LCCOMB_X24_Y18_N2
\C1|SQ_Y2[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[2]~6_combout\ = !\C1|Add21~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~2_combout\,
	combout => \C1|SQ_Y2[2]~6_combout\);

-- Location: LCFF_X24_Y18_N3
\C1|SQ_Y2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[2]~6_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X23_Y18_N12
\C1|Add21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~4_combout\ = ((\C1|SQ_Y2[7]~0_combout\ $ (\C1|SQ_Y2\(3) $ (!\C1|Add21~3\)))) # (GND)
-- \C1|Add21~5\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & (!\C1|SQ_Y2\(3) & !\C1|Add21~3\)) # (!\C1|SQ_Y2[7]~0_combout\ & ((!\C1|Add21~3\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add21~3\,
	combout => \C1|Add21~4_combout\,
	cout => \C1|Add21~5\);

-- Location: LCCOMB_X23_Y18_N4
\C1|SQ_Y2[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[3]~5_combout\ = !\C1|Add21~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~4_combout\,
	combout => \C1|SQ_Y2[3]~5_combout\);

-- Location: LCFF_X23_Y18_N5
\C1|SQ_Y2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[3]~5_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X23_Y18_N14
\C1|Add21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~6_combout\ = (\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(4) & (!\C1|Add21~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add21~5\) # (GND))))) # (!\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(4) & (\C1|Add21~5\ & VCC)) # (!\C1|SQ_Y2\(4) & (!\C1|Add21~5\))))
-- \C1|Add21~7\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & ((!\C1|Add21~5\) # (!\C1|SQ_Y2\(4)))) # (!\C1|SQ_Y2[7]~0_combout\ & (!\C1|SQ_Y2\(4) & !\C1|Add21~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add21~5\,
	combout => \C1|Add21~6_combout\,
	cout => \C1|Add21~7\);

-- Location: LCFF_X23_Y18_N15
\C1|SQ_Y2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~6_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X23_Y18_N16
\C1|Add21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~8_combout\ = ((\C1|SQ_Y2[7]~0_combout\ $ (\C1|SQ_Y2\(5) $ (\C1|Add21~7\)))) # (GND)
-- \C1|Add21~9\ = CARRY((\C1|SQ_Y2[7]~0_combout\ & (\C1|SQ_Y2\(5) & !\C1|Add21~7\)) # (!\C1|SQ_Y2[7]~0_combout\ & ((\C1|SQ_Y2\(5)) # (!\C1|Add21~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[7]~0_combout\,
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add21~7\,
	combout => \C1|Add21~8_combout\,
	cout => \C1|Add21~9\);

-- Location: LCFF_X23_Y18_N17
\C1|SQ_Y2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~8_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(5));

-- Location: LCFF_X23_Y18_N19
\C1|SQ_Y2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~10_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X24_Y15_N10
\C1|LessThan80~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~1_cout\ = CARRY((\C1|SQ_Y1\(1) & \C1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|Add3~0_combout\,
	datad => VCC,
	cout => \C1|LessThan80~1_cout\);

-- Location: LCCOMB_X24_Y15_N12
\C1|LessThan80~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~3_cout\ = CARRY((\C1|SQ_Y1\(2) & ((!\C1|LessThan80~1_cout\) # (!\C1|Add3~2_combout\))) # (!\C1|SQ_Y1\(2) & (!\C1|Add3~2_combout\ & !\C1|LessThan80~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan80~1_cout\,
	cout => \C1|LessThan80~3_cout\);

-- Location: LCCOMB_X24_Y15_N14
\C1|LessThan80~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~5_cout\ = CARRY((\C1|Add8~4_combout\ & (\C1|Add3~4_combout\ & !\C1|LessThan80~3_cout\)) # (!\C1|Add8~4_combout\ & ((\C1|Add3~4_combout\) # (!\C1|LessThan80~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan80~3_cout\,
	cout => \C1|LessThan80~5_cout\);

-- Location: LCCOMB_X24_Y15_N16
\C1|LessThan80~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~7_cout\ = CARRY((\C1|Add8~6_combout\ & ((!\C1|LessThan80~5_cout\) # (!\C1|Add3~6_combout\))) # (!\C1|Add8~6_combout\ & (!\C1|Add3~6_combout\ & !\C1|LessThan80~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~6_combout\,
	datab => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|LessThan80~5_cout\,
	cout => \C1|LessThan80~7_cout\);

-- Location: LCCOMB_X24_Y15_N18
\C1|LessThan80~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~9_cout\ = CARRY((\C1|Add8~8_combout\ & (\C1|Add3~8_combout\ & !\C1|LessThan80~7_cout\)) # (!\C1|Add8~8_combout\ & ((\C1|Add3~8_combout\) # (!\C1|LessThan80~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan80~7_cout\,
	cout => \C1|LessThan80~9_cout\);

-- Location: LCCOMB_X24_Y15_N20
\C1|LessThan80~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~11_cout\ = CARRY((\C1|Add8~10_combout\ & ((!\C1|LessThan80~9_cout\) # (!\C1|Add3~10_combout\))) # (!\C1|Add8~10_combout\ & (!\C1|Add3~10_combout\ & !\C1|LessThan80~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan80~9_cout\,
	cout => \C1|LessThan80~11_cout\);

-- Location: LCCOMB_X24_Y15_N22
\C1|LessThan80~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~13_cout\ = CARRY((\C1|Add3~12_combout\ & ((!\C1|LessThan80~11_cout\) # (!\C1|Add8~12_combout\))) # (!\C1|Add3~12_combout\ & (!\C1|Add8~12_combout\ & !\C1|LessThan80~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add8~12_combout\,
	datad => VCC,
	cin => \C1|LessThan80~11_cout\,
	cout => \C1|LessThan80~13_cout\);

-- Location: LCCOMB_X24_Y15_N24
\C1|LessThan80~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~15_cout\ = CARRY((\C1|Add8~14_combout\ & ((!\C1|LessThan80~13_cout\) # (!\C1|Add3~14_combout\))) # (!\C1|Add8~14_combout\ & (!\C1|Add3~14_combout\ & !\C1|LessThan80~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~14_combout\,
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan80~13_cout\,
	cout => \C1|LessThan80~15_cout\);

-- Location: LCCOMB_X24_Y15_N26
\C1|LessThan80~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~17_cout\ = CARRY((\C1|Add3~16_combout\ & ((!\C1|LessThan80~15_cout\) # (!\C1|Add8~16_combout\))) # (!\C1|Add3~16_combout\ & (!\C1|Add8~16_combout\ & !\C1|LessThan80~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~16_combout\,
	datab => \C1|Add8~16_combout\,
	datad => VCC,
	cin => \C1|LessThan80~15_cout\,
	cout => \C1|LessThan80~17_cout\);

-- Location: LCCOMB_X24_Y15_N28
\C1|LessThan80~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~19_cout\ = CARRY((\C1|Add3~18_combout\ & (\C1|Add8~18_combout\ & !\C1|LessThan80~17_cout\)) # (!\C1|Add3~18_combout\ & ((\C1|Add8~18_combout\) # (!\C1|LessThan80~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|Add8~18_combout\,
	datad => VCC,
	cin => \C1|LessThan80~17_cout\,
	cout => \C1|LessThan80~19_cout\);

-- Location: LCCOMB_X24_Y15_N30
\C1|LessThan80~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~20_combout\ = (\C1|Add3~20_combout\ & ((!\C1|Add8~20_combout\) # (!\C1|LessThan80~19_cout\))) # (!\C1|Add3~20_combout\ & (!\C1|LessThan80~19_cout\ & !\C1|Add8~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datad => \C1|Add8~20_combout\,
	cin => \C1|LessThan80~19_cout\,
	combout => \C1|LessThan80~20_combout\);

-- Location: LCCOMB_X21_Y15_N12
\C1|LessThan79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~1_cout\ = CARRY((\C1|SQ_Y1\(1) & !\C1|SQ_Y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cout => \C1|LessThan79~1_cout\);

-- Location: LCCOMB_X21_Y15_N14
\C1|LessThan79~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~3_cout\ = CARRY((\C1|SQ_Y2\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan79~1_cout\))) # (!\C1|SQ_Y2\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan79~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan79~1_cout\,
	cout => \C1|LessThan79~3_cout\);

-- Location: LCCOMB_X21_Y15_N16
\C1|LessThan79~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~5_cout\ = CARRY((\C1|Add8~4_combout\ & (!\C1|SQ_Y2\(3) & !\C1|LessThan79~3_cout\)) # (!\C1|Add8~4_combout\ & ((!\C1|LessThan79~3_cout\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan79~3_cout\,
	cout => \C1|LessThan79~5_cout\);

-- Location: LCCOMB_X21_Y15_N18
\C1|LessThan79~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~7_cout\ = CARRY((\C1|SQ_Y2\(4) & (\C1|Add8~6_combout\ & !\C1|LessThan79~5_cout\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add8~6_combout\) # (!\C1|LessThan79~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|Add8~6_combout\,
	datad => VCC,
	cin => \C1|LessThan79~5_cout\,
	cout => \C1|LessThan79~7_cout\);

-- Location: LCCOMB_X21_Y15_N20
\C1|LessThan79~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~9_cout\ = CARRY((\C1|Add8~8_combout\ & (\C1|SQ_Y2\(5) & !\C1|LessThan79~7_cout\)) # (!\C1|Add8~8_combout\ & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan79~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan79~7_cout\,
	cout => \C1|LessThan79~9_cout\);

-- Location: LCCOMB_X21_Y15_N22
\C1|LessThan79~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~11_cout\ = CARRY((\C1|SQ_Y2\(6) & (\C1|Add8~10_combout\ & !\C1|LessThan79~9_cout\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add8~10_combout\) # (!\C1|LessThan79~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|Add8~10_combout\,
	datad => VCC,
	cin => \C1|LessThan79~9_cout\,
	cout => \C1|LessThan79~11_cout\);

-- Location: LCCOMB_X21_Y15_N24
\C1|LessThan79~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~13_cout\ = CARRY((\C1|Add8~12_combout\ & (!\C1|SQ_Y2\(7) & !\C1|LessThan79~11_cout\)) # (!\C1|Add8~12_combout\ & ((!\C1|LessThan79~11_cout\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan79~11_cout\,
	cout => \C1|LessThan79~13_cout\);

-- Location: LCCOMB_X21_Y15_N26
\C1|LessThan79~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~15_cout\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|Add8~14_combout\) # (!\C1|LessThan79~13_cout\))) # (!\C1|SQ_Y2\(8) & (\C1|Add8~14_combout\ & !\C1|LessThan79~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|Add8~14_combout\,
	datad => VCC,
	cin => \C1|LessThan79~13_cout\,
	cout => \C1|LessThan79~15_cout\);

-- Location: LCCOMB_X21_Y15_N28
\C1|LessThan79~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~17_cout\ = CARRY((\C1|SQ_Y2\(9) & (!\C1|Add8~16_combout\ & !\C1|LessThan79~15_cout\)) # (!\C1|SQ_Y2\(9) & ((!\C1|LessThan79~15_cout\) # (!\C1|Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|Add8~16_combout\,
	datad => VCC,
	cin => \C1|LessThan79~15_cout\,
	cout => \C1|LessThan79~17_cout\);

-- Location: LCCOMB_X21_Y15_N30
\C1|LessThan79~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~18_combout\ = (\C1|SQ_Y2\(10) & ((\C1|LessThan79~17_cout\) # (!\C1|Add8~18_combout\))) # (!\C1|SQ_Y2\(10) & (\C1|LessThan79~17_cout\ & !\C1|Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => \C1|Add8~18_combout\,
	cin => \C1|LessThan79~17_cout\,
	combout => \C1|LessThan79~18_combout\);

-- Location: LCCOMB_X21_Y15_N2
\C1|contatoD1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|contatoD1~0_combout\ = (\C1|Add8~22_combout\ & (\C1|LessThan80~20_combout\ & ((\C1|Add8~20_combout\) # (!\C1|LessThan79~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|LessThan80~20_combout\,
	datad => \C1|LessThan79~18_combout\,
	combout => \C1|contatoD1~0_combout\);

-- Location: LCCOMB_X24_Y11_N12
\C1|LessThan82~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~1_cout\ = CARRY((\C1|SQ_Y1\(1) & \C1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|Add3~0_combout\,
	datad => VCC,
	cout => \C1|LessThan82~1_cout\);

-- Location: LCCOMB_X24_Y11_N14
\C1|LessThan82~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~3_cout\ = CARRY((\C1|SQ_Y1\(2) & (!\C1|Add3~2_combout\ & !\C1|LessThan82~1_cout\)) # (!\C1|SQ_Y1\(2) & ((!\C1|LessThan82~1_cout\) # (!\C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan82~1_cout\,
	cout => \C1|LessThan82~3_cout\);

-- Location: LCCOMB_X24_Y11_N16
\C1|LessThan82~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~5_cout\ = CARRY((\C1|Add3~4_combout\ & ((\C1|SQ_Y1\(3)) # (!\C1|LessThan82~3_cout\))) # (!\C1|Add3~4_combout\ & (\C1|SQ_Y1\(3) & !\C1|LessThan82~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|LessThan82~3_cout\,
	cout => \C1|LessThan82~5_cout\);

-- Location: LCCOMB_X24_Y11_N18
\C1|LessThan82~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~7_cout\ = CARRY((\C1|SQ_Y1\(4) & ((!\C1|LessThan82~5_cout\) # (!\C1|Add3~6_combout\))) # (!\C1|SQ_Y1\(4) & (!\C1|Add3~6_combout\ & !\C1|LessThan82~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|LessThan82~5_cout\,
	cout => \C1|LessThan82~7_cout\);

-- Location: LCCOMB_X24_Y11_N20
\C1|LessThan82~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~9_cout\ = CARRY((\C1|Add3~8_combout\ & ((!\C1|LessThan82~7_cout\) # (!\C1|SQ_Y1\(5)))) # (!\C1|Add3~8_combout\ & (!\C1|SQ_Y1\(5) & !\C1|LessThan82~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|LessThan82~7_cout\,
	cout => \C1|LessThan82~9_cout\);

-- Location: LCCOMB_X24_Y11_N22
\C1|LessThan82~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~11_cout\ = CARRY((\C1|SQ_Y1\(6) & ((!\C1|LessThan82~9_cout\) # (!\C1|Add3~10_combout\))) # (!\C1|SQ_Y1\(6) & (!\C1|Add3~10_combout\ & !\C1|LessThan82~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan82~9_cout\,
	cout => \C1|LessThan82~11_cout\);

-- Location: LCCOMB_X24_Y11_N24
\C1|LessThan82~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~13_cout\ = CARRY((\C1|Add3~12_combout\ & ((\C1|SQ_Y1\(7)) # (!\C1|LessThan82~11_cout\))) # (!\C1|Add3~12_combout\ & (\C1|SQ_Y1\(7) & !\C1|LessThan82~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|LessThan82~11_cout\,
	cout => \C1|LessThan82~13_cout\);

-- Location: LCCOMB_X24_Y11_N26
\C1|LessThan82~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~15_cout\ = CARRY((\C1|SQ_Y1\(8) & (!\C1|Add3~14_combout\ & !\C1|LessThan82~13_cout\)) # (!\C1|SQ_Y1\(8) & ((!\C1|LessThan82~13_cout\) # (!\C1|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan82~13_cout\,
	cout => \C1|LessThan82~15_cout\);

-- Location: LCCOMB_X24_Y11_N28
\C1|LessThan82~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~17_cout\ = CARRY((\C1|Add3~16_combout\ & ((\C1|SQ_Y1\(9)) # (!\C1|LessThan82~15_cout\))) # (!\C1|Add3~16_combout\ & (\C1|SQ_Y1\(9) & !\C1|LessThan82~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~16_combout\,
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|LessThan82~15_cout\,
	cout => \C1|LessThan82~17_cout\);

-- Location: LCCOMB_X24_Y11_N30
\C1|LessThan82~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~18_combout\ = (\C1|SQ_Y1\(10) & (\C1|LessThan82~17_cout\ & \C1|Add3~18_combout\)) # (!\C1|SQ_Y1\(10) & ((\C1|LessThan82~17_cout\) # (\C1|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|Add3~18_combout\,
	cin => \C1|LessThan82~17_cout\,
	combout => \C1|LessThan82~18_combout\);

-- Location: LCCOMB_X19_Y11_N8
\C1|LessThan81~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~1_cout\ = CARRY((!\C1|SQ_Y2\(1) & \C1|SQ_Y1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cout => \C1|LessThan81~1_cout\);

-- Location: LCCOMB_X19_Y11_N10
\C1|LessThan81~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~3_cout\ = CARRY((\C1|SQ_Y2\(2) & ((!\C1|LessThan81~1_cout\) # (!\C1|SQ_Y1\(2)))) # (!\C1|SQ_Y2\(2) & (!\C1|SQ_Y1\(2) & !\C1|LessThan81~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan81~1_cout\,
	cout => \C1|LessThan81~3_cout\);

-- Location: LCCOMB_X19_Y11_N12
\C1|LessThan81~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~5_cout\ = CARRY((\C1|SQ_Y1\(3) & ((!\C1|LessThan81~3_cout\) # (!\C1|SQ_Y2\(3)))) # (!\C1|SQ_Y1\(3) & (!\C1|SQ_Y2\(3) & !\C1|LessThan81~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan81~3_cout\,
	cout => \C1|LessThan81~5_cout\);

-- Location: LCCOMB_X19_Y11_N14
\C1|LessThan81~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~7_cout\ = CARRY((\C1|SQ_Y2\(4) & (\C1|SQ_Y1\(4) & !\C1|LessThan81~5_cout\)) # (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y1\(4)) # (!\C1|LessThan81~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|LessThan81~5_cout\,
	cout => \C1|LessThan81~7_cout\);

-- Location: LCCOMB_X19_Y11_N16
\C1|LessThan81~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~9_cout\ = CARRY((\C1|SQ_Y1\(5) & (\C1|SQ_Y2\(5) & !\C1|LessThan81~7_cout\)) # (!\C1|SQ_Y1\(5) & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan81~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan81~7_cout\,
	cout => \C1|LessThan81~9_cout\);

-- Location: LCCOMB_X19_Y11_N18
\C1|LessThan81~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~11_cout\ = CARRY((\C1|SQ_Y1\(6) & ((!\C1|LessThan81~9_cout\) # (!\C1|SQ_Y2\(6)))) # (!\C1|SQ_Y1\(6) & (!\C1|SQ_Y2\(6) & !\C1|LessThan81~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|LessThan81~9_cout\,
	cout => \C1|LessThan81~11_cout\);

-- Location: LCCOMB_X19_Y11_N20
\C1|LessThan81~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~13_cout\ = CARRY((\C1|SQ_Y1\(7) & ((!\C1|LessThan81~11_cout\) # (!\C1|SQ_Y2\(7)))) # (!\C1|SQ_Y1\(7) & (!\C1|SQ_Y2\(7) & !\C1|LessThan81~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan81~11_cout\,
	cout => \C1|LessThan81~13_cout\);

-- Location: LCCOMB_X19_Y11_N22
\C1|LessThan81~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~15_cout\ = CARRY((\C1|SQ_Y2\(8) & ((!\C1|LessThan81~13_cout\) # (!\C1|SQ_Y1\(8)))) # (!\C1|SQ_Y2\(8) & (!\C1|SQ_Y1\(8) & !\C1|LessThan81~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|LessThan81~13_cout\,
	cout => \C1|LessThan81~15_cout\);

-- Location: LCCOMB_X19_Y11_N24
\C1|LessThan81~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~17_cout\ = CARRY((\C1|SQ_Y2\(9) & (\C1|SQ_Y1\(9) & !\C1|LessThan81~15_cout\)) # (!\C1|SQ_Y2\(9) & ((\C1|SQ_Y1\(9)) # (!\C1|LessThan81~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|LessThan81~15_cout\,
	cout => \C1|LessThan81~17_cout\);

-- Location: LCCOMB_X19_Y11_N26
\C1|LessThan81~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~18_combout\ = (\C1|SQ_Y1\(10) & (\C1|LessThan81~17_cout\ & \C1|SQ_Y2\(10))) # (!\C1|SQ_Y1\(10) & ((\C1|LessThan81~17_cout\) # (\C1|SQ_Y2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y2\(10),
	cin => \C1|LessThan81~17_cout\,
	combout => \C1|LessThan81~18_combout\);

-- Location: LCCOMB_X20_Y11_N30
\C1|contatoC1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|contatoC1~1_combout\ = (\C1|LessThan82~18_combout\ & !\C1|LessThan81~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan82~18_combout\,
	datad => \C1|LessThan81~18_combout\,
	combout => \C1|contatoC1~1_combout\);

-- Location: LCCOMB_X20_Y14_N0
\C1|LessThan78~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~1_cout\ = CARRY((!\C1|Add5~0_combout\ & \C1|SQ_X2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cout => \C1|LessThan78~1_cout\);

-- Location: LCCOMB_X20_Y14_N2
\C1|LessThan78~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~3_cout\ = CARRY((\C1|Add5~2_combout\ & ((\C1|SQ_X2\(2)) # (!\C1|LessThan78~1_cout\))) # (!\C1|Add5~2_combout\ & (\C1|SQ_X2\(2) & !\C1|LessThan78~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan78~1_cout\,
	cout => \C1|LessThan78~3_cout\);

-- Location: LCCOMB_X20_Y14_N4
\C1|LessThan78~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~5_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|Add5~4_combout\ & !\C1|LessThan78~3_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan78~3_cout\) # (!\C1|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add5~4_combout\,
	datad => VCC,
	cin => \C1|LessThan78~3_cout\,
	cout => \C1|LessThan78~5_cout\);

-- Location: LCCOMB_X20_Y14_N6
\C1|LessThan78~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~7_cout\ = CARRY((\C1|Add2~0_combout\ & (\C1|Add5~6_combout\ & !\C1|LessThan78~5_cout\)) # (!\C1|Add2~0_combout\ & ((\C1|Add5~6_combout\) # (!\C1|LessThan78~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|Add5~6_combout\,
	datad => VCC,
	cin => \C1|LessThan78~5_cout\,
	cout => \C1|LessThan78~7_cout\);

-- Location: LCCOMB_X20_Y14_N8
\C1|LessThan78~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~9_cout\ = CARRY((\C1|Add2~2_combout\ & ((!\C1|LessThan78~7_cout\) # (!\C1|Add5~8_combout\))) # (!\C1|Add2~2_combout\ & (!\C1|Add5~8_combout\ & !\C1|LessThan78~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add5~8_combout\,
	datad => VCC,
	cin => \C1|LessThan78~7_cout\,
	cout => \C1|LessThan78~9_cout\);

-- Location: LCCOMB_X20_Y14_N10
\C1|LessThan78~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~11_cout\ = CARRY((\C1|Add5~10_combout\ & ((!\C1|LessThan78~9_cout\) # (!\C1|Add2~4_combout\))) # (!\C1|Add5~10_combout\ & (!\C1|Add2~4_combout\ & !\C1|LessThan78~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|LessThan78~9_cout\,
	cout => \C1|LessThan78~11_cout\);

-- Location: LCCOMB_X20_Y14_N12
\C1|LessThan78~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~13_cout\ = CARRY((\C1|Add5~12_combout\ & (\C1|Add2~6_combout\ & !\C1|LessThan78~11_cout\)) # (!\C1|Add5~12_combout\ & ((\C1|Add2~6_combout\) # (!\C1|LessThan78~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|LessThan78~11_cout\,
	cout => \C1|LessThan78~13_cout\);

-- Location: LCCOMB_X20_Y14_N14
\C1|LessThan78~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~15_cout\ = CARRY((\C1|Add5~14_combout\ & ((!\C1|LessThan78~13_cout\) # (!\C1|Add2~8_combout\))) # (!\C1|Add5~14_combout\ & (!\C1|Add2~8_combout\ & !\C1|LessThan78~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add2~8_combout\,
	datad => VCC,
	cin => \C1|LessThan78~13_cout\,
	cout => \C1|LessThan78~15_cout\);

-- Location: LCCOMB_X20_Y14_N16
\C1|LessThan78~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~17_cout\ = CARRY((\C1|Add2~10_combout\ & ((!\C1|LessThan78~15_cout\) # (!\C1|Add5~16_combout\))) # (!\C1|Add2~10_combout\ & (!\C1|Add5~16_combout\ & !\C1|LessThan78~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add5~16_combout\,
	datad => VCC,
	cin => \C1|LessThan78~15_cout\,
	cout => \C1|LessThan78~17_cout\);

-- Location: LCCOMB_X20_Y14_N18
\C1|LessThan78~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~19_cout\ = CARRY((\C1|Add2~12_combout\ & (\C1|Add5~18_combout\ & !\C1|LessThan78~17_cout\)) # (!\C1|Add2~12_combout\ & ((\C1|Add5~18_combout\) # (!\C1|LessThan78~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|Add5~18_combout\,
	datad => VCC,
	cin => \C1|LessThan78~17_cout\,
	cout => \C1|LessThan78~19_cout\);

-- Location: LCCOMB_X20_Y14_N20
\C1|LessThan78~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~20_combout\ = (\C1|Add2~14_combout\ & ((!\C1|Add5~20_combout\) # (!\C1|LessThan78~19_cout\))) # (!\C1|Add2~14_combout\ & (!\C1|LessThan78~19_cout\ & !\C1|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datad => \C1|Add5~20_combout\,
	cin => \C1|LessThan78~19_cout\,
	combout => \C1|LessThan78~20_combout\);

-- Location: LCCOMB_X22_Y14_N4
\C1|LessThan77~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~1_cout\ = CARRY((!\C1|SQ_X2\(1) & \C1|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|Add5~0_combout\,
	datad => VCC,
	cout => \C1|LessThan77~1_cout\);

-- Location: LCCOMB_X22_Y14_N6
\C1|LessThan77~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~3_cout\ = CARRY((\C1|SQ_X2\(2) & (!\C1|Add5~2_combout\ & !\C1|LessThan77~1_cout\)) # (!\C1|SQ_X2\(2) & ((!\C1|LessThan77~1_cout\) # (!\C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|Add5~2_combout\,
	datad => VCC,
	cin => \C1|LessThan77~1_cout\,
	cout => \C1|LessThan77~3_cout\);

-- Location: LCCOMB_X22_Y14_N8
\C1|LessThan77~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~5_cout\ = CARRY((\C1|SQ_X2\(3) & ((\C1|Add5~4_combout\) # (!\C1|LessThan77~3_cout\))) # (!\C1|SQ_X2\(3) & (\C1|Add5~4_combout\ & !\C1|LessThan77~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add5~4_combout\,
	datad => VCC,
	cin => \C1|LessThan77~3_cout\,
	cout => \C1|LessThan77~5_cout\);

-- Location: LCCOMB_X22_Y14_N10
\C1|LessThan77~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~7_cout\ = CARRY((\C1|SQ_X2\(4) & ((!\C1|LessThan77~5_cout\) # (!\C1|Add5~6_combout\))) # (!\C1|SQ_X2\(4) & (!\C1|Add5~6_combout\ & !\C1|LessThan77~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|Add5~6_combout\,
	datad => VCC,
	cin => \C1|LessThan77~5_cout\,
	cout => \C1|LessThan77~7_cout\);

-- Location: LCCOMB_X22_Y14_N12
\C1|LessThan77~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~9_cout\ = CARRY((\C1|Add5~8_combout\ & ((!\C1|LessThan77~7_cout\) # (!\C1|SQ_X2\(5)))) # (!\C1|Add5~8_combout\ & (!\C1|SQ_X2\(5) & !\C1|LessThan77~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan77~7_cout\,
	cout => \C1|LessThan77~9_cout\);

-- Location: LCCOMB_X22_Y14_N14
\C1|LessThan77~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~11_cout\ = CARRY((\C1|SQ_X2\(6) & (!\C1|Add5~10_combout\ & !\C1|LessThan77~9_cout\)) # (!\C1|SQ_X2\(6) & ((!\C1|LessThan77~9_cout\) # (!\C1|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|Add5~10_combout\,
	datad => VCC,
	cin => \C1|LessThan77~9_cout\,
	cout => \C1|LessThan77~11_cout\);

-- Location: LCCOMB_X22_Y14_N16
\C1|LessThan77~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~13_cout\ = CARRY((\C1|SQ_X2\(7) & ((\C1|Add5~12_combout\) # (!\C1|LessThan77~11_cout\))) # (!\C1|SQ_X2\(7) & (\C1|Add5~12_combout\ & !\C1|LessThan77~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|Add5~12_combout\,
	datad => VCC,
	cin => \C1|LessThan77~11_cout\,
	cout => \C1|LessThan77~13_cout\);

-- Location: LCCOMB_X22_Y14_N18
\C1|LessThan77~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~15_cout\ = CARRY((\C1|Add5~14_combout\ & (!\C1|SQ_X2\(8) & !\C1|LessThan77~13_cout\)) # (!\C1|Add5~14_combout\ & ((!\C1|LessThan77~13_cout\) # (!\C1|SQ_X2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|LessThan77~13_cout\,
	cout => \C1|LessThan77~15_cout\);

-- Location: LCCOMB_X22_Y14_N20
\C1|LessThan77~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~17_cout\ = CARRY((\C1|SQ_X2\(9) & (\C1|Add5~16_combout\ & !\C1|LessThan77~15_cout\)) # (!\C1|SQ_X2\(9) & ((\C1|Add5~16_combout\) # (!\C1|LessThan77~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|Add5~16_combout\,
	datad => VCC,
	cin => \C1|LessThan77~15_cout\,
	cout => \C1|LessThan77~17_cout\);

-- Location: LCCOMB_X22_Y14_N22
\C1|LessThan77~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~18_combout\ = (\C1|SQ_X2\(10) & (\C1|LessThan77~17_cout\ & \C1|Add5~18_combout\)) # (!\C1|SQ_X2\(10) & ((\C1|LessThan77~17_cout\) # (\C1|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => \C1|Add5~18_combout\,
	cin => \C1|LessThan77~17_cout\,
	combout => \C1|LessThan77~18_combout\);

-- Location: LCCOMB_X22_Y14_N2
\C1|SQ~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ~2_combout\ = (\C1|LessThan78~20_combout\ & ((\C1|Add5~20_combout\) # (\C1|LessThan77~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datac => \C1|LessThan78~20_combout\,
	datad => \C1|LessThan77~18_combout\,
	combout => \C1|SQ~2_combout\);

-- Location: LCCOMB_X21_Y15_N10
\C1|SQ_X1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~2_combout\ = ((!\C1|contatoC1~0_combout\ & (!\C1|contatoD1~0_combout\ & !\C1|contatoC1~1_combout\))) # (!\C1|SQ~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|contatoC1~0_combout\,
	datab => \C1|contatoD1~0_combout\,
	datac => \C1|contatoC1~1_combout\,
	datad => \C1|SQ~2_combout\,
	combout => \C1|SQ_X1[1]~2_combout\);

-- Location: LCCOMB_X21_Y15_N4
\C1|SQ_X1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~3_combout\ = (!\KEY~combout\(0) & (\C1|LessThan315~0_combout\ & (\C1|SQ_X1[1]~1_combout\ & \C1|SQ_X1[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \C1|LessThan315~0_combout\,
	datac => \C1|SQ_X1[1]~1_combout\,
	datad => \C1|SQ_X1[1]~2_combout\,
	combout => \C1|SQ_X1[1]~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\C1|dMap~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~276_combout\ = (!\C1|Add8~8_combout\ & !\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~276_combout\);

-- Location: LCCOMB_X24_Y13_N28
\C1|LessThan130~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan130~2_combout\ = (!\C1|Add8~12_combout\ & (!\C1|Add8~14_combout\ & !\C1|Add8~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~12_combout\,
	datac => \C1|Add8~14_combout\,
	datad => \C1|Add8~16_combout\,
	combout => \C1|LessThan130~2_combout\);

-- Location: LCCOMB_X24_Y14_N4
\C1|LessThan131~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan131~0_combout\ = (\C1|Add8~18_combout\ & ((\C1|dMap~275_combout\) # ((!\C1|LessThan130~2_combout\) # (!\C1|dMap~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~275_combout\,
	datab => \C1|dMap~276_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|LessThan130~2_combout\,
	combout => \C1|LessThan131~0_combout\);

-- Location: LCCOMB_X20_Y16_N22
\C1|dMap~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~270_combout\ = (\C1|Add8~12_combout\ & (!\C1|Add8~8_combout\ & (!\C1|Add8~6_combout\ & !\C1|Add8~10_combout\))) # (!\C1|Add8~12_combout\ & (\C1|Add8~8_combout\ & (\C1|Add8~6_combout\ & \C1|Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~270_combout\);

-- Location: LCCOMB_X20_Y16_N24
\C1|dMap~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~269_combout\ = (\C1|Add8~4_combout\ & (((!\C1|SQ_Y1\(1) & \C1|SQ_Y1\(2))) # (!\C1|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~12_combout\,
	combout => \C1|dMap~269_combout\);

-- Location: LCCOMB_X24_Y13_N0
\C1|dMap~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~251_combout\ = (\C1|Add8~14_combout\ & \C1|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~14_combout\,
	datad => \C1|Add8~16_combout\,
	combout => \C1|dMap~251_combout\);

-- Location: LCCOMB_X24_Y13_N26
\C1|dMap~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~267_combout\ = (\C1|Add8~22_combout\ & (!\C1|Add8~20_combout\ & (!\C1|Add8~18_combout\ & \C1|dMap~251_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|dMap~251_combout\,
	combout => \C1|dMap~267_combout\);

-- Location: LCCOMB_X20_Y16_N0
\C1|dMap~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~271_combout\ = ((\C1|Add8~6_combout\ $ (\C1|dMap~269_combout\)) # (!\C1|dMap~267_combout\)) # (!\C1|dMap~270_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~6_combout\,
	datab => \C1|dMap~270_combout\,
	datac => \C1|dMap~269_combout\,
	datad => \C1|dMap~267_combout\,
	combout => \C1|dMap~271_combout\);

-- Location: LCCOMB_X20_Y16_N30
\C1|dirQ1X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~7_combout\ = (\C1|dMap~281_combout\ & (!\C1|dMap~271_combout\ & (\C1|dirQ1X1~38_combout\))) # (!\C1|dMap~281_combout\ & ((\C1|dirQ1X1~48_combout\) # ((!\C1|dMap~271_combout\ & \C1|dirQ1X1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~281_combout\,
	datab => \C1|dMap~271_combout\,
	datac => \C1|dirQ1X1~38_combout\,
	datad => \C1|dirQ1X1~48_combout\,
	combout => \C1|dirQ1X2~7_combout\);

-- Location: LCCOMB_X21_Y14_N20
\C1|LessThan137~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan137~0_combout\ = (!\C1|Add8~8_combout\ & (((!\C1|Add8~6_combout\) # (!\C1|SQ_Y1\(2))) # (!\C1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|LessThan137~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\C1|dMap~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~257_combout\ = (((\C1|Add8~18_combout\) # (\C1|Add8~20_combout\)) # (!\C1|Add8~12_combout\)) # (!\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|Add8~20_combout\,
	combout => \C1|dMap~257_combout\);

-- Location: LCCOMB_X24_Y14_N0
\C1|dMap~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~258_combout\ = (\C1|dMap~256_combout\) # (((\C1|dMap~257_combout\) # (!\C1|dMap~251_combout\)) # (!\C1|Add8~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~256_combout\,
	datab => \C1|Add8~22_combout\,
	datac => \C1|dMap~257_combout\,
	datad => \C1|dMap~251_combout\,
	combout => \C1|dMap~258_combout\);

-- Location: LCCOMB_X21_Y14_N10
\C1|dMap~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~282_combout\ = (\C1|dMap~258_combout\) # ((\C1|Add8~10_combout\ & !\C1|LessThan137~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~10_combout\,
	datac => \C1|LessThan137~0_combout\,
	datad => \C1|dMap~258_combout\,
	combout => \C1|dMap~282_combout\);

-- Location: LCCOMB_X20_Y16_N12
\C1|dirQ1X2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~8_combout\ = (!\C1|dMap~282_combout\ & ((\C1|dirQ1X1~50_combout\) # (\C1|dirQ1X1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~282_combout\,
	datac => \C1|dirQ1X1~50_combout\,
	datad => \C1|dirQ1X1~43_combout\,
	combout => \C1|dirQ1X2~8_combout\);

-- Location: LCCOMB_X21_Y16_N30
\C1|dirQ1X2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~9_combout\ = (\C1|LessThan131~0_combout\) # ((\C1|dirQ1X2~7_combout\) # (\C1|dirQ1X2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan131~0_combout\,
	datac => \C1|dirQ1X2~7_combout\,
	datad => \C1|dirQ1X2~8_combout\,
	combout => \C1|dirQ1X2~9_combout\);

-- Location: LCCOMB_X20_Y16_N26
\C1|dMap~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~272_combout\ = (\C1|Add8~4_combout\ & ((\C1|Add8~8_combout\) # ((!\C1|Add8~6_combout\ & !\C1|SQ_Y1\(2))))) # (!\C1|Add8~4_combout\ & (\C1|Add8~6_combout\ $ (((!\C1|Add8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|SQ_Y1\(2),
	datad => \C1|Add8~8_combout\,
	combout => \C1|dMap~272_combout\);

-- Location: LCCOMB_X20_Y16_N16
\C1|dMap~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~273_combout\ = (\C1|dMap~272_combout\) # ((\C1|Add8~8_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~8_combout\,
	datac => \C1|SQ_Y1\(1),
	datad => \C1|dMap~272_combout\,
	combout => \C1|dMap~273_combout\);

-- Location: LCCOMB_X20_Y16_N2
\C1|dMap~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~274_combout\ = (\C1|Add8~10_combout\) # (((\C1|dMap~273_combout\) # (!\C1|dMap~267_combout\)) # (!\C1|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|dMap~273_combout\,
	datad => \C1|dMap~267_combout\,
	combout => \C1|dMap~274_combout\);

-- Location: LCCOMB_X21_Y14_N14
\C1|dirQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~3_combout\ = (\C1|dMap~262_combout\ & (!\C1|dMap~274_combout\ & ((\C1|dirQ1X1~47_combout\)))) # (!\C1|dMap~262_combout\ & ((\C1|dirQ1X1~26_combout\) # ((!\C1|dMap~274_combout\ & \C1|dirQ1X1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~262_combout\,
	datab => \C1|dMap~274_combout\,
	datac => \C1|dirQ1X1~26_combout\,
	datad => \C1|dirQ1X1~47_combout\,
	combout => \C1|dirQ1X2~3_combout\);

-- Location: LCCOMB_X20_Y14_N30
\C1|dirQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~2_combout\ = (\C1|dMap~279_combout\ & (!\C1|dMap~282_combout\ & (\C1|dirQ1X1~32_combout\))) # (!\C1|dMap~279_combout\ & ((\C1|dirQ1X1~39_combout\) # ((!\C1|dMap~282_combout\ & \C1|dirQ1X1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~279_combout\,
	datab => \C1|dMap~282_combout\,
	datac => \C1|dirQ1X1~32_combout\,
	datad => \C1|dirQ1X1~39_combout\,
	combout => \C1|dirQ1X2~2_combout\);

-- Location: LCCOMB_X25_Y14_N4
\C1|dMap~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~275_combout\ = (\C1|Add8~4_combout\ & (\C1|Add8~6_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|dMap~275_combout\);

-- Location: LCCOMB_X24_Y14_N6
\C1|dMap~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~256_combout\ = (!\C1|Add8~6_combout\ & !\C1|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~6_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|dMap~256_combout\);

-- Location: LCCOMB_X25_Y14_N14
\C1|dMap~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~277_combout\ = (((!\C1|SQ_Y1\(2) & \C1|dMap~256_combout\)) # (!\C1|Add8~10_combout\)) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|SQ_Y1\(2),
	datac => \C1|dMap~256_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~277_combout\);

-- Location: LCCOMB_X25_Y14_N12
\C1|dMap~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~278_combout\ = (\C1|Add8~12_combout\) # ((\C1|Add8~18_combout\) # ((\C1|Add8~20_combout\) # (!\C1|Add8~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~18_combout\,
	datac => \C1|Add8~20_combout\,
	datad => \C1|Add8~22_combout\,
	combout => \C1|dMap~278_combout\);

-- Location: LCCOMB_X25_Y14_N6
\C1|dMap~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~279_combout\ = ((\C1|dMap~275_combout\) # ((\C1|dMap~277_combout\) # (\C1|dMap~278_combout\))) # (!\C1|dMap~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~251_combout\,
	datab => \C1|dMap~275_combout\,
	datac => \C1|dMap~277_combout\,
	datad => \C1|dMap~278_combout\,
	combout => \C1|dMap~279_combout\);

-- Location: LCCOMB_X20_Y16_N8
\C1|dMap~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~259_combout\ = (!\C1|Add8~4_combout\ & ((\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|Add8~4_combout\,
	combout => \C1|dMap~259_combout\);

-- Location: LCCOMB_X22_Y14_N30
\C1|dMap~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~261_combout\ = (!\C1|Add8~20_combout\ & \C1|Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~20_combout\,
	datad => \C1|Add8~22_combout\,
	combout => \C1|dMap~261_combout\);

-- Location: LCCOMB_X21_Y14_N0
\C1|dMap~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~263_combout\ = (((!\C1|LessThan137~0_combout\ & \C1|Add8~10_combout\)) # (!\C1|dMap~261_combout\)) # (!\C1|LessThan130~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan137~0_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|LessThan130~2_combout\,
	datad => \C1|dMap~261_combout\,
	combout => \C1|dMap~263_combout\);

-- Location: LCCOMB_X21_Y14_N4
\C1|dMap~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~265_combout\ = (\C1|dMap~264_combout\) # ((\C1|dMap~263_combout\) # ((\C1|dMap~259_combout\ & !\C1|Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~264_combout\,
	datab => \C1|dMap~259_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|dMap~263_combout\,
	combout => \C1|dMap~265_combout\);

-- Location: LCCOMB_X21_Y14_N28
\C1|dirQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~4_combout\ = (\C1|dMap~255_combout\ & (!\C1|dMap~265_combout\ & (\C1|dirQ1X1~34_combout\))) # (!\C1|dMap~255_combout\ & ((\C1|dirQ1X1~35_combout\) # ((!\C1|dMap~265_combout\ & \C1|dirQ1X1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~255_combout\,
	datab => \C1|dMap~265_combout\,
	datac => \C1|dirQ1X1~34_combout\,
	datad => \C1|dirQ1X1~35_combout\,
	combout => \C1|dirQ1X2~4_combout\);

-- Location: LCCOMB_X21_Y14_N2
\C1|dirQ1X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~5_combout\ = (\C1|dirQ1X2~4_combout\) # ((!\C1|dMap~279_combout\ & \C1|dirQ1X1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~279_combout\,
	datac => \C1|dirQ1X1~45_combout\,
	datad => \C1|dirQ1X2~4_combout\,
	combout => \C1|dirQ1X2~5_combout\);

-- Location: LCCOMB_X21_Y14_N12
\C1|dirQ1X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~6_combout\ = (\C1|dirQ1X2~1_combout\) # ((\C1|dirQ1X2~3_combout\) # ((\C1|dirQ1X2~2_combout\) # (\C1|dirQ1X2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X2~1_combout\,
	datab => \C1|dirQ1X2~3_combout\,
	datac => \C1|dirQ1X2~2_combout\,
	datad => \C1|dirQ1X2~5_combout\,
	combout => \C1|dirQ1X2~6_combout\);

-- Location: LCCOMB_X22_Y16_N6
\C1|dirQ1X2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~10_combout\ = (!\C1|LessThan130~1_combout\ & (\C1|dirQ1X2~0_combout\ & ((\C1|dirQ1X2~9_combout\) # (\C1|dirQ1X2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan130~1_combout\,
	datab => \C1|dirQ1X2~0_combout\,
	datac => \C1|dirQ1X2~9_combout\,
	datad => \C1|dirQ1X2~6_combout\,
	combout => \C1|dirQ1X2~10_combout\);

-- Location: LCCOMB_X22_Y16_N0
\C1|SQ_X1[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~4_combout\ = (\C1|SQ_X1[1]~3_combout\ & (!\C1|dirQ1X2~10_combout\ & ((!\C1|dirQ1X2~0_combout\) # (!\C1|Add8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~20_combout\,
	datab => \C1|dirQ1X2~0_combout\,
	datac => \C1|SQ_X1[1]~3_combout\,
	datad => \C1|dirQ1X2~10_combout\,
	combout => \C1|SQ_X1[1]~4_combout\);

-- Location: LCCOMB_X22_Y16_N2
\C1|SQ_X1[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~5_combout\ = (\C1|SQ_X1[1]~1_combout\ & ((\C1|process_0~22_combout\) # ((!\C1|dirQ1X1~52_combout\ & \C1|SQ_X1[1]~4_combout\)))) # (!\C1|SQ_X1[1]~1_combout\ & (((!\C1|dirQ1X1~52_combout\ & \C1|SQ_X1[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[1]~1_combout\,
	datab => \C1|process_0~22_combout\,
	datac => \C1|dirQ1X1~52_combout\,
	datad => \C1|SQ_X1[1]~4_combout\,
	combout => \C1|SQ_X1[1]~5_combout\);

-- Location: LCFF_X22_Y15_N11
\C1|SQ_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[1]~10_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(1));

-- Location: LCCOMB_X22_Y16_N30
\C1|SQ_X1[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~8_combout\ = !\C1|Add26~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add26~8_combout\,
	combout => \C1|SQ_X1[5]~8_combout\);

-- Location: LCFF_X22_Y16_N31
\C1|SQ_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[5]~8_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(5));

-- Location: LCCOMB_X23_Y15_N0
\C1|LessThan158~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan158~0_combout\ = (\C1|SQ_X1\(5) & !\C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(5),
	datad => \C1|SQ_X1\(6),
	combout => \C1|LessThan158~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\C1|LessThan177~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan177~19_combout\ = (!\C1|SQ_X1\(8) & !\C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan177~19_combout\);

-- Location: LCCOMB_X23_Y15_N18
\C1|LessThan156~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~0_combout\ = (\C1|SQ_X1\(4)) # (((\C1|SQ_X1\(1) & !\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan156~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\C1|LessThan175~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan175~0_combout\ = ((\C1|LessThan177~19_combout\ & ((!\C1|LessThan156~0_combout\) # (!\C1|LessThan158~0_combout\)))) # (!\C1|LessThan164~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan164~2_combout\,
	datab => \C1|LessThan158~0_combout\,
	datac => \C1|LessThan177~19_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|LessThan175~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X29_Y14_N10
\C1|LessThan150~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~1_cout\ = CARRY((!\C1|SQ_X2\(1) & !\C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan150~1_cout\);

-- Location: LCCOMB_X29_Y14_N12
\C1|LessThan150~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~3_cout\ = CARRY((\C1|SQ_X2\(2) & (!\C1|SQ_X1\(2) & !\C1|LessThan150~1_cout\)) # (!\C1|SQ_X2\(2) & ((!\C1|LessThan150~1_cout\) # (!\C1|SQ_X1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan150~1_cout\,
	cout => \C1|LessThan150~3_cout\);

-- Location: LCCOMB_X29_Y14_N14
\C1|LessThan150~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~5_cout\ = CARRY((\C1|SQ_X2\(3) & ((\C1|SQ_X1\(3)) # (!\C1|LessThan150~3_cout\))) # (!\C1|SQ_X2\(3) & (\C1|SQ_X1\(3) & !\C1|LessThan150~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan150~3_cout\,
	cout => \C1|LessThan150~5_cout\);

-- Location: LCCOMB_X29_Y14_N16
\C1|LessThan150~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~7_cout\ = CARRY((\C1|SQ_X1\(4) & ((\C1|SQ_X2\(4)) # (!\C1|LessThan150~5_cout\))) # (!\C1|SQ_X1\(4) & (\C1|SQ_X2\(4) & !\C1|LessThan150~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|LessThan150~5_cout\,
	cout => \C1|LessThan150~7_cout\);

-- Location: LCCOMB_X29_Y14_N18
\C1|LessThan150~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~9_cout\ = CARRY((\C1|SQ_X1\(5) & (!\C1|SQ_X2\(5) & !\C1|LessThan150~7_cout\)) # (!\C1|SQ_X1\(5) & ((!\C1|LessThan150~7_cout\) # (!\C1|SQ_X2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan150~7_cout\,
	cout => \C1|LessThan150~9_cout\);

-- Location: LCCOMB_X29_Y14_N20
\C1|LessThan150~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~11_cout\ = CARRY((\C1|SQ_X2\(6) & (!\C1|SQ_X1\(6) & !\C1|LessThan150~9_cout\)) # (!\C1|SQ_X2\(6) & ((!\C1|LessThan150~9_cout\) # (!\C1|SQ_X1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan150~9_cout\,
	cout => \C1|LessThan150~11_cout\);

-- Location: LCCOMB_X29_Y14_N22
\C1|LessThan150~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~13_cout\ = CARRY((\C1|SQ_X1\(7) & (\C1|SQ_X2\(7) & !\C1|LessThan150~11_cout\)) # (!\C1|SQ_X1\(7) & ((\C1|SQ_X2\(7)) # (!\C1|LessThan150~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|LessThan150~11_cout\,
	cout => \C1|LessThan150~13_cout\);

-- Location: LCCOMB_X29_Y14_N24
\C1|LessThan150~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~15_cout\ = CARRY((\C1|SQ_X2\(8) & (\C1|SQ_X1\(8) & !\C1|LessThan150~13_cout\)) # (!\C1|SQ_X2\(8) & ((\C1|SQ_X1\(8)) # (!\C1|LessThan150~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|LessThan150~13_cout\,
	cout => \C1|LessThan150~15_cout\);

-- Location: LCCOMB_X29_Y14_N26
\C1|LessThan150~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~17_cout\ = CARRY((\C1|SQ_X2\(9) & (\C1|SQ_X1\(9) & !\C1|LessThan150~15_cout\)) # (!\C1|SQ_X2\(9) & ((\C1|SQ_X1\(9)) # (!\C1|LessThan150~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|LessThan150~15_cout\,
	cout => \C1|LessThan150~17_cout\);

-- Location: LCCOMB_X29_Y14_N28
\C1|LessThan150~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~18_combout\ = (\C1|SQ_X2\(10) & (\C1|SQ_X1\(10) & \C1|LessThan150~17_cout\)) # (!\C1|SQ_X2\(10) & ((\C1|SQ_X1\(10)) # (\C1|LessThan150~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datab => \C1|SQ_X1\(10),
	cin => \C1|LessThan150~17_cout\,
	combout => \C1|LessThan150~18_combout\);

-- Location: LCCOMB_X22_Y14_N24
\C1|SQ~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ~1_combout\ = (\C1|LessThan150~18_combout\ & ((\C1|Add2~14_combout\) # (\C1|LessThan151~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datac => \C1|LessThan150~18_combout\,
	datad => \C1|LessThan151~18_combout\,
	combout => \C1|SQ~1_combout\);

-- Location: LCCOMB_X21_Y15_N0
\C1|process_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~18_combout\ = ((!\C1|contatoC1~0_combout\ & (!\C1|contatoC1~1_combout\ & !\C1|contatoD1~0_combout\))) # (!\C1|SQ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|contatoC1~0_combout\,
	datab => \C1|SQ~1_combout\,
	datac => \C1|contatoC1~1_combout\,
	datad => \C1|contatoD1~0_combout\,
	combout => \C1|process_0~18_combout\);

-- Location: LCCOMB_X21_Y16_N4
\C1|process_0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~19_combout\ = (\C1|LessThan175~0_combout\ & (!\KEY~combout\(1) & \C1|process_0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan175~0_combout\,
	datac => \KEY~combout\(1),
	datad => \C1|process_0~18_combout\,
	combout => \C1|process_0~19_combout\);

-- Location: LCCOMB_X25_Y14_N30
\C1|LessThan139~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~0_combout\ = (!\C1|Add8~6_combout\ & (((\C1|SQ_Y1\(1) & !\C1|SQ_Y1\(2))) # (!\C1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|LessThan139~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\C1|LessThan130~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan130~0_combout\ = (!\C1|Add8~12_combout\ & (!\C1|Add8~16_combout\ & (!\C1|Add8~14_combout\ & !\C1|Add8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~16_combout\,
	datac => \C1|Add8~14_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|LessThan130~0_combout\);

-- Location: LCCOMB_X25_Y13_N4
\C1|LessThan130~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan130~1_combout\ = (!\C1|Add8~18_combout\ & (\C1|LessThan130~0_combout\ & ((\C1|LessThan139~0_combout\) # (!\C1|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|LessThan139~0_combout\,
	datad => \C1|LessThan130~0_combout\,
	combout => \C1|LessThan130~1_combout\);

-- Location: LCCOMB_X20_Y16_N28
\C1|esqQ1X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~5_combout\ = (\C1|dMap~289_combout\ & (((!\C1|dMap~274_combout\ & \C1|dMap~223_combout\)) # (!\C1|dMap~271_combout\))) # (!\C1|dMap~289_combout\ & (!\C1|dMap~274_combout\ & (\C1|dMap~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~289_combout\,
	datab => \C1|dMap~274_combout\,
	datac => \C1|dMap~223_combout\,
	datad => \C1|dMap~271_combout\,
	combout => \C1|esqQ1X2~5_combout\);

-- Location: LCCOMB_X22_Y15_N28
\C1|LessThan155~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan155~0_combout\ = (\C1|SQ_X1\(6) & (\C1|SQ_X1\(3) & ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(1),
	combout => \C1|LessThan155~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\C1|LessThan155~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan155~1_combout\ = ((\C1|SQ_X1\(6) & ((!\C1|SQ_X1\(4)) # (!\C1|SQ_X1\(5))))) # (!\C1|LessThan170~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(5),
	datac => \C1|LessThan170~1_combout\,
	datad => \C1|SQ_X1\(4),
	combout => \C1|LessThan155~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\C1|LessThan156~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~1_combout\ = (\C1|SQ_X1\(8) & ((\C1|SQ_X1\(7)) # ((\C1|LessThan156~0_combout\ & \C1|LessThan158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|LessThan156~0_combout\,
	datac => \C1|SQ_X1\(7),
	datad => \C1|LessThan158~0_combout\,
	combout => \C1|LessThan156~1_combout\);

-- Location: LCCOMB_X22_Y15_N26
\C1|dMap~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~222_combout\ = (\C1|LessThan157~0_combout\ & (\C1|LessThan156~1_combout\ & ((\C1|LessThan155~0_combout\) # (\C1|LessThan155~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan157~0_combout\,
	datab => \C1|LessThan155~0_combout\,
	datac => \C1|LessThan155~1_combout\,
	datad => \C1|LessThan156~1_combout\,
	combout => \C1|dMap~222_combout\);

-- Location: LCCOMB_X21_Y14_N16
\C1|dMap~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~260_combout\ = (\C1|Add8~10_combout\ & ((\C1|Add8~8_combout\) # ((\C1|Add8~6_combout\) # (!\C1|dMap~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|dMap~259_combout\,
	combout => \C1|dMap~260_combout\);

-- Location: LCCOMB_X21_Y14_N26
\C1|dMap~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~262_combout\ = (((\C1|dMap~260_combout\) # (!\C1|dMap~261_combout\)) # (!\C1|LessThan130~2_combout\)) # (!\C1|Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|LessThan130~2_combout\,
	datac => \C1|dMap~260_combout\,
	datad => \C1|dMap~261_combout\,
	combout => \C1|dMap~262_combout\);

-- Location: LCCOMB_X21_Y14_N8
\C1|esqQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~2_combout\ = (\C1|dMap~222_combout\ & !\C1|dMap~262_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~222_combout\,
	datad => \C1|dMap~262_combout\,
	combout => \C1|esqQ1X2~2_combout\);

-- Location: LCCOMB_X21_Y14_N22
\C1|esqQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~1_combout\ = (\C1|esqQ1X2~0_combout\ & (!\C1|dMap~258_combout\ & ((\C1|LessThan137~0_combout\) # (!\C1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan137~0_combout\,
	datab => \C1|esqQ1X2~0_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|dMap~258_combout\,
	combout => \C1|esqQ1X2~1_combout\);

-- Location: LCCOMB_X21_Y14_N18
\C1|esqQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~3_combout\ = (\C1|esqQ1X2~2_combout\) # ((\C1|esqQ1X2~1_combout\) # ((!\C1|dMap~255_combout\ & \C1|dMap~287_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~255_combout\,
	datab => \C1|dMap~287_combout\,
	datac => \C1|esqQ1X2~2_combout\,
	datad => \C1|esqQ1X2~1_combout\,
	combout => \C1|esqQ1X2~3_combout\);

-- Location: LCCOMB_X22_Y15_N6
\C1|dMap~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~14_combout\ = ((\C1|SQ_X1\(3) & ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1))))) # (!\C1|SQ_X1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|dMap~14_combout\);

-- Location: LCCOMB_X22_Y15_N12
\C1|dMap~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~11_combout\ = (!\C1|SQ_X1\(6) & (\C1|SQ_X1\(9) & (!\C1|SQ_X1\(10) & \C1|dMap~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(9),
	datac => \C1|SQ_X1\(10),
	datad => \C1|dMap~14_combout\,
	combout => \C1|dMap~11_combout\);

-- Location: LCCOMB_X22_Y15_N14
\C1|dMap~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~286_combout\ = (\C1|SQ_X1\(5) & (\C1|SQ_X1\(8) & (!\C1|SQ_X1\(7) & \C1|dMap~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(7),
	datad => \C1|dMap~11_combout\,
	combout => \C1|dMap~286_combout\);

-- Location: LCCOMB_X20_Y16_N14
\C1|dMap~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~266_combout\ = ((\C1|Add8~6_combout\ & !\C1|dMap~259_combout\)) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~6_combout\,
	datac => \C1|dMap~259_combout\,
	datad => \C1|Add8~8_combout\,
	combout => \C1|dMap~266_combout\);

-- Location: LCCOMB_X20_Y16_N4
\C1|dMap~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~268_combout\ = (\C1|Add8~10_combout\) # (((\C1|dMap~266_combout\) # (!\C1|dMap~267_combout\)) # (!\C1|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|dMap~266_combout\,
	datad => \C1|dMap~267_combout\,
	combout => \C1|dMap~268_combout\);

-- Location: LCCOMB_X20_Y16_N18
\C1|esqQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~4_combout\ = (\C1|dMap~288_combout\ & (((\C1|dMap~286_combout\ & !\C1|dMap~268_combout\)) # (!\C1|dMap~265_combout\))) # (!\C1|dMap~288_combout\ & (\C1|dMap~286_combout\ & (!\C1|dMap~268_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~288_combout\,
	datab => \C1|dMap~286_combout\,
	datac => \C1|dMap~268_combout\,
	datad => \C1|dMap~265_combout\,
	combout => \C1|esqQ1X2~4_combout\);

-- Location: LCCOMB_X21_Y16_N0
\C1|process_0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~20_combout\ = (\C1|esqQ1X2~7_combout\) # ((\C1|esqQ1X2~5_combout\) # ((\C1|esqQ1X2~3_combout\) # (\C1|esqQ1X2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X2~7_combout\,
	datab => \C1|esqQ1X2~5_combout\,
	datac => \C1|esqQ1X2~3_combout\,
	datad => \C1|esqQ1X2~4_combout\,
	combout => \C1|process_0~20_combout\);

-- Location: LCCOMB_X21_Y16_N2
\C1|process_0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~21_combout\ = (!\C1|LessThan152~0_combout\ & ((\C1|Add8~20_combout\) # ((!\C1|LessThan130~1_combout\ & \C1|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan152~0_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|LessThan130~1_combout\,
	datad => \C1|process_0~20_combout\,
	combout => \C1|process_0~21_combout\);

-- Location: LCCOMB_X21_Y16_N28
\C1|process_0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~22_combout\ = (!\C1|esqQ1X1~9_combout\ & (\C1|process_0~19_combout\ & ((!\C1|process_0~21_combout\) # (!\C1|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~9_combout\,
	datab => \C1|process_0~19_combout\,
	datac => \C1|Add8~22_combout\,
	datad => \C1|process_0~21_combout\,
	combout => \C1|process_0~22_combout\);

-- Location: LCFF_X21_Y16_N25
\C1|SQ_X1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add26~16_combout\,
	ena => \C1|SQ_X1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(9));

-- Location: LCCOMB_X22_Y11_N2
\C1|LessThan163~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan163~3_combout\ = (\C1|SQ_X1\(9) & (((\C1|SQ_X1\(6) & !\C1|SQ_X1\(7))) # (!\C1|SQ_X1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(9),
	datac => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan163~3_combout\);

-- Location: LCCOMB_X22_Y11_N18
\C1|LessThan164~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan164~3_combout\ = (\C1|SQ_X1\(7)) # (((!\C1|SQ_X1\(3) & \C1|LessThan170~2_combout\)) # (!\C1|SQ_X1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(6),
	datad => \C1|LessThan170~2_combout\,
	combout => \C1|LessThan164~3_combout\);

-- Location: LCCOMB_X22_Y11_N16
\C1|LessThan164~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan164~4_combout\ = (!\C1|SQ_X1\(10) & (((\C1|SQ_X1\(8) & \C1|LessThan164~3_combout\)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|SQ_X1\(9),
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan164~3_combout\,
	combout => \C1|LessThan164~4_combout\);

-- Location: LCCOMB_X22_Y11_N20
\C1|LessThan163~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan163~2_combout\ = (!\C1|SQ_X1\(5) & (!\C1|SQ_X1\(7) & (!\C1|SQ_X1\(4) & \C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(9),
	combout => \C1|LessThan163~2_combout\);

-- Location: LCCOMB_X22_Y11_N22
\C1|LessThan163~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan163~4_combout\ = (\C1|LessThan163~2_combout\ & ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(1),
	datac => \C1|LessThan163~2_combout\,
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan163~4_combout\);

-- Location: LCCOMB_X22_Y11_N8
\C1|DRAWMAP~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~122_combout\ = (\C1|LessThan164~4_combout\ & ((\C1|SQ_X1\(10)) # ((\C1|LessThan163~3_combout\) # (\C1|LessThan163~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|LessThan163~3_combout\,
	datac => \C1|LessThan164~4_combout\,
	datad => \C1|LessThan163~4_combout\,
	combout => \C1|DRAWMAP~122_combout\);

-- Location: LCCOMB_X23_Y15_N16
\C1|LessThan157~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan157~1_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan177~19_combout\ & ((\C1|LessThan171~0_combout\) # (!\C1|LessThan158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan171~0_combout\,
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan177~19_combout\,
	datad => \C1|LessThan158~0_combout\,
	combout => \C1|LessThan157~1_combout\);

-- Location: LCCOMB_X23_Y15_N2
\C1|LessThan158~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan158~1_combout\ = (\C1|LessThan170~1_combout\ & (\C1|LessThan158~0_combout\ & ((\C1|SQ_X1\(4)) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(3),
	datac => \C1|LessThan170~1_combout\,
	datad => \C1|LessThan158~0_combout\,
	combout => \C1|LessThan158~1_combout\);

-- Location: LCCOMB_X22_Y15_N16
\C1|DRAWMAP~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~133_combout\ = (\C1|SQ_X1\(9) & ((\C1|SQ_X1\(10) & ((\C1|LessThan158~1_combout\))) # (!\C1|SQ_X1\(10) & (\C1|LessThan157~1_combout\)))) # (!\C1|SQ_X1\(9) & (((\C1|LessThan157~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan157~1_combout\,
	datad => \C1|LessThan158~1_combout\,
	combout => \C1|DRAWMAP~133_combout\);

-- Location: LCCOMB_X23_Y11_N0
\C1|dMap~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~220_combout\ = (\C1|SQ_Y1\(6)) # ((!\C1|SQ_Y1\(2) & (!\C1|SQ_Y1\(3) & \C1|SQ_Y1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~220_combout\);

-- Location: LCCOMB_X23_Y11_N2
\C1|dMap~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~221_combout\ = (\C1|dMap~220_combout\) # (!\C1|dMap~215_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~215_combout\,
	datad => \C1|dMap~220_combout\,
	combout => \C1|dMap~221_combout\);

-- Location: LCCOMB_X23_Y11_N20
\C1|esqQ1X1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~6_combout\ = (\C1|dMap~219_combout\ & (!\C1|dMap~221_combout\ & ((\C1|dMap~224_combout\)))) # (!\C1|dMap~219_combout\ & ((\C1|dMap~223_combout\) # ((!\C1|dMap~221_combout\ & \C1|dMap~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~219_combout\,
	datab => \C1|dMap~221_combout\,
	datac => \C1|dMap~223_combout\,
	datad => \C1|dMap~224_combout\,
	combout => \C1|esqQ1X1~6_combout\);

-- Location: LCCOMB_X22_Y11_N12
\C1|esqQ1X1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~7_combout\ = (\C1|esqQ1X1~6_combout\) # ((!\C1|dMap~199_combout\ & ((\C1|DRAWMAP~133_combout\) # (\C1|DRAWMAP~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datab => \C1|DRAWMAP~133_combout\,
	datac => \C1|DRAWMAP~135_combout\,
	datad => \C1|esqQ1X1~6_combout\,
	combout => \C1|esqQ1X1~7_combout\);

-- Location: LCCOMB_X23_Y11_N22
\C1|dMap~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~207_combout\ = (\C1|SQ_Y1\(6) & (((\C1|SQ_Y1\(5)) # (!\C1|LessThan105~0_combout\)))) # (!\C1|SQ_Y1\(6) & ((\C1|dMap~206_combout\) # ((!\C1|LessThan105~0_combout\ & !\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~206_combout\,
	datab => \C1|LessThan105~0_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~207_combout\);

-- Location: LCCOMB_X21_Y11_N8
\C1|dMap~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~208_combout\ = (\C1|dMap~207_combout\) # (!\C1|dMap~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~198_combout\,
	datad => \C1|dMap~207_combout\,
	combout => \C1|dMap~208_combout\);

-- Location: LCCOMB_X21_Y11_N14
\C1|esqQ1X1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~2_combout\ = (\C1|LessThan85~0_combout\) # ((\C1|dMap~286_combout\ & !\C1|dMap~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan85~0_combout\,
	datac => \C1|dMap~286_combout\,
	datad => \C1|dMap~201_combout\,
	combout => \C1|esqQ1X1~2_combout\);

-- Location: LCCOMB_X21_Y11_N20
\C1|esqQ1X1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~1_combout\ = (\C1|dMap~196_combout\ & ((\C1|dMap~222_combout\) # ((!\C1|dMap~199_combout\ & \C1|DRAWMAP~121_combout\)))) # (!\C1|dMap~196_combout\ & (!\C1|dMap~199_combout\ & ((\C1|DRAWMAP~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~196_combout\,
	datab => \C1|dMap~199_combout\,
	datac => \C1|dMap~222_combout\,
	datad => \C1|DRAWMAP~121_combout\,
	combout => \C1|esqQ1X1~1_combout\);

-- Location: LCCOMB_X22_Y11_N14
\C1|LessThan173~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~7_combout\ = ((\C1|SQ_X1\(3) & (\C1|SQ_X1\(2) & !\C1|SQ_X1\(1)))) # (!\C1|LessThan170~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(2),
	datac => \C1|SQ_X1\(1),
	datad => \C1|LessThan170~2_combout\,
	combout => \C1|LessThan173~7_combout\);

-- Location: LCCOMB_X22_Y11_N4
\C1|LessThan173~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~6_combout\ = ((\C1|SQ_X1\(6) & (\C1|SQ_X1\(9) & \C1|LessThan173~7_combout\))) # (!\C1|LessThan173~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(9),
	datac => \C1|LessThan173~7_combout\,
	datad => \C1|LessThan173~5_combout\,
	combout => \C1|LessThan173~6_combout\);

-- Location: LCCOMB_X23_Y15_N6
\C1|LessThan174~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan174~2_combout\ = ((\C1|SQ_X1\(5)) # ((\C1|LessThan177~20_combout\ & \C1|SQ_X1\(4)))) # (!\C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(5),
	datac => \C1|LessThan177~20_combout\,
	datad => \C1|SQ_X1\(4),
	combout => \C1|LessThan174~2_combout\);

-- Location: LCCOMB_X23_Y15_N10
\C1|LessThan174~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan174~3_combout\ = (!\C1|SQ_X1\(10) & (((\C1|LessThan170~1_combout\ & \C1|LessThan174~2_combout\)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan170~1_combout\,
	datad => \C1|LessThan174~2_combout\,
	combout => \C1|LessThan174~3_combout\);

-- Location: LCCOMB_X22_Y11_N6
\C1|esqQ1X1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~3_combout\ = (\C1|LessThan173~6_combout\ & (\C1|LessThan174~3_combout\)) # (!\C1|LessThan173~6_combout\ & ((\C1|LessThan175~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan173~6_combout\,
	datac => \C1|LessThan174~3_combout\,
	datad => \C1|LessThan175~0_combout\,
	combout => \C1|esqQ1X1~3_combout\);

-- Location: LCCOMB_X21_Y11_N4
\C1|esqQ1X1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~4_combout\ = (\C1|esqQ1X1~2_combout\) # ((\C1|esqQ1X1~1_combout\) # ((!\C1|dMap~216_combout\ & \C1|esqQ1X1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~216_combout\,
	datab => \C1|esqQ1X1~2_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|esqQ1X1~3_combout\,
	combout => \C1|esqQ1X1~4_combout\);

-- Location: LCCOMB_X21_Y11_N6
\C1|esqQ1X1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~5_combout\ = (\C1|esqQ1X1~0_combout\) # ((\C1|esqQ1X1~4_combout\) # ((!\C1|dMap~208_combout\ & \C1|dMap~287_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~0_combout\,
	datab => \C1|dMap~208_combout\,
	datac => \C1|esqQ1X1~4_combout\,
	datad => \C1|dMap~287_combout\,
	combout => \C1|esqQ1X1~5_combout\);

-- Location: LCCOMB_X21_Y11_N16
\C1|esqQ1X1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~8_combout\ = (\C1|esqQ1X1~7_combout\) # ((\C1|esqQ1X1~5_combout\) # ((!\C1|dMap~199_combout\ & \C1|DRAWMAP~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datab => \C1|DRAWMAP~122_combout\,
	datac => \C1|esqQ1X1~7_combout\,
	datad => \C1|esqQ1X1~5_combout\,
	combout => \C1|esqQ1X1~8_combout\);

-- Location: LCCOMB_X22_Y15_N20
\C1|LessThan164~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan164~2_combout\ = (!\C1|SQ_X1\(10) & !\C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	combout => \C1|LessThan164~2_combout\);

-- Location: LCCOMB_X23_Y15_N30
\C1|LessThan156~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~2_combout\ = (!\C1|SQ_X1\(6) & (\C1|SQ_X1\(5) & \C1|LessThan156~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(5),
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|LessThan156~2_combout\);

-- Location: LCCOMB_X23_Y15_N4
\C1|LessThan152~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan152~0_combout\ = (\C1|LessThan164~2_combout\ & ((\C1|SQ_X1\(8)) # ((\C1|SQ_X1\(7)) # (\C1|LessThan156~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|SQ_X1\(7),
	datac => \C1|LessThan164~2_combout\,
	datad => \C1|LessThan156~2_combout\,
	combout => \C1|LessThan152~0_combout\);

-- Location: LCCOMB_X21_Y13_N4
\C1|esqQ1X1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~9_combout\ = (!\C1|LessThan83~1_combout\ & (\C1|esqQ1X1~8_combout\ & !\C1|LessThan152~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan83~1_combout\,
	datac => \C1|esqQ1X1~8_combout\,
	datad => \C1|LessThan152~0_combout\,
	combout => \C1|esqQ1X1~9_combout\);

-- Location: LCCOMB_X21_Y13_N6
\C1|SQ_Y1[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~0_combout\ = (\C1|LessThan313~10_combout\) # ((\C1|esqQ1X1~9_combout\) # (\C1|dirQ1X1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan313~10_combout\,
	datac => \C1|esqQ1X1~9_combout\,
	datad => \C1|dirQ1X1~52_combout\,
	combout => \C1|SQ_Y1[9]~0_combout\);

-- Location: LCCOMB_X22_Y13_N18
\C1|Add20~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add20~18_combout\ = \C1|SQ_Y1\(10) $ (\C1|Add20~17\ $ (!\C1|SQ_Y1[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1[9]~0_combout\,
	cin => \C1|Add20~17\,
	combout => \C1|Add20~18_combout\);

-- Location: LCFF_X22_Y13_N19
\C1|SQ_Y1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add20~18_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(10));

-- Location: LCCOMB_X27_Y11_N0
\C1|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan2~1_cout\);

-- Location: LCCOMB_X27_Y11_N2
\C1|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~3_cout\ = CARRY((\C1|SQ_Y1\(1) & (!\C1|VPOS\(1) & !\C1|LessThan2~1_cout\)) # (!\C1|SQ_Y1\(1) & ((!\C1|LessThan2~1_cout\) # (!\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan2~1_cout\,
	cout => \C1|LessThan2~3_cout\);

-- Location: LCCOMB_X27_Y11_N4
\C1|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~5_cout\ = CARRY((\C1|VPOS\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan2~3_cout\))) # (!\C1|VPOS\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan2~3_cout\,
	cout => \C1|LessThan2~5_cout\);

-- Location: LCCOMB_X27_Y11_N6
\C1|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~7_cout\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|VPOS\(3) & !\C1|LessThan2~5_cout\)) # (!\C1|SQ_Y1\(3) & ((!\C1|LessThan2~5_cout\) # (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan2~5_cout\,
	cout => \C1|LessThan2~7_cout\);

-- Location: LCCOMB_X27_Y11_N8
\C1|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~9_cout\ = CARRY((\C1|SQ_Y1\(4) & (\C1|VPOS\(4) & !\C1|LessThan2~7_cout\)) # (!\C1|SQ_Y1\(4) & ((\C1|VPOS\(4)) # (!\C1|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan2~7_cout\,
	cout => \C1|LessThan2~9_cout\);

-- Location: LCCOMB_X27_Y11_N10
\C1|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~11_cout\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|LessThan2~9_cout\) # (!\C1|VPOS\(5)))) # (!\C1|SQ_Y1\(5) & (!\C1|VPOS\(5) & !\C1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan2~9_cout\,
	cout => \C1|LessThan2~11_cout\);

-- Location: LCCOMB_X27_Y11_N12
\C1|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~13_cout\ = CARRY((\C1|SQ_Y1\(6) & (\C1|VPOS\(6) & !\C1|LessThan2~11_cout\)) # (!\C1|SQ_Y1\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan2~11_cout\,
	cout => \C1|LessThan2~13_cout\);

-- Location: LCCOMB_X27_Y11_N14
\C1|LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~15_cout\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|VPOS\(7) & !\C1|LessThan2~13_cout\)) # (!\C1|SQ_Y1\(7) & ((!\C1|LessThan2~13_cout\) # (!\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan2~13_cout\,
	cout => \C1|LessThan2~15_cout\);

-- Location: LCCOMB_X27_Y11_N16
\C1|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~17_cout\ = CARRY((\C1|VPOS\(8) & ((\C1|SQ_Y1\(8)) # (!\C1|LessThan2~15_cout\))) # (!\C1|VPOS\(8) & (\C1|SQ_Y1\(8) & !\C1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|LessThan2~15_cout\,
	cout => \C1|LessThan2~17_cout\);

-- Location: LCCOMB_X27_Y11_N18
\C1|LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~19_cout\ = CARRY((\C1|VPOS\(9) & (!\C1|SQ_Y1\(9) & !\C1|LessThan2~17_cout\)) # (!\C1|VPOS\(9) & ((!\C1|LessThan2~17_cout\) # (!\C1|SQ_Y1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|LessThan2~17_cout\,
	cout => \C1|LessThan2~19_cout\);

-- Location: LCCOMB_X27_Y11_N20
\C1|LessThan2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~20_combout\ = (\C1|SQ_Y1\(10) & (!\C1|LessThan2~19_cout\ & \C1|VPOS\(10))) # (!\C1|SQ_Y1\(10) & ((\C1|VPOS\(10)) # (!\C1|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan2~19_cout\,
	combout => \C1|LessThan2~20_combout\);

-- Location: LCCOMB_X30_Y12_N2
\C1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((\C1|SQ_X1\(1) & \C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y12_N4
\C1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|SQ_X1\(2) & ((!\C1|LessThan0~1_cout\) # (!\C1|HPOS\(2)))) # (!\C1|SQ_X1\(2) & (!\C1|HPOS\(2) & !\C1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y12_N6
\C1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|HPOS\(3) & ((!\C1|LessThan0~3_cout\) # (!\C1|SQ_X1\(3)))) # (!\C1|HPOS\(3) & (!\C1|SQ_X1\(3) & !\C1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y12_N8
\C1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|HPOS\(4) & (!\C1|SQ_X1\(4) & !\C1|LessThan0~5_cout\)) # (!\C1|HPOS\(4) & ((!\C1|LessThan0~5_cout\) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y12_N10
\C1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|SQ_X1\(5) & ((\C1|HPOS\(5)) # (!\C1|LessThan0~7_cout\))) # (!\C1|SQ_X1\(5) & (\C1|HPOS\(5) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y12_N12
\C1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|SQ_X1\(6) & ((!\C1|LessThan0~9_cout\) # (!\C1|HPOS\(6)))) # (!\C1|SQ_X1\(6) & (!\C1|HPOS\(6) & !\C1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y12_N14
\C1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|SQ_X1\(7) & ((\C1|HPOS\(7)) # (!\C1|LessThan0~11_cout\))) # (!\C1|SQ_X1\(7) & (\C1|HPOS\(7) & !\C1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y12_N16
\C1|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~15_cout\ = CARRY((\C1|HPOS\(8) & (!\C1|SQ_X1\(8) & !\C1|LessThan0~13_cout\)) # (!\C1|HPOS\(8) & ((!\C1|LessThan0~13_cout\) # (!\C1|SQ_X1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|LessThan0~13_cout\,
	cout => \C1|LessThan0~15_cout\);

-- Location: LCCOMB_X30_Y12_N18
\C1|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~17_cout\ = CARRY((\C1|SQ_X1\(9) & (\C1|HPOS\(9) & !\C1|LessThan0~15_cout\)) # (!\C1|SQ_X1\(9) & ((\C1|HPOS\(9)) # (!\C1|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan0~15_cout\,
	cout => \C1|LessThan0~17_cout\);

-- Location: LCCOMB_X30_Y12_N20
\C1|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan0~17_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X1\(10) & ((\C1|LessThan0~17_cout\) # (\C1|HPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan0~17_cout\,
	combout => \C1|LessThan0~18_combout\);

-- Location: LCCOMB_X32_Y14_N0
\C1|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X32_Y14_N2
\C1|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\C1|SQ_X2\(1) & ((!\C1|LessThan4~1_cout\) # (!\C1|HPOS\(1)))) # (!\C1|SQ_X2\(1) & (!\C1|HPOS\(1) & !\C1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X32_Y14_N4
\C1|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|HPOS\(2) & ((\C1|SQ_X2\(2)) # (!\C1|LessThan4~3_cout\))) # (!\C1|HPOS\(2) & (\C1|SQ_X2\(2) & !\C1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X32_Y14_N6
\C1|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan4~5_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X32_Y14_N8
\C1|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((\C1|SQ_X2\(4) & (\C1|HPOS\(4) & !\C1|LessThan4~7_cout\)) # (!\C1|SQ_X2\(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X32_Y14_N10
\C1|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|SQ_X2\(5) & !\C1|LessThan4~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|SQ_X2\(5)) # (!\C1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X32_Y14_N12
\C1|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|HPOS\(6) & ((\C1|SQ_X2\(6)) # (!\C1|LessThan4~11_cout\))) # (!\C1|HPOS\(6) & (\C1|SQ_X2\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X32_Y14_N14
\C1|LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|HPOS\(7) & (!\C1|SQ_X2\(7) & !\C1|LessThan4~13_cout\)) # (!\C1|HPOS\(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|SQ_X2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X32_Y14_N16
\C1|LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|SQ_X2\(8) & ((\C1|HPOS\(8)) # (!\C1|LessThan4~15_cout\))) # (!\C1|SQ_X2\(8) & (\C1|HPOS\(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X32_Y14_N18
\C1|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~19_cout\ = CARRY((\C1|HPOS\(9) & (\C1|SQ_X2\(9) & !\C1|LessThan4~17_cout\)) # (!\C1|HPOS\(9) & ((\C1|SQ_X2\(9)) # (!\C1|LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|LessThan4~17_cout\,
	cout => \C1|LessThan4~19_cout\);

-- Location: LCCOMB_X32_Y14_N20
\C1|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|HPOS\(10) & ((!\C1|SQ_X2\(10)) # (!\C1|LessThan4~19_cout\))) # (!\C1|HPOS\(10) & (!\C1|LessThan4~19_cout\ & !\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|SQ_X2\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X27_Y12_N2
\C1|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan6~1_cout\);

-- Location: LCCOMB_X27_Y12_N4
\C1|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|VPOS\(1) & (!\C1|SQ_Y2\(1) & !\C1|LessThan6~1_cout\)) # (!\C1|VPOS\(1) & ((!\C1|LessThan6~1_cout\) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X27_Y12_N6
\C1|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|VPOS\(2) & ((\C1|SQ_Y2\(2)) # (!\C1|LessThan6~3_cout\))) # (!\C1|VPOS\(2) & (\C1|SQ_Y2\(2) & !\C1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X27_Y12_N8
\C1|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((\C1|VPOS\(3) & (!\C1|SQ_Y2\(3) & !\C1|LessThan6~5_cout\)) # (!\C1|VPOS\(3) & ((!\C1|LessThan6~5_cout\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X27_Y12_N10
\C1|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan6~7_cout\) # (!\C1|SQ_Y2\(4)))) # (!\C1|VPOS\(4) & (!\C1|SQ_Y2\(4) & !\C1|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|LessThan6~7_cout\,
	cout => \C1|LessThan6~9_cout\);

-- Location: LCCOMB_X27_Y12_N12
\C1|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~11_cout\ = CARRY((\C1|VPOS\(5) & (\C1|SQ_Y2\(5) & !\C1|LessThan6~9_cout\)) # (!\C1|VPOS\(5) & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan6~9_cout\,
	cout => \C1|LessThan6~11_cout\);

-- Location: LCCOMB_X27_Y12_N14
\C1|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|SQ_Y2\(6) & (\C1|VPOS\(6) & !\C1|LessThan6~11_cout\)) # (!\C1|SQ_Y2\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X27_Y12_N16
\C1|LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((\C1|SQ_Y2\(7) & (!\C1|VPOS\(7) & !\C1|LessThan6~13_cout\)) # (!\C1|SQ_Y2\(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X27_Y12_N18
\C1|LessThan6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~17_cout\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan6~15_cout\))) # (!\C1|SQ_Y2\(8) & (\C1|VPOS\(8) & !\C1|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan6~15_cout\,
	cout => \C1|LessThan6~17_cout\);

-- Location: LCCOMB_X27_Y12_N20
\C1|LessThan6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~19_cout\ = CARRY((\C1|VPOS\(9) & (!\C1|SQ_Y2\(9) & !\C1|LessThan6~17_cout\)) # (!\C1|VPOS\(9) & ((!\C1|LessThan6~17_cout\) # (!\C1|SQ_Y2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|LessThan6~17_cout\,
	cout => \C1|LessThan6~19_cout\);

-- Location: LCCOMB_X27_Y12_N22
\C1|LessThan6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~20_combout\ = (\C1|SQ_Y2\(10) & (!\C1|LessThan6~19_cout\ & \C1|VPOS\(10))) # (!\C1|SQ_Y2\(10) & ((\C1|VPOS\(10)) # (!\C1|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan6~19_cout\,
	combout => \C1|LessThan6~20_combout\);

-- Location: LCCOMB_X32_Y16_N0
\C1|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((!\C1|HPOS\(1) & \C1|SQ_X2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X32_Y16_N2
\C1|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|SQ_X2\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan5~1_cout\))) # (!\C1|SQ_X2\(2) & (\C1|HPOS\(2) & !\C1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X32_Y16_N4
\C1|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|HPOS\(3) & (!\C1|SQ_X2\(3) & !\C1|LessThan5~3_cout\)) # (!\C1|HPOS\(3) & ((!\C1|LessThan5~3_cout\) # (!\C1|SQ_X2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X32_Y16_N6
\C1|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add2~0_combout\ & (\C1|HPOS\(4) & !\C1|LessThan5~5_cout\)) # (!\C1|Add2~0_combout\ & ((\C1|HPOS\(4)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X32_Y16_N8
\C1|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|HPOS\(5) & (\C1|Add2~2_combout\ & !\C1|LessThan5~7_cout\)) # (!\C1|HPOS\(5) & ((\C1|Add2~2_combout\) # (!\C1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X32_Y16_N10
\C1|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add2~4_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add2~4_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X32_Y16_N12
\C1|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|Add2~6_combout\ & ((!\C1|LessThan5~11_cout\) # (!\C1|HPOS\(7)))) # (!\C1|Add2~6_combout\ & (!\C1|HPOS\(7) & !\C1|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X32_Y16_N14
\C1|LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|Add2~8_combout\ & (\C1|HPOS\(8) & !\C1|LessThan5~13_cout\)) # (!\C1|Add2~8_combout\ & ((\C1|HPOS\(8)) # (!\C1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X32_Y16_N16
\C1|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add2~10_combout\ & !\C1|LessThan5~15_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add2~10_combout\) # (!\C1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add2~10_combout\,
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X32_Y16_N18
\C1|LessThan5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~18_combout\ = (\C1|HPOS\(10) & (\C1|LessThan5~17_cout\ & \C1|Add2~12_combout\)) # (!\C1|HPOS\(10) & ((\C1|LessThan5~17_cout\) # (\C1|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|Add2~12_combout\,
	cin => \C1|LessThan5~17_cout\,
	combout => \C1|LessThan5~18_combout\);

-- Location: LCCOMB_X31_Y16_N26
\C1|DRAW2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|LessThan7~18_combout\ & (((\C1|Add2~14_combout\) # (\C1|LessThan5~18_combout\)))) # (!\C1|LessThan7~18_combout\ & (\C1|Add3~20_combout\ & ((\C1|Add2~14_combout\) # (\C1|LessThan5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan7~18_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan5~18_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X31_Y14_N0
\C1|DRAW2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan4~20_combout\ & (\C1|LessThan6~20_combout\ & \C1|DRAW2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan4~20_combout\,
	datac => \C1|LessThan6~20_combout\,
	datad => \C1|DRAW2~0_combout\,
	combout => \C1|DRAW2~1_combout\);

-- Location: LCCOMB_X31_Y15_N16
\C1|process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (\C1|DRAW2~1_combout\) # ((\C1|DRAW1~0_combout\ & (\C1|LessThan2~20_combout\ & \C1|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~0_combout\,
	datab => \C1|LessThan2~20_combout\,
	datac => \C1|LessThan0~18_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|process_0~12_combout\);

-- Location: LCCOMB_X31_Y12_N28
\C1|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|process_0~0_combout\ & (!\C1|HPOS\(4) & \C1|process_0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~0_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|process_0~7_combout\,
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X31_Y13_N16
\C1|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(9)) # ((!\C1|LessThan320~0_combout\ & \C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan320~0_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X31_Y12_N0
\C1|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (!\C1|VPOS\(10) & (\C1|LessThan321~1_combout\ & ((\C1|VPOS\(5)) # (\C1|LessThan324~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan324~0_combout\,
	datad => \C1|LessThan321~1_combout\,
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X31_Y12_N30
\C1|process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\C1|process_0~6_combout\) # ((!\C1|process_0~8_combout\ & !\C1|process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~8_combout\,
	datac => \C1|process_0~10_combout\,
	datad => \C1|process_0~6_combout\,
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X32_Y15_N30
\C1|R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (!\C1|process_0~11_combout\ & ((!\C1|DRAW2~1_combout\) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \C1|process_0~11_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|R~2_combout\);

-- Location: LCCOMB_X31_Y15_N8
\C1|R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~4_combout\ = (\C1|R~2_combout\ & ((\C1|process_0~12_combout\) # (\SW~combout\(8) $ (!\C1|R~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \C1|R~3_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C1|R~2_combout\,
	combout => \C1|R~4_combout\);

-- Location: LCFF_X31_Y15_N9
\C1|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X31_Y12_N26
\C1|process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~13_combout\ = (\SW~combout\(8)) # (\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datad => \SW~combout\(9),
	combout => \C1|process_0~13_combout\);

-- Location: LCCOMB_X31_Y15_N14
\C1|DRAWMAP~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~52_combout\ = (!\C1|dMap~107_combout\ & ((\C1|DRAWMAP~50_combout\) # ((!\C1|DRAWMAP~24_combout\) # (!\C1|DRAWMAP~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~107_combout\,
	datab => \C1|DRAWMAP~50_combout\,
	datac => \C1|DRAWMAP~46_combout\,
	datad => \C1|DRAWMAP~24_combout\,
	combout => \C1|DRAWMAP~52_combout\);

-- Location: LCCOMB_X31_Y15_N10
\C1|R~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~5_combout\ = (\C1|R~2_combout\ & ((\C1|process_0~12_combout\) # (\C1|process_0~13_combout\ $ (\C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~12_combout\,
	datab => \C1|process_0~13_combout\,
	datac => \C1|DRAWMAP~52_combout\,
	datad => \C1|R~2_combout\,
	combout => \C1|R~5_combout\);

-- Location: LCFF_X31_Y15_N11
\C1|R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(1));

-- Location: LCCOMB_X32_Y15_N24
\C1|R~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~6_combout\ = (\C1|process_0~12_combout\) # ((!\SW~combout\(9) & (\SW~combout\(8) $ (\C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \C1|process_0~12_combout\,
	datac => \SW~combout\(9),
	datad => \C1|DRAWMAP~52_combout\,
	combout => \C1|R~6_combout\);

-- Location: LCCOMB_X32_Y15_N16
\C1|R~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~9_combout\ = (!\C1|process_0~11_combout\ & (\C1|R~6_combout\ & ((!\C1|DRAW2~1_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~11_combout\,
	datab => \SW~combout\(1),
	datac => \C1|R~6_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|R~9_combout\);

-- Location: LCFF_X32_Y15_N17
\C1|R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(2));

-- Location: LCCOMB_X32_Y15_N10
\C1|R~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~7_combout\ = (\C1|R~2_combout\ & ((\C1|process_0~12_combout\) # ((\C1|DRAWMAP~52_combout\ & !\C1|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~52_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|process_0~13_combout\,
	datad => \C1|R~2_combout\,
	combout => \C1|R~7_combout\);

-- Location: LCFF_X32_Y15_N11
\C1|R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(3));

-- Location: LCCOMB_X32_Y15_N22
\C1|B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (\C1|process_0~12_combout\ & (((\SW~combout\(1))))) # (!\C1|process_0~12_combout\ & (((\SW~combout\(8))) # (!\C1|DRAWMAP~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~52_combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(8),
	datad => \C1|process_0~12_combout\,
	combout => \C1|B~2_combout\);

-- Location: LCCOMB_X32_Y15_N0
\C1|B~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~11_combout\ = (!\C1|process_0~11_combout\ & ((\C1|R~8_combout\ & (!\SW~combout\(0))) # (!\C1|R~8_combout\ & ((!\C1|B~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \SW~combout\(0),
	datac => \C1|process_0~11_combout\,
	datad => \C1|B~2_combout\,
	combout => \C1|B~11_combout\);

-- Location: LCFF_X32_Y15_N1
\C1|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(0));

-- Location: LCCOMB_X31_Y15_N6
\C1|B~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~3_combout\ = (\SW~combout\(9) & (((\C1|dMap~107_combout\) # (\C1|DRAWMAP~51_combout\)))) # (!\SW~combout\(9) & (!\SW~combout\(8) & (!\C1|dMap~107_combout\ & !\C1|DRAWMAP~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \C1|dMap~107_combout\,
	datad => \C1|DRAWMAP~51_combout\,
	combout => \C1|B~3_combout\);

-- Location: LCCOMB_X32_Y15_N26
\C1|B~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~4_combout\ = (\C1|process_0~12_combout\ & (!\SW~combout\(1))) # (!\C1|process_0~12_combout\ & ((\C1|B~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \C1|B~3_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C1|B~4_combout\);

-- Location: LCCOMB_X32_Y15_N2
\C1|B~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~5_combout\ = (!\C1|process_0~11_combout\ & ((\C1|R~8_combout\ & (!\SW~combout\(0))) # (!\C1|R~8_combout\ & ((\C1|B~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \SW~combout\(0),
	datac => \C1|process_0~11_combout\,
	datad => \C1|B~4_combout\,
	combout => \C1|B~5_combout\);

-- Location: LCFF_X32_Y15_N3
\C1|B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(1));

-- Location: LCCOMB_X32_Y15_N28
\C1|B~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~6_combout\ = (\C1|process_0~12_combout\ & (((!\SW~combout\(1))))) # (!\C1|process_0~12_combout\ & (!\C1|process_0~13_combout\ & ((\C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \SW~combout\(1),
	datad => \C1|DRAWMAP~52_combout\,
	combout => \C1|B~6_combout\);

-- Location: LCCOMB_X32_Y15_N8
\C1|B~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~7_combout\ = (!\C1|process_0~11_combout\ & ((\C1|R~8_combout\ & (!\SW~combout\(0))) # (!\C1|R~8_combout\ & ((\C1|B~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \SW~combout\(0),
	datac => \C1|process_0~11_combout\,
	datad => \C1|B~6_combout\,
	combout => \C1|B~7_combout\);

-- Location: LCFF_X32_Y15_N9
\C1|B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(2));

-- Location: LCCOMB_X32_Y15_N20
\C1|B~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~9_combout\ = (\SW~combout\(8)) # (\SW~combout\(9) $ (!\C1|DRAWMAP~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \C1|DRAWMAP~52_combout\,
	combout => \C1|B~9_combout\);

-- Location: LCCOMB_X31_Y15_N12
\C1|R~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~8_combout\ = (\C1|DRAW1~0_combout\ & (\C1|LessThan2~20_combout\ & (\C1|LessThan0~18_combout\ & !\C1|DRAW2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~0_combout\,
	datab => \C1|LessThan2~20_combout\,
	datac => \C1|LessThan0~18_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|R~8_combout\);

-- Location: LCCOMB_X32_Y15_N4
\C1|G~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~2_combout\ = (!\C1|process_0~11_combout\ & ((!\C1|R~8_combout\) # (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \C1|process_0~11_combout\,
	datad => \C1|R~8_combout\,
	combout => \C1|G~2_combout\);

-- Location: LCCOMB_X32_Y15_N6
\C1|B~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~8_combout\ = ((!\C1|R~8_combout\ & (\SW~combout\(1) & \C1|process_0~12_combout\))) # (!\C1|G~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \SW~combout\(1),
	datac => \C1|G~2_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C1|B~8_combout\);

-- Location: LCCOMB_X32_Y15_N14
\C1|B~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~10_combout\ = (!\C1|B~8_combout\ & ((\C1|R~8_combout\) # ((\C1|process_0~12_combout\) # (!\C1|B~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|B~9_combout\,
	datad => \C1|B~8_combout\,
	combout => \C1|B~10_combout\);

-- Location: LCFF_X32_Y15_N15
\C1|B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(3));

-- Location: LCCOMB_X32_Y15_N18
\C1|G~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~3_combout\ = (\C1|process_0~12_combout\) # ((\SW~combout\(8) & (\SW~combout\(9) & !\C1|DRAWMAP~52_combout\)) # (!\SW~combout\(8) & ((\C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \C1|process_0~12_combout\,
	datac => \SW~combout\(9),
	datad => \C1|DRAWMAP~52_combout\,
	combout => \C1|G~3_combout\);

-- Location: LCCOMB_X32_Y15_N12
\C1|G~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~6_combout\ = (!\C1|process_0~11_combout\ & (\C1|G~3_combout\ & ((!\SW~combout\(0)) # (!\C1|R~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \SW~combout\(0),
	datac => \C1|process_0~11_combout\,
	datad => \C1|G~3_combout\,
	combout => \C1|G~6_combout\);

-- Location: LCFF_X32_Y15_N13
\C1|G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|G\(0));

-- Location: LCCOMB_X31_Y15_N20
\C1|G~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~4_combout\ = (\C1|G~2_combout\ & ((\C1|process_0~12_combout\) # (\C1|process_0~13_combout\ $ (\C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~12_combout\,
	datab => \C1|process_0~13_combout\,
	datac => \C1|DRAWMAP~52_combout\,
	datad => \C1|G~2_combout\,
	combout => \C1|G~4_combout\);

-- Location: LCFF_X31_Y15_N21
\C1|G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|G\(1));

-- Location: LCCOMB_X31_Y15_N30
\C1|G~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~5_combout\ = (\C1|G~2_combout\ & ((\C1|process_0~12_combout\) # ((!\C1|process_0~13_combout\ & \C1|DRAWMAP~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~12_combout\,
	datab => \C1|process_0~13_combout\,
	datac => \C1|DRAWMAP~52_combout\,
	datad => \C1|G~2_combout\,
	combout => \C1|G~5_combout\);

-- Location: LCFF_X31_Y15_N31
\C1|G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|G\(2));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
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
	padio => ww_CLOCK_24(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
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
	datain => \C1|HSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
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
	datain => \C1|VSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
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
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
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
	datain => \C1|R\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
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
	datain => \C1|R\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
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
	datain => \C1|R\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
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
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
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
	datain => \C1|B\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
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
	datain => \C1|B\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
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
	datain => \C1|B\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
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
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
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
	datain => \C1|G\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
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
	datain => \C1|G\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
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
	datain => \C1|G\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));
END structure;


