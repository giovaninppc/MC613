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

-- DATE "06/03/2017 19:50:27"

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
	SW : IN std_logic_vector(1 DOWNTO 0);
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
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
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
SIGNAL \C1|Add16~15_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|LessThan40~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~11_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~12_combout\ : std_logic;
SIGNAL \C1|LessThan264~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~13_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~14_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~15_combout\ : std_logic;
SIGNAL \C1|dMap~13_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~16_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~17_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~18_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~19_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~20_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~21_combout\ : std_logic;
SIGNAL \C1|dMap~14_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~22_combout\ : std_logic;
SIGNAL \C1|dMap~15_combout\ : std_logic;
SIGNAL \C1|dMap~16_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~23_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~24_combout\ : std_logic;
SIGNAL \C1|LessThan44~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~25_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~26_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~27_combout\ : std_logic;
SIGNAL \C1|dMap~19_combout\ : std_logic;
SIGNAL \C1|dMap~20_combout\ : std_logic;
SIGNAL \C1|dMap~21_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~28_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~29_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~30_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~32_combout\ : std_logic;
SIGNAL \C1|dMap~23_combout\ : std_logic;
SIGNAL \C1|LessThan12~0_combout\ : std_logic;
SIGNAL \C1|LessThan14~1_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
SIGNAL \C1|dMap~27_combout\ : std_logic;
SIGNAL \C1|dMap~28_combout\ : std_logic;
SIGNAL \C1|dMap~29_combout\ : std_logic;
SIGNAL \C1|dMap~30_combout\ : std_logic;
SIGNAL \C1|LessThan43~0_combout\ : std_logic;
SIGNAL \C1|dMap~32_combout\ : std_logic;
SIGNAL \C1|LessThan50~0_combout\ : std_logic;
SIGNAL \C1|dMap~36_combout\ : std_logic;
SIGNAL \C1|dMap~37_combout\ : std_logic;
SIGNAL \C1|dMap~38_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~0_combout\ : std_logic;
SIGNAL \C1|LessThan140~0_combout\ : std_logic;
SIGNAL \C1|LessThan136~1_combout\ : std_logic;
SIGNAL \C1|LessThan136~2_combout\ : std_logic;
SIGNAL \C1|LessThan151~1_combout\ : std_logic;
SIGNAL \C1|LessThan151~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~48_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~49_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~50_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~51_combout\ : std_logic;
SIGNAL \C1|dMap~51_combout\ : std_logic;
SIGNAL \C1|dMap~52_combout\ : std_logic;
SIGNAL \C1|dMap~60_combout\ : std_logic;
SIGNAL \C1|dMap~61_combout\ : std_logic;
SIGNAL \C1|LessThan83~0_combout\ : std_logic;
SIGNAL \C1|LessThan107~0_combout\ : std_logic;
SIGNAL \C1|LessThan93~0_combout\ : std_logic;
SIGNAL \C1|LessThan100~3_combout\ : std_logic;
SIGNAL \C1|LessThan81~0_combout\ : std_logic;
SIGNAL \C1|LessThan81~1_combout\ : std_logic;
SIGNAL \C1|LessThan80~0_combout\ : std_logic;
SIGNAL \C1|LessThan80~1_combout\ : std_logic;
SIGNAL \C1|dMap~70_combout\ : std_logic;
SIGNAL \C1|dMap~76_combout\ : std_logic;
SIGNAL \C1|dMap~77_combout\ : std_logic;
SIGNAL \C1|dMap~82_combout\ : std_logic;
SIGNAL \C1|dMap~83_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~60_combout\ : std_logic;
SIGNAL \C1|dMap~87_combout\ : std_logic;
SIGNAL \C1|dMap~88_combout\ : std_logic;
SIGNAL \C1|dMap~90_combout\ : std_logic;
SIGNAL \C1|dMap~92_combout\ : std_logic;
SIGNAL \C1|dMap~93_combout\ : std_logic;
SIGNAL \C1|dMap~94_combout\ : std_logic;
SIGNAL \C1|dMap~97_combout\ : std_logic;
SIGNAL \C1|dMap~100_combout\ : std_logic;
SIGNAL \C1|LessThan71~0_combout\ : std_logic;
SIGNAL \C1|LessThan69~0_combout\ : std_logic;
SIGNAL \C1|LessThan71~1_combout\ : std_logic;
SIGNAL \C1|dMap~101_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~65_combout\ : std_logic;
SIGNAL \C1|dMap~121_combout\ : std_logic;
SIGNAL \C1|dMap~124_combout\ : std_logic;
SIGNAL \C1|dMap~126_combout\ : std_logic;
SIGNAL \C1|dMap~127_combout\ : std_logic;
SIGNAL \C1|dMap~128_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~3_combout\ : std_logic;
SIGNAL \C1|LessThan112~1_combout\ : std_logic;
SIGNAL \C1|dMap~131_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~5_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~2_combout\ : std_logic;
SIGNAL \C1|LessThan201~0_combout\ : std_logic;
SIGNAL \C1|LessThan201~1_combout\ : std_logic;
SIGNAL \C1|LessThan209~2_combout\ : std_logic;
SIGNAL \C1|dMap~142_combout\ : std_logic;
SIGNAL \C1|dMap~144_combout\ : std_logic;
SIGNAL \C1|dMap~145_combout\ : std_logic;
SIGNAL \C1|dMap~146_combout\ : std_logic;
SIGNAL \C1|dMap~147_combout\ : std_logic;
SIGNAL \C1|dMap~148_combout\ : std_logic;
SIGNAL \C1|LessThan187~0_combout\ : std_logic;
SIGNAL \C1|LessThan187~1_combout\ : std_logic;
SIGNAL \C1|LessThan192~1_combout\ : std_logic;
SIGNAL \C1|LessThan210~0_combout\ : std_logic;
SIGNAL \C1|LessThan186~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~83_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~84_combout\ : std_logic;
SIGNAL \C1|LessThan185~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~90_combout\ : std_logic;
SIGNAL \C1|LessThan256~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~95_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~103_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~104_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~107_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~119_combout\ : std_logic;
SIGNAL \C1|dMap~159_combout\ : std_logic;
SIGNAL \C1|LessThan175~0_combout\ : std_logic;
SIGNAL \C1|dMap~162_combout\ : std_logic;
SIGNAL \C1|dMap~163_combout\ : std_logic;
SIGNAL \C1|dMap~164_combout\ : std_logic;
SIGNAL \C1|LessThan173~1_combout\ : std_logic;
SIGNAL \C1|LessThan173~2_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~128_combout\ : std_logic;
SIGNAL \C1|dMap~166_combout\ : std_logic;
SIGNAL \C1|dMap~167_combout\ : std_logic;
SIGNAL \C1|dMap~168_combout\ : std_logic;
SIGNAL \C1|dMap~170_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~129_combout\ : std_logic;
SIGNAL \C1|LessThan181~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~130_combout\ : std_logic;
SIGNAL \C1|LessThan223~0_combout\ : std_logic;
SIGNAL \C1|LessThan223~1_combout\ : std_logic;
SIGNAL \C1|dMap~192_combout\ : std_logic;
SIGNAL \C1|dMap~197_combout\ : std_logic;
SIGNAL \C1|dMap~198_combout\ : std_logic;
SIGNAL \C1|dMap~199_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~7_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~8_combout\ : std_logic;
SIGNAL \C1|LessThan216~1_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~7_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~143_combout\ : std_logic;
SIGNAL \C1|dMap~202_combout\ : std_logic;
SIGNAL \C1|LessThan100~6_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~144_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~15_combout\ : std_logic;
SIGNAL \C1|dMap~205_combout\ : std_logic;
SIGNAL \C1|dMap~206_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~147_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~148_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~7_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|dMap~7_combout\ : std_logic;
SIGNAL \C1|LessThan262~0_combout\ : std_logic;
SIGNAL \C1|LessThan259~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|HSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|LessThan263~1_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|LessThan260~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|dMap~6_combout\ : std_logic;
SIGNAL \C1|LessThan266~0_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|VSYNC~regout\ : std_logic;
SIGNAL \C1|Add17~0_combout\ : std_logic;
SIGNAL \C1|Add17~2\ : std_logic;
SIGNAL \C1|Add17~3_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[2]~9_combout\ : std_logic;
SIGNAL \C1|Add21~0_combout\ : std_logic;
SIGNAL \C1|Add17~7_combout\ : std_logic;
SIGNAL \C1|Add17~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~10_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~15\ : std_logic;
SIGNAL \C1|Add3~17\ : std_logic;
SIGNAL \C1|Add3~19\ : std_logic;
SIGNAL \C1|Add3~20_combout\ : std_logic;
SIGNAL \C1|Add3~18_combout\ : std_logic;
SIGNAL \C1|Add3~16_combout\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add3~10_combout\ : std_logic;
SIGNAL \C1|Add3~8_combout\ : std_logic;
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
SIGNAL \C1|Add21~15\ : std_logic;
SIGNAL \C1|Add21~16_combout\ : std_logic;
SIGNAL \C1|Add21~12_combout\ : std_logic;
SIGNAL \C1|SQ_X2[7]~17_combout\ : std_logic;
SIGNAL \C1|Add21~10_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~18_combout\ : std_logic;
SIGNAL \C1|Add21~8_combout\ : std_logic;
SIGNAL \C1|Add21~6_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|LessThan183~0_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|LessThan183~1_combout\ : std_logic;
SIGNAL \C1|LessThan183~2_combout\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|LessThan174~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~3_combout\ : std_logic;
SIGNAL \C1|Add21~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~19_combout\ : std_logic;
SIGNAL \C1|LessThan185~0_combout\ : std_logic;
SIGNAL \C1|LessThan204~0_combout\ : std_logic;
SIGNAL \C1|LessThan205~0_combout\ : std_logic;
SIGNAL \C1|dMap~152_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|dMap~153_combout\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|dMap~200_combout\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|Add13~20_combout\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|dMap~179_combout\ : std_logic;
SIGNAL \C1|dMap~180_combout\ : std_logic;
SIGNAL \C1|dMap~201_combout\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|dMap~195_combout\ : std_logic;
SIGNAL \C1|LessThan176~0_combout\ : std_logic;
SIGNAL \C1|dMap~178_combout\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|dMap~194_combout\ : std_logic;
SIGNAL \C1|dMap~196_combout\ : std_logic;
SIGNAL \C1|LessThan179~0_combout\ : std_logic;
SIGNAL \C1|LessThan179~1_combout\ : std_logic;
SIGNAL \C1|LessThan209~0_combout\ : std_logic;
SIGNAL \C1|LessThan182~0_combout\ : std_logic;
SIGNAL \C1|dMap~133_combout\ : std_logic;
SIGNAL \C1|dMap~134_combout\ : std_logic;
SIGNAL \C1|dMap~189_combout\ : std_logic;
SIGNAL \C1|dMap~190_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~5_combout\ : std_logic;
SIGNAL \C1|LessThan184~0_combout\ : std_logic;
SIGNAL \C1|Add21~2_combout\ : std_logic;
SIGNAL \C1|SQ_X2[2]~20_combout\ : std_logic;
SIGNAL \C1|LessThan208~3_combout\ : std_logic;
SIGNAL \C1|LessThan184~1_combout\ : std_logic;
SIGNAL \C1|LessThan184~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~85_combout\ : std_logic;
SIGNAL \C1|LessThan209~1_combout\ : std_logic;
SIGNAL \C1|LessThan192~0_combout\ : std_logic;
SIGNAL \C1|LessThan192~2_combout\ : std_logic;
SIGNAL \C1|LessThan192~3_combout\ : std_logic;
SIGNAL \C1|LessThan193~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~86_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~87_combout\ : std_logic;
SIGNAL \C1|LessThan217~0_combout\ : std_logic;
SIGNAL \C1|LessThan216~0_combout\ : std_logic;
SIGNAL \C1|LessThan217~1_combout\ : std_logic;
SIGNAL \C1|dMap~185_combout\ : std_logic;
SIGNAL \C1|dMap~186_combout\ : std_logic;
SIGNAL \C1|dMap~187_combout\ : std_logic;
SIGNAL \C1|dMap~188_combout\ : std_logic;
SIGNAL \C1|LessThan211~0_combout\ : std_logic;
SIGNAL \C1|LessThan214~0_combout\ : std_logic;
SIGNAL \C1|LessThan214~1_combout\ : std_logic;
SIGNAL \C1|LessThan215~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~77_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~78_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~6_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~8_combout\ : std_logic;
SIGNAL \C1|LessThan173~0_combout\ : std_logic;
SIGNAL \C1|LessThan175~1_combout\ : std_logic;
SIGNAL \C1|dMap~176_combout\ : std_logic;
SIGNAL \C1|Add17~13_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~7_combout\ : std_logic;
SIGNAL \C1|dMap~160_combout\ : std_logic;
SIGNAL \C1|dMap~177_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~140_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~141_combout\ : std_logic;
SIGNAL \C1|dMap~172_combout\ : std_logic;
SIGNAL \C1|dMap~173_combout\ : std_logic;
SIGNAL \C1|LessThan197~0_combout\ : std_logic;
SIGNAL \C1|LessThan196~0_combout\ : std_logic;
SIGNAL \C1|LessThan196~1_combout\ : std_logic;
SIGNAL \C1|dMap~132_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~137_combout\ : std_logic;
SIGNAL \C1|LessThan208~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~69_combout\ : std_logic;
SIGNAL \C1|dMap~174_combout\ : std_logic;
SIGNAL \C1|dMap~175_combout\ : std_logic;
SIGNAL \C1|LessThan200~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~68_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~138_combout\ : std_logic;
SIGNAL \C1|LessThan191~0_combout\ : std_logic;
SIGNAL \C1|dMap~161_combout\ : std_logic;
SIGNAL \C1|LessThan178~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~71_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~72_combout\ : std_logic;
SIGNAL \C1|LessThan188~0_combout\ : std_logic;
SIGNAL \C1|LessThan188~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~73_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~139_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~146_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~12_combout\ : std_logic;
SIGNAL \C1|dMap~191_combout\ : std_logic;
SIGNAL \C1|dMap~193_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~10_combout\ : std_logic;
SIGNAL \C1|dMap~181_combout\ : std_logic;
SIGNAL \C1|dMap~182_combout\ : std_logic;
SIGNAL \C1|dMap~183_combout\ : std_logic;
SIGNAL \C1|dMap~184_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~9_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~11_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~13_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~14_combout\ : std_logic;
SIGNAL \C1|Add21~1\ : std_logic;
SIGNAL \C1|Add21~3\ : std_logic;
SIGNAL \C1|Add21~5\ : std_logic;
SIGNAL \C1|Add21~7\ : std_logic;
SIGNAL \C1|Add21~9\ : std_logic;
SIGNAL \C1|Add21~11\ : std_logic;
SIGNAL \C1|Add21~13\ : std_logic;
SIGNAL \C1|Add21~14_combout\ : std_logic;
SIGNAL \C1|SQ_X2[8]~16_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|LessThan236~0_combout\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|LessThan240~0_combout\ : std_logic;
SIGNAL \C1|LessThan243~0_combout\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|LessThan244~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~125_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~126_combout\ : std_logic;
SIGNAL \C1|Add9~15\ : std_logic;
SIGNAL \C1|Add9~17\ : std_logic;
SIGNAL \C1|Add9~18_combout\ : std_logic;
SIGNAL \C1|LessThan255~0_combout\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|LessThan257~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~94_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~89_combout\ : std_logic;
SIGNAL \C1|LessThan257~1_combout\ : std_logic;
SIGNAL \C1|Add9~16_combout\ : std_logic;
SIGNAL \C1|LessThan256~1_combout\ : std_logic;
SIGNAL \C1|LessThan247~0_combout\ : std_logic;
SIGNAL \C1|LessThan258~0_combout\ : std_logic;
SIGNAL \C1|LessThan258~1_combout\ : std_logic;
SIGNAL \C1|dMap~154_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~127_combout\ : std_logic;
SIGNAL \C1|LessThan256~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~93_combout\ : std_logic;
SIGNAL \C1|LessThan255~1_combout\ : std_logic;
SIGNAL \C1|LessThan255~2_combout\ : std_logic;
SIGNAL \C1|dMap~165_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~117_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~116_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~118_combout\ : std_logic;
SIGNAL \C1|dMap~169_combout\ : std_logic;
SIGNAL \C1|dMap~171_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~91_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~92_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~145_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~1_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~2_combout\ : std_logic;
SIGNAL \C1|LessThan253~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~102_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~109_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~110_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~131_combout\ : std_logic;
SIGNAL \C1|LessThan237~0_combout\ : std_logic;
SIGNAL \C1|LessThan238~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~132_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~133_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~121_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~120_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~122_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~98_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~99_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~113_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~114_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~136_combout\ : std_logic;
SIGNAL \C1|LessThan247~1_combout\ : std_logic;
SIGNAL \C1|LessThan235~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~100_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~106_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~134_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~135_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~3_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~4_combout\ : std_logic;
SIGNAL \C1|LessThan216~2_combout\ : std_logic;
SIGNAL \C1|LessThan216~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~105_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~101_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~1_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~2_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~96_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~4_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~111_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~5_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~6_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~9_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|Add21~17\ : std_logic;
SIGNAL \C1|Add21~18_combout\ : std_logic;
SIGNAL \C1|Add9~19\ : std_logic;
SIGNAL \C1|Add9~20_combout\ : std_logic;
SIGNAL \C1|LessThan234~0_combout\ : std_logic;
SIGNAL \C1|Add3~6_combout\ : std_logic;
SIGNAL \C1|dMap~136_combout\ : std_logic;
SIGNAL \C1|dMap~137_combout\ : std_logic;
SIGNAL \C1|Add3~2_combout\ : std_logic;
SIGNAL \C1|dMap~135_combout\ : std_logic;
SIGNAL \C1|dMap~138_combout\ : std_logic;
SIGNAL \C1|Add3~4_combout\ : std_logic;
SIGNAL \C1|dMap~150_combout\ : std_logic;
SIGNAL \C1|dMap~151_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~108_combout\ : std_logic;
SIGNAL \C1|Add3~12_combout\ : std_logic;
SIGNAL \C1|LessThan156~0_combout\ : std_logic;
SIGNAL \C1|dMap~149_combout\ : std_logic;
SIGNAL \C1|dMap~155_combout\ : std_logic;
SIGNAL \C1|dMap~156_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~97_combout\ : std_logic;
SIGNAL \C1|dMap~157_combout\ : std_logic;
SIGNAL \C1|dMap~158_combout\ : std_logic;
SIGNAL \C1|dMap~143_combout\ : std_logic;
SIGNAL \C1|Add3~0_combout\ : std_logic;
SIGNAL \C1|dMap~139_combout\ : std_logic;
SIGNAL \C1|dMap~140_combout\ : std_logic;
SIGNAL \C1|dMap~141_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~112_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~115_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~123_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~124_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|LessThan263~0_combout\ : std_logic;
SIGNAL \C1|LessThan263~2_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~67_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~74_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~70_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~75_combout\ : std_logic;
SIGNAL \C1|LessThan156~1_combout\ : std_logic;
SIGNAL \C1|LessThan156~2_combout\ : std_logic;
SIGNAL \C1|LessThan156~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~76_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~79_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~80_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~81_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~82_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~88_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~3_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~4_combout\ : std_logic;
SIGNAL \C1|Add17~4\ : std_logic;
SIGNAL \C1|Add17~5_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[3]~8_combout\ : std_logic;
SIGNAL \C1|Add17~6\ : std_logic;
SIGNAL \C1|Add17~8\ : std_logic;
SIGNAL \C1|Add17~9_combout\ : std_logic;
SIGNAL \C1|Add17~10\ : std_logic;
SIGNAL \C1|Add17~11_combout\ : std_logic;
SIGNAL \C1|Add17~12\ : std_logic;
SIGNAL \C1|Add17~14\ : std_logic;
SIGNAL \C1|Add17~15_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[8]~6_combout\ : std_logic;
SIGNAL \C1|Add17~16\ : std_logic;
SIGNAL \C1|Add17~17_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~5_combout\ : std_logic;
SIGNAL \C1|Add17~18\ : std_logic;
SIGNAL \C1|Add17~19_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
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
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
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
SIGNAL \C1|DRAW2~0_combout\ : std_logic;
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|Add16~0_combout\ : std_logic;
SIGNAL \C1|Add16~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~11_combout\ : std_logic;
SIGNAL \C1|Add16~5_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~9_combout\ : std_logic;
SIGNAL \C1|Add16~3_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~10_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|LessThan52~0_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~17\ : std_logic;
SIGNAL \C1|Add1~19\ : std_logic;
SIGNAL \C1|Add1~20_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~2_combout\ : std_logic;
SIGNAL \C1|Add18~1\ : std_logic;
SIGNAL \C1|Add18~2_combout\ : std_logic;
SIGNAL \C1|LessThan77~0_combout\ : std_logic;
SIGNAL \C1|Add16~11_combout\ : std_logic;
SIGNAL \C1|dMap~102_combout\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~18_combout\ : std_logic;
SIGNAL \C1|Add18~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~16_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Add18~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~18_combout\ : std_logic;
SIGNAL \C1|Add5~1\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~17\ : std_logic;
SIGNAL \C1|Add5~19\ : std_logic;
SIGNAL \C1|Add5~20_combout\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|LessThan79~5_combout\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|Add5~0_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|LessThan101~2_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|LessThan79~6_combout\ : std_logic;
SIGNAL \C1|LessThan79~7_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|LessThan79~4_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|LessThan78~0_combout\ : std_logic;
SIGNAL \C1|LessThan78~1_combout\ : std_logic;
SIGNAL \C1|dMap~75_combout\ : std_logic;
SIGNAL \C1|LessThan100~2_combout\ : std_logic;
SIGNAL \C1|LessThan84~0_combout\ : std_logic;
SIGNAL \C1|LessThan88~0_combout\ : std_logic;
SIGNAL \C1|LessThan75~0_combout\ : std_logic;
SIGNAL \C1|LessThan79~2_combout\ : std_logic;
SIGNAL \C1|LessThan92~0_combout\ : std_logic;
SIGNAL \C1|dMap~74_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~3_combout\ : std_logic;
SIGNAL \C1|dMap~85_combout\ : std_logic;
SIGNAL \C1|dMap~95_combout\ : std_logic;
SIGNAL \C1|dMap~96_combout\ : std_logic;
SIGNAL \C1|LessThan100~4_combout\ : std_logic;
SIGNAL \C1|LessThan100~5_combout\ : std_logic;
SIGNAL \C1|LessThan101~3_combout\ : std_logic;
SIGNAL \C1|LessThan101~4_combout\ : std_logic;
SIGNAL \C1|dMap~81_combout\ : std_logic;
SIGNAL \C1|LessThan106~0_combout\ : std_logic;
SIGNAL \C1|LessThan106~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~59_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~4_combout\ : std_logic;
SIGNAL \C1|LessThan84~2_combout\ : std_logic;
SIGNAL \C1|LessThan105~0_combout\ : std_logic;
SIGNAL \C1|LessThan104~0_combout\ : std_logic;
SIGNAL \C1|LessThan104~1_combout\ : std_logic;
SIGNAL \C1|dMap~65_combout\ : std_logic;
SIGNAL \C1|dMap~89_combout\ : std_logic;
SIGNAL \C1|LessThan87~0_combout\ : std_logic;
SIGNAL \C1|dMap~91_combout\ : std_logic;
SIGNAL \C1|LessThan84~1_combout\ : std_logic;
SIGNAL \C1|LessThan84~3_combout\ : std_logic;
SIGNAL \C1|dMap~64_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~7_combout\ : std_logic;
SIGNAL \C1|dMap~84_combout\ : std_logic;
SIGNAL \C1|dMap~86_combout\ : std_logic;
SIGNAL \C1|dMap~63_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~8_combout\ : std_logic;
SIGNAL \C1|dMap~98_combout\ : std_logic;
SIGNAL \C1|dMap~99_combout\ : std_logic;
SIGNAL \C1|dMap~66_combout\ : std_logic;
SIGNAL \C1|dMap~67_combout\ : std_logic;
SIGNAL \C1|dMap~68_combout\ : std_logic;
SIGNAL \C1|dMap~69_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~9_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~10_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~11_combout\ : std_logic;
SIGNAL \C1|Add1~18_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
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
SIGNAL \C1|Add8~20_combout\ : std_logic;
SIGNAL \C1|Add8~10_combout\ : std_logic;
SIGNAL \C1|Add8~14_combout\ : std_logic;
SIGNAL \C1|Add8~16_combout\ : std_logic;
SIGNAL \C1|Add8~18_combout\ : std_logic;
SIGNAL \C1|Add8~21\ : std_logic;
SIGNAL \C1|Add8~22_combout\ : std_logic;
SIGNAL \C1|dMap~111_combout\ : std_logic;
SIGNAL \C1|dMap~112_combout\ : std_logic;
SIGNAL \C1|Add8~6_combout\ : std_logic;
SIGNAL \C1|Add8~8_combout\ : std_logic;
SIGNAL \C1|Add8~4_combout\ : std_logic;
SIGNAL \C1|LessThan119~0_combout\ : std_logic;
SIGNAL \C1|dMap~204_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~4_combout\ : std_logic;
SIGNAL \C1|dMap~109_combout\ : std_logic;
SIGNAL \C1|dMap~107_combout\ : std_logic;
SIGNAL \C1|LessThan121~0_combout\ : std_logic;
SIGNAL \C1|dMap~108_combout\ : std_logic;
SIGNAL \C1|dMap~110_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~5_combout\ : std_logic;
SIGNAL \C1|LessThan119~1_combout\ : std_logic;
SIGNAL \C1|Add8~12_combout\ : std_logic;
SIGNAL \C1|LessThan112~0_combout\ : std_logic;
SIGNAL \C1|dMap~122_combout\ : std_logic;
SIGNAL \C1|dMap~123_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~3_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~6_combout\ : std_logic;
SIGNAL \C1|dMap~203_combout\ : std_logic;
SIGNAL \C1|dMap~72_combout\ : std_logic;
SIGNAL \C1|dMap~71_combout\ : std_logic;
SIGNAL \C1|dMap~73_combout\ : std_logic;
SIGNAL \C1|dMap~129_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~0_combout\ : std_logic;
SIGNAL \C1|dMap~106_combout\ : std_logic;
SIGNAL \C1|dMap~125_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~1_combout\ : std_logic;
SIGNAL \C1|dMap~116_combout\ : std_logic;
SIGNAL \C1|dMap~130_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~2_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~2_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~1_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~13_combout\ : std_logic;
SIGNAL \C1|Add18~3\ : std_logic;
SIGNAL \C1|Add18~4_combout\ : std_logic;
SIGNAL \C1|Add18~5\ : std_logic;
SIGNAL \C1|Add18~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~17_combout\ : std_logic;
SIGNAL \C1|Add18~7\ : std_logic;
SIGNAL \C1|Add18~9\ : std_logic;
SIGNAL \C1|Add18~10_combout\ : std_logic;
SIGNAL \C1|Add18~11\ : std_logic;
SIGNAL \C1|Add18~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~15_combout\ : std_logic;
SIGNAL \C1|Add18~13\ : std_logic;
SIGNAL \C1|Add18~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~14_combout\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add5~18_combout\ : std_logic;
SIGNAL \C1|LessThan79~3_combout\ : std_logic;
SIGNAL \C1|LessThan110~0_combout\ : std_logic;
SIGNAL \C1|LessThan110~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~4_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|dMap~54_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|dMap~53_combout\ : std_logic;
SIGNAL \C1|dMap~55_combout\ : std_logic;
SIGNAL \C1|dMap~56_combout\ : std_logic;
SIGNAL \C1|dMap~57_combout\ : std_logic;
SIGNAL \C1|dMap~58_combout\ : std_logic;
SIGNAL \C1|Add18~15\ : std_logic;
SIGNAL \C1|Add18~16_combout\ : std_logic;
SIGNAL \C1|LessThan149~6_combout\ : std_logic;
SIGNAL \C1|LessThan149~3_combout\ : std_logic;
SIGNAL \C1|LessThan149~23_combout\ : std_logic;
SIGNAL \C1|LessThan134~0_combout\ : std_logic;
SIGNAL \C1|LessThan133~2_combout\ : std_logic;
SIGNAL \C1|LessThan147~0_combout\ : std_logic;
SIGNAL \C1|LessThan150~0_combout\ : std_logic;
SIGNAL \C1|dMap~50_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~52_combout\ : std_logic;
SIGNAL \C1|LessThan52~1_combout\ : std_logic;
SIGNAL \C1|LessThan52~2_combout\ : std_logic;
SIGNAL \C1|LessThan52~3_combout\ : std_logic;
SIGNAL \C1|LessThan148~0_combout\ : std_logic;
SIGNAL \C1|LessThan136~0_combout\ : std_logic;
SIGNAL \C1|LessThan134~1_combout\ : std_logic;
SIGNAL \C1|LessThan133~3_combout\ : std_logic;
SIGNAL \C1|LessThan133~4_combout\ : std_logic;
SIGNAL \C1|dMap~59_combout\ : std_logic;
SIGNAL \C1|dMap~62_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~53_combout\ : std_logic;
SIGNAL \C1|dMap~41_combout\ : std_logic;
SIGNAL \C1|dMap~47_combout\ : std_logic;
SIGNAL \C1|dMap~48_combout\ : std_logic;
SIGNAL \C1|LessThan145~0_combout\ : std_logic;
SIGNAL \C1|LessThan148~1_combout\ : std_logic;
SIGNAL \C1|dMap~40_combout\ : std_logic;
SIGNAL \C1|dMap~44_combout\ : std_logic;
SIGNAL \C1|dMap~45_combout\ : std_logic;
SIGNAL \C1|dMap~46_combout\ : std_logic;
SIGNAL \C1|dMap~42_combout\ : std_logic;
SIGNAL \C1|dMap~43_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~42_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~46_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~3_combout\ : std_logic;
SIGNAL \C1|dMap~78_combout\ : std_logic;
SIGNAL \C1|dMap~79_combout\ : std_logic;
SIGNAL \C1|dMap~80_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~58_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~54_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~55_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~56_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~57_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~61_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~5_combout\ : std_logic;
SIGNAL \C1|Add16~2\ : std_logic;
SIGNAL \C1|Add16~4\ : std_logic;
SIGNAL \C1|Add16~6\ : std_logic;
SIGNAL \C1|Add16~7_combout\ : std_logic;
SIGNAL \C1|Add16~8\ : std_logic;
SIGNAL \C1|Add16~9_combout\ : std_logic;
SIGNAL \C1|Add16~10\ : std_logic;
SIGNAL \C1|Add16~12\ : std_logic;
SIGNAL \C1|Add16~13_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[7]~8_combout\ : std_logic;
SIGNAL \C1|Add16~14\ : std_logic;
SIGNAL \C1|Add16~16\ : std_logic;
SIGNAL \C1|Add16~17_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~6_combout\ : std_logic;
SIGNAL \C1|Add16~18\ : std_logic;
SIGNAL \C1|Add16~19_combout\ : std_logic;
SIGNAL \C1|LessThan69~1_combout\ : std_logic;
SIGNAL \C1|LessThan69~2_combout\ : std_logic;
SIGNAL \C1|dMap~103_combout\ : std_logic;
SIGNAL \C1|dMap~104_combout\ : std_logic;
SIGNAL \C1|dMap~105_combout\ : std_logic;
SIGNAL \C1|LessThan141~0_combout\ : std_logic;
SIGNAL \C1|LessThan139~4_combout\ : std_logic;
SIGNAL \C1|LessThan144~0_combout\ : std_logic;
SIGNAL \C1|LessThan144~1_combout\ : std_logic;
SIGNAL \C1|LessThan141~1_combout\ : std_logic;
SIGNAL \C1|dMap~49_combout\ : std_logic;
SIGNAL \C1|LessThan153~0_combout\ : std_logic;
SIGNAL \C1|LessThan153~1_combout\ : std_logic;
SIGNAL \C1|LessThan153~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~47_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~64_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~66_combout\ : std_logic;
SIGNAL \C1|LessThan143~0_combout\ : std_logic;
SIGNAL \C1|dMap~39_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~62_combout\ : std_logic;
SIGNAL \C1|LessThan149~22_combout\ : std_logic;
SIGNAL \C1|LessThan135~0_combout\ : std_logic;
SIGNAL \C1|LessThan132~0_combout\ : std_logic;
SIGNAL \C1|LessThan139~6_combout\ : std_logic;
SIGNAL \C1|LessThan139~5_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~43_combout\ : std_logic;
SIGNAL \C1|LessThan138~0_combout\ : std_logic;
SIGNAL \C1|LessThan151~0_combout\ : std_logic;
SIGNAL \C1|LessThan137~0_combout\ : std_logic;
SIGNAL \C1|LessThan137~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~44_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~45_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~63_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~0_combout\ : std_logic;
SIGNAL \C1|LessThan112~2_combout\ : std_logic;
SIGNAL \C1|LessThan112~3_combout\ : std_logic;
SIGNAL \C1|LessThan113~0_combout\ : std_logic;
SIGNAL \C1|LessThan113~1_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~0_combout\ : std_logic;
SIGNAL \C1|dMap~113_combout\ : std_logic;
SIGNAL \C1|dMap~114_combout\ : std_logic;
SIGNAL \C1|dMap~115_combout\ : std_logic;
SIGNAL \C1|dMap~117_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~1_combout\ : std_logic;
SIGNAL \C1|dMap~118_combout\ : std_logic;
SIGNAL \C1|dMap~119_combout\ : std_logic;
SIGNAL \C1|dMap~120_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~2_combout\ : std_logic;
SIGNAL \C1|esqQ1X2~4_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \C1|process_0~13_combout\ : std_logic;
SIGNAL \C1|Add18~17\ : std_logic;
SIGNAL \C1|Add18~18_combout\ : std_logic;
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
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
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
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|B~0_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|LessThan264~0_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|dMap~26_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~35_combout\ : std_logic;
SIGNAL \C1|LessThan18~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~33_combout\ : std_logic;
SIGNAL \C1|LessThan14~0_combout\ : std_logic;
SIGNAL \C1|LessThan35~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~34_combout\ : std_logic;
SIGNAL \C1|dMap~10_combout\ : std_logic;
SIGNAL \C1|dMap~8_combout\ : std_logic;
SIGNAL \C1|dMap~9_combout\ : std_logic;
SIGNAL \C1|dMap~11_combout\ : std_logic;
SIGNAL \C1|dMap~22_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|dMap~24_combout\ : std_logic;
SIGNAL \C1|dMap~25_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~36_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~10_combout\ : std_logic;
SIGNAL \C1|LessThan47~0_combout\ : std_logic;
SIGNAL \C1|dMap~17_combout\ : std_logic;
SIGNAL \C1|dMap~18_combout\ : std_logic;
SIGNAL \C1|LessThan20~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~37_combout\ : std_logic;
SIGNAL \C1|dMap~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~142_combout\ : std_logic;
SIGNAL \C1|LessThan39~0_combout\ : std_logic;
SIGNAL \C1|dMap~33_combout\ : std_logic;
SIGNAL \C1|dMap~12_combout\ : std_logic;
SIGNAL \C1|dMap~34_combout\ : std_logic;
SIGNAL \C1|dMap~35_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~38_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~39_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~40_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~41_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \C1|B~1_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \C1|G~0_combout\ : std_logic;
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
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

-- Location: LCCOMB_X34_Y19_N12
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

-- Location: LCCOMB_X34_Y19_N14
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

-- Location: LCCOMB_X32_Y22_N2
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

-- Location: LCCOMB_X32_Y22_N4
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

-- Location: LCCOMB_X32_Y22_N6
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

-- Location: LCCOMB_X32_Y22_N8
\C1|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~7_cout\ = CARRY((\C1|VPOS\(3) & (!\C1|SQ_Y1\(3) & !\C1|LessThan2~5_cout\)) # (!\C1|VPOS\(3) & ((!\C1|LessThan2~5_cout\) # (!\C1|SQ_Y1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|LessThan2~5_cout\,
	cout => \C1|LessThan2~7_cout\);

-- Location: LCCOMB_X32_Y22_N10
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

-- Location: LCCOMB_X32_Y22_N12
\C1|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~11_cout\ = CARRY((\C1|VPOS\(5) & (\C1|SQ_Y1\(5) & !\C1|LessThan2~9_cout\)) # (!\C1|VPOS\(5) & ((\C1|SQ_Y1\(5)) # (!\C1|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|LessThan2~9_cout\,
	cout => \C1|LessThan2~11_cout\);

-- Location: LCCOMB_X32_Y22_N14
\C1|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~13_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan2~11_cout\) # (!\C1|SQ_Y1\(6)))) # (!\C1|VPOS\(6) & (!\C1|SQ_Y1\(6) & !\C1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|LessThan2~11_cout\,
	cout => \C1|LessThan2~13_cout\);

-- Location: LCCOMB_X32_Y22_N16
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

-- Location: LCCOMB_X32_Y22_N18
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

-- Location: LCCOMB_X32_Y22_N20
\C1|LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~19_cout\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|VPOS\(9) & !\C1|LessThan2~17_cout\)) # (!\C1|SQ_Y1\(9) & ((!\C1|LessThan2~17_cout\) # (!\C1|VPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan2~17_cout\,
	cout => \C1|LessThan2~19_cout\);

-- Location: LCCOMB_X32_Y22_N22
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

-- Location: LCCOMB_X31_Y21_N14
\C1|Add16~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~15_combout\ = (\C1|SQ_Y1\(8) & ((\C1|Add16~0_combout\ & ((\C1|Add16~14\) # (GND))) # (!\C1|Add16~0_combout\ & (!\C1|Add16~14\)))) # (!\C1|SQ_Y1\(8) & ((\C1|Add16~0_combout\ & (!\C1|Add16~14\)) # (!\C1|Add16~0_combout\ & (\C1|Add16~14\ & VCC))))
-- \C1|Add16~16\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|Add16~0_combout\) # (!\C1|Add16~14\))) # (!\C1|SQ_Y1\(8) & (\C1|Add16~0_combout\ & !\C1|Add16~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|Add16~0_combout\,
	datad => VCC,
	cin => \C1|Add16~14\,
	combout => \C1|Add16~15_combout\,
	cout => \C1|Add16~16\);

-- Location: LCCOMB_X30_Y20_N24
\C1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (\C1|HPOS\(6) & (((\C1|HPOS\(7))))) # (!\C1|HPOS\(6) & ((\C1|HPOS\(7) & ((\C1|HPOS\(5)))) # (!\C1|HPOS\(7) & (\C1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|process_0~0_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X30_Y20_N26
\C1|LessThan40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan40~0_combout\ = ((!\C1|HPOS\(0) & (!\C1|HPOS\(2) & !\C1|HPOS\(1)))) # (!\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan40~0_combout\);

-- Location: LCCOMB_X30_Y17_N0
\C1|DRAWMAP~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~11_combout\ = (!\C1|HPOS\(10) & (\C1|HPOS\(9) & !\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|DRAWMAP~11_combout\);

-- Location: LCCOMB_X29_Y20_N30
\C1|DRAWMAP~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~12_combout\ = (\C1|HPOS\(7) & (\C1|HPOS\(5) & (\C1|HPOS\(4) & !\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(6),
	combout => \C1|DRAWMAP~12_combout\);

-- Location: LCCOMB_X29_Y20_N24
\C1|LessThan264~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan264~1_combout\ = (!\C1|HPOS\(2) & !\C1|HPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan264~1_combout\);

-- Location: LCCOMB_X29_Y20_N14
\C1|DRAWMAP~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~13_combout\ = (\C1|DRAWMAP~12_combout\ & (!\C1|dMap~11_combout\ & ((\C1|HPOS\(3)) # (!\C1|LessThan264~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|DRAWMAP~12_combout\,
	datac => \C1|LessThan264~1_combout\,
	datad => \C1|dMap~11_combout\,
	combout => \C1|DRAWMAP~13_combout\);

-- Location: LCCOMB_X29_Y20_N8
\C1|DRAWMAP~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~14_combout\ = (\C1|VPOS\(8) & (\C1|VPOS\(9) & \C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(7),
	combout => \C1|DRAWMAP~14_combout\);

-- Location: LCCOMB_X31_Y17_N2
\C1|DRAWMAP~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~15_combout\ = (\C1|HPOS\(5) & (((!\C1|LessThan264~0_combout\) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(5) & (\C1|dMap~12_combout\ & (\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~12_combout\,
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan264~0_combout\,
	combout => \C1|DRAWMAP~15_combout\);

-- Location: LCCOMB_X30_Y21_N24
\C1|dMap~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~13_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~13_combout\);

-- Location: LCCOMB_X30_Y21_N2
\C1|DRAWMAP~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~16_combout\ = (!\C1|HPOS\(5) & (((!\C1|VPOS\(3) & !\C1|VPOS\(2))) # (!\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|HPOS\(5),
	combout => \C1|DRAWMAP~16_combout\);

-- Location: LCCOMB_X29_Y21_N28
\C1|DRAWMAP~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~17_combout\ = (\C1|VPOS\(5) & !\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(6),
	combout => \C1|DRAWMAP~17_combout\);

-- Location: LCCOMB_X31_Y17_N14
\C1|DRAWMAP~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~18_combout\ = (\C1|HPOS\(2) & (\C1|HPOS\(4) & ((\C1|HPOS\(0)) # (\C1|HPOS\(1))))) # (!\C1|HPOS\(2) & (((\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|DRAWMAP~18_combout\);

-- Location: LCCOMB_X31_Y17_N0
\C1|DRAWMAP~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~19_combout\ = (\C1|HPOS\(3) & ((\C1|DRAWMAP~18_combout\ & ((\C1|HPOS\(2)))) # (!\C1|DRAWMAP~18_combout\ & (\C1|LessThan14~0_combout\ & !\C1|HPOS\(2))))) # (!\C1|HPOS\(3) & (\C1|LessThan14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan14~0_combout\,
	datab => \C1|DRAWMAP~18_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(2),
	combout => \C1|DRAWMAP~19_combout\);

-- Location: LCCOMB_X30_Y21_N20
\C1|DRAWMAP~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~20_combout\ = (\C1|LessThan266~0_combout\ & (\C1|DRAWMAP~17_combout\ & (!\C1|DRAWMAP~19_combout\ & \C1|DRAWMAP~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan266~0_combout\,
	datab => \C1|DRAWMAP~17_combout\,
	datac => \C1|DRAWMAP~19_combout\,
	datad => \C1|DRAWMAP~16_combout\,
	combout => \C1|DRAWMAP~20_combout\);

-- Location: LCCOMB_X29_Y20_N18
\C1|DRAWMAP~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~21_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS\(6) & ((\C1|DRAWMAP~148_combout\) # (\C1|DRAWMAP~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(6),
	datac => \C1|DRAWMAP~148_combout\,
	datad => \C1|DRAWMAP~20_combout\,
	combout => \C1|DRAWMAP~21_combout\);

-- Location: LCCOMB_X30_Y21_N30
\C1|dMap~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~14_combout\ = (\C1|VPOS\(2) & (\C1|VPOS\(3) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~14_combout\);

-- Location: LCCOMB_X29_Y21_N10
\C1|DRAWMAP~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~22_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(5) & ((\C1|dMap~14_combout\) # (\C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|dMap~14_combout\,
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(4),
	combout => \C1|DRAWMAP~22_combout\);

-- Location: LCCOMB_X29_Y20_N16
\C1|dMap~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~15_combout\ = (!\C1|HPOS\(7) & (\C1|HPOS\(6) & (\C1|HPOS\(5) & \C1|LessThan39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|dMap~15_combout\);

-- Location: LCCOMB_X29_Y20_N22
\C1|dMap~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~16_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & !\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~16_combout\);

-- Location: LCCOMB_X29_Y20_N20
\C1|DRAWMAP~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~23_combout\ = (\C1|DRAWMAP~22_combout\ & ((\C1|dMap~15_combout\) # ((\C1|LessThan40~0_combout\ & \C1|dMap~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan40~0_combout\,
	datab => \C1|dMap~16_combout\,
	datac => \C1|dMap~15_combout\,
	datad => \C1|DRAWMAP~22_combout\,
	combout => \C1|DRAWMAP~23_combout\);

-- Location: LCCOMB_X29_Y20_N6
\C1|DRAWMAP~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~24_combout\ = (\C1|DRAWMAP~13_combout\) # ((\C1|DRAWMAP~14_combout\ & ((\C1|DRAWMAP~23_combout\) # (\C1|DRAWMAP~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~23_combout\,
	datab => \C1|DRAWMAP~14_combout\,
	datac => \C1|DRAWMAP~13_combout\,
	datad => \C1|DRAWMAP~21_combout\,
	combout => \C1|DRAWMAP~24_combout\);

-- Location: LCCOMB_X31_Y17_N30
\C1|LessThan44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan44~0_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(0) & !\C1|HPOS\(1))) # (!\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan44~0_combout\);

-- Location: LCCOMB_X30_Y17_N22
\C1|DRAWMAP~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~25_combout\ = (\C1|HPOS\(7) & (\C1|LessThan14~0_combout\ & (!\C1|dMap~11_combout\ & \C1|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|LessThan14~0_combout\,
	datac => \C1|dMap~11_combout\,
	datad => \C1|LessThan44~0_combout\,
	combout => \C1|DRAWMAP~25_combout\);

-- Location: LCCOMB_X32_Y17_N24
\C1|DRAWMAP~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~26_combout\ = (\C1|HPOS\(4) & (((!\C1|HPOS\(5))))) # (!\C1|HPOS\(4) & ((\C1|HPOS\(5) & (!\C1|LessThan264~0_combout\)) # (!\C1|HPOS\(5) & ((\C1|dMap~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan264~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|dMap~12_combout\,
	combout => \C1|DRAWMAP~26_combout\);

-- Location: LCCOMB_X31_Y17_N8
\C1|DRAWMAP~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~27_combout\ = (!\C1|dMap~18_combout\ & (!\C1|HPOS\(7) & \C1|DRAWMAP~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~18_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|DRAWMAP~26_combout\,
	combout => \C1|DRAWMAP~27_combout\);

-- Location: LCCOMB_X30_Y21_N18
\C1|dMap~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~19_combout\ = (\C1|VPOS\(2)) # ((!\C1|VPOS\(7) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~19_combout\);

-- Location: LCCOMB_X30_Y21_N8
\C1|dMap~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~20_combout\ = (\C1|VPOS\(5) & (\C1|VPOS\(6) & (!\C1|VPOS\(7) & \C1|VPOS\(4)))) # (!\C1|VPOS\(5) & (!\C1|VPOS\(6) & (\C1|VPOS\(7) & !\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(6),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(4),
	combout => \C1|dMap~20_combout\);

-- Location: LCCOMB_X30_Y21_N10
\C1|dMap~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~21_combout\ = (\C1|dMap~20_combout\ & (\C1|VPOS\(5) $ (((!\C1|dMap~19_combout\) # (!\C1|VPOS\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|dMap~20_combout\,
	datac => \C1|VPOS\(3),
	datad => \C1|dMap~19_combout\,
	combout => \C1|dMap~21_combout\);

-- Location: LCCOMB_X29_Y20_N0
\C1|DRAWMAP~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~28_combout\ = (\C1|VPOS\(8) & (!\C1|HPOS\(7) & (\C1|HPOS\(5) & \C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(5),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~28_combout\);

-- Location: LCCOMB_X30_Y20_N28
\C1|DRAWMAP~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~29_combout\ = (\C1|HPOS\(4) & (\C1|HPOS\(2) & ((\C1|HPOS\(0)) # (\C1|HPOS\(1))))) # (!\C1|HPOS\(4) & (((\C1|HPOS\(2)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|DRAWMAP~29_combout\);

-- Location: LCCOMB_X30_Y20_N30
\C1|DRAWMAP~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~30_combout\ = (\C1|DRAWMAP~28_combout\ & (\C1|HPOS\(4) $ (((\C1|DRAWMAP~29_combout\) # (\C1|HPOS\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~28_combout\,
	datab => \C1|DRAWMAP~29_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(3),
	combout => \C1|DRAWMAP~30_combout\);

-- Location: LCCOMB_X30_Y17_N12
\C1|DRAWMAP~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~31_combout\ = (\C1|DRAWMAP~27_combout\) # ((\C1|DRAWMAP~25_combout\) # ((\C1|dMap~21_combout\ & \C1|DRAWMAP~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~21_combout\,
	datab => \C1|DRAWMAP~30_combout\,
	datac => \C1|DRAWMAP~27_combout\,
	datad => \C1|DRAWMAP~25_combout\,
	combout => \C1|DRAWMAP~31_combout\);

-- Location: LCCOMB_X30_Y17_N10
\C1|DRAWMAP~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~32_combout\ = (\C1|DRAWMAP~11_combout\ & ((\C1|DRAWMAP~24_combout\) # ((\C1|DRAWMAP~31_combout\ & \C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~31_combout\,
	datab => \C1|DRAWMAP~11_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|DRAWMAP~24_combout\,
	combout => \C1|DRAWMAP~32_combout\);

-- Location: LCCOMB_X30_Y17_N20
\C1|dMap~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~23_combout\ = (\C1|HPOS\(7) & \C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datac => \C1|HPOS\(6),
	combout => \C1|dMap~23_combout\);

-- Location: LCCOMB_X30_Y22_N20
\C1|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan12~0_combout\ = (((!\C1|VPOS\(1) & !\C1|VPOS\(0))) # (!\C1|dMap~26_combout\)) # (!\C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(2),
	datad => \C1|dMap~26_combout\,
	combout => \C1|LessThan12~0_combout\);

-- Location: LCCOMB_X31_Y17_N18
\C1|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan14~1_combout\ = ((!\C1|HPOS\(2) & ((!\C1|HPOS\(0)) # (!\C1|HPOS\(1))))) # (!\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(0),
	combout => \C1|LessThan14~1_combout\);

-- Location: LCCOMB_X31_Y17_N16
\C1|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(4)) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan13~0_combout\);

-- Location: LCCOMB_X31_Y17_N10
\C1|dMap~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~27_combout\ = (\C1|HPOS\(6) & (\C1|LessThan14~1_combout\ & ((\C1|LessThan14~0_combout\)))) # (!\C1|HPOS\(6) & (((\C1|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|LessThan14~1_combout\,
	datac => \C1|LessThan13~0_combout\,
	datad => \C1|LessThan14~0_combout\,
	combout => \C1|dMap~27_combout\);

-- Location: LCCOMB_X30_Y17_N16
\C1|dMap~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~28_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(9) & (!\C1|VPOS\(10) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(7),
	combout => \C1|dMap~28_combout\);

-- Location: LCCOMB_X30_Y22_N2
\C1|dMap~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~29_combout\ = (\C1|VPOS\(4) & ((\C1|VPOS\(3)) # ((\C1|VPOS\(2) & \C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(1),
	combout => \C1|dMap~29_combout\);

-- Location: LCCOMB_X30_Y17_N26
\C1|dMap~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~30_combout\ = (\C1|HPOS\(7) & (\C1|HPOS\(8) & (!\C1|HPOS\(9) & !\C1|HPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(10),
	combout => \C1|dMap~30_combout\);

-- Location: LCCOMB_X29_Y20_N12
\C1|LessThan43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan43~0_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(4)) # ((\C1|HPOS\(2)) # (\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan43~0_combout\);

-- Location: LCCOMB_X32_Y17_N10
\C1|dMap~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~32_combout\ = (!\C1|HPOS\(7) & (\C1|HPOS\(9) & !\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|dMap~32_combout\);

-- Location: LCCOMB_X32_Y17_N2
\C1|LessThan50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan50~0_combout\ = (((!\C1|HPOS\(1) & !\C1|HPOS\(0))) # (!\C1|HPOS\(3))) # (!\C1|HPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan50~0_combout\);

-- Location: LCCOMB_X32_Y17_N28
\C1|dMap~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~36_combout\ = (\C1|dMap~32_combout\ & (((\C1|LessThan14~0_combout\ & \C1|LessThan50~0_combout\)) # (!\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan14~0_combout\,
	datab => \C1|LessThan50~0_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|dMap~32_combout\,
	combout => \C1|dMap~36_combout\);

-- Location: LCCOMB_X32_Y17_N18
\C1|dMap~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~37_combout\ = (\C1|HPOS\(4) & (\C1|HPOS\(3) & ((\C1|HPOS\(1)) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|dMap~37_combout\);

-- Location: LCCOMB_X32_Y17_N4
\C1|dMap~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~38_combout\ = (\C1|dMap~36_combout\) # ((\C1|dMap~31_combout\ & ((\C1|dMap~37_combout\) # (!\C1|dMap~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~31_combout\,
	datab => \C1|dMap~37_combout\,
	datac => \C1|dMap~7_combout\,
	datad => \C1|dMap~36_combout\,
	combout => \C1|dMap~38_combout\);

-- Location: LCFF_X32_Y21_N7
\C1|SQ_Y1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[8]~7_combout\,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X35_Y21_N16
\C1|SQ_Y1[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~0_combout\ = (\C1|Add1~6_combout\) # ((\C1|Add1~4_combout\ & ((\C1|Add1~0_combout\) # (\C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|SQ_Y1[9]~0_combout\);

-- Location: LCCOMB_X34_Y21_N6
\C1|LessThan140~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan140~0_combout\ = ((\C1|LessThan144~1_combout\) # ((\C1|SQ_X1\(8)) # (!\C1|LessThan141~0_combout\))) # (!\C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan144~1_combout\,
	datac => \C1|LessThan141~0_combout\,
	datad => \C1|SQ_X1\(8),
	combout => \C1|LessThan140~0_combout\);

-- Location: LCCOMB_X33_Y18_N2
\C1|LessThan136~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~1_combout\ = (\C1|LessThan136~0_combout\ & (\C1|LessThan134~0_combout\ & ((\C1|SQ_X1\(4)) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|LessThan136~0_combout\,
	datac => \C1|SQ_X1\(3),
	datad => \C1|LessThan134~0_combout\,
	combout => \C1|LessThan136~1_combout\);

-- Location: LCCOMB_X33_Y20_N20
\C1|LessThan136~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~2_combout\ = (\C1|SQ_X1\(9) & \C1|SQ_X1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datac => \C1|SQ_X1\(10),
	combout => \C1|LessThan136~2_combout\);

-- Location: LCCOMB_X34_Y18_N28
\C1|LessThan151~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~1_combout\ = (\C1|SQ_X1\(6) & (((\C1|SQ_X1\(3) & \C1|LessThan151~0_combout\)) # (!\C1|LessThan132~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(3),
	datac => \C1|LessThan151~0_combout\,
	datad => \C1|LessThan132~0_combout\,
	combout => \C1|LessThan151~1_combout\);

-- Location: LCCOMB_X33_Y18_N16
\C1|LessThan151~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~2_combout\ = (\C1|SQ_X1\(10)) # ((\C1|SQ_X1\(9) & ((\C1|LessThan151~1_combout\) # (!\C1|LessThan134~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|LessThan134~0_combout\,
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan151~1_combout\,
	combout => \C1|LessThan151~2_combout\);

-- Location: LCCOMB_X35_Y21_N10
\C1|DRAWMAP~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~48_combout\ = (\C1|Add1~6_combout\ & (((\C1|Add1~12_combout\) # (!\C1|Add1~4_combout\)))) # (!\C1|Add1~6_combout\ & ((\C1|Add1~4_combout\) # ((\C1|Add1~2_combout\ & !\C1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|DRAWMAP~48_combout\);

-- Location: LCCOMB_X35_Y21_N12
\C1|DRAWMAP~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~49_combout\ = (\C1|Add1~8_combout\ & (\C1|Add1~10_combout\ & ((\C1|Add1~12_combout\) # (\C1|DRAWMAP~48_combout\)))) # (!\C1|Add1~8_combout\ & (\C1|Add1~12_combout\ & ((\C1|DRAWMAP~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|DRAWMAP~48_combout\,
	combout => \C1|DRAWMAP~49_combout\);

-- Location: LCCOMB_X35_Y21_N30
\C1|DRAWMAP~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~50_combout\ = (\C1|dMap~41_combout\ & ((\C1|Add1~12_combout\ & (!\C1|dMap~42_combout\ & !\C1|DRAWMAP~49_combout\)) # (!\C1|Add1~12_combout\ & ((\C1|DRAWMAP~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|dMap~41_combout\,
	datac => \C1|dMap~42_combout\,
	datad => \C1|DRAWMAP~49_combout\,
	combout => \C1|DRAWMAP~50_combout\);

-- Location: LCCOMB_X34_Y22_N10
\C1|DRAWMAP~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~51_combout\ = (\C1|DRAWMAP~50_combout\ & ((\C1|Add1~12_combout\ & ((\C1|dMap~49_combout\))) # (!\C1|Add1~12_combout\ & (\C1|DRAWMAP~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~47_combout\,
	datab => \C1|dMap~49_combout\,
	datac => \C1|DRAWMAP~50_combout\,
	datad => \C1|Add1~12_combout\,
	combout => \C1|DRAWMAP~51_combout\);

-- Location: LCCOMB_X34_Y18_N14
\C1|dMap~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~51_combout\ = (\C1|SQ_X1\(4) & ((\C1|SQ_X1\(2) & (!\C1|SQ_X1\(3) & \C1|SQ_X1\(6))) # (!\C1|SQ_X1\(2) & ((\C1|SQ_X1\(6)) # (!\C1|SQ_X1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(6),
	datad => \C1|SQ_X1\(4),
	combout => \C1|dMap~51_combout\);

-- Location: LCCOMB_X34_Y18_N0
\C1|dMap~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~52_combout\ = (\C1|dMap~202_combout\ & ((\C1|SQ_X1\(5) & (\C1|SQ_X1\(6) & \C1|dMap~51_combout\)) # (!\C1|SQ_X1\(5) & (!\C1|SQ_X1\(6) & !\C1|dMap~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(6),
	datac => \C1|dMap~51_combout\,
	datad => \C1|dMap~202_combout\,
	combout => \C1|dMap~52_combout\);

-- Location: LCCOMB_X35_Y22_N0
\C1|dMap~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~60_combout\ = (\C1|Add1~8_combout\) # ((\C1|Add1~6_combout\) # ((\C1|Add1~0_combout\ & \C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|dMap~60_combout\);

-- Location: LCCOMB_X35_Y22_N26
\C1|dMap~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~61_combout\ = (\C1|Add1~18_combout\ & (((!\C1|Add1~4_combout\ & !\C1|dMap~60_combout\)) # (!\C1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|dMap~60_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|dMap~61_combout\);

-- Location: LCCOMB_X34_Y20_N12
\C1|LessThan83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~0_combout\ = (!\C1|Add5~6_combout\ & !\C1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan83~0_combout\);

-- Location: LCCOMB_X34_Y20_N18
\C1|LessThan107~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan107~0_combout\ = (!\C1|Add5~2_combout\ & !\C1|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~0_combout\,
	combout => \C1|LessThan107~0_combout\);

-- Location: LCCOMB_X34_Y20_N20
\C1|LessThan93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~0_combout\ = (((!\C1|Add5~4_combout\ & \C1|LessThan107~0_combout\)) # (!\C1|Add5~8_combout\)) # (!\C1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|LessThan107~0_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan93~0_combout\);

-- Location: LCCOMB_X34_Y20_N24
\C1|LessThan100~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~3_combout\ = (\C1|Add5~10_combout\ & (\C1|Add5~8_combout\ & \C1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan100~3_combout\);

-- Location: LCCOMB_X36_Y20_N8
\C1|LessThan81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~0_combout\ = (!\C1|Add5~8_combout\ & (!\C1|Add5~10_combout\ & ((!\C1|Add5~4_combout\) # (!\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan81~0_combout\);

-- Location: LCCOMB_X36_Y20_N10
\C1|LessThan81~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~1_combout\ = (!\C1|Add5~12_combout\ & (!\C1|Add5~20_combout\ & (\C1|LessThan81~0_combout\ & !\C1|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~20_combout\,
	datac => \C1|LessThan81~0_combout\,
	datad => \C1|Add5~14_combout\,
	combout => \C1|LessThan81~1_combout\);

-- Location: LCCOMB_X36_Y20_N22
\C1|LessThan80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~0_combout\ = (\C1|Add5~18_combout\ & (\C1|LessThan110~0_combout\ & ((\C1|LessThan104~0_combout\) # (!\C1|LessThan79~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~18_combout\,
	datab => \C1|LessThan104~0_combout\,
	datac => \C1|LessThan110~0_combout\,
	datad => \C1|LessThan79~2_combout\,
	combout => \C1|LessThan80~0_combout\);

-- Location: LCCOMB_X36_Y20_N24
\C1|LessThan80~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~1_combout\ = (!\C1|Add5~20_combout\ & ((!\C1|Add5~16_combout\) # (!\C1|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~20_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan80~1_combout\);

-- Location: LCCOMB_X36_Y20_N12
\C1|dMap~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~70_combout\ = (\C1|LessThan81~1_combout\ & (((\C1|LessThan80~0_combout\) # (!\C1|LessThan80~1_combout\)))) # (!\C1|LessThan81~1_combout\ & (!\C1|LessThan79~5_combout\ & ((\C1|LessThan80~0_combout\) # (!\C1|LessThan80~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan81~1_combout\,
	datab => \C1|LessThan79~5_combout\,
	datac => \C1|LessThan80~1_combout\,
	datad => \C1|LessThan80~0_combout\,
	combout => \C1|dMap~70_combout\);

-- Location: LCCOMB_X35_Y21_N28
\C1|dMap~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~76_combout\ = (\C1|Add1~8_combout\ & (((\C1|Add1~10_combout\)))) # (!\C1|Add1~8_combout\ & ((\C1|Add1~4_combout\) # ((\C1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~76_combout\);

-- Location: LCCOMB_X35_Y21_N2
\C1|dMap~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~77_combout\ = ((\C1|dMap~76_combout\) # ((\C1|dMap~42_combout\) # (!\C1|dMap~41_combout\))) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|dMap~76_combout\,
	datac => \C1|dMap~42_combout\,
	datad => \C1|dMap~41_combout\,
	combout => \C1|dMap~77_combout\);

-- Location: LCCOMB_X35_Y21_N0
\C1|dMap~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~82_combout\ = (\C1|Add1~12_combout\) # ((\C1|Add1~4_combout\ & ((\C1|Add1~6_combout\))) # (!\C1|Add1~4_combout\ & (!\C1|Add1~2_combout\ & !\C1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~4_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~82_combout\);

-- Location: LCCOMB_X35_Y21_N18
\C1|dMap~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~83_combout\ = ((\C1|dMap~82_combout\) # ((!\C1|Add1~10_combout\) # (!\C1|Add1~8_combout\))) # (!\C1|dMap~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~41_combout\,
	datab => \C1|dMap~82_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|dMap~83_combout\);

-- Location: LCCOMB_X35_Y19_N2
\C1|DRAWMAP~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~60_combout\ = (\C1|dMap~46_combout\ & (!\C1|dMap~83_combout\ & ((\C1|DRAWMAP~59_combout\)))) # (!\C1|dMap~46_combout\ & ((\C1|dMap~81_combout\) # ((!\C1|dMap~83_combout\ & \C1|DRAWMAP~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~46_combout\,
	datab => \C1|dMap~83_combout\,
	datac => \C1|dMap~81_combout\,
	datad => \C1|DRAWMAP~59_combout\,
	combout => \C1|DRAWMAP~60_combout\);

-- Location: LCCOMB_X33_Y21_N10
\C1|dMap~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~87_combout\ = (\C1|SQ_Y1\(5)) # ((!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(2)) # (\C1|SQ_Y1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~87_combout\);

-- Location: LCCOMB_X33_Y21_N8
\C1|dMap~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~88_combout\ = (\C1|SQ_Y1\(7)) # ((\C1|SQ_Y1\(6)) # ((\C1|dMap~87_combout\) # (!\C1|dMap~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~85_combout\,
	datad => \C1|dMap~87_combout\,
	combout => \C1|dMap~88_combout\);

-- Location: LCCOMB_X33_Y21_N12
\C1|dMap~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~90_combout\ = (!\C1|SQ_Y1\(7) & (!\C1|SQ_Y1\(8) & (!\C1|SQ_Y1\(9) & !\C1|SQ_Y1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(9),
	datad => \C1|SQ_Y1\(10),
	combout => \C1|dMap~90_combout\);

-- Location: LCCOMB_X33_Y21_N0
\C1|dMap~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~92_combout\ = (!\C1|SQ_Y1\(6) & (((\C1|SQ_Y1\(2) & \C1|SQ_Y1\(3))) # (!\C1|SQ_Y1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(6),
	combout => \C1|dMap~92_combout\);

-- Location: LCCOMB_X33_Y21_N6
\C1|dMap~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~93_combout\ = (\C1|SQ_Y1\(4) & (((\C1|SQ_Y1\(6))))) # (!\C1|SQ_Y1\(4) & (((\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(4),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(6),
	combout => \C1|dMap~93_combout\);

-- Location: LCCOMB_X33_Y21_N16
\C1|dMap~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~94_combout\ = (\C1|SQ_Y1\(7)) # ((\C1|dMap~92_combout\) # ((\C1|dMap~93_combout\) # (!\C1|dMap~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|dMap~92_combout\,
	datac => \C1|dMap~85_combout\,
	datad => \C1|dMap~93_combout\,
	combout => \C1|dMap~94_combout\);

-- Location: LCCOMB_X33_Y21_N4
\C1|dMap~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~97_combout\ = (((\C1|SQ_Y1\(10)) # (!\C1|SQ_Y1\(9))) # (!\C1|SQ_Y1\(8))) # (!\C1|SQ_Y1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(9),
	datad => \C1|SQ_Y1\(10),
	combout => \C1|dMap~97_combout\);

-- Location: LCCOMB_X33_Y20_N24
\C1|dMap~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~100_combout\ = (!\C1|dMap~99_combout\ & (\C1|dMap~52_combout\ & ((\C1|LessThan87~0_combout\) # (!\C1|SQ_Y1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|LessThan87~0_combout\,
	datac => \C1|dMap~99_combout\,
	datad => \C1|dMap~52_combout\,
	combout => \C1|dMap~100_combout\);

-- Location: LCCOMB_X32_Y22_N28
\C1|LessThan71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan71~0_combout\ = (\C1|SQ_Y1\(4) & (!\C1|SQ_Y1\(3) & ((!\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(1),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|LessThan71~0_combout\);

-- Location: LCCOMB_X31_Y22_N30
\C1|LessThan69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan69~0_combout\ = (!\C1|SQ_Y1\(6) & (\C1|SQ_Y1\(8) & (\C1|SQ_Y1\(7) & \C1|SQ_Y1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(7),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|LessThan69~0_combout\);

-- Location: LCCOMB_X32_Y22_N26
\C1|LessThan71~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan71~1_combout\ = (\C1|SQ_Y1\(10) & (((\C1|SQ_Y1\(5)) # (\C1|LessThan71~0_combout\)) # (!\C1|LessThan69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan69~0_combout\,
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|LessThan71~0_combout\,
	combout => \C1|LessThan71~1_combout\);

-- Location: LCCOMB_X33_Y21_N26
\C1|dMap~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~101_combout\ = (\C1|SQ_Y1\(7) & (\C1|SQ_Y1\(8) & (\C1|SQ_Y1\(9) & \C1|SQ_Y1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(9),
	datad => \C1|SQ_Y1\(10),
	combout => \C1|dMap~101_combout\);

-- Location: LCCOMB_X33_Y20_N26
\C1|DRAWMAP~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~65_combout\ = (\C1|LessThan71~1_combout\) # ((\C1|dMap~100_combout\) # ((\C1|dMap~102_combout\ & \C1|dMap~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan71~1_combout\,
	datab => \C1|dMap~102_combout\,
	datac => \C1|dMap~100_combout\,
	datad => \C1|dMap~59_combout\,
	combout => \C1|DRAWMAP~65_combout\);

-- Location: LCCOMB_X30_Y19_N10
\C1|dMap~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~121_combout\ = (!\C1|Add8~4_combout\ & (!\C1|Add8~10_combout\ & ((\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~121_combout\);

-- Location: LCCOMB_X30_Y19_N4
\C1|dMap~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~124_combout\ = (!\C1|SQ_Y1\(2)) # (!\C1|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~124_combout\);

-- Location: LCCOMB_X30_Y19_N26
\C1|dMap~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~126_combout\ = (\C1|Add8~6_combout\ & (((!\C1|Add8~4_combout\)) # (!\C1|Add8~8_combout\))) # (!\C1|Add8~6_combout\ & (((!\C1|Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|Add8~12_combout\,
	combout => \C1|dMap~126_combout\);

-- Location: LCCOMB_X30_Y19_N24
\C1|dMap~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~127_combout\ = (\C1|dMap~126_combout\) # ((!\C1|Add8~10_combout\ & ((\C1|Add8~8_combout\) # (!\C1|dMap~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~124_combout\,
	datad => \C1|dMap~126_combout\,
	combout => \C1|dMap~127_combout\);

-- Location: LCCOMB_X30_Y19_N30
\C1|dMap~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~128_combout\ = (\C1|dMap~127_combout\) # (((\C1|Add8~12_combout\ & \C1|Add8~10_combout\)) # (!\C1|dMap~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~127_combout\,
	datad => \C1|dMap~119_combout\,
	combout => \C1|dMap~128_combout\);

-- Location: LCCOMB_X32_Y19_N20
\C1|esqQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~3_combout\ = (\C1|dMap~125_combout\ & (((\C1|dMap~50_combout\ & !\C1|dMap~128_combout\)))) # (!\C1|dMap~125_combout\ & ((\C1|dMap~40_combout\) # ((\C1|dMap~50_combout\ & !\C1|dMap~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~125_combout\,
	datab => \C1|dMap~40_combout\,
	datac => \C1|dMap~50_combout\,
	datad => \C1|dMap~128_combout\,
	combout => \C1|esqQ1X2~3_combout\);

-- Location: LCCOMB_X30_Y19_N0
\C1|LessThan112~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~1_combout\ = (\C1|SQ_Y1\(1) & !\C1|SQ_Y1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y1\(1),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|LessThan112~1_combout\);

-- Location: LCCOMB_X35_Y19_N16
\C1|dMap~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~131_combout\ = ((\C1|dMap~114_combout\) # (\C1|dMap~113_combout\)) # (!\C1|dMap~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~112_combout\,
	datac => \C1|dMap~114_combout\,
	datad => \C1|dMap~113_combout\,
	combout => \C1|dMap~131_combout\);

-- Location: LCCOMB_X32_Y20_N12
\C1|SQ_X1[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~5_combout\ = (!\C1|dMap~91_combout\ & ((\C1|dMap~129_combout\) # ((\C1|dMap~73_combout\) # (\C1|dMap~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~91_combout\,
	datab => \C1|dMap~129_combout\,
	datac => \C1|dMap~73_combout\,
	datad => \C1|dMap~70_combout\,
	combout => \C1|SQ_X1[8]~5_combout\);

-- Location: LCCOMB_X29_Y16_N30
\C1|SQ_Y2[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~0_combout\ = (\C1|Add3~6_combout\) # ((\C1|Add3~4_combout\ & ((\C1|Add3~2_combout\) # (\C1|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~0_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|SQ_Y2[9]~0_combout\);

-- Location: LCCOMB_X29_Y16_N24
\C1|SQ_Y2[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~1_combout\ = (\C1|Add3~20_combout\) # ((\C1|Add3~10_combout\) # ((\C1|Add3~8_combout\ & \C1|SQ_Y2[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|SQ_Y2[9]~0_combout\,
	combout => \C1|SQ_Y2[9]~1_combout\);

-- Location: LCCOMB_X29_Y16_N18
\C1|SQ_Y2[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~2_combout\ = (\C1|Add17~0_combout\ & ((\C1|Add3~18_combout\) # ((\C1|SQ_Y2[9]~1_combout\) # (!\C1|LessThan156~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|Add3~18_combout\,
	datac => \C1|SQ_Y2[9]~1_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|SQ_Y2[9]~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\C1|LessThan201~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~0_combout\ = (!\C1|SQ_X2\(3) & (\C1|Add2~0_combout\ & !\C1|SQ_X2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~0_combout\,
	datad => \C1|SQ_X2\(2),
	combout => \C1|LessThan201~0_combout\);

-- Location: LCCOMB_X29_Y15_N6
\C1|LessThan201~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan201~1_combout\ = (!\C1|Add2~8_combout\ & (((\C1|LessThan183~1_combout\ & !\C1|LessThan201~0_combout\)) # (!\C1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan183~1_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan201~0_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan201~1_combout\);

-- Location: LCCOMB_X29_Y17_N22
\C1|LessThan209~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan209~2_combout\ = ((\C1|LessThan209~0_combout\ & ((\C1|LessThan209~1_combout\) # (!\C1|LessThan204~0_combout\)))) # (!\C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan209~1_combout\,
	datac => \C1|LessThan204~0_combout\,
	datad => \C1|LessThan209~0_combout\,
	combout => \C1|LessThan209~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
\C1|dMap~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~142_combout\ = ((\C1|Add3~6_combout\ & ((\C1|Add3~2_combout\) # (\C1|Add3~4_combout\)))) # (!\C1|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~142_combout\);

-- Location: LCCOMB_X25_Y19_N14
\C1|dMap~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~144_combout\ = (\C1|Add3~4_combout\ & ((\C1|Add3~2_combout\) # (!\C1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~4_combout\,
	datac => \C1|Add3~2_combout\,
	combout => \C1|dMap~144_combout\);

-- Location: LCCOMB_X25_Y19_N24
\C1|dMap~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~145_combout\ = (\C1|Add3~12_combout\ & (!\C1|Add3~10_combout\ & (!\C1|Add3~8_combout\ & !\C1|Add3~6_combout\))) # (!\C1|Add3~12_combout\ & (\C1|Add3~10_combout\ & (\C1|Add3~8_combout\ & \C1|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~10_combout\,
	datac => \C1|Add3~8_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~145_combout\);

-- Location: LCCOMB_X25_Y19_N30
\C1|dMap~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~146_combout\ = ((\C1|Add3~8_combout\ $ (\C1|dMap~144_combout\)) # (!\C1|dMap~137_combout\)) # (!\C1|dMap~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|dMap~144_combout\,
	datac => \C1|dMap~145_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|dMap~146_combout\);

-- Location: LCCOMB_X29_Y16_N12
\C1|dMap~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~147_combout\ = (\C1|Add3~10_combout\ & (\C1|Add3~2_combout\ & ((\C1|Add3~4_combout\)))) # (!\C1|Add3~10_combout\ & ((\C1|Add3~4_combout\) # ((\C1|Add3~2_combout\ & \C1|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~0_combout\,
	datad => \C1|Add3~4_combout\,
	combout => \C1|dMap~147_combout\);

-- Location: LCCOMB_X29_Y16_N6
\C1|dMap~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~148_combout\ = (\C1|Add3~8_combout\ & (((\C1|Add3~10_combout\) # (!\C1|dMap~147_combout\)) # (!\C1|Add3~6_combout\))) # (!\C1|Add3~8_combout\ & (((\C1|Add3~6_combout\ & \C1|dMap~147_combout\)) # (!\C1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~147_combout\,
	combout => \C1|dMap~148_combout\);

-- Location: LCCOMB_X27_Y18_N28
\C1|LessThan187~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan187~0_combout\ = (!\C1|SQ_X2\(2) & !\C1|SQ_X2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(3),
	combout => \C1|LessThan187~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\C1|LessThan187~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan187~1_combout\ = ((\C1|LessThan179~0_combout\ & ((!\C1|LessThan187~0_combout\) # (!\C1|SQ_X2\(1))))) # (!\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|LessThan187~0_combout\,
	datac => \C1|LessThan179~0_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan187~1_combout\);

-- Location: LCCOMB_X30_Y18_N4
\C1|LessThan192~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~1_combout\ = (!\C1|Add2~12_combout\ & (!\C1|Add2~14_combout\ & ((!\C1|Add2~8_combout\) # (!\C1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add2~12_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|Add2~14_combout\,
	combout => \C1|LessThan192~1_combout\);

-- Location: LCCOMB_X29_Y18_N22
\C1|LessThan210~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan210~0_combout\ = ((\C1|Add2~10_combout\ & ((\C1|Add2~6_combout\) # (!\C1|LessThan187~1_combout\)))) # (!\C1|LessThan192~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan192~1_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan187~1_combout\,
	datad => \C1|Add2~10_combout\,
	combout => \C1|LessThan210~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\C1|LessThan186~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan186~0_combout\ = (\C1|Add2~4_combout\ & ((\C1|Add2~2_combout\) # ((\C1|Add2~0_combout\ & !\C1|LessThan185~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add2~0_combout\,
	datac => \C1|LessThan185~0_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan186~0_combout\);

-- Location: LCCOMB_X29_Y18_N26
\C1|DRAWMAP~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~83_combout\ = (!\C1|Add2~14_combout\ & (\C1|Add2~12_combout\ & !\C1|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datac => \C1|Add2~12_combout\,
	datad => \C1|Add2~10_combout\,
	combout => \C1|DRAWMAP~83_combout\);

-- Location: LCCOMB_X29_Y18_N12
\C1|DRAWMAP~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~84_combout\ = (\C1|DRAWMAP~144_combout\ & (((!\C1|Add2~6_combout\ & \C1|LessThan187~1_combout\)) # (!\C1|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~144_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan187~1_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|DRAWMAP~84_combout\);

-- Location: LCCOMB_X29_Y18_N6
\C1|LessThan185~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan185~1_combout\ = (\C1|LessThan209~0_combout\ & (\C1|LessThan183~1_combout\ & ((\C1|LessThan185~0_combout\) # (!\C1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan185~0_combout\,
	datab => \C1|LessThan209~0_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|LessThan183~1_combout\,
	combout => \C1|LessThan185~1_combout\);

-- Location: LCCOMB_X25_Y15_N24
\C1|DRAWMAP~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~90_combout\ = (!\C1|Add9~18_combout\ & !\C1|Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~90_combout\);

-- Location: LCCOMB_X24_Y15_N10
\C1|LessThan256~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~0_combout\ = (!\C1|Add9~14_combout\ & !\C1|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan256~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\C1|DRAWMAP~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~95_combout\ = (\C1|Add9~8_combout\ & \C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	combout => \C1|DRAWMAP~95_combout\);

-- Location: LCCOMB_X24_Y18_N8
\C1|DRAWMAP~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~103_combout\ = (\C1|Add9~12_combout\) # ((\C1|Add9~10_combout\ & ((\C1|Add9~8_combout\) # (\C1|DRAWMAP~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|DRAWMAP~102_combout\,
	combout => \C1|DRAWMAP~103_combout\);

-- Location: LCCOMB_X23_Y15_N20
\C1|DRAWMAP~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~104_combout\ = (!\C1|Add9~14_combout\ & (!\C1|Add9~16_combout\ & (\C1|DRAWMAP~103_combout\ & \C1|LessThan255~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~14_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|DRAWMAP~103_combout\,
	datad => \C1|LessThan255~0_combout\,
	combout => \C1|DRAWMAP~104_combout\);

-- Location: LCCOMB_X24_Y18_N16
\C1|DRAWMAP~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~107_combout\ = (!\C1|Add9~10_combout\ & ((\C1|Add9~4_combout\) # ((\C1|Add9~0_combout\) # (\C1|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|DRAWMAP~107_combout\);

-- Location: LCCOMB_X25_Y19_N10
\C1|DRAWMAP~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~119_combout\ = (\C1|LessThan156~3_combout\) # ((\C1|Add3~20_combout\) # ((\C1|DRAWMAP~118_combout\ & !\C1|dMap~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan156~3_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|DRAWMAP~118_combout\,
	datad => \C1|dMap~146_combout\,
	combout => \C1|DRAWMAP~119_combout\);

-- Location: LCCOMB_X24_Y17_N8
\C1|dMap~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~159_combout\ = ((!\C1|SQ_Y2\(4) & \C1|SQ_Y2\(3))) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~159_combout\);

-- Location: LCCOMB_X26_Y17_N24
\C1|LessThan175~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan175~0_combout\ = (\C1|SQ_Y2\(4) & (!\C1|SQ_Y2\(3) & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan175~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\C1|dMap~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~162_combout\ = ((\C1|SQ_Y2\(4) & ((!\C1|SQ_Y2\(3)))) # (!\C1|SQ_Y2\(4) & (\C1|SQ_Y2\(2) & \C1|SQ_Y2\(3)))) # (!\C1|SQ_Y2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~162_combout\);

-- Location: LCCOMB_X24_Y17_N26
\C1|dMap~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~163_combout\ = (!\C1|SQ_Y2\(8) & (!\C1|SQ_Y2\(9) & !\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|SQ_Y2\(10),
	combout => \C1|dMap~163_combout\);

-- Location: LCCOMB_X24_Y17_N24
\C1|dMap~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~164_combout\ = (((\C1|dMap~162_combout\) # (!\C1|dMap~163_combout\)) # (!\C1|SQ_Y2\(6))) # (!\C1|SQ_Y2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|SQ_Y2\(6),
	datac => \C1|dMap~162_combout\,
	datad => \C1|dMap~163_combout\,
	combout => \C1|dMap~164_combout\);

-- Location: LCCOMB_X26_Y17_N20
\C1|LessThan173~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~1_combout\ = (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(3)) # ((\C1|SQ_Y2\(1) & \C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan173~1_combout\);

-- Location: LCCOMB_X26_Y17_N18
\C1|LessThan173~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~2_combout\ = (\C1|LessThan173~0_combout\ & (!\C1|SQ_Y2\(10) & ((\C1|LessThan173~1_combout\) # (!\C1|SQ_Y2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan173~1_combout\,
	datab => \C1|LessThan173~0_combout\,
	datac => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2\(5),
	combout => \C1|LessThan173~2_combout\);

-- Location: LCCOMB_X25_Y15_N6
\C1|esqQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~0_combout\ = (!\C1|LessThan173~2_combout\ & !\C1|LessThan234~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan173~2_combout\,
	datad => \C1|LessThan234~0_combout\,
	combout => \C1|esqQ2X1~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\C1|DRAWMAP~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~128_combout\ = (\C1|DRAWMAP~104_combout\) # ((\C1|Add9~14_combout\ & (\C1|DRAWMAP~105_combout\ & !\C1|LessThan255~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~14_combout\,
	datab => \C1|DRAWMAP~105_combout\,
	datac => \C1|DRAWMAP~104_combout\,
	datad => \C1|LessThan255~1_combout\,
	combout => \C1|DRAWMAP~128_combout\);

-- Location: LCCOMB_X24_Y17_N6
\C1|dMap~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~166_combout\ = (\C1|SQ_Y2\(3)) # ((\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~166_combout\);

-- Location: LCCOMB_X24_Y17_N20
\C1|dMap~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~167_combout\ = (\C1|SQ_Y2\(5) & (\C1|SQ_Y2\(4) & (\C1|SQ_Y2\(6) & \C1|SQ_Y2\(7)))) # (!\C1|SQ_Y2\(5) & ((\C1|SQ_Y2\(4)) # ((\C1|SQ_Y2\(6)) # (\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~167_combout\);

-- Location: LCCOMB_X24_Y17_N10
\C1|dMap~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~168_combout\ = ((\C1|SQ_Y2\(5) & ((\C1|dMap~166_combout\) # (!\C1|dMap~167_combout\))) # (!\C1|SQ_Y2\(5) & ((\C1|dMap~167_combout\) # (!\C1|dMap~166_combout\)))) # (!\C1|dMap~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|dMap~163_combout\,
	datac => \C1|dMap~167_combout\,
	datad => \C1|dMap~166_combout\,
	combout => \C1|dMap~168_combout\);

-- Location: LCCOMB_X24_Y16_N2
\C1|dMap~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~170_combout\ = (((\C1|SQ_Y2\(3) & !\C1|LessThan176~0_combout\)) # (!\C1|SQ_Y2\(5))) # (!\C1|SQ_Y2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|LessThan176~0_combout\,
	datad => \C1|SQ_Y2\(5),
	combout => \C1|dMap~170_combout\);

-- Location: LCCOMB_X25_Y16_N4
\C1|DRAWMAP~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~129_combout\ = (\C1|SQ_Y2\(9) & (\C1|SQ_Y2\(10) & (\C1|SQ_Y2\(8) & \C1|SQ_Y2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(10),
	datac => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|DRAWMAP~129_combout\);

-- Location: LCCOMB_X25_Y17_N10
\C1|LessThan181~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan181~0_combout\ = (\C1|SQ_Y2\(3) & (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(1)) # (\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan181~0_combout\);

-- Location: LCCOMB_X25_Y17_N8
\C1|DRAWMAP~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~130_combout\ = (\C1|DRAWMAP~129_combout\ & (((!\C1|SQ_Y2\(5) & \C1|LessThan181~0_combout\)) # (!\C1|SQ_Y2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|DRAWMAP~129_combout\,
	datad => \C1|LessThan181~0_combout\,
	combout => \C1|DRAWMAP~130_combout\);

-- Location: LCCOMB_X26_Y15_N24
\C1|LessThan223~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan223~0_combout\ = ((\C1|SQ_Y2\(2)) # (!\C1|Add13~6_combout\)) # (!\C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan223~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\C1|LessThan223~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan223~1_combout\ = ((!\C1|Add13~8_combout\ & \C1|LessThan223~0_combout\)) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datac => \C1|LessThan223~0_combout\,
	datad => \C1|Add13~10_combout\,
	combout => \C1|LessThan223~1_combout\);

-- Location: LCCOMB_X27_Y16_N6
\C1|dMap~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~192_combout\ = (!\C1|Add13~12_combout\) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datad => \C1|Add13~12_combout\,
	combout => \C1|dMap~192_combout\);

-- Location: LCCOMB_X26_Y15_N14
\C1|dMap~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~197_combout\ = (\C1|Add13~6_combout\ & (((!\C1|Add13~10_combout\)) # (!\C1|SQ_Y2\(3)))) # (!\C1|Add13~6_combout\ & ((\C1|Add13~10_combout\) # ((\C1|SQ_Y2\(3) & !\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add13~6_combout\,
	datac => \C1|SQ_Y2\(2),
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~197_combout\);

-- Location: LCCOMB_X26_Y15_N12
\C1|dMap~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~198_combout\ = (\C1|Add13~8_combout\ & ((\C1|Add13~12_combout\) # (!\C1|Add13~6_combout\))) # (!\C1|Add13~8_combout\ & ((\C1|Add13~6_combout\) # (!\C1|Add13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datac => \C1|Add13~12_combout\,
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~198_combout\);

-- Location: LCCOMB_X26_Y15_N26
\C1|dMap~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~199_combout\ = (\C1|dMap~198_combout\) # (((\C1|dMap~197_combout\) # (!\C1|dMap~179_combout\)) # (!\C1|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~198_combout\,
	datab => \C1|Add13~16_combout\,
	datac => \C1|dMap~197_combout\,
	datad => \C1|dMap~179_combout\,
	combout => \C1|dMap~199_combout\);

-- Location: LCCOMB_X26_Y15_N4
\C1|esqQ2X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~7_combout\ = (\C1|DRAWMAP~118_combout\ & (((\C1|Add13~18_combout\ & \C1|LessThan217~1_combout\)) # (!\C1|dMap~199_combout\))) # (!\C1|DRAWMAP~118_combout\ & (\C1|Add13~18_combout\ & (\C1|LessThan217~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~118_combout\,
	datab => \C1|Add13~18_combout\,
	datac => \C1|LessThan217~1_combout\,
	datad => \C1|dMap~199_combout\,
	combout => \C1|esqQ2X2~7_combout\);

-- Location: LCCOMB_X26_Y15_N16
\C1|esqQ2X2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~8_combout\ = (\C1|esqQ2X2~7_combout\) # ((\C1|DRAWMAP~122_combout\ & !\C1|dMap~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~122_combout\,
	datac => \C1|esqQ2X2~7_combout\,
	datad => \C1|dMap~201_combout\,
	combout => \C1|esqQ2X2~8_combout\);

-- Location: LCCOMB_X26_Y17_N10
\C1|LessThan216~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~1_combout\ = ((\C1|SQ_Y2\(1) & \C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|LessThan216~1_combout\);

-- Location: LCCOMB_X26_Y17_N28
\C1|SQ_X2[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~7_combout\ = (\C1|LessThan216~3_combout\) # (!\C1|Add13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~22_combout\,
	datad => \C1|LessThan216~3_combout\,
	combout => \C1|SQ_X2[1]~7_combout\);

-- Location: LCCOMB_X33_Y18_N14
\C1|DRAWMAP~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~143_combout\ = (\C1|SQ_X1\(10) & ((\C1|LessThan136~1_combout\) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan136~1_combout\,
	combout => \C1|DRAWMAP~143_combout\);

-- Location: LCCOMB_X34_Y19_N6
\C1|dMap~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~202_combout\ = (!\C1|SQ_X1\(9) & (!\C1|SQ_X1\(7) & (!\C1|SQ_X1\(8) & !\C1|SQ_X1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(10),
	combout => \C1|dMap~202_combout\);

-- Location: LCCOMB_X35_Y19_N6
\C1|LessThan100~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~6_combout\ = (\C1|LessThan84~0_combout\ & ((!\C1|Add5~16_combout\) # (!\C1|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|LessThan100~6_combout\);

-- Location: LCCOMB_X29_Y18_N10
\C1|DRAWMAP~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~144_combout\ = (\C1|DRAWMAP~83_combout\ & ((\C1|Add2~6_combout\) # ((\C1|Add2~8_combout\) # (\C1|LessThan186~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|LessThan186~0_combout\,
	datad => \C1|DRAWMAP~83_combout\,
	combout => \C1|DRAWMAP~144_combout\);

-- Location: LCCOMB_X27_Y19_N2
\C1|SQ_X2[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~15_combout\ = (\C1|LessThan259~0_combout\ & (\C1|VPOS\(10) & (!\C1|LessThan263~2_combout\ & \SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan263~2_combout\,
	datad => \SW~combout\(1),
	combout => \C1|SQ_X2[1]~15_combout\);

-- Location: LCCOMB_X30_Y22_N12
\C1|dMap~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~205_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS\(6) & ((\C1|dMap~29_combout\)))) # (!\C1|VPOS\(5) & (\C1|VPOS\(6) & (\C1|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(6),
	datac => \C1|LessThan12~0_combout\,
	datad => \C1|dMap~29_combout\,
	combout => \C1|dMap~205_combout\);

-- Location: LCCOMB_X30_Y17_N30
\C1|dMap~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~206_combout\ = (\C1|dMap~28_combout\ & (\C1|dMap~30_combout\ & (\C1|dMap~27_combout\ & \C1|dMap~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~28_combout\,
	datab => \C1|dMap~30_combout\,
	datac => \C1|dMap~27_combout\,
	datad => \C1|dMap~205_combout\,
	combout => \C1|dMap~206_combout\);

-- Location: LCCOMB_X30_Y21_N12
\C1|DRAWMAP~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~147_combout\ = (\C1|DRAWMAP~15_combout\ & ((\C1|VPOS\(5) & (\C1|VPOS\(4) & !\C1|VPOS\(6))) # (!\C1|VPOS\(5) & (!\C1|VPOS\(4) & \C1|VPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(6),
	datad => \C1|DRAWMAP~15_combout\,
	combout => \C1|DRAWMAP~147_combout\);

-- Location: LCCOMB_X30_Y21_N26
\C1|DRAWMAP~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~148_combout\ = (\C1|DRAWMAP~147_combout\ & ((\C1|VPOS\(4) & ((\C1|dMap~13_combout\))) # (!\C1|VPOS\(4) & (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|dMap~13_combout\,
	datad => \C1|DRAWMAP~147_combout\,
	combout => \C1|DRAWMAP~148_combout\);

-- Location: LCCOMB_X32_Y21_N6
\C1|SQ_Y1[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~7_combout\ = !\C1|Add16~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~15_combout\,
	combout => \C1|SQ_Y1[8]~7_combout\);

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

-- Location: LCCOMB_X30_Y20_N0
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

-- Location: LCCOMB_X30_Y20_N10
\C1|HPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: LCFF_X30_Y20_N11
\C1|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(5));

-- Location: LCCOMB_X31_Y20_N8
\C1|dMap~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~7_combout\ = (!\C1|HPOS\(6) & !\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|dMap~7_combout\);

-- Location: LCCOMB_X29_Y20_N26
\C1|LessThan262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~0_combout\ = ((\C1|dMap~7_combout\ & ((!\C1|HPOS\(4)) # (!\C1|HPOS\(3))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(4),
	datad => \C1|dMap~7_combout\,
	combout => \C1|LessThan262~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\C1|LessThan259~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan259~0_combout\ = (\C1|HPOS\(10) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|LessThan262~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(10),
	datac => \C1|LessThan262~0_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|LessThan259~0_combout\);

-- Location: LCFF_X30_Y20_N1
\C1|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(0));

-- Location: LCCOMB_X30_Y20_N2
\C1|HPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: LCFF_X30_Y20_N3
\C1|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(1));

-- Location: LCCOMB_X30_Y20_N4
\C1|HPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: LCFF_X30_Y20_N5
\C1|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(2));

-- Location: LCCOMB_X30_Y20_N6
\C1|HPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: LCCOMB_X30_Y20_N8
\C1|HPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: LCFF_X30_Y20_N9
\C1|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(4));

-- Location: LCCOMB_X30_Y20_N12
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

-- Location: LCCOMB_X30_Y20_N14
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

-- Location: LCFF_X30_Y20_N15
\C1|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(7));

-- Location: LCCOMB_X30_Y20_N16
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

-- Location: LCCOMB_X30_Y20_N18
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

-- Location: LCFF_X30_Y20_N19
\C1|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(9));

-- Location: LCCOMB_X30_Y20_N20
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

-- Location: LCFF_X30_Y20_N21
\C1|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(10));

-- Location: LCFF_X30_Y20_N17
\C1|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(8));

-- Location: LCCOMB_X30_Y20_N22
\C1|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|process_0~1_combout\) # ((\C1|HPOS\(10)) # ((\C1|HPOS\(8)) # (\C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~1_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|process_0~2_combout\);

-- Location: LCFF_X30_Y20_N23
\C1|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HSYNC~regout\);

-- Location: LCCOMB_X27_Y21_N0
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

-- Location: LCCOMB_X27_Y21_N6
\C1|VPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: LCFF_X27_Y21_N7
\C1|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(3));

-- Location: LCCOMB_X27_Y19_N30
\C1|LessThan263~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan263~1_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(2) & !\C1|VPOS\(1))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(1),
	combout => \C1|LessThan263~1_combout\);

-- Location: LCCOMB_X27_Y21_N8
\C1|VPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: LCCOMB_X27_Y21_N10
\C1|VPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: LCCOMB_X27_Y21_N12
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

-- Location: LCCOMB_X27_Y21_N14
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

-- Location: LCFF_X27_Y21_N15
\C1|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(7));

-- Location: LCCOMB_X27_Y21_N16
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

-- Location: LCCOMB_X27_Y21_N18
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

-- Location: LCFF_X27_Y21_N19
\C1|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(9));

-- Location: LCCOMB_X27_Y21_N20
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

-- Location: LCFF_X27_Y21_N21
\C1|VPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(10));

-- Location: LCFF_X27_Y21_N11
\C1|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(5));

-- Location: LCCOMB_X27_Y21_N22
\C1|LessThan260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~0_combout\ = (\C1|VPOS\(10) & (((!\C1|LessThan263~1_combout\ & \C1|VPOS\(5))) # (!\C1|LessThan263~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan263~0_combout\,
	datab => \C1|LessThan263~1_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan260~0_combout\);

-- Location: LCFF_X27_Y21_N1
\C1|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(0));

-- Location: LCCOMB_X27_Y21_N2
\C1|VPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: LCFF_X27_Y21_N3
\C1|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(1));

-- Location: LCCOMB_X27_Y21_N4
\C1|VPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: LCFF_X27_Y21_N5
\C1|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(2));

-- Location: LCFF_X27_Y21_N9
\C1|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(4));

-- Location: LCCOMB_X27_Y19_N0
\C1|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|VPOS\(2)) # ((\C1|VPOS\(4)) # ((\C1|VPOS\(3)) # (\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(5),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X30_Y21_N28
\C1|dMap~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~6_combout\ = (!\C1|VPOS\(3) & !\C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|dMap~6_combout\);

-- Location: LCCOMB_X30_Y21_N6
\C1|LessThan266~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan266~0_combout\ = (\C1|VPOS\(0)) # ((\C1|VPOS\(2)) # ((\C1|VPOS\(1)) # (!\C1|dMap~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|dMap~6_combout\,
	combout => \C1|LessThan266~0_combout\);

-- Location: LCCOMB_X27_Y21_N26
\C1|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = ((\C1|process_0~3_combout\) # ((\C1|VPOS\(10)) # (!\C1|LessThan266~0_combout\))) # (!\C1|LessThan263~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan263~0_combout\,
	datab => \C1|process_0~3_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|LessThan266~0_combout\,
	combout => \C1|process_0~4_combout\);

-- Location: LCFF_X27_Y21_N27
\C1|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VSYNC~regout\);

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

-- Location: LCCOMB_X26_Y21_N16
\C1|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~0_combout\ = (\KEY~combout\(2)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datac => \KEY~combout\(2),
	combout => \C1|Add17~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\C1|Add17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~1_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add17~2\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add17~1_combout\,
	cout => \C1|Add17~2\);

-- Location: LCCOMB_X24_Y16_N12
\C1|Add17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~3_combout\ = (\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(2) & ((\C1|Add17~2\) # (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|Add17~2\)))) # (!\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(2) & (!\C1|Add17~2\)) # (!\C1|SQ_Y2\(2) & (\C1|Add17~2\ & VCC))))
-- \C1|Add17~4\ = CARRY((\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(2)) # (!\C1|Add17~2\))) # (!\C1|Add17~0_combout\ & (\C1|SQ_Y2\(2) & !\C1|Add17~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add17~2\,
	combout => \C1|Add17~3_combout\,
	cout => \C1|Add17~4\);

-- Location: LCCOMB_X25_Y16_N30
\C1|SQ_Y2[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[2]~9_combout\ = !\C1|Add17~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~3_combout\,
	combout => \C1|SQ_Y2[2]~9_combout\);

-- Location: LCCOMB_X26_Y18_N0
\C1|Add21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add21~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add21~0_combout\,
	cout => \C1|Add21~1\);

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

-- Location: LCCOMB_X24_Y16_N16
\C1|Add17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~7_combout\ = (\C1|SQ_Y2\(4) & ((\C1|Add17~0_combout\ & (!\C1|Add17~6\)) # (!\C1|Add17~0_combout\ & (\C1|Add17~6\ & VCC)))) # (!\C1|SQ_Y2\(4) & ((\C1|Add17~0_combout\ & ((\C1|Add17~6\) # (GND))) # (!\C1|Add17~0_combout\ & (!\C1|Add17~6\))))
-- \C1|Add17~8\ = CARRY((\C1|SQ_Y2\(4) & (\C1|Add17~0_combout\ & !\C1|Add17~6\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add17~0_combout\) # (!\C1|Add17~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|Add17~0_combout\,
	datad => VCC,
	cin => \C1|Add17~6\,
	combout => \C1|Add17~7_combout\,
	cout => \C1|Add17~8\);

-- Location: LCFF_X24_Y16_N17
\C1|SQ_Y2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~7_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X25_Y16_N2
\C1|SQ_Y2[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~10_combout\ = !\C1|Add17~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~1_combout\,
	combout => \C1|SQ_Y2[1]~10_combout\);

-- Location: LCFF_X25_Y16_N3
\C1|SQ_Y2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[1]~10_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(1));

-- Location: LCCOMB_X25_Y16_N8
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

-- Location: LCCOMB_X25_Y16_N10
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

-- Location: LCCOMB_X25_Y16_N12
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

-- Location: LCCOMB_X25_Y16_N14
\C1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(4) & (!\C1|Add3~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add3~5\) # (GND)))
-- \C1|Add3~7\ = CARRY((!\C1|Add3~5\) # (!\C1|SQ_Y2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X25_Y16_N16
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

-- Location: LCCOMB_X25_Y16_N18
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

-- Location: LCCOMB_X25_Y16_N20
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

-- Location: LCCOMB_X25_Y16_N22
\C1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = (\C1|SQ_Y2\(8) & ((\C1|Add3~13\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add3~13\))
-- \C1|Add3~15\ = CARRY((\C1|SQ_Y2\(8)) # (!\C1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\,
	cout => \C1|Add3~15\);

-- Location: LCCOMB_X25_Y16_N24
\C1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~16_combout\ = (\C1|SQ_Y2\(9) & (!\C1|Add3~15\ & VCC)) # (!\C1|SQ_Y2\(9) & (\C1|Add3~15\ $ (GND)))
-- \C1|Add3~17\ = CARRY((!\C1|SQ_Y2\(9) & !\C1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~15\,
	combout => \C1|Add3~16_combout\,
	cout => \C1|Add3~17\);

-- Location: LCCOMB_X25_Y16_N26
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

-- Location: LCCOMB_X25_Y16_N28
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

-- Location: LCCOMB_X26_Y16_N2
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

-- Location: LCCOMB_X26_Y16_N4
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

-- Location: LCCOMB_X26_Y16_N6
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

-- Location: LCCOMB_X26_Y16_N8
\C1|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\C1|Add3~6_combout\ & (\C1|Add13~5_cout\ & VCC)) # (!\C1|Add3~6_combout\ & (!\C1|Add13~5_cout\))
-- \C1|Add13~7\ = CARRY((!\C1|Add3~6_combout\ & !\C1|Add13~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|Add13~5_cout\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: LCCOMB_X26_Y16_N10
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

-- Location: LCCOMB_X26_Y16_N12
\C1|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\C1|Add3~10_combout\ & (\C1|Add13~9\ & VCC)) # (!\C1|Add3~10_combout\ & (!\C1|Add13~9\))
-- \C1|Add13~11\ = CARRY((!\C1|Add3~10_combout\ & !\C1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: LCCOMB_X26_Y16_N14
\C1|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = (\C1|Add3~12_combout\ & ((GND) # (!\C1|Add13~11\))) # (!\C1|Add3~12_combout\ & (\C1|Add13~11\ $ (GND)))
-- \C1|Add13~13\ = CARRY((\C1|Add3~12_combout\) # (!\C1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: LCCOMB_X26_Y16_N16
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

-- Location: LCCOMB_X26_Y16_N18
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

-- Location: LCCOMB_X26_Y16_N20
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

-- Location: LCCOMB_X26_Y16_N22
\C1|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~20_combout\ = (\C1|Add3~20_combout\ & ((GND) # (!\C1|Add13~19\))) # (!\C1|Add3~20_combout\ & (\C1|Add13~19\ $ (GND)))
-- \C1|Add13~21\ = CARRY((\C1|Add3~20_combout\) # (!\C1|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~20_combout\,
	datad => VCC,
	cin => \C1|Add13~19\,
	combout => \C1|Add13~20_combout\,
	cout => \C1|Add13~21\);

-- Location: LCCOMB_X26_Y16_N24
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

-- Location: LCCOMB_X26_Y18_N14
\C1|Add21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~14_combout\ = (\C1|SQ_X2\(8) & ((\C1|process_0~11_combout\ & ((\C1|Add21~13\) # (GND))) # (!\C1|process_0~11_combout\ & (!\C1|Add21~13\)))) # (!\C1|SQ_X2\(8) & ((\C1|process_0~11_combout\ & (!\C1|Add21~13\)) # (!\C1|process_0~11_combout\ & 
-- (\C1|Add21~13\ & VCC))))
-- \C1|Add21~15\ = CARRY((\C1|SQ_X2\(8) & ((\C1|process_0~11_combout\) # (!\C1|Add21~13\))) # (!\C1|SQ_X2\(8) & (\C1|process_0~11_combout\ & !\C1|Add21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~13\,
	combout => \C1|Add21~14_combout\,
	cout => \C1|Add21~15\);

-- Location: LCCOMB_X26_Y18_N16
\C1|Add21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~16_combout\ = ((\C1|SQ_X2\(9) $ (\C1|process_0~11_combout\ $ (\C1|Add21~15\)))) # (GND)
-- \C1|Add21~17\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|Add21~15\) # (!\C1|process_0~11_combout\))) # (!\C1|SQ_X2\(9) & (!\C1|process_0~11_combout\ & !\C1|Add21~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~15\,
	combout => \C1|Add21~16_combout\,
	cout => \C1|Add21~17\);

-- Location: LCFF_X26_Y18_N17
\C1|SQ_X2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~16_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(9));

-- Location: LCCOMB_X26_Y18_N12
\C1|Add21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~12_combout\ = ((\C1|SQ_X2\(7) $ (\C1|process_0~11_combout\ $ (!\C1|Add21~11\)))) # (GND)
-- \C1|Add21~13\ = CARRY((\C1|SQ_X2\(7) & (!\C1|process_0~11_combout\ & !\C1|Add21~11\)) # (!\C1|SQ_X2\(7) & ((!\C1|Add21~11\) # (!\C1|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~11\,
	combout => \C1|Add21~12_combout\,
	cout => \C1|Add21~13\);

-- Location: LCCOMB_X26_Y18_N30
\C1|SQ_X2[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[7]~17_combout\ = !\C1|Add21~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~12_combout\,
	combout => \C1|SQ_X2[7]~17_combout\);

-- Location: LCFF_X26_Y18_N31
\C1|SQ_X2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[7]~17_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(7));

-- Location: LCCOMB_X26_Y18_N10
\C1|Add21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~10_combout\ = (\C1|SQ_X2\(6) & ((\C1|process_0~11_combout\ & ((\C1|Add21~9\) # (GND))) # (!\C1|process_0~11_combout\ & (!\C1|Add21~9\)))) # (!\C1|SQ_X2\(6) & ((\C1|process_0~11_combout\ & (!\C1|Add21~9\)) # (!\C1|process_0~11_combout\ & 
-- (\C1|Add21~9\ & VCC))))
-- \C1|Add21~11\ = CARRY((\C1|SQ_X2\(6) & ((\C1|process_0~11_combout\) # (!\C1|Add21~9\))) # (!\C1|SQ_X2\(6) & (\C1|process_0~11_combout\ & !\C1|Add21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~9\,
	combout => \C1|Add21~10_combout\,
	cout => \C1|Add21~11\);

-- Location: LCCOMB_X26_Y18_N28
\C1|SQ_X2[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~18_combout\ = !\C1|Add21~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~10_combout\,
	combout => \C1|SQ_X2[6]~18_combout\);

-- Location: LCFF_X26_Y18_N29
\C1|SQ_X2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[6]~18_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(6));

-- Location: LCCOMB_X26_Y18_N8
\C1|Add21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~8_combout\ = ((\C1|SQ_X2\(5) $ (\C1|process_0~11_combout\ $ (\C1|Add21~7\)))) # (GND)
-- \C1|Add21~9\ = CARRY((\C1|SQ_X2\(5) & ((!\C1|Add21~7\) # (!\C1|process_0~11_combout\))) # (!\C1|SQ_X2\(5) & (!\C1|process_0~11_combout\ & !\C1|Add21~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~7\,
	combout => \C1|Add21~8_combout\,
	cout => \C1|Add21~9\);

-- Location: LCFF_X26_Y18_N9
\C1|SQ_X2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~8_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(5));

-- Location: LCCOMB_X26_Y18_N6
\C1|Add21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~6_combout\ = (\C1|SQ_X2\(4) & ((\C1|process_0~11_combout\ & (!\C1|Add21~5\)) # (!\C1|process_0~11_combout\ & (\C1|Add21~5\ & VCC)))) # (!\C1|SQ_X2\(4) & ((\C1|process_0~11_combout\ & ((\C1|Add21~5\) # (GND))) # (!\C1|process_0~11_combout\ & 
-- (!\C1|Add21~5\))))
-- \C1|Add21~7\ = CARRY((\C1|SQ_X2\(4) & (\C1|process_0~11_combout\ & !\C1|Add21~5\)) # (!\C1|SQ_X2\(4) & ((\C1|process_0~11_combout\) # (!\C1|Add21~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~5\,
	combout => \C1|Add21~6_combout\,
	cout => \C1|Add21~7\);

-- Location: LCFF_X26_Y18_N7
\C1|SQ_X2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~6_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(4));

-- Location: LCCOMB_X30_Y18_N14
\C1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = \C1|SQ_X2\(4) $ (VCC)
-- \C1|Add2~1\ = CARRY(\C1|SQ_X2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X30_Y18_N16
\C1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(5) & (!\C1|Add2~1\)) # (!\C1|SQ_X2\(5) & ((\C1|Add2~1\) # (GND)))
-- \C1|Add2~3\ = CARRY((!\C1|Add2~1\) # (!\C1|SQ_X2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X30_Y18_N18
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

-- Location: LCCOMB_X30_Y18_N20
\C1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(7) & ((\C1|Add2~5\) # (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add2~5\))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(7)) # (!\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X30_Y18_N22
\C1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add2~7\ & VCC)) # (!\C1|SQ_X2\(8) & (\C1|Add2~7\ $ (GND)))
-- \C1|Add2~9\ = CARRY((!\C1|SQ_X2\(8) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X30_Y18_N24
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

-- Location: LCCOMB_X30_Y18_N26
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

-- Location: LCCOMB_X30_Y18_N28
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

-- Location: LCCOMB_X30_Y18_N12
\C1|LessThan183~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~0_combout\ = (!\C1|Add2~14_combout\ & !\C1|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~14_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan183~0_combout\);

-- Location: LCCOMB_X30_Y18_N6
\C1|LessThan183~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~1_combout\ = (!\C1|Add2~2_combout\ & !\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan183~1_combout\);

-- Location: LCCOMB_X29_Y18_N16
\C1|LessThan183~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~2_combout\ = ((\C1|LessThan183~1_combout\ & ((\C1|SQ_X2\(3)) # (!\C1|Add2~0_combout\)))) # (!\C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|LessThan183~1_combout\,
	combout => \C1|LessThan183~2_combout\);

-- Location: LCCOMB_X29_Y17_N18
\C1|LessThan174~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan174~0_combout\ = (!\C1|Add2~10_combout\ & (\C1|LessThan183~0_combout\ & ((\C1|LessThan183~2_combout\) # (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan183~0_combout\,
	datac => \C1|LessThan183~2_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan174~0_combout\);

-- Location: LCCOMB_X27_Y17_N26
\C1|SQ_X2[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~3_combout\ = (!\KEY~combout\(0) & (((\C1|LessThan174~0_combout\) # (!\C1|Add13~22_combout\)) # (!\C1|Add13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \KEY~combout\(0),
	datac => \C1|Add13~22_combout\,
	datad => \C1|LessThan174~0_combout\,
	combout => \C1|SQ_X2[1]~3_combout\);

-- Location: LCCOMB_X26_Y18_N4
\C1|Add21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~4_combout\ = ((\C1|SQ_X2\(3) $ (\C1|process_0~11_combout\ $ (!\C1|Add21~3\)))) # (GND)
-- \C1|Add21~5\ = CARRY((\C1|SQ_X2\(3) & (!\C1|process_0~11_combout\ & !\C1|Add21~3\)) # (!\C1|SQ_X2\(3) & ((!\C1|Add21~3\) # (!\C1|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~3\,
	combout => \C1|Add21~4_combout\,
	cout => \C1|Add21~5\);

-- Location: LCCOMB_X26_Y18_N26
\C1|SQ_X2[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~19_combout\ = !\C1|Add21~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add21~4_combout\,
	combout => \C1|SQ_X2[3]~19_combout\);

-- Location: LCFF_X26_Y18_N27
\C1|SQ_X2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[3]~19_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(3));

-- Location: LCCOMB_X29_Y17_N28
\C1|LessThan185~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan185~0_combout\ = (\C1|SQ_X2\(3) & ((\C1|SQ_X2\(2)) # (!\C1|SQ_X2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(1),
	datac => \C1|SQ_X2\(3),
	combout => \C1|LessThan185~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\C1|LessThan204~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~0_combout\ = (\C1|Add2~0_combout\ & (\C1|Add2~2_combout\ & \C1|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan204~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
\C1|LessThan205~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~0_combout\ = (!\C1|Add2~0_combout\ & (\C1|SQ_X2\(3) & (!\C1|Add2~2_combout\ & !\C1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan205~0_combout\);

-- Location: LCCOMB_X29_Y17_N4
\C1|dMap~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~152_combout\ = (\C1|Add2~6_combout\ & (((\C1|LessThan205~0_combout\)))) # (!\C1|Add2~6_combout\ & (!\C1|LessThan185~0_combout\ & (\C1|LessThan204~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|LessThan185~0_combout\,
	datac => \C1|LessThan204~0_combout\,
	datad => \C1|LessThan205~0_combout\,
	combout => \C1|dMap~152_combout\);

-- Location: LCCOMB_X29_Y17_N10
\C1|dMap~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~153_combout\ = (!\C1|Add2~8_combout\ & (\C1|dMap~152_combout\ & (\C1|Add2~10_combout\ & \C1|LessThan183~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|dMap~152_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan183~0_combout\,
	combout => \C1|dMap~153_combout\);

-- Location: LCCOMB_X27_Y15_N8
\C1|dMap~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~200_combout\ = (!\C1|Add13~6_combout\ & ((\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~200_combout\);

-- Location: LCCOMB_X26_Y16_N28
\C1|dMap~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~179_combout\ = (\C1|Add13~14_combout\ & (!\C1|Add13~20_combout\ & (\C1|Add13~22_combout\ & !\C1|Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~14_combout\,
	datab => \C1|Add13~20_combout\,
	datac => \C1|Add13~22_combout\,
	datad => \C1|Add13~18_combout\,
	combout => \C1|dMap~179_combout\);

-- Location: LCCOMB_X26_Y16_N30
\C1|dMap~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~180_combout\ = (\C1|Add13~16_combout\ & (\C1|Add13~12_combout\ & \C1|dMap~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~16_combout\,
	datac => \C1|Add13~12_combout\,
	datad => \C1|dMap~179_combout\,
	combout => \C1|dMap~180_combout\);

-- Location: LCCOMB_X26_Y15_N2
\C1|dMap~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~201_combout\ = (\C1|Add13~8_combout\) # ((\C1|Add13~10_combout\) # ((\C1|dMap~200_combout\) # (!\C1|dMap~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|dMap~200_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|dMap~201_combout\);

-- Location: LCCOMB_X27_Y16_N8
\C1|dMap~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~195_combout\ = (\C1|Add13~12_combout\) # ((\C1|Add13~14_combout\) # ((\C1|Add13~16_combout\) # (!\C1|Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|Add13~14_combout\,
	datac => \C1|Add13~18_combout\,
	datad => \C1|Add13~16_combout\,
	combout => \C1|dMap~195_combout\);

-- Location: LCCOMB_X24_Y16_N8
\C1|LessThan176~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan176~0_combout\ = (!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|LessThan176~0_combout\);

-- Location: LCCOMB_X27_Y16_N20
\C1|dMap~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~178_combout\ = (!\C1|SQ_Y2\(3) & !\C1|Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~178_combout\);

-- Location: LCCOMB_X27_Y16_N22
\C1|dMap~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~194_combout\ = (\C1|Add13~10_combout\ & ((\C1|LessThan176~0_combout\) # ((\C1|Add13~8_combout\) # (!\C1|dMap~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|LessThan176~0_combout\,
	datac => \C1|dMap~178_combout\,
	datad => \C1|Add13~8_combout\,
	combout => \C1|dMap~194_combout\);

-- Location: LCCOMB_X27_Y16_N18
\C1|dMap~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~196_combout\ = ((\C1|Add13~20_combout\) # ((\C1|dMap~195_combout\) # (\C1|dMap~194_combout\))) # (!\C1|Add13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~22_combout\,
	datab => \C1|Add13~20_combout\,
	datac => \C1|dMap~195_combout\,
	datad => \C1|dMap~194_combout\,
	combout => \C1|dMap~196_combout\);

-- Location: LCCOMB_X30_Y18_N8
\C1|LessThan179~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan179~0_combout\ = (!\C1|Add2~2_combout\ & !\C1|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~0_combout\,
	combout => \C1|LessThan179~0_combout\);

-- Location: LCCOMB_X30_Y16_N22
\C1|LessThan179~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan179~1_combout\ = (\C1|LessThan179~0_combout\ & ((\C1|SQ_X2\(3)) # ((\C1|SQ_X2\(2) & !\C1|SQ_X2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(3),
	datac => \C1|LessThan179~0_combout\,
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan179~1_combout\);

-- Location: LCCOMB_X30_Y18_N10
\C1|LessThan209~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan209~0_combout\ = (!\C1|Add2~6_combout\ & !\C1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~6_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan209~0_combout\);

-- Location: LCCOMB_X30_Y16_N4
\C1|LessThan182~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan182~0_combout\ = (\C1|LessThan184~0_combout\ & (((!\C1|LessThan179~1_combout\ & \C1|Add2~4_combout\)) # (!\C1|LessThan209~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan184~0_combout\,
	datab => \C1|LessThan179~1_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|LessThan209~0_combout\,
	combout => \C1|LessThan182~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\C1|dMap~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~133_combout\ = (\C1|Add2~12_combout\ & ((\C1|Add2~8_combout\) # (!\C1|LessThan183~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|LessThan183~2_combout\,
	combout => \C1|dMap~133_combout\);

-- Location: LCCOMB_X30_Y16_N2
\C1|dMap~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~134_combout\ = (!\C1|Add2~14_combout\ & (\C1|LessThan182~0_combout\ & ((!\C1|dMap~133_combout\) # (!\C1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan182~0_combout\,
	datad => \C1|dMap~133_combout\,
	combout => \C1|dMap~134_combout\);

-- Location: LCCOMB_X27_Y16_N26
\C1|dMap~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~189_combout\ = (\C1|Add13~8_combout\ & ((\C1|Add13~10_combout\) # ((\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(3))))) # (!\C1|Add13~8_combout\ & (((!\C1|SQ_Y2\(3) & \C1|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~189_combout\);

-- Location: LCCOMB_X26_Y16_N26
\C1|dMap~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~190_combout\ = ((\C1|Add13~8_combout\ & ((\C1|dMap~189_combout\) # (!\C1|Add13~6_combout\))) # (!\C1|Add13~8_combout\ & ((\C1|Add13~6_combout\) # (!\C1|dMap~189_combout\)))) # (!\C1|dMap~180_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~6_combout\,
	datac => \C1|dMap~189_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|dMap~190_combout\);

-- Location: LCCOMB_X27_Y16_N2
\C1|SQ_X2[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~5_combout\ = (\C1|dMap~132_combout\ & (((!\C1|dMap~196_combout\ & \C1|dMap~134_combout\)) # (!\C1|dMap~190_combout\))) # (!\C1|dMap~132_combout\ & (!\C1|dMap~196_combout\ & (\C1|dMap~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~132_combout\,
	datab => \C1|dMap~196_combout\,
	datac => \C1|dMap~134_combout\,
	datad => \C1|dMap~190_combout\,
	combout => \C1|SQ_X2[10]~5_combout\);

-- Location: LCCOMB_X30_Y16_N20
\C1|LessThan184~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~0_combout\ = (\C1|Add2~10_combout\ & \C1|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~10_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan184~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\C1|Add21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~2_combout\ = (\C1|SQ_X2\(2) & ((\C1|process_0~11_combout\ & ((\C1|Add21~1\) # (GND))) # (!\C1|process_0~11_combout\ & (!\C1|Add21~1\)))) # (!\C1|SQ_X2\(2) & ((\C1|process_0~11_combout\ & (!\C1|Add21~1\)) # (!\C1|process_0~11_combout\ & 
-- (\C1|Add21~1\ & VCC))))
-- \C1|Add21~3\ = CARRY((\C1|SQ_X2\(2) & ((\C1|process_0~11_combout\) # (!\C1|Add21~1\))) # (!\C1|SQ_X2\(2) & (\C1|process_0~11_combout\ & !\C1|Add21~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|process_0~11_combout\,
	datad => VCC,
	cin => \C1|Add21~1\,
	combout => \C1|Add21~2_combout\,
	cout => \C1|Add21~3\);

-- Location: LCCOMB_X26_Y18_N24
\C1|SQ_X2[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[2]~20_combout\ = !\C1|Add21~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add21~2_combout\,
	combout => \C1|SQ_X2[2]~20_combout\);

-- Location: LCFF_X26_Y18_N25
\C1|SQ_X2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[2]~20_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(2));

-- Location: LCCOMB_X27_Y18_N24
\C1|LessThan208~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~3_combout\ = (\C1|Add2~0_combout\) # (((\C1|SQ_X2\(1)) # (!\C1|SQ_X2\(2))) # (!\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|SQ_X2\(3),
	datac => \C1|SQ_X2\(1),
	datad => \C1|SQ_X2\(2),
	combout => \C1|LessThan208~3_combout\);

-- Location: LCCOMB_X30_Y16_N10
\C1|LessThan184~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~1_combout\ = (\C1|Add2~6_combout\ & \C1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~6_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan184~1_combout\);

-- Location: LCCOMB_X29_Y18_N28
\C1|LessThan184~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~2_combout\ = (\C1|Add2~12_combout\ & (\C1|LessThan184~1_combout\ & ((\C1|LessThan208~3_combout\) # (!\C1|LessThan183~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan183~1_combout\,
	datab => \C1|LessThan208~3_combout\,
	datac => \C1|Add2~12_combout\,
	datad => \C1|LessThan184~1_combout\,
	combout => \C1|LessThan184~2_combout\);

-- Location: LCCOMB_X29_Y18_N14
\C1|DRAWMAP~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~85_combout\ = (!\C1|Add2~14_combout\ & ((\C1|LessThan184~0_combout\ & (\C1|LessThan185~1_combout\)) # (!\C1|LessThan184~0_combout\ & ((\C1|LessThan184~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan185~1_combout\,
	datab => \C1|Add2~14_combout\,
	datac => \C1|LessThan184~0_combout\,
	datad => \C1|LessThan184~2_combout\,
	combout => \C1|DRAWMAP~85_combout\);

-- Location: LCCOMB_X29_Y17_N2
\C1|LessThan209~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan209~1_combout\ = (\C1|SQ_X2\(2) & \C1|SQ_X2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datac => \C1|SQ_X2\(3),
	combout => \C1|LessThan209~1_combout\);

-- Location: LCCOMB_X29_Y17_N8
\C1|LessThan192~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~0_combout\ = (\C1|Add2~2_combout\ & \C1|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~0_combout\,
	combout => \C1|LessThan192~0_combout\);

-- Location: LCCOMB_X29_Y17_N0
\C1|LessThan192~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~2_combout\ = (\C1|Add2~4_combout\) # ((\C1|LessThan192~0_combout\ & ((\C1|SQ_X2\(1)) # (!\C1|LessThan209~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|LessThan209~1_combout\,
	datac => \C1|LessThan192~0_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan192~2_combout\);

-- Location: LCCOMB_X29_Y18_N24
\C1|LessThan192~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~3_combout\ = ((\C1|Add2~10_combout\ & (\C1|Add2~6_combout\ & \C1|LessThan192~2_combout\))) # (!\C1|LessThan192~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan192~1_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|Add2~6_combout\,
	datad => \C1|LessThan192~2_combout\,
	combout => \C1|LessThan192~3_combout\);

-- Location: LCCOMB_X29_Y17_N30
\C1|LessThan193~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan193~0_combout\ = (((\C1|LessThan209~1_combout\ & \C1|LessThan179~0_combout\)) # (!\C1|Add2~6_combout\)) # (!\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|LessThan209~1_combout\,
	datac => \C1|Add2~6_combout\,
	datad => \C1|LessThan179~0_combout\,
	combout => \C1|LessThan193~0_combout\);

-- Location: LCCOMB_X29_Y17_N12
\C1|DRAWMAP~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~86_combout\ = (\C1|LessThan183~0_combout\ & (((!\C1|Add2~8_combout\ & \C1|LessThan193~0_combout\)) # (!\C1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|LessThan193~0_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan183~0_combout\,
	combout => \C1|DRAWMAP~86_combout\);

-- Location: LCCOMB_X29_Y18_N2
\C1|DRAWMAP~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~87_combout\ = (\C1|DRAWMAP~84_combout\) # ((\C1|DRAWMAP~85_combout\) # ((\C1|LessThan192~3_combout\ & \C1|DRAWMAP~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~84_combout\,
	datab => \C1|DRAWMAP~85_combout\,
	datac => \C1|LessThan192~3_combout\,
	datad => \C1|DRAWMAP~86_combout\,
	combout => \C1|DRAWMAP~87_combout\);

-- Location: LCCOMB_X27_Y15_N20
\C1|LessThan217~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~0_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan217~0_combout\);

-- Location: LCCOMB_X26_Y16_N0
\C1|LessThan216~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~0_combout\ = (!\C1|Add13~12_combout\ & (!\C1|Add13~14_combout\ & !\C1|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~12_combout\,
	datac => \C1|Add13~14_combout\,
	datad => \C1|Add13~16_combout\,
	combout => \C1|LessThan216~0_combout\);

-- Location: LCCOMB_X27_Y15_N10
\C1|LessThan217~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~1_combout\ = (\C1|Add13~8_combout\) # ((\C1|Add13~10_combout\) # ((\C1|LessThan217~0_combout\) # (!\C1|LessThan216~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|LessThan217~0_combout\,
	datad => \C1|LessThan216~0_combout\,
	combout => \C1|LessThan217~1_combout\);

-- Location: LCCOMB_X27_Y16_N14
\C1|dMap~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~185_combout\ = (\C1|Add13~12_combout\) # ((\C1|Add13~6_combout\ & ((\C1|SQ_Y2\(3)))) # (!\C1|Add13~6_combout\ & (\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~12_combout\,
	combout => \C1|dMap~185_combout\);

-- Location: LCCOMB_X27_Y16_N24
\C1|dMap~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~186_combout\ = (\C1|Add13~14_combout\ & \C1|Add13~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~14_combout\,
	datad => \C1|Add13~16_combout\,
	combout => \C1|dMap~186_combout\);

-- Location: LCCOMB_X27_Y16_N10
\C1|dMap~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~187_combout\ = (!\C1|Add13~18_combout\ & (\C1|Add13~22_combout\ & (\C1|dMap~186_combout\ & !\C1|Add13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~18_combout\,
	datab => \C1|Add13~22_combout\,
	datac => \C1|dMap~186_combout\,
	datad => \C1|Add13~20_combout\,
	combout => \C1|dMap~187_combout\);

-- Location: LCCOMB_X27_Y16_N12
\C1|dMap~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~188_combout\ = (((\C1|dMap~185_combout\) # (!\C1|dMap~187_combout\)) # (!\C1|Add13~10_combout\)) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|dMap~185_combout\,
	datad => \C1|dMap~187_combout\,
	combout => \C1|dMap~188_combout\);

-- Location: LCCOMB_X30_Y18_N30
\C1|LessThan211~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan211~0_combout\ = ((\C1|LessThan209~0_combout\ & ((!\C1|Add2~4_combout\) # (!\C1|Add2~2_combout\)))) # (!\C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan209~0_combout\,
	combout => \C1|LessThan211~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\C1|LessThan214~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~0_combout\ = (!\C1|SQ_X2\(3) & (\C1|Add2~0_combout\ & ((\C1|SQ_X2\(1)) # (!\C1|SQ_X2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X2\(2),
	datac => \C1|Add2~0_combout\,
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan214~0_combout\);

-- Location: LCCOMB_X30_Y18_N2
\C1|LessThan214~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan214~1_combout\ = (\C1|Add2~6_combout\ & (\C1|Add2~8_combout\ & ((\C1|LessThan214~0_combout\) # (!\C1|LessThan183~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|LessThan214~0_combout\,
	datad => \C1|LessThan183~1_combout\,
	combout => \C1|LessThan214~1_combout\);

-- Location: LCCOMB_X30_Y18_N0
\C1|LessThan215~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan215~0_combout\ = (\C1|LessThan209~0_combout\ & (((!\C1|LessThan187~0_combout\ & \C1|LessThan179~0_combout\)) # (!\C1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan187~0_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|LessThan179~0_combout\,
	datad => \C1|LessThan209~0_combout\,
	combout => \C1|LessThan215~0_combout\);

-- Location: LCCOMB_X29_Y19_N18
\C1|DRAWMAP~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~77_combout\ = (\C1|LessThan183~0_combout\ & ((\C1|Add2~10_combout\ & ((\C1|LessThan215~0_combout\))) # (!\C1|Add2~10_combout\ & (\C1|LessThan214~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan214~1_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan215~0_combout\,
	combout => \C1|DRAWMAP~77_combout\);

-- Location: LCCOMB_X29_Y19_N16
\C1|DRAWMAP~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~78_combout\ = (\C1|DRAWMAP~77_combout\) # ((\C1|LessThan210~0_combout\ & (\C1|LessThan183~0_combout\ & \C1|LessThan211~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan210~0_combout\,
	datab => \C1|LessThan183~0_combout\,
	datac => \C1|LessThan211~0_combout\,
	datad => \C1|DRAWMAP~77_combout\,
	combout => \C1|DRAWMAP~78_combout\);

-- Location: LCCOMB_X27_Y16_N0
\C1|SQ_X2[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~4_combout\ = (\C1|Add13~18_combout\ & ((\C1|LessThan217~1_combout\) # ((!\C1|dMap~188_combout\ & \C1|DRAWMAP~78_combout\)))) # (!\C1|Add13~18_combout\ & (((!\C1|dMap~188_combout\ & \C1|DRAWMAP~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~18_combout\,
	datab => \C1|LessThan217~1_combout\,
	datac => \C1|dMap~188_combout\,
	datad => \C1|DRAWMAP~78_combout\,
	combout => \C1|SQ_X2[10]~4_combout\);

-- Location: LCCOMB_X27_Y16_N28
\C1|SQ_X2[10]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~6_combout\ = (\C1|SQ_X2[10]~5_combout\) # ((\C1|SQ_X2[10]~4_combout\) # ((!\C1|dMap~181_combout\ & \C1|DRAWMAP~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~181_combout\,
	datab => \C1|SQ_X2[10]~5_combout\,
	datac => \C1|DRAWMAP~87_combout\,
	datad => \C1|SQ_X2[10]~4_combout\,
	combout => \C1|SQ_X2[10]~6_combout\);

-- Location: LCCOMB_X27_Y16_N30
\C1|SQ_X2[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~8_combout\ = (\C1|SQ_X2[1]~7_combout\) # ((!\C1|SQ_X2[10]~6_combout\ & ((\C1|dMap~201_combout\) # (!\C1|dMap~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2[1]~7_combout\,
	datab => \C1|dMap~153_combout\,
	datac => \C1|dMap~201_combout\,
	datad => \C1|SQ_X2[10]~6_combout\,
	combout => \C1|SQ_X2[1]~8_combout\);

-- Location: LCCOMB_X25_Y17_N28
\C1|LessThan173~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~0_combout\ = (\C1|SQ_Y2\(7) & (!\C1|SQ_Y2\(6) & (\C1|SQ_Y2\(8) & \C1|SQ_Y2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|SQ_Y2\(6),
	datac => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(9),
	combout => \C1|LessThan173~0_combout\);

-- Location: LCCOMB_X26_Y17_N22
\C1|LessThan175~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan175~1_combout\ = (\C1|SQ_Y2\(10) & ((\C1|LessThan175~0_combout\) # ((\C1|SQ_Y2\(5)) # (!\C1|LessThan173~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan175~0_combout\,
	datab => \C1|LessThan173~0_combout\,
	datac => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2\(5),
	combout => \C1|LessThan175~1_combout\);

-- Location: LCCOMB_X24_Y17_N0
\C1|dMap~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~176_combout\ = (\C1|SQ_Y2\(5)) # ((!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(2)) # (\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(4),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~176_combout\);

-- Location: LCCOMB_X24_Y16_N22
\C1|Add17~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~13_combout\ = ((\C1|SQ_Y2\(7) $ (\C1|Add17~0_combout\ $ (!\C1|Add17~12\)))) # (GND)
-- \C1|Add17~14\ = CARRY((\C1|SQ_Y2\(7) & (!\C1|Add17~0_combout\ & !\C1|Add17~12\)) # (!\C1|SQ_Y2\(7) & ((!\C1|Add17~12\) # (!\C1|Add17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|Add17~0_combout\,
	datad => VCC,
	cin => \C1|Add17~12\,
	combout => \C1|Add17~13_combout\,
	cout => \C1|Add17~14\);

-- Location: LCCOMB_X25_Y16_N6
\C1|SQ_Y2[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~7_combout\ = !\C1|Add17~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~13_combout\,
	combout => \C1|SQ_Y2[7]~7_combout\);

-- Location: LCFF_X25_Y16_N7
\C1|SQ_Y2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[7]~7_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X24_Y17_N28
\C1|dMap~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~160_combout\ = (!\C1|SQ_Y2\(10) & (!\C1|SQ_Y2\(9) & (!\C1|SQ_Y2\(8) & !\C1|SQ_Y2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(9),
	datac => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~160_combout\);

-- Location: LCCOMB_X24_Y17_N14
\C1|dMap~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~177_combout\ = (\C1|dMap~176_combout\) # ((\C1|SQ_Y2\(6)) # (!\C1|dMap~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~176_combout\,
	datac => \C1|SQ_Y2\(6),
	datad => \C1|dMap~160_combout\,
	combout => \C1|dMap~177_combout\);

-- Location: LCCOMB_X29_Y18_N8
\C1|DRAWMAP~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~140_combout\ = (\C1|dMap~164_combout\ & (!\C1|dMap~177_combout\ & ((\C1|dMap~153_combout\)))) # (!\C1|dMap~164_combout\ & ((\C1|DRAWMAP~78_combout\) # ((!\C1|dMap~177_combout\ & \C1|dMap~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~164_combout\,
	datab => \C1|dMap~177_combout\,
	datac => \C1|DRAWMAP~78_combout\,
	datad => \C1|dMap~153_combout\,
	combout => \C1|DRAWMAP~140_combout\);

-- Location: LCCOMB_X27_Y18_N22
\C1|DRAWMAP~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~141_combout\ = (\C1|LessThan175~1_combout\) # ((\C1|DRAWMAP~140_combout\) # ((!\C1|dMap~161_combout\ & \C1|DRAWMAP~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~161_combout\,
	datab => \C1|LessThan175~1_combout\,
	datac => \C1|DRAWMAP~140_combout\,
	datad => \C1|DRAWMAP~87_combout\,
	combout => \C1|DRAWMAP~141_combout\);

-- Location: LCCOMB_X25_Y17_N14
\C1|dMap~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~172_combout\ = (\C1|SQ_Y2\(4) & (!\C1|SQ_Y2\(6) & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(3))))) # (!\C1|SQ_Y2\(4) & (\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|SQ_Y2\(2),
	combout => \C1|dMap~172_combout\);

-- Location: LCCOMB_X25_Y17_N20
\C1|dMap~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~173_combout\ = ((\C1|SQ_Y2\(6) $ (!\C1|SQ_Y2\(5))) # (!\C1|dMap~160_combout\)) # (!\C1|dMap~172_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~172_combout\,
	datad => \C1|dMap~160_combout\,
	combout => \C1|dMap~173_combout\);

-- Location: LCCOMB_X29_Y17_N26
\C1|LessThan197~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan197~0_combout\ = (!\C1|Add2~8_combout\ & (((!\C1|LessThan192~0_combout\ & !\C1|Add2~4_combout\)) # (!\C1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan192~0_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan197~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\C1|LessThan196~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan196~0_combout\ = (!\C1|SQ_X2\(2) & (\C1|SQ_X2\(1) & (!\C1|SQ_X2\(3) & \C1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(1),
	datac => \C1|SQ_X2\(3),
	datad => \C1|Add2~0_combout\,
	combout => \C1|LessThan196~0_combout\);

-- Location: LCCOMB_X29_Y17_N14
\C1|LessThan196~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan196~1_combout\ = (\C1|Add2~8_combout\) # ((\C1|Add2~6_combout\ & ((\C1|LessThan196~0_combout\) # (!\C1|LessThan183~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan196~0_combout\,
	datad => \C1|LessThan183~1_combout\,
	combout => \C1|LessThan196~1_combout\);

-- Location: LCCOMB_X29_Y17_N16
\C1|dMap~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~132_combout\ = (\C1|Add2~10_combout\ & (\C1|LessThan197~0_combout\ & (\C1|LessThan196~1_combout\ & \C1|LessThan183~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan197~0_combout\,
	datac => \C1|LessThan196~1_combout\,
	datad => \C1|LessThan183~0_combout\,
	combout => \C1|dMap~132_combout\);

-- Location: LCCOMB_X26_Y17_N14
\C1|DRAWMAP~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~137_combout\ = (\C1|DRAWMAP~130_combout\ & ((\C1|dMap~134_combout\) # ((!\C1|dMap~173_combout\ & \C1|dMap~132_combout\)))) # (!\C1|DRAWMAP~130_combout\ & (!\C1|dMap~173_combout\ & (\C1|dMap~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~130_combout\,
	datab => \C1|dMap~173_combout\,
	datac => \C1|dMap~132_combout\,
	datad => \C1|dMap~134_combout\,
	combout => \C1|DRAWMAP~137_combout\);

-- Location: LCCOMB_X29_Y18_N0
\C1|LessThan208~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~2_combout\ = ((\C1|Add2~2_combout\ & (\C1|LessThan208~3_combout\ & \C1|Add2~4_combout\))) # (!\C1|LessThan209~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|LessThan209~0_combout\,
	datac => \C1|LessThan208~3_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan208~2_combout\);

-- Location: LCCOMB_X29_Y15_N22
\C1|DRAWMAP~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~69_combout\ = (\C1|LessThan209~2_combout\ & (((\C1|Add2~10_combout\ & \C1|LessThan208~2_combout\)) # (!\C1|LessThan183~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan209~2_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan208~2_combout\,
	combout => \C1|DRAWMAP~69_combout\);

-- Location: LCCOMB_X25_Y17_N2
\C1|dMap~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~174_combout\ = ((\C1|SQ_Y2\(4) & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(3))))) # (!\C1|SQ_Y2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(5),
	combout => \C1|dMap~174_combout\);

-- Location: LCCOMB_X25_Y17_N0
\C1|dMap~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~175_combout\ = ((\C1|SQ_Y2\(6)) # (\C1|dMap~174_combout\)) # (!\C1|dMap~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~160_combout\,
	datac => \C1|SQ_Y2\(6),
	datad => \C1|dMap~174_combout\,
	combout => \C1|dMap~175_combout\);

-- Location: LCCOMB_X30_Y16_N12
\C1|LessThan200~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~0_combout\ = (\C1|Add2~8_combout\) # ((\C1|Add2~6_combout\ & ((\C1|Add2~4_combout\) # (!\C1|LessThan179~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|LessThan179~1_combout\,
	combout => \C1|LessThan200~0_combout\);

-- Location: LCCOMB_X29_Y15_N28
\C1|DRAWMAP~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~68_combout\ = (\C1|Add2~10_combout\ & (\C1|LessThan201~1_combout\ & ((\C1|LessThan200~0_combout\) # (!\C1|LessThan183~0_combout\)))) # (!\C1|Add2~10_combout\ & (((!\C1|LessThan183~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan201~1_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan200~0_combout\,
	combout => \C1|DRAWMAP~68_combout\);

-- Location: LCCOMB_X29_Y15_N8
\C1|DRAWMAP~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~138_combout\ = (\C1|dMap~168_combout\ & (((!\C1|dMap~175_combout\ & \C1|DRAWMAP~68_combout\)))) # (!\C1|dMap~168_combout\ & ((\C1|DRAWMAP~69_combout\) # ((!\C1|dMap~175_combout\ & \C1|DRAWMAP~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~168_combout\,
	datab => \C1|DRAWMAP~69_combout\,
	datac => \C1|dMap~175_combout\,
	datad => \C1|DRAWMAP~68_combout\,
	combout => \C1|DRAWMAP~138_combout\);

-- Location: LCCOMB_X24_Y17_N2
\C1|LessThan191~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan191~0_combout\ = (!\C1|SQ_Y2\(5) & ((\C1|SQ_Y2\(2)) # ((\C1|SQ_Y2\(3)) # (!\C1|SQ_Y2\(4)))))

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
	combout => \C1|LessThan191~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\C1|dMap~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~161_combout\ = (\C1|dMap~159_combout\) # (((!\C1|LessThan191~0_combout\ & \C1|SQ_Y2\(6))) # (!\C1|dMap~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~159_combout\,
	datab => \C1|LessThan191~0_combout\,
	datac => \C1|SQ_Y2\(6),
	datad => \C1|dMap~160_combout\,
	combout => \C1|dMap~161_combout\);

-- Location: LCCOMB_X30_Y16_N0
\C1|LessThan178~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan178~0_combout\ = (\C1|Add2~4_combout\) # ((\C1|Add2~2_combout\ & ((\C1|Add2~0_combout\) # (!\C1|LessThan209~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|Add2~2_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|LessThan209~1_combout\,
	combout => \C1|LessThan178~0_combout\);

-- Location: LCCOMB_X30_Y16_N14
\C1|DRAWMAP~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~71_combout\ = (!\C1|Add2~10_combout\ & (((\C1|LessThan184~1_combout\ & \C1|LessThan178~0_combout\)) # (!\C1|LessThan183~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan184~1_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan178~0_combout\,
	combout => \C1|DRAWMAP~71_combout\);

-- Location: LCCOMB_X30_Y16_N16
\C1|DRAWMAP~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~72_combout\ = (\C1|DRAWMAP~71_combout\ & (((\C1|LessThan179~1_combout\) # (!\C1|Add2~4_combout\)) # (!\C1|LessThan184~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan184~1_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|DRAWMAP~71_combout\,
	datad => \C1|LessThan179~1_combout\,
	combout => \C1|DRAWMAP~72_combout\);

-- Location: LCCOMB_X30_Y16_N6
\C1|LessThan188~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~0_combout\ = (\C1|Add2~4_combout\ & (\C1|Add2~6_combout\ & ((!\C1|LessThan179~0_combout\) # (!\C1|LessThan185~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan185~0_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|LessThan179~0_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan188~0_combout\);

-- Location: LCCOMB_X30_Y16_N28
\C1|LessThan188~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~1_combout\ = ((\C1|Add2~10_combout\ & ((\C1|Add2~8_combout\) # (\C1|LessThan188~0_combout\)))) # (!\C1|LessThan183~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan188~0_combout\,
	combout => \C1|LessThan188~1_combout\);

-- Location: LCCOMB_X30_Y16_N18
\C1|DRAWMAP~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~73_combout\ = (\C1|LessThan188~1_combout\ & (((!\C1|LessThan204~0_combout\) # (!\C1|Add2~10_combout\)) # (!\C1|LessThan184~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan184~1_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan204~0_combout\,
	datad => \C1|LessThan188~1_combout\,
	combout => \C1|DRAWMAP~73_combout\);

-- Location: LCCOMB_X29_Y15_N26
\C1|DRAWMAP~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~139_combout\ = (\C1|dMap~171_combout\ & (!\C1|dMap~161_combout\ & ((\C1|DRAWMAP~73_combout\)))) # (!\C1|dMap~171_combout\ & ((\C1|DRAWMAP~72_combout\) # ((!\C1|dMap~161_combout\ & \C1|DRAWMAP~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~171_combout\,
	datab => \C1|dMap~161_combout\,
	datac => \C1|DRAWMAP~72_combout\,
	datad => \C1|DRAWMAP~73_combout\,
	combout => \C1|DRAWMAP~139_combout\);

-- Location: LCCOMB_X29_Y15_N0
\C1|DRAWMAP~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~146_combout\ = (!\C1|Add2~12_combout\ & (!\C1|Add2~14_combout\ & ((\C1|DRAWMAP~138_combout\) # (\C1|DRAWMAP~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|Add2~14_combout\,
	datac => \C1|DRAWMAP~138_combout\,
	datad => \C1|DRAWMAP~139_combout\,
	combout => \C1|DRAWMAP~146_combout\);

-- Location: LCCOMB_X27_Y18_N20
\C1|SQ_X2[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~12_combout\ = (!\C1|LessThan173~2_combout\ & ((\C1|DRAWMAP~141_combout\) # ((\C1|DRAWMAP~137_combout\) # (\C1|DRAWMAP~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan173~2_combout\,
	datab => \C1|DRAWMAP~141_combout\,
	datac => \C1|DRAWMAP~137_combout\,
	datad => \C1|DRAWMAP~146_combout\,
	combout => \C1|SQ_X2[1]~12_combout\);

-- Location: LCCOMB_X27_Y16_N4
\C1|dMap~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~191_combout\ = (\C1|Add13~10_combout\) # ((\C1|Add13~6_combout\ & ((\C1|SQ_Y2\(3)) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~191_combout\);

-- Location: LCCOMB_X27_Y16_N16
\C1|dMap~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~193_combout\ = (\C1|dMap~192_combout\) # (((\C1|dMap~191_combout\) # (!\C1|dMap~179_combout\)) # (!\C1|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~192_combout\,
	datab => \C1|Add13~16_combout\,
	datac => \C1|dMap~191_combout\,
	datad => \C1|dMap~179_combout\,
	combout => \C1|dMap~193_combout\);

-- Location: LCCOMB_X29_Y15_N4
\C1|SQ_X2[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~10_combout\ = (\C1|dMap~199_combout\ & (((!\C1|dMap~193_combout\ & \C1|DRAWMAP~68_combout\)))) # (!\C1|dMap~199_combout\ & ((\C1|DRAWMAP~69_combout\) # ((!\C1|dMap~193_combout\ & \C1|DRAWMAP~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~199_combout\,
	datab => \C1|DRAWMAP~69_combout\,
	datac => \C1|dMap~193_combout\,
	datad => \C1|DRAWMAP~68_combout\,
	combout => \C1|SQ_X2[10]~10_combout\);

-- Location: LCCOMB_X26_Y15_N0
\C1|dMap~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~181_combout\ = (((\C1|dMap~178_combout\) # (!\C1|dMap~180_combout\)) # (!\C1|Add13~10_combout\)) # (!\C1|LessThan223~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan223~1_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|dMap~178_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|dMap~181_combout\);

-- Location: LCCOMB_X25_Y15_N22
\C1|dMap~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~182_combout\ = (\C1|Add13~6_combout\ & (\C1|Add13~8_combout\ & ((\C1|SQ_Y2\(3)) # (\C1|LessThan176~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|Add13~6_combout\,
	datac => \C1|LessThan176~0_combout\,
	datad => \C1|Add13~8_combout\,
	combout => \C1|dMap~182_combout\);

-- Location: LCCOMB_X26_Y15_N8
\C1|dMap~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~183_combout\ = (!\C1|Add13~20_combout\ & (\C1|LessThan216~0_combout\ & ((\C1|Add13~10_combout\) # (\C1|dMap~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|LessThan216~0_combout\,
	datad => \C1|dMap~182_combout\,
	combout => \C1|dMap~183_combout\);

-- Location: LCCOMB_X26_Y15_N18
\C1|dMap~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~184_combout\ = ((\C1|Add13~18_combout\) # ((!\C1|Add13~22_combout\) # (!\C1|dMap~183_combout\))) # (!\C1|LessThan223~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan223~1_combout\,
	datab => \C1|Add13~18_combout\,
	datac => \C1|dMap~183_combout\,
	datad => \C1|Add13~22_combout\,
	combout => \C1|dMap~184_combout\);

-- Location: LCCOMB_X29_Y15_N30
\C1|SQ_X2[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~9_combout\ = (\C1|DRAWMAP~73_combout\ & (((\C1|DRAWMAP~72_combout\ & !\C1|dMap~184_combout\)) # (!\C1|dMap~181_combout\))) # (!\C1|DRAWMAP~73_combout\ & (\C1|DRAWMAP~72_combout\ & ((!\C1|dMap~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~73_combout\,
	datab => \C1|DRAWMAP~72_combout\,
	datac => \C1|dMap~181_combout\,
	datad => \C1|dMap~184_combout\,
	combout => \C1|SQ_X2[10]~9_combout\);

-- Location: LCCOMB_X29_Y15_N10
\C1|SQ_X2[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~11_combout\ = (\C1|SQ_X2[1]~7_combout\) # (((!\C1|SQ_X2[10]~10_combout\ & !\C1|SQ_X2[10]~9_combout\)) # (!\C1|LessThan183~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2[1]~7_combout\,
	datab => \C1|LessThan183~0_combout\,
	datac => \C1|SQ_X2[10]~10_combout\,
	datad => \C1|SQ_X2[10]~9_combout\,
	combout => \C1|SQ_X2[1]~11_combout\);

-- Location: LCCOMB_X27_Y18_N30
\C1|SQ_X2[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~13_combout\ = (\C1|LessThan174~0_combout\) # ((\C1|SQ_X2[1]~8_combout\ & (!\C1|SQ_X2[1]~12_combout\ & \C1|SQ_X2[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan174~0_combout\,
	datab => \C1|SQ_X2[1]~8_combout\,
	datac => \C1|SQ_X2[1]~12_combout\,
	datad => \C1|SQ_X2[1]~11_combout\,
	combout => \C1|SQ_X2[1]~13_combout\);

-- Location: LCCOMB_X26_Y18_N22
\C1|SQ_X2[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~14_combout\ = (\C1|SQ_X2[1]~15_combout\ & (((\C1|SQ_X2[1]~3_combout\ & \C1|SQ_X2[1]~13_combout\)) # (!\C1|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2[1]~15_combout\,
	datab => \C1|process_0~11_combout\,
	datac => \C1|SQ_X2[1]~3_combout\,
	datad => \C1|SQ_X2[1]~13_combout\,
	combout => \C1|SQ_X2[1]~14_combout\);

-- Location: LCFF_X26_Y18_N1
\C1|SQ_X2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~0_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(1));

-- Location: LCCOMB_X26_Y18_N20
\C1|SQ_X2[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[8]~16_combout\ = !\C1|Add21~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add21~14_combout\,
	combout => \C1|SQ_X2[8]~16_combout\);

-- Location: LCFF_X26_Y18_N21
\C1|SQ_X2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[8]~16_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(8));

-- Location: LCCOMB_X25_Y18_N0
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

-- Location: LCCOMB_X25_Y18_N2
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

-- Location: LCCOMB_X25_Y18_N4
\C1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = (\C1|SQ_X2\(3) & (\C1|Add9~3\ $ (GND))) # (!\C1|SQ_X2\(3) & ((GND) # (!\C1|Add9~3\)))
-- \C1|Add9~5\ = CARRY((!\C1|Add9~3\) # (!\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X25_Y18_N6
\C1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (\C1|SQ_X2\(4) & (\C1|Add9~5\ & VCC)) # (!\C1|SQ_X2\(4) & (!\C1|Add9~5\))
-- \C1|Add9~7\ = CARRY((!\C1|SQ_X2\(4) & !\C1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: LCCOMB_X25_Y18_N8
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

-- Location: LCCOMB_X25_Y18_N10
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

-- Location: LCCOMB_X25_Y18_N12
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

-- Location: LCCOMB_X25_Y18_N14
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

-- Location: LCCOMB_X24_Y15_N28
\C1|LessThan236~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan236~0_combout\ = (!\C1|Add9~8_combout\ & !\C1|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan236~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\C1|LessThan240~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan240~0_combout\ = (!\C1|Add9~4_combout\ & ((!\C1|Add9~0_combout\) # (!\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan240~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\C1|LessThan243~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan243~0_combout\ = (\C1|Add9~12_combout\ & (\C1|Add9~10_combout\ & ((!\C1|LessThan240~0_combout\) # (!\C1|LessThan236~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|LessThan236~0_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan240~0_combout\,
	combout => \C1|LessThan243~0_combout\);

-- Location: LCCOMB_X25_Y18_N28
\C1|LessThan244~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan244~0_combout\ = (((!\C1|Add9~12_combout\) # (!\C1|Add9~10_combout\)) # (!\C1|Add9~8_combout\)) # (!\C1|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan244~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\C1|DRAWMAP~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~125_combout\ = (!\C1|dMap~161_combout\ & ((\C1|LessThan244~0_combout\) # (!\C1|Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~14_combout\,
	datac => \C1|dMap~161_combout\,
	datad => \C1|LessThan244~0_combout\,
	combout => \C1|DRAWMAP~125_combout\);

-- Location: LCCOMB_X25_Y15_N30
\C1|DRAWMAP~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~126_combout\ = (\C1|DRAWMAP~98_combout\ & (\C1|DRAWMAP~125_combout\ & ((\C1|Add9~14_combout\) # (\C1|LessThan243~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~98_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|LessThan243~0_combout\,
	datad => \C1|DRAWMAP~125_combout\,
	combout => \C1|DRAWMAP~126_combout\);

-- Location: LCCOMB_X25_Y18_N16
\C1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~16_combout\ = (\C1|SQ_X2\(9) & ((GND) # (!\C1|Add9~15\))) # (!\C1|SQ_X2\(9) & (\C1|Add9~15\ $ (GND)))
-- \C1|Add9~17\ = CARRY((\C1|SQ_X2\(9)) # (!\C1|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add9~15\,
	combout => \C1|Add9~16_combout\,
	cout => \C1|Add9~17\);

-- Location: LCCOMB_X25_Y18_N18
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

-- Location: LCCOMB_X24_Y15_N24
\C1|LessThan255~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan255~0_combout\ = (\C1|Add9~18_combout\ & \C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~18_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|LessThan255~0_combout\);

-- Location: LCCOMB_X24_Y15_N22
\C1|LessThan257~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~0_combout\ = (\C1|Add9~4_combout\ & ((\C1|Add9~0_combout\) # (\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~0_combout\,
	datac => \C1|Add9~2_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan257~0_combout\);

-- Location: LCCOMB_X27_Y15_N16
\C1|DRAWMAP~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~94_combout\ = (!\C1|Add9~8_combout\ & !\C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~10_combout\,
	combout => \C1|DRAWMAP~94_combout\);

-- Location: LCCOMB_X24_Y18_N12
\C1|DRAWMAP~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~89_combout\ = (\C1|Add9~14_combout\ & (\C1|Add9~12_combout\ & \C1|Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~89_combout\);

-- Location: LCCOMB_X25_Y15_N14
\C1|LessThan257~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~1_combout\ = (\C1|DRAWMAP~89_combout\ & (((\C1|Add9~6_combout\ & \C1|LessThan257~0_combout\)) # (!\C1|DRAWMAP~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|LessThan257~0_combout\,
	datac => \C1|DRAWMAP~94_combout\,
	datad => \C1|DRAWMAP~89_combout\,
	combout => \C1|LessThan257~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\C1|LessThan256~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~1_combout\ = (\C1|Add9~20_combout\ & ((\C1|Add9~16_combout\) # (\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|LessThan256~1_combout\);

-- Location: LCCOMB_X24_Y15_N12
\C1|LessThan247~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~0_combout\ = (\C1|Add9~2_combout\ & \C1|Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~2_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan247~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\C1|LessThan258~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan258~0_combout\ = ((!\C1|Add9~6_combout\ & (!\C1|Add9~8_combout\ & !\C1|LessThan247~0_combout\))) # (!\C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan247~0_combout\,
	combout => \C1|LessThan258~0_combout\);

-- Location: LCCOMB_X25_Y15_N2
\C1|LessThan258~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan258~1_combout\ = ((\C1|LessThan256~0_combout\ & (!\C1|Add9~18_combout\ & \C1|LessThan258~0_combout\))) # (!\C1|LessThan256~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan256~0_combout\,
	datab => \C1|Add9~18_combout\,
	datac => \C1|LessThan256~1_combout\,
	datad => \C1|LessThan258~0_combout\,
	combout => \C1|LessThan258~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\C1|dMap~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~154_combout\ = (\C1|LessThan258~1_combout\ & ((\C1|DRAWMAP~93_combout\) # ((\C1|LessThan255~0_combout\) # (\C1|LessThan257~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~93_combout\,
	datab => \C1|LessThan255~0_combout\,
	datac => \C1|LessThan257~1_combout\,
	datad => \C1|LessThan258~1_combout\,
	combout => \C1|dMap~154_combout\);

-- Location: LCCOMB_X25_Y15_N0
\C1|DRAWMAP~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~127_combout\ = (\C1|DRAWMAP~126_combout\) # ((\C1|LessThan175~1_combout\) # ((!\C1|dMap~164_combout\ & \C1|dMap~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~164_combout\,
	datab => \C1|DRAWMAP~126_combout\,
	datac => \C1|LessThan175~1_combout\,
	datad => \C1|dMap~154_combout\,
	combout => \C1|DRAWMAP~127_combout\);

-- Location: LCCOMB_X24_Y18_N30
\C1|LessThan256~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~2_combout\ = (!\C1|DRAWMAP~95_combout\ & (!\C1|Add9~12_combout\ & (!\C1|Add9~14_combout\ & !\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~95_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|LessThan256~2_combout\);

-- Location: LCCOMB_X25_Y15_N8
\C1|DRAWMAP~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~93_combout\ = (\C1|Add9~16_combout\ & \C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~93_combout\);

-- Location: LCCOMB_X24_Y15_N2
\C1|LessThan255~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan255~1_combout\ = (\C1|Add9~10_combout\ & (((\C1|Add9~0_combout\ & \C1|LessThan247~0_combout\)) # (!\C1|LessThan236~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~0_combout\,
	datab => \C1|LessThan236~0_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan247~0_combout\,
	combout => \C1|LessThan255~1_combout\);

-- Location: LCCOMB_X25_Y15_N10
\C1|LessThan255~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan255~2_combout\ = (\C1|LessThan255~0_combout\) # ((\C1|DRAWMAP~93_combout\ & ((\C1|LessThan255~1_combout\) # (!\C1|LessThan256~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan256~0_combout\,
	datab => \C1|LessThan255~0_combout\,
	datac => \C1|DRAWMAP~93_combout\,
	datad => \C1|LessThan255~1_combout\,
	combout => \C1|LessThan255~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
\C1|dMap~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~165_combout\ = (!\C1|dMap~164_combout\ & (\C1|LessThan255~2_combout\ & ((\C1|LessThan256~2_combout\) # (!\C1|LessThan256~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~164_combout\,
	datab => \C1|LessThan256~2_combout\,
	datac => \C1|LessThan256~1_combout\,
	datad => \C1|LessThan255~2_combout\,
	combout => \C1|dMap~165_combout\);

-- Location: LCCOMB_X25_Y18_N30
\C1|DRAWMAP~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~117_combout\ = (\C1|Add9~6_combout\ & (!\C1|Add9~2_combout\ & (!\C1|Add9~4_combout\))) # (!\C1|Add9~6_combout\ & ((\C1|Add9~2_combout\) # ((\C1|Add9~4_combout\) # (\C1|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~2_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~0_combout\,
	combout => \C1|DRAWMAP~117_combout\);

-- Location: LCCOMB_X25_Y18_N24
\C1|DRAWMAP~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~116_combout\ = (\C1|Add9~20_combout\ & (!\C1|Add9~14_combout\ & (\C1|Add9~16_combout\ & !\C1|Add9~18_combout\)))

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
	combout => \C1|DRAWMAP~116_combout\);

-- Location: LCCOMB_X24_Y18_N22
\C1|DRAWMAP~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~118_combout\ = (\C1|DRAWMAP~95_combout\ & (\C1|DRAWMAP~117_combout\ & (!\C1|Add9~12_combout\ & \C1|DRAWMAP~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~95_combout\,
	datab => \C1|DRAWMAP~117_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|DRAWMAP~116_combout\,
	combout => \C1|DRAWMAP~118_combout\);

-- Location: LCCOMB_X24_Y17_N16
\C1|dMap~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~169_combout\ = (\C1|SQ_Y2\(10)) # (((!\C1|SQ_Y2\(7)) # (!\C1|SQ_Y2\(8))) # (!\C1|SQ_Y2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(9),
	datac => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~169_combout\);

-- Location: LCCOMB_X24_Y17_N22
\C1|dMap~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~171_combout\ = (\C1|dMap~169_combout\) # ((\C1|SQ_Y2\(6) & ((!\C1|LessThan191~0_combout\))) # (!\C1|SQ_Y2\(6) & (\C1|dMap~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~170_combout\,
	datab => \C1|SQ_Y2\(6),
	datac => \C1|dMap~169_combout\,
	datad => \C1|LessThan191~0_combout\,
	combout => \C1|dMap~171_combout\);

-- Location: LCCOMB_X24_Y18_N26
\C1|DRAWMAP~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~91_combout\ = (\C1|Add9~8_combout\ & ((\C1|Add9~2_combout\) # ((\C1|Add9~6_combout\) # (\C1|Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|DRAWMAP~91_combout\);

-- Location: LCCOMB_X24_Y15_N4
\C1|DRAWMAP~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~92_combout\ = (\C1|Add9~10_combout\ & (!\C1|LessThan257~0_combout\ & (\C1|LessThan236~0_combout\))) # (!\C1|Add9~10_combout\ & (((\C1|DRAWMAP~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan257~0_combout\,
	datab => \C1|LessThan236~0_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|DRAWMAP~91_combout\,
	combout => \C1|DRAWMAP~92_combout\);

-- Location: LCCOMB_X23_Y15_N10
\C1|DRAWMAP~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~145_combout\ = (!\C1|Add9~18_combout\ & (!\C1|Add9~16_combout\ & (\C1|DRAWMAP~89_combout\ & \C1|DRAWMAP~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~18_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|DRAWMAP~89_combout\,
	datad => \C1|DRAWMAP~92_combout\,
	combout => \C1|DRAWMAP~145_combout\);

-- Location: LCCOMB_X23_Y15_N18
\C1|esqQ2X1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~1_combout\ = (\C1|dMap~168_combout\ & (((!\C1|dMap~171_combout\ & \C1|DRAWMAP~145_combout\)))) # (!\C1|dMap~168_combout\ & ((\C1|DRAWMAP~118_combout\) # ((!\C1|dMap~171_combout\ & \C1|DRAWMAP~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~168_combout\,
	datab => \C1|DRAWMAP~118_combout\,
	datac => \C1|dMap~171_combout\,
	datad => \C1|DRAWMAP~145_combout\,
	combout => \C1|esqQ2X1~1_combout\);

-- Location: LCCOMB_X24_Y15_N30
\C1|esqQ2X1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~2_combout\ = (\C1|dMap~165_combout\) # ((\C1|esqQ2X1~1_combout\) # ((\C1|DRAWMAP~128_combout\ & !\C1|dMap~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~128_combout\,
	datab => \C1|dMap~161_combout\,
	datac => \C1|dMap~165_combout\,
	datad => \C1|esqQ2X1~1_combout\,
	combout => \C1|esqQ2X1~2_combout\);

-- Location: LCCOMB_X25_Y18_N22
\C1|LessThan253~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan253~0_combout\ = (\C1|Add9~6_combout\) # ((\C1|Add9~0_combout\) # ((\C1|Add9~4_combout\) # (\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~4_combout\,
	datad => \C1|Add9~2_combout\,
	combout => \C1|LessThan253~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\C1|DRAWMAP~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~102_combout\ = (\C1|Add9~6_combout\ & ((\C1|Add9~4_combout\) # ((\C1|Add9~2_combout\ & \C1|Add9~0_combout\))))

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
	combout => \C1|DRAWMAP~102_combout\);

-- Location: LCCOMB_X27_Y15_N18
\C1|DRAWMAP~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~109_combout\ = (\C1|DRAWMAP~94_combout\ & ((\C1|Add9~12_combout\ & (!\C1|LessThan253~0_combout\)) # (!\C1|Add9~12_combout\ & ((!\C1|DRAWMAP~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~94_combout\,
	datab => \C1|LessThan253~0_combout\,
	datac => \C1|DRAWMAP~102_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|DRAWMAP~109_combout\);

-- Location: LCCOMB_X27_Y15_N28
\C1|DRAWMAP~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~110_combout\ = (\C1|Add9~12_combout\ & (\C1|Add9~14_combout\ & (!\C1|Add9~16_combout\ & !\C1|DRAWMAP~109_combout\))) # (!\C1|Add9~12_combout\ & (!\C1|Add9~14_combout\ & (\C1|Add9~16_combout\ & \C1|DRAWMAP~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|DRAWMAP~109_combout\,
	combout => \C1|DRAWMAP~110_combout\);

-- Location: LCCOMB_X26_Y17_N4
\C1|DRAWMAP~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~131_combout\ = (\C1|DRAWMAP~130_combout\ & (\C1|Add9~16_combout\ & !\C1|Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~130_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~14_combout\,
	combout => \C1|DRAWMAP~131_combout\);

-- Location: LCCOMB_X24_Y15_N0
\C1|LessThan237~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan237~0_combout\ = ((\C1|Add9~10_combout\ & ((\C1|LessThan257~0_combout\) # (!\C1|LessThan236~0_combout\)))) # (!\C1|LessThan256~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan256~0_combout\,
	datab => \C1|LessThan257~0_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan236~0_combout\,
	combout => \C1|LessThan237~0_combout\);

-- Location: LCCOMB_X27_Y15_N6
\C1|LessThan238~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan238~0_combout\ = ((\C1|DRAWMAP~94_combout\ & ((!\C1|Add9~6_combout\) # (!\C1|Add9~4_combout\)))) # (!\C1|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|DRAWMAP~94_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|LessThan238~0_combout\);

-- Location: LCCOMB_X27_Y15_N22
\C1|DRAWMAP~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~132_combout\ = (\C1|LessThan255~0_combout\ & (\C1|DRAWMAP~131_combout\ & (\C1|LessThan237~0_combout\ & \C1|LessThan238~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|DRAWMAP~131_combout\,
	datac => \C1|LessThan237~0_combout\,
	datad => \C1|LessThan238~0_combout\,
	combout => \C1|DRAWMAP~132_combout\);

-- Location: LCCOMB_X27_Y15_N12
\C1|DRAWMAP~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~133_combout\ = (\C1|DRAWMAP~132_combout\) # ((\C1|LessThan255~0_combout\ & (\C1|DRAWMAP~110_combout\ & !\C1|dMap~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|DRAWMAP~110_combout\,
	datac => \C1|dMap~161_combout\,
	datad => \C1|DRAWMAP~132_combout\,
	combout => \C1|DRAWMAP~133_combout\);

-- Location: LCCOMB_X24_Y18_N14
\C1|DRAWMAP~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~121_combout\ = (!\C1|Add9~6_combout\ & (!\C1|Add9~8_combout\ & (!\C1|Add9~10_combout\ & !\C1|Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|DRAWMAP~121_combout\);

-- Location: LCCOMB_X24_Y18_N4
\C1|DRAWMAP~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~120_combout\ = (\C1|LessThan235~0_combout\ & (\C1|Add9~10_combout\ & (!\C1|Add9~12_combout\ & !\C1|LessThan240~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan235~0_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|LessThan240~0_combout\,
	combout => \C1|DRAWMAP~120_combout\);

-- Location: LCCOMB_X24_Y18_N20
\C1|DRAWMAP~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~122_combout\ = (\C1|DRAWMAP~116_combout\ & ((\C1|DRAWMAP~120_combout\) # ((\C1|Add9~12_combout\ & \C1|DRAWMAP~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|DRAWMAP~121_combout\,
	datac => \C1|DRAWMAP~120_combout\,
	datad => \C1|DRAWMAP~116_combout\,
	combout => \C1|DRAWMAP~122_combout\);

-- Location: LCCOMB_X24_Y18_N28
\C1|DRAWMAP~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~98_combout\ = (!\C1|Add9~18_combout\ & (\C1|Add9~16_combout\ & \C1|Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~18_combout\,
	datac => \C1|Add9~16_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~98_combout\);

-- Location: LCCOMB_X24_Y15_N20
\C1|DRAWMAP~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~99_combout\ = (\C1|Add9~12_combout\ & (!\C1|Add9~14_combout\ & \C1|DRAWMAP~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|DRAWMAP~98_combout\,
	combout => \C1|DRAWMAP~99_combout\);

-- Location: LCCOMB_X24_Y15_N18
\C1|DRAWMAP~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~113_combout\ = (!\C1|Add9~8_combout\ & (!\C1|Add9~10_combout\ & ((!\C1|LessThan247~0_combout\) # (!\C1|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan247~0_combout\,
	combout => \C1|DRAWMAP~113_combout\);

-- Location: LCCOMB_X24_Y15_N8
\C1|DRAWMAP~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~114_combout\ = (\C1|DRAWMAP~99_combout\ & (\C1|DRAWMAP~113_combout\ & ((\C1|LessThan257~0_combout\) # (!\C1|LessThan236~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan257~0_combout\,
	datab => \C1|LessThan236~0_combout\,
	datac => \C1|DRAWMAP~99_combout\,
	datad => \C1|DRAWMAP~113_combout\,
	combout => \C1|DRAWMAP~114_combout\);

-- Location: LCCOMB_X24_Y18_N2
\C1|DRAWMAP~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~136_combout\ = (\C1|dMap~175_combout\ & (!\C1|dMap~177_combout\ & (\C1|DRAWMAP~122_combout\))) # (!\C1|dMap~175_combout\ & ((\C1|DRAWMAP~114_combout\) # ((!\C1|dMap~177_combout\ & \C1|DRAWMAP~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~175_combout\,
	datab => \C1|dMap~177_combout\,
	datac => \C1|DRAWMAP~122_combout\,
	datad => \C1|DRAWMAP~114_combout\,
	combout => \C1|DRAWMAP~136_combout\);

-- Location: LCCOMB_X27_Y15_N26
\C1|LessThan247~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~1_combout\ = ((\C1|Add9~6_combout\ & (\C1|LessThan247~0_combout\ & \C1|Add9~0_combout\))) # (!\C1|DRAWMAP~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~94_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|LessThan247~0_combout\,
	datad => \C1|Add9~0_combout\,
	combout => \C1|LessThan247~1_combout\);

-- Location: LCCOMB_X24_Y18_N10
\C1|LessThan235~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan235~0_combout\ = (\C1|Add9~8_combout\ & \C1|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan235~0_combout\);

-- Location: LCCOMB_X27_Y15_N4
\C1|DRAWMAP~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~100_combout\ = (!\C1|Add9~10_combout\ & (\C1|LessThan247~1_combout\ & (!\C1|LessThan235~0_combout\ & \C1|DRAWMAP~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan247~1_combout\,
	datac => \C1|LessThan235~0_combout\,
	datad => \C1|DRAWMAP~99_combout\,
	combout => \C1|DRAWMAP~100_combout\);

-- Location: LCCOMB_X24_Y15_N26
\C1|DRAWMAP~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~106_combout\ = (!\C1|Add9~4_combout\ & (!\C1|Add9~2_combout\ & (\C1|Add9~10_combout\ & \C1|LessThan236~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|Add9~2_combout\,
	datac => \C1|Add9~10_combout\,
	datad => \C1|LessThan236~0_combout\,
	combout => \C1|DRAWMAP~106_combout\);

-- Location: LCCOMB_X23_Y15_N8
\C1|DRAWMAP~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~134_combout\ = (\C1|DRAWMAP~99_combout\ & ((\C1|DRAWMAP~106_combout\) # ((\C1|DRAWMAP~107_combout\ & \C1|LessThan235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~107_combout\,
	datab => \C1|LessThan235~0_combout\,
	datac => \C1|DRAWMAP~106_combout\,
	datad => \C1|DRAWMAP~99_combout\,
	combout => \C1|DRAWMAP~134_combout\);

-- Location: LCCOMB_X27_Y15_N30
\C1|DRAWMAP~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~135_combout\ = (\C1|dMap~161_combout\ & (!\C1|dMap~173_combout\ & (\C1|DRAWMAP~100_combout\))) # (!\C1|dMap~161_combout\ & ((\C1|DRAWMAP~134_combout\) # ((!\C1|dMap~173_combout\ & \C1|DRAWMAP~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~161_combout\,
	datab => \C1|dMap~173_combout\,
	datac => \C1|DRAWMAP~100_combout\,
	datad => \C1|DRAWMAP~134_combout\,
	combout => \C1|DRAWMAP~135_combout\);

-- Location: LCCOMB_X25_Y15_N18
\C1|esqQ2X1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~3_combout\ = (\C1|DRAWMAP~133_combout\) # ((\C1|DRAWMAP~136_combout\) # (\C1|DRAWMAP~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~133_combout\,
	datac => \C1|DRAWMAP~136_combout\,
	datad => \C1|DRAWMAP~135_combout\,
	combout => \C1|esqQ2X1~3_combout\);

-- Location: LCCOMB_X25_Y15_N4
\C1|esqQ2X1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~4_combout\ = (\C1|esqQ2X1~0_combout\ & ((\C1|DRAWMAP~127_combout\) # ((\C1|esqQ2X1~2_combout\) # (\C1|esqQ2X1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|DRAWMAP~127_combout\,
	datac => \C1|esqQ2X1~2_combout\,
	datad => \C1|esqQ2X1~3_combout\,
	combout => \C1|esqQ2X1~4_combout\);

-- Location: LCCOMB_X26_Y17_N12
\C1|LessThan216~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~2_combout\ = ((\C1|LessThan216~1_combout\ & !\C1|Add13~6_combout\)) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan216~1_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan216~2_combout\);

-- Location: LCCOMB_X26_Y17_N26
\C1|LessThan216~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~3_combout\ = (!\C1|Add13~18_combout\ & (\C1|LessThan216~0_combout\ & (!\C1|Add13~10_combout\ & \C1|LessThan216~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~18_combout\,
	datab => \C1|LessThan216~0_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|LessThan216~2_combout\,
	combout => \C1|LessThan216~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\C1|DRAWMAP~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~105_combout\ = (!\C1|Add9~16_combout\ & (\C1|Add9~20_combout\ & (!\C1|Add9~12_combout\ & \C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|DRAWMAP~105_combout\);

-- Location: LCCOMB_X23_Y15_N14
\C1|esqQ2X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~0_combout\ = ((\C1|LessThan255~1_combout\) # (!\C1|DRAWMAP~105_combout\)) # (!\C1|Add9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~14_combout\,
	datac => \C1|DRAWMAP~105_combout\,
	datad => \C1|LessThan255~1_combout\,
	combout => \C1|esqQ2X2~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\C1|DRAWMAP~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~101_combout\ = (\C1|DRAWMAP~98_combout\ & ((\C1|Add9~14_combout\ & (\C1|LessThan244~0_combout\)) # (!\C1|Add9~14_combout\ & ((\C1|LessThan243~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan244~0_combout\,
	datab => \C1|DRAWMAP~98_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|LessThan243~0_combout\,
	combout => \C1|DRAWMAP~101_combout\);

-- Location: LCCOMB_X23_Y15_N12
\C1|esqQ2X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~1_combout\ = ((!\C1|DRAWMAP~106_combout\ & ((!\C1|LessThan235~0_combout\) # (!\C1|DRAWMAP~107_combout\)))) # (!\C1|DRAWMAP~99_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~107_combout\,
	datab => \C1|LessThan235~0_combout\,
	datac => \C1|DRAWMAP~106_combout\,
	datad => \C1|DRAWMAP~99_combout\,
	combout => \C1|esqQ2X2~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\C1|esqQ2X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~2_combout\ = (!\C1|DRAWMAP~104_combout\ & (\C1|esqQ2X2~0_combout\ & (!\C1|DRAWMAP~101_combout\ & \C1|esqQ2X2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~104_combout\,
	datab => \C1|esqQ2X2~0_combout\,
	datac => \C1|DRAWMAP~101_combout\,
	datad => \C1|esqQ2X2~1_combout\,
	combout => \C1|esqQ2X2~2_combout\);

-- Location: LCCOMB_X26_Y15_N30
\C1|esqQ2X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~3_combout\ = (!\C1|dMap~181_combout\ & (((\C1|LessThan255~0_combout\ & \C1|DRAWMAP~110_combout\)) # (!\C1|esqQ2X2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|DRAWMAP~110_combout\,
	datac => \C1|esqQ2X2~2_combout\,
	datad => \C1|dMap~181_combout\,
	combout => \C1|esqQ2X2~3_combout\);

-- Location: LCCOMB_X25_Y15_N20
\C1|DRAWMAP~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~96_combout\ = (\C1|dMap~154_combout\) # ((\C1|LessThan255~2_combout\ & ((\C1|LessThan256~2_combout\) # (!\C1|LessThan256~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~2_combout\,
	datab => \C1|LessThan256~2_combout\,
	datac => \C1|LessThan256~1_combout\,
	datad => \C1|dMap~154_combout\,
	combout => \C1|DRAWMAP~96_combout\);

-- Location: LCCOMB_X26_Y15_N20
\C1|esqQ2X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~4_combout\ = (\C1|DRAWMAP~145_combout\ & (((\C1|DRAWMAP~96_combout\ & !\C1|dMap~188_combout\)) # (!\C1|dMap~184_combout\))) # (!\C1|DRAWMAP~145_combout\ & (((\C1|DRAWMAP~96_combout\ & !\C1|dMap~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~145_combout\,
	datab => \C1|dMap~184_combout\,
	datac => \C1|DRAWMAP~96_combout\,
	datad => \C1|dMap~188_combout\,
	combout => \C1|esqQ2X2~4_combout\);

-- Location: LCCOMB_X27_Y15_N24
\C1|DRAWMAP~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~111_combout\ = (\C1|Add9~16_combout\ & (!\C1|Add9~14_combout\ & (\C1|LessThan237~0_combout\ & \C1|LessThan238~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|LessThan237~0_combout\,
	datad => \C1|LessThan238~0_combout\,
	combout => \C1|DRAWMAP~111_combout\);

-- Location: LCCOMB_X27_Y15_N0
\C1|esqQ2X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~5_combout\ = (\C1|dMap~193_combout\ & (\C1|DRAWMAP~100_combout\ & (!\C1|dMap~190_combout\))) # (!\C1|dMap~193_combout\ & ((\C1|DRAWMAP~114_combout\) # ((\C1|DRAWMAP~100_combout\ & !\C1|dMap~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~193_combout\,
	datab => \C1|DRAWMAP~100_combout\,
	datac => \C1|dMap~190_combout\,
	datad => \C1|DRAWMAP~114_combout\,
	combout => \C1|esqQ2X2~5_combout\);

-- Location: LCCOMB_X27_Y15_N2
\C1|esqQ2X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~6_combout\ = (\C1|esqQ2X2~5_combout\) # ((\C1|LessThan255~0_combout\ & (!\C1|dMap~196_combout\ & \C1|DRAWMAP~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|dMap~196_combout\,
	datac => \C1|DRAWMAP~111_combout\,
	datad => \C1|esqQ2X2~5_combout\,
	combout => \C1|esqQ2X2~6_combout\);

-- Location: LCCOMB_X26_Y15_N6
\C1|esqQ2X2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~9_combout\ = (\C1|esqQ2X2~8_combout\) # ((\C1|esqQ2X2~3_combout\) # ((\C1|esqQ2X2~4_combout\) # (\C1|esqQ2X2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X2~8_combout\,
	datab => \C1|esqQ2X2~3_combout\,
	datac => \C1|esqQ2X2~4_combout\,
	datad => \C1|esqQ2X2~6_combout\,
	combout => \C1|esqQ2X2~9_combout\);

-- Location: LCCOMB_X26_Y15_N28
\C1|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (\C1|Add13~22_combout\ & ((\C1|Add13~20_combout\) # ((!\C1|LessThan216~3_combout\ & \C1|esqQ2X2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|Add13~22_combout\,
	datac => \C1|LessThan216~3_combout\,
	datad => \C1|esqQ2X2~9_combout\,
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X26_Y15_N22
\C1|process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\KEY~combout\(1)) # ((\C1|esqQ2X1~4_combout\) # ((!\C1|LessThan234~0_combout\ & \C1|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \C1|LessThan234~0_combout\,
	datac => \C1|esqQ2X1~4_combout\,
	datad => \C1|process_0~10_combout\,
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X26_Y18_N18
\C1|Add21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~18_combout\ = \C1|SQ_X2\(10) $ (\C1|Add21~17\ $ (!\C1|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => \C1|process_0~11_combout\,
	cin => \C1|Add21~17\,
	combout => \C1|Add21~18_combout\);

-- Location: LCFF_X26_Y18_N19
\C1|SQ_X2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add21~18_combout\,
	ena => \C1|SQ_X2[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(10));

-- Location: LCCOMB_X25_Y18_N20
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

-- Location: LCCOMB_X25_Y15_N26
\C1|LessThan234~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan234~0_combout\ = ((\C1|DRAWMAP~90_combout\ & ((\C1|LessThan238~0_combout\) # (!\C1|Add9~14_combout\)))) # (!\C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~90_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|LessThan238~0_combout\,
	combout => \C1|LessThan234~0_combout\);

-- Location: LCCOMB_X29_Y16_N22
\C1|dMap~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~136_combout\ = (\C1|Add3~8_combout\ & (((\C1|Add3~10_combout\)))) # (!\C1|Add3~8_combout\ & ((\C1|Add3~4_combout\) # ((\C1|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~136_combout\);

-- Location: LCCOMB_X29_Y16_N4
\C1|dMap~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~137_combout\ = (\C1|Add3~14_combout\ & (\C1|Add3~16_combout\ & (!\C1|Add3~20_combout\ & !\C1|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~14_combout\,
	datab => \C1|Add3~16_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|Add3~18_combout\,
	combout => \C1|dMap~137_combout\);

-- Location: LCCOMB_X29_Y16_N16
\C1|dMap~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~135_combout\ = (!\C1|Add3~10_combout\ & (((!\C1|Add3~4_combout\ & !\C1|Add3~2_combout\)) # (!\C1|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~135_combout\);

-- Location: LCCOMB_X30_Y16_N24
\C1|dMap~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~138_combout\ = ((\C1|dMap~136_combout\) # ((\C1|dMap~135_combout\) # (!\C1|dMap~137_combout\))) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|dMap~136_combout\,
	datac => \C1|dMap~137_combout\,
	datad => \C1|dMap~135_combout\,
	combout => \C1|dMap~138_combout\);

-- Location: LCCOMB_X25_Y19_N4
\C1|dMap~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~150_combout\ = (!\C1|Add3~8_combout\ & ((\C1|Add3~4_combout\ & ((!\C1|Add3~6_combout\) # (!\C1|Add3~2_combout\))) # (!\C1|Add3~4_combout\ & ((\C1|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~150_combout\);

-- Location: LCCOMB_X26_Y19_N18
\C1|dMap~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~151_combout\ = (((!\C1|dMap~137_combout\) # (!\C1|dMap~150_combout\)) # (!\C1|Add3~10_combout\)) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~10_combout\,
	datac => \C1|dMap~150_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|dMap~151_combout\);

-- Location: LCCOMB_X26_Y19_N14
\C1|DRAWMAP~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~108_combout\ = (\C1|DRAWMAP~100_combout\ & (((!\C1|esqQ2X2~2_combout\ & !\C1|dMap~151_combout\)) # (!\C1|dMap~138_combout\))) # (!\C1|DRAWMAP~100_combout\ & (((!\C1|esqQ2X2~2_combout\ & !\C1|dMap~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~100_combout\,
	datab => \C1|dMap~138_combout\,
	datac => \C1|esqQ2X2~2_combout\,
	datad => \C1|dMap~151_combout\,
	combout => \C1|DRAWMAP~108_combout\);

-- Location: LCCOMB_X29_Y16_N28
\C1|LessThan156~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~0_combout\ = (!\C1|Add3~12_combout\ & (!\C1|Add3~16_combout\ & !\C1|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datac => \C1|Add3~16_combout\,
	datad => \C1|Add3~14_combout\,
	combout => \C1|LessThan156~0_combout\);

-- Location: LCCOMB_X29_Y16_N8
\C1|dMap~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~149_combout\ = (\C1|dMap~148_combout\) # ((\C1|Add3~18_combout\) # ((\C1|Add3~20_combout\) # (!\C1|LessThan156~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~148_combout\,
	datab => \C1|Add3~18_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|dMap~149_combout\);

-- Location: LCCOMB_X25_Y19_N2
\C1|dMap~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~155_combout\ = (\C1|Add3~12_combout\) # ((\C1|Add3~4_combout\ & ((\C1|Add3~6_combout\))) # (!\C1|Add3~4_combout\ & (!\C1|Add3~2_combout\ & !\C1|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~155_combout\);

-- Location: LCCOMB_X25_Y19_N28
\C1|dMap~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~156_combout\ = ((\C1|dMap~155_combout\) # ((!\C1|dMap~137_combout\) # (!\C1|Add3~10_combout\))) # (!\C1|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|dMap~155_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|dMap~156_combout\);

-- Location: LCCOMB_X26_Y19_N24
\C1|DRAWMAP~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~97_combout\ = (\C1|DRAWMAP~145_combout\ & (((\C1|DRAWMAP~96_combout\ & !\C1|dMap~156_combout\)) # (!\C1|dMap~149_combout\))) # (!\C1|DRAWMAP~145_combout\ & (((\C1|DRAWMAP~96_combout\ & !\C1|dMap~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~145_combout\,
	datab => \C1|dMap~149_combout\,
	datac => \C1|DRAWMAP~96_combout\,
	datad => \C1|dMap~156_combout\,
	combout => \C1|DRAWMAP~97_combout\);

-- Location: LCCOMB_X25_Y19_N20
\C1|dMap~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~157_combout\ = (\C1|Add3~8_combout\) # ((!\C1|Add3~6_combout\ & ((!\C1|Add3~4_combout\) # (!\C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~157_combout\);

-- Location: LCCOMB_X26_Y19_N16
\C1|dMap~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~158_combout\ = ((\C1|Add3~10_combout\) # ((\C1|dMap~157_combout\) # (!\C1|dMap~137_combout\))) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~10_combout\,
	datac => \C1|dMap~157_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|dMap~158_combout\);

-- Location: LCCOMB_X26_Y19_N20
\C1|dMap~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~143_combout\ = (\C1|dMap~142_combout\) # ((\C1|Add3~10_combout\) # ((!\C1|dMap~137_combout\) # (!\C1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~142_combout\,
	datab => \C1|Add3~10_combout\,
	datac => \C1|Add3~12_combout\,
	datad => \C1|dMap~137_combout\,
	combout => \C1|dMap~143_combout\);

-- Location: LCCOMB_X29_Y16_N2
\C1|dMap~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~139_combout\ = (\C1|Add3~4_combout\) # ((\C1|Add3~6_combout\) # ((\C1|Add3~2_combout\ & \C1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~0_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|dMap~139_combout\);

-- Location: LCCOMB_X29_Y16_N20
\C1|dMap~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~140_combout\ = (\C1|Add3~10_combout\ & ((\C1|Add3~8_combout\) # (\C1|dMap~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~139_combout\,
	combout => \C1|dMap~140_combout\);

-- Location: LCCOMB_X29_Y16_N26
\C1|dMap~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~141_combout\ = (\C1|Add3~20_combout\) # (((\C1|dMap~140_combout\) # (!\C1|LessThan156~0_combout\)) # (!\C1|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datab => \C1|Add3~18_combout\,
	datac => \C1|dMap~140_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|dMap~141_combout\);

-- Location: LCCOMB_X26_Y19_N12
\C1|DRAWMAP~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~112_combout\ = (\C1|dMap~151_combout\ & (!\C1|dMap~141_combout\ & ((\C1|DRAWMAP~111_combout\)))) # (!\C1|dMap~151_combout\ & ((\C1|DRAWMAP~110_combout\) # ((!\C1|dMap~141_combout\ & \C1|DRAWMAP~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~151_combout\,
	datab => \C1|dMap~141_combout\,
	datac => \C1|DRAWMAP~110_combout\,
	datad => \C1|DRAWMAP~111_combout\,
	combout => \C1|DRAWMAP~112_combout\);

-- Location: LCCOMB_X26_Y19_N22
\C1|DRAWMAP~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~115_combout\ = (\C1|LessThan255~0_combout\ & ((\C1|DRAWMAP~112_combout\) # ((\C1|DRAWMAP~114_combout\ & !\C1|dMap~143_combout\)))) # (!\C1|LessThan255~0_combout\ & (\C1|DRAWMAP~114_combout\ & (!\C1|dMap~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|DRAWMAP~114_combout\,
	datac => \C1|dMap~143_combout\,
	datad => \C1|DRAWMAP~112_combout\,
	combout => \C1|DRAWMAP~115_combout\);

-- Location: LCCOMB_X26_Y19_N30
\C1|DRAWMAP~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~123_combout\ = (\C1|DRAWMAP~119_combout\) # ((\C1|DRAWMAP~115_combout\) # ((\C1|DRAWMAP~122_combout\ & !\C1|dMap~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~119_combout\,
	datab => \C1|DRAWMAP~122_combout\,
	datac => \C1|dMap~158_combout\,
	datad => \C1|DRAWMAP~115_combout\,
	combout => \C1|DRAWMAP~123_combout\);

-- Location: LCCOMB_X26_Y19_N28
\C1|DRAWMAP~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~124_combout\ = (\C1|DRAWMAP~108_combout\) # ((\C1|DRAWMAP~97_combout\) # (\C1|DRAWMAP~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~108_combout\,
	datac => \C1|DRAWMAP~97_combout\,
	datad => \C1|DRAWMAP~123_combout\,
	combout => \C1|DRAWMAP~124_combout\);

-- Location: LCFF_X27_Y21_N17
\C1|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(8));

-- Location: LCCOMB_X27_Y21_N24
\C1|LessThan263~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan263~0_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(7) & (!\C1|VPOS\(8) & !\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(9),
	combout => \C1|LessThan263~0_combout\);

-- Location: LCCOMB_X27_Y19_N4
\C1|LessThan263~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan263~2_combout\ = (\C1|LessThan263~0_combout\ & ((\C1|LessThan263~1_combout\) # (!\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datac => \C1|LessThan263~0_combout\,
	datad => \C1|LessThan263~1_combout\,
	combout => \C1|LessThan263~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\C1|SQ_X2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~2_combout\ = (\C1|VPOS\(10) & (!\C1|LessThan263~2_combout\ & \C1|LessThan259~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datac => \C1|LessThan263~2_combout\,
	datad => \C1|LessThan259~0_combout\,
	combout => \C1|SQ_X2[1]~2_combout\);

-- Location: LCCOMB_X30_Y16_N30
\C1|DRAWMAP~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~67_combout\ = (\C1|dMap~132_combout\ & (((!\C1|dMap~141_combout\ & \C1|dMap~134_combout\)) # (!\C1|dMap~138_combout\))) # (!\C1|dMap~132_combout\ & (!\C1|dMap~141_combout\ & ((\C1|dMap~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~132_combout\,
	datab => \C1|dMap~141_combout\,
	datac => \C1|dMap~138_combout\,
	datad => \C1|dMap~134_combout\,
	combout => \C1|DRAWMAP~67_combout\);

-- Location: LCCOMB_X30_Y16_N8
\C1|DRAWMAP~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~74_combout\ = (\C1|dMap~149_combout\ & (\C1|DRAWMAP~73_combout\ & ((!\C1|dMap~151_combout\)))) # (!\C1|dMap~149_combout\ & ((\C1|DRAWMAP~72_combout\) # ((\C1|DRAWMAP~73_combout\ & !\C1|dMap~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~149_combout\,
	datab => \C1|DRAWMAP~73_combout\,
	datac => \C1|DRAWMAP~72_combout\,
	datad => \C1|dMap~151_combout\,
	combout => \C1|DRAWMAP~74_combout\);

-- Location: LCCOMB_X29_Y15_N20
\C1|DRAWMAP~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~70_combout\ = (\C1|dMap~146_combout\ & (((!\C1|dMap~143_combout\ & \C1|DRAWMAP~68_combout\)))) # (!\C1|dMap~146_combout\ & ((\C1|DRAWMAP~69_combout\) # ((!\C1|dMap~143_combout\ & \C1|DRAWMAP~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~146_combout\,
	datab => \C1|DRAWMAP~69_combout\,
	datac => \C1|dMap~143_combout\,
	datad => \C1|DRAWMAP~68_combout\,
	combout => \C1|DRAWMAP~70_combout\);

-- Location: LCCOMB_X29_Y19_N4
\C1|DRAWMAP~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~75_combout\ = (\C1|DRAWMAP~67_combout\) # ((\C1|LessThan183~0_combout\ & ((\C1|DRAWMAP~74_combout\) # (\C1|DRAWMAP~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan183~0_combout\,
	datab => \C1|DRAWMAP~67_combout\,
	datac => \C1|DRAWMAP~74_combout\,
	datad => \C1|DRAWMAP~70_combout\,
	combout => \C1|DRAWMAP~75_combout\);

-- Location: LCCOMB_X29_Y16_N14
\C1|LessThan156~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~1_combout\ = (\C1|Add3~4_combout\ & (\C1|Add3~6_combout\ & ((\C1|Add3~2_combout\) # (\C1|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~0_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|LessThan156~1_combout\);

-- Location: LCCOMB_X29_Y16_N0
\C1|LessThan156~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~2_combout\ = (\C1|Add3~12_combout\) # ((\C1|Add3~8_combout\) # ((\C1|Add3~16_combout\) # (\C1|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~16_combout\,
	datad => \C1|Add3~14_combout\,
	combout => \C1|LessThan156~2_combout\);

-- Location: LCCOMB_X29_Y16_N10
\C1|LessThan156~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~3_combout\ = (\C1|Add3~18_combout\ & ((\C1|Add3~10_combout\) # ((\C1|LessThan156~1_combout\) # (\C1|LessThan156~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~18_combout\,
	datac => \C1|LessThan156~1_combout\,
	datad => \C1|LessThan156~2_combout\,
	combout => \C1|LessThan156~3_combout\);

-- Location: LCCOMB_X25_Y19_N26
\C1|DRAWMAP~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~76_combout\ = (\C1|Add3~12_combout\ & ((\C1|Add3~6_combout\) # ((\C1|Add3~2_combout\ & \C1|Add3~4_combout\)))) # (!\C1|Add3~12_combout\ & ((\C1|Add3~4_combout\ & ((!\C1|Add3~6_combout\))) # (!\C1|Add3~4_combout\ & ((\C1|Add3~2_combout\) # 
-- (\C1|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|Add3~2_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~6_combout\,
	combout => \C1|DRAWMAP~76_combout\);

-- Location: LCCOMB_X25_Y19_N0
\C1|DRAWMAP~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~79_combout\ = (\C1|Add3~8_combout\ & ((\C1|Add3~12_combout\) # (\C1|Add3~10_combout\))) # (!\C1|Add3~8_combout\ & (\C1|Add3~12_combout\ & \C1|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datac => \C1|Add3~12_combout\,
	datad => \C1|Add3~10_combout\,
	combout => \C1|DRAWMAP~79_combout\);

-- Location: LCCOMB_X29_Y19_N22
\C1|DRAWMAP~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~80_combout\ = (\C1|Add3~12_combout\ & (!\C1|DRAWMAP~79_combout\ & ((\C1|dMap~153_combout\)))) # (!\C1|Add3~12_combout\ & (\C1|DRAWMAP~79_combout\ & (\C1|DRAWMAP~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|DRAWMAP~79_combout\,
	datac => \C1|DRAWMAP~78_combout\,
	datad => \C1|dMap~153_combout\,
	combout => \C1|DRAWMAP~80_combout\);

-- Location: LCCOMB_X29_Y19_N20
\C1|DRAWMAP~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~81_combout\ = (\C1|dMap~137_combout\ & (\C1|DRAWMAP~76_combout\ & \C1|DRAWMAP~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~137_combout\,
	datac => \C1|DRAWMAP~76_combout\,
	datad => \C1|DRAWMAP~80_combout\,
	combout => \C1|DRAWMAP~81_combout\);

-- Location: LCCOMB_X29_Y19_N26
\C1|DRAWMAP~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~82_combout\ = (\C1|LessThan156~3_combout\) # ((\C1|DRAWMAP~81_combout\) # (\C1|Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan156~3_combout\,
	datac => \C1|DRAWMAP~81_combout\,
	datad => \C1|Add3~20_combout\,
	combout => \C1|DRAWMAP~82_combout\);

-- Location: LCCOMB_X29_Y19_N28
\C1|DRAWMAP~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~88_combout\ = (\C1|DRAWMAP~75_combout\) # ((\C1|DRAWMAP~82_combout\) # ((\C1|DRAWMAP~87_combout\ & !\C1|dMap~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~87_combout\,
	datab => \C1|dMap~151_combout\,
	datac => \C1|DRAWMAP~75_combout\,
	datad => \C1|DRAWMAP~82_combout\,
	combout => \C1|DRAWMAP~88_combout\);

-- Location: LCCOMB_X29_Y19_N6
\C1|SQ_Y2[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~3_combout\ = ((\C1|SQ_Y2[9]~2_combout\ & (!\C1|LessThan174~0_combout\ & \C1|DRAWMAP~88_combout\))) # (!\C1|SQ_X2[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~2_combout\,
	datab => \C1|SQ_X2[1]~2_combout\,
	datac => \C1|LessThan174~0_combout\,
	datad => \C1|DRAWMAP~88_combout\,
	combout => \C1|SQ_Y2[1]~3_combout\);

-- Location: LCCOMB_X29_Y19_N24
\C1|SQ_Y2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~4_combout\ = (!\C1|SQ_Y2[1]~3_combout\ & (((\C1|LessThan234~0_combout\) # (!\C1|DRAWMAP~124_combout\)) # (!\C1|SQ_Y2[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~2_combout\,
	datab => \C1|LessThan234~0_combout\,
	datac => \C1|DRAWMAP~124_combout\,
	datad => \C1|SQ_Y2[1]~3_combout\,
	combout => \C1|SQ_Y2[1]~4_combout\);

-- Location: LCFF_X25_Y16_N31
\C1|SQ_Y2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[2]~9_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X24_Y16_N14
\C1|Add17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~5_combout\ = ((\C1|Add17~0_combout\ $ (\C1|SQ_Y2\(3) $ (!\C1|Add17~4\)))) # (GND)
-- \C1|Add17~6\ = CARRY((\C1|Add17~0_combout\ & (!\C1|SQ_Y2\(3) & !\C1|Add17~4\)) # (!\C1|Add17~0_combout\ & ((!\C1|Add17~4\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add17~4\,
	combout => \C1|Add17~5_combout\,
	cout => \C1|Add17~6\);

-- Location: LCCOMB_X25_Y16_N0
\C1|SQ_Y2[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[3]~8_combout\ = !\C1|Add17~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~5_combout\,
	combout => \C1|SQ_Y2[3]~8_combout\);

-- Location: LCFF_X25_Y16_N1
\C1|SQ_Y2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[3]~8_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X24_Y16_N18
\C1|Add17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~9_combout\ = ((\C1|Add17~0_combout\ $ (\C1|SQ_Y2\(5) $ (\C1|Add17~8\)))) # (GND)
-- \C1|Add17~10\ = CARRY((\C1|Add17~0_combout\ & (\C1|SQ_Y2\(5) & !\C1|Add17~8\)) # (!\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(5)) # (!\C1|Add17~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add17~8\,
	combout => \C1|Add17~9_combout\,
	cout => \C1|Add17~10\);

-- Location: LCFF_X24_Y16_N19
\C1|SQ_Y2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~9_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(5));

-- Location: LCCOMB_X24_Y16_N20
\C1|Add17~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~11_combout\ = (\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(6) & (!\C1|Add17~10\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add17~10\) # (GND))))) # (!\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(6) & (\C1|Add17~10\ & VCC)) # (!\C1|SQ_Y2\(6) & (!\C1|Add17~10\))))
-- \C1|Add17~12\ = CARRY((\C1|Add17~0_combout\ & ((!\C1|Add17~10\) # (!\C1|SQ_Y2\(6)))) # (!\C1|Add17~0_combout\ & (!\C1|SQ_Y2\(6) & !\C1|Add17~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add17~10\,
	combout => \C1|Add17~11_combout\,
	cout => \C1|Add17~12\);

-- Location: LCFF_X25_Y16_N29
\C1|SQ_Y2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add17~11_combout\,
	sload => VCC,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X24_Y16_N24
\C1|Add17~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~15_combout\ = (\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(8) & ((\C1|Add17~14\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add17~14\)))) # (!\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(8) & (!\C1|Add17~14\)) # (!\C1|SQ_Y2\(8) & (\C1|Add17~14\ & VCC))))
-- \C1|Add17~16\ = CARRY((\C1|Add17~0_combout\ & ((\C1|SQ_Y2\(8)) # (!\C1|Add17~14\))) # (!\C1|Add17~0_combout\ & (\C1|SQ_Y2\(8) & !\C1|Add17~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add17~14\,
	combout => \C1|Add17~15_combout\,
	cout => \C1|Add17~16\);

-- Location: LCCOMB_X24_Y16_N30
\C1|SQ_Y2[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[8]~6_combout\ = !\C1|Add17~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add17~15_combout\,
	combout => \C1|SQ_Y2[8]~6_combout\);

-- Location: LCFF_X25_Y16_N5
\C1|SQ_Y2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y2[8]~6_combout\,
	sload => VCC,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X24_Y16_N26
\C1|Add17~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~17_combout\ = ((\C1|Add17~0_combout\ $ (\C1|SQ_Y2\(9) $ (!\C1|Add17~16\)))) # (GND)
-- \C1|Add17~18\ = CARRY((\C1|Add17~0_combout\ & (!\C1|SQ_Y2\(9) & !\C1|Add17~16\)) # (!\C1|Add17~0_combout\ & ((!\C1|Add17~16\) # (!\C1|SQ_Y2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add17~0_combout\,
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add17~16\,
	combout => \C1|Add17~17_combout\,
	cout => \C1|Add17~18\);

-- Location: LCCOMB_X24_Y16_N0
\C1|SQ_Y2[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~5_combout\ = !\C1|Add17~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~17_combout\,
	combout => \C1|SQ_Y2[9]~5_combout\);

-- Location: LCFF_X25_Y16_N25
\C1|SQ_Y2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y2[9]~5_combout\,
	sload => VCC,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X24_Y16_N28
\C1|Add17~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~19_combout\ = \C1|SQ_Y2\(10) $ (\C1|Add17~18\ $ (!\C1|Add17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => \C1|Add17~0_combout\,
	cin => \C1|Add17~18\,
	combout => \C1|Add17~19_combout\);

-- Location: LCFF_X24_Y16_N29
\C1|SQ_Y2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~19_combout\,
	ena => \C1|SQ_Y2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(10));

-- Location: LCFF_X27_Y21_N13
\C1|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(6));

-- Location: LCCOMB_X27_Y17_N0
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

-- Location: LCCOMB_X27_Y17_N2
\C1|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|SQ_Y2\(1) & (!\C1|VPOS\(1) & !\C1|LessThan6~1_cout\)) # (!\C1|SQ_Y2\(1) & ((!\C1|LessThan6~1_cout\) # (!\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X27_Y17_N4
\C1|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|SQ_Y2\(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan6~3_cout\))) # (!\C1|SQ_Y2\(2) & (\C1|VPOS\(2) & !\C1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X27_Y17_N6
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

-- Location: LCCOMB_X27_Y17_N8
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

-- Location: LCCOMB_X27_Y17_N10
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

-- Location: LCCOMB_X27_Y17_N12
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

-- Location: LCCOMB_X27_Y17_N14
\C1|LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((\C1|VPOS\(7) & (!\C1|SQ_Y2\(7) & !\C1|LessThan6~13_cout\)) # (!\C1|VPOS\(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X27_Y17_N16
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

-- Location: LCCOMB_X27_Y17_N18
\C1|LessThan6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~19_cout\ = CARRY((\C1|SQ_Y2\(9) & (!\C1|VPOS\(9) & !\C1|LessThan6~17_cout\)) # (!\C1|SQ_Y2\(9) & ((!\C1|LessThan6~17_cout\) # (!\C1|VPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan6~17_cout\,
	cout => \C1|LessThan6~19_cout\);

-- Location: LCCOMB_X27_Y17_N20
\C1|LessThan6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~20_combout\ = (\C1|VPOS\(10) & ((!\C1|LessThan6~19_cout\) # (!\C1|SQ_Y2\(10)))) # (!\C1|VPOS\(10) & (!\C1|SQ_Y2\(10) & !\C1|LessThan6~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|SQ_Y2\(10),
	cin => \C1|LessThan6~19_cout\,
	combout => \C1|LessThan6~20_combout\);

-- Location: LCFF_X30_Y20_N13
\C1|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(6));

-- Location: LCFF_X30_Y20_N7
\C1|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(3));

-- Location: LCCOMB_X31_Y18_N4
\C1|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X31_Y18_N6
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

-- Location: LCCOMB_X31_Y18_N8
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

-- Location: LCCOMB_X31_Y18_N10
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

-- Location: LCCOMB_X31_Y18_N12
\C1|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((\C1|HPOS\(4) & ((!\C1|LessThan4~7_cout\) # (!\C1|SQ_X2\(4)))) # (!\C1|HPOS\(4) & (!\C1|SQ_X2\(4) & !\C1|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X31_Y18_N14
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

-- Location: LCCOMB_X31_Y18_N16
\C1|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|SQ_X2\(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan4~11_cout\))) # (!\C1|SQ_X2\(6) & (\C1|HPOS\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X31_Y18_N18
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

-- Location: LCCOMB_X31_Y18_N20
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

-- Location: LCCOMB_X31_Y18_N22
\C1|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~19_cout\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|LessThan4~17_cout\) # (!\C1|HPOS\(9)))) # (!\C1|SQ_X2\(9) & (!\C1|HPOS\(9) & !\C1|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan4~17_cout\,
	cout => \C1|LessThan4~19_cout\);

-- Location: LCCOMB_X31_Y18_N24
\C1|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|SQ_X2\(10) & (!\C1|LessThan4~19_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X2\(10) & ((\C1|HPOS\(10)) # (!\C1|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X27_Y18_N0
\C1|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((\C1|SQ_X2\(1) & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X27_Y18_N2
\C1|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|HPOS\(2) & ((\C1|SQ_X2\(2)) # (!\C1|LessThan5~1_cout\))) # (!\C1|HPOS\(2) & (\C1|SQ_X2\(2) & !\C1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X27_Y18_N4
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

-- Location: LCCOMB_X27_Y18_N6
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

-- Location: LCCOMB_X27_Y18_N8
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

-- Location: LCCOMB_X27_Y18_N10
\C1|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|Add2~4_combout\ & (\C1|HPOS\(6) & !\C1|LessThan5~9_cout\)) # (!\C1|Add2~4_combout\ & ((\C1|HPOS\(6)) # (!\C1|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X27_Y18_N12
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

-- Location: LCCOMB_X27_Y18_N14
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

-- Location: LCCOMB_X27_Y18_N16
\C1|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|Add2~10_combout\ & ((!\C1|LessThan5~15_cout\) # (!\C1|HPOS\(9)))) # (!\C1|Add2~10_combout\ & (!\C1|HPOS\(9) & !\C1|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X27_Y18_N18
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

-- Location: LCCOMB_X27_Y19_N10
\C1|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((\C1|Add3~0_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X27_Y19_N12
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

-- Location: LCCOMB_X27_Y19_N14
\C1|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|VPOS\(3) & (\C1|Add3~4_combout\ & !\C1|LessThan7~3_cout\)) # (!\C1|VPOS\(3) & ((\C1|Add3~4_combout\) # (!\C1|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X27_Y19_N16
\C1|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|Add3~6_combout\ & (\C1|VPOS\(4) & !\C1|LessThan7~5_cout\)) # (!\C1|Add3~6_combout\ & ((\C1|VPOS\(4)) # (!\C1|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X27_Y19_N18
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

-- Location: LCCOMB_X27_Y19_N20
\C1|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|Add3~10_combout\ & (\C1|VPOS\(6) & !\C1|LessThan7~9_cout\)) # (!\C1|Add3~10_combout\ & ((\C1|VPOS\(6)) # (!\C1|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X27_Y19_N22
\C1|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|VPOS\(7) & (\C1|Add3~12_combout\ & !\C1|LessThan7~11_cout\)) # (!\C1|VPOS\(7) & ((\C1|Add3~12_combout\) # (!\C1|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X27_Y19_N24
\C1|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan7~13_cout\) # (!\C1|Add3~14_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add3~14_combout\ & !\C1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X27_Y19_N26
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

-- Location: LCCOMB_X27_Y19_N28
\C1|LessThan7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~18_combout\ = (\C1|VPOS\(10) & (\C1|LessThan7~17_cout\ & \C1|Add3~18_combout\)) # (!\C1|VPOS\(10) & ((\C1|LessThan7~17_cout\) # (\C1|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datad => \C1|Add3~18_combout\,
	cin => \C1|LessThan7~17_cout\,
	combout => \C1|LessThan7~18_combout\);

-- Location: LCCOMB_X27_Y19_N6
\C1|DRAW2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|Add2~14_combout\ & ((\C1|Add3~20_combout\) # ((\C1|LessThan7~18_combout\)))) # (!\C1|Add2~14_combout\ & (\C1|LessThan5~18_combout\ & ((\C1|Add3~20_combout\) # (\C1|LessThan7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|LessThan5~18_combout\,
	datad => \C1|LessThan7~18_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X27_Y19_N8
\C1|DRAW2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan6~20_combout\ & (\C1|LessThan4~20_combout\ & \C1|DRAW2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan6~20_combout\,
	datac => \C1|LessThan4~20_combout\,
	datad => \C1|DRAW2~0_combout\,
	combout => \C1|DRAW2~1_combout\);

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

-- Location: LCCOMB_X26_Y21_N2
\C1|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~0_combout\ = (\KEY~combout\(2)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	datad => \SW~combout\(0),
	combout => \C1|Add16~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\C1|Add16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~1_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add16~2\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add16~1_combout\,
	cout => \C1|Add16~2\);

-- Location: LCCOMB_X32_Y21_N30
\C1|SQ_Y1[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~11_combout\ = !\C1|Add16~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add16~1_combout\,
	combout => \C1|SQ_Y1[1]~11_combout\);

-- Location: LCCOMB_X31_Y21_N4
\C1|Add16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~5_combout\ = ((\C1|SQ_Y1\(3) $ (\C1|Add16~0_combout\ $ (!\C1|Add16~4\)))) # (GND)
-- \C1|Add16~6\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|Add16~0_combout\ & !\C1|Add16~4\)) # (!\C1|SQ_Y1\(3) & ((!\C1|Add16~4\) # (!\C1|Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|Add16~0_combout\,
	datad => VCC,
	cin => \C1|Add16~4\,
	combout => \C1|Add16~5_combout\,
	cout => \C1|Add16~6\);

-- Location: LCCOMB_X32_Y21_N4
\C1|SQ_Y1[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~9_combout\ = !\C1|Add16~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add16~5_combout\,
	combout => \C1|SQ_Y1[3]~9_combout\);

-- Location: LCFF_X32_Y21_N5
\C1|SQ_Y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[3]~9_combout\,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X31_Y21_N2
\C1|Add16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~3_combout\ = (\C1|SQ_Y1\(2) & ((\C1|Add16~0_combout\ & ((\C1|Add16~2\) # (GND))) # (!\C1|Add16~0_combout\ & (!\C1|Add16~2\)))) # (!\C1|SQ_Y1\(2) & ((\C1|Add16~0_combout\ & (!\C1|Add16~2\)) # (!\C1|Add16~0_combout\ & (\C1|Add16~2\ & VCC))))
-- \C1|Add16~4\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|Add16~0_combout\) # (!\C1|Add16~2\))) # (!\C1|SQ_Y1\(2) & (\C1|Add16~0_combout\ & !\C1|Add16~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add16~0_combout\,
	datad => VCC,
	cin => \C1|Add16~2\,
	combout => \C1|Add16~3_combout\,
	cout => \C1|Add16~4\);

-- Location: LCCOMB_X32_Y21_N2
\C1|SQ_Y1[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~10_combout\ = !\C1|Add16~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~3_combout\,
	combout => \C1|SQ_Y1[2]~10_combout\);

-- Location: LCFF_X32_Y21_N3
\C1|SQ_Y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[2]~10_combout\,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X32_Y21_N8
\C1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add1~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X32_Y21_N10
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

-- Location: LCCOMB_X32_Y21_N12
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

-- Location: LCCOMB_X32_Y21_N14
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

-- Location: LCCOMB_X32_Y21_N16
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

-- Location: LCCOMB_X32_Y21_N18
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

-- Location: LCCOMB_X32_Y21_N20
\C1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|SQ_Y1\(7) & (!\C1|Add1~11\ & VCC)) # (!\C1|SQ_Y1\(7) & (\C1|Add1~11\ $ (GND)))
-- \C1|Add1~13\ = CARRY((!\C1|SQ_Y1\(7) & !\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X32_Y21_N22
\C1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|SQ_Y1\(8) & ((\C1|Add1~13\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add1~13\))
-- \C1|Add1~15\ = CARRY((\C1|SQ_Y1\(8)) # (!\C1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X32_Y21_N24
\C1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = (\C1|SQ_Y1\(9) & (!\C1|Add1~15\ & VCC)) # (!\C1|SQ_Y1\(9) & (\C1|Add1~15\ $ (GND)))
-- \C1|Add1~17\ = CARRY((!\C1|SQ_Y1\(9) & !\C1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\,
	cout => \C1|Add1~17\);

-- Location: LCCOMB_X34_Y22_N16
\C1|LessThan52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~0_combout\ = (!\C1|Add1~12_combout\ & (!\C1|Add1~16_combout\ & !\C1|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Add1~14_combout\,
	combout => \C1|LessThan52~0_combout\);

-- Location: LCCOMB_X32_Y21_N26
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

-- Location: LCCOMB_X32_Y21_N28
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

-- Location: LCCOMB_X35_Y21_N6
\C1|SQ_Y1[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~1_combout\ = (\C1|Add1~10_combout\) # ((\C1|Add1~20_combout\) # ((\C1|SQ_Y1[9]~0_combout\ & \C1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1[9]~0_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|SQ_Y1[9]~1_combout\);

-- Location: LCCOMB_X35_Y22_N28
\C1|SQ_Y1[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~2_combout\ = (\C1|Add16~0_combout\ & ((\C1|Add1~18_combout\) # ((\C1|SQ_Y1[9]~1_combout\) # (!\C1|LessThan52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|LessThan52~0_combout\,
	datac => \C1|Add16~0_combout\,
	datad => \C1|SQ_Y1[9]~1_combout\,
	combout => \C1|SQ_Y1[9]~2_combout\);

-- Location: LCCOMB_X33_Y19_N4
\C1|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add18~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add18~0_combout\,
	cout => \C1|Add18~1\);

-- Location: LCCOMB_X33_Y19_N6
\C1|Add18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~2_combout\ = (\C1|process_0~13_combout\ & ((\C1|SQ_X1\(2) & (!\C1|Add18~1\)) # (!\C1|SQ_X1\(2) & ((\C1|Add18~1\) # (GND))))) # (!\C1|process_0~13_combout\ & ((\C1|SQ_X1\(2) & (\C1|Add18~1\ & VCC)) # (!\C1|SQ_X1\(2) & (!\C1|Add18~1\))))
-- \C1|Add18~3\ = CARRY((\C1|process_0~13_combout\ & ((!\C1|Add18~1\) # (!\C1|SQ_X1\(2)))) # (!\C1|process_0~13_combout\ & (!\C1|SQ_X1\(2) & !\C1|Add18~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|Add18~1\,
	combout => \C1|Add18~2_combout\,
	cout => \C1|Add18~3\);

-- Location: LCCOMB_X33_Y20_N22
\C1|LessThan77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan77~0_combout\ = (!\C1|SQ_Y1\(4) & (\C1|SQ_Y1\(3) & ((\C1|SQ_Y1\(1)) # (\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(1),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|LessThan77~0_combout\);

-- Location: LCCOMB_X31_Y21_N10
\C1|Add16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~11_combout\ = (\C1|SQ_Y1\(6) & ((\C1|Add16~0_combout\ & (!\C1|Add16~10\)) # (!\C1|Add16~0_combout\ & (\C1|Add16~10\ & VCC)))) # (!\C1|SQ_Y1\(6) & ((\C1|Add16~0_combout\ & ((\C1|Add16~10\) # (GND))) # (!\C1|Add16~0_combout\ & (!\C1|Add16~10\))))
-- \C1|Add16~12\ = CARRY((\C1|SQ_Y1\(6) & (\C1|Add16~0_combout\ & !\C1|Add16~10\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add16~0_combout\) # (!\C1|Add16~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|Add16~0_combout\,
	datad => VCC,
	cin => \C1|Add16~10\,
	combout => \C1|Add16~11_combout\,
	cout => \C1|Add16~12\);

-- Location: LCFF_X32_Y21_N17
\C1|SQ_Y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add16~11_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X33_Y20_N8
\C1|dMap~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~102_combout\ = (\C1|dMap~101_combout\ & (((\C1|LessThan77~0_combout\ & !\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~101_combout\,
	datab => \C1|LessThan77~0_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~102_combout\);

-- Location: LCCOMB_X34_Y19_N26
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

-- Location: LCCOMB_X34_Y19_N28
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

-- Location: LCCOMB_X33_Y19_N12
\C1|Add18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~8_combout\ = ((\C1|SQ_X1\(5) $ (\C1|process_0~13_combout\ $ (!\C1|Add18~7\)))) # (GND)
-- \C1|Add18~9\ = CARRY((\C1|SQ_X1\(5) & (!\C1|process_0~13_combout\ & !\C1|Add18~7\)) # (!\C1|SQ_X1\(5) & ((!\C1|Add18~7\) # (!\C1|process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|process_0~13_combout\,
	datad => VCC,
	cin => \C1|Add18~7\,
	combout => \C1|Add18~8_combout\,
	cout => \C1|Add18~9\);

-- Location: LCCOMB_X34_Y19_N2
\C1|SQ_X1[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~16_combout\ = !\C1|Add18~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add18~8_combout\,
	combout => \C1|SQ_X1[5]~16_combout\);

-- Location: LCFF_X34_Y19_N3
\C1|SQ_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[5]~16_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(5));

-- Location: LCCOMB_X34_Y19_N10
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|SQ_X1\(2) $ (VCC)
-- \C1|Add0~1\ = CARRY(\C1|SQ_X1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X34_Y19_N16
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

-- Location: LCCOMB_X34_Y19_N18
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(6) & (\C1|Add0~7\ $ (GND))) # (!\C1|SQ_X1\(6) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|SQ_X1\(6) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X34_Y19_N20
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

-- Location: LCCOMB_X34_Y19_N22
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

-- Location: LCCOMB_X34_Y18_N20
\C1|SQ_X1[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~18_combout\ = !\C1|Add18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add18~0_combout\,
	combout => \C1|SQ_X1[1]~18_combout\);

-- Location: LCFF_X34_Y18_N21
\C1|SQ_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[1]~18_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(1));

-- Location: LCCOMB_X35_Y20_N2
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

-- Location: LCCOMB_X35_Y20_N4
\C1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (\C1|Add0~0_combout\ & (!\C1|Add5~1\)) # (!\C1|Add0~0_combout\ & ((\C1|Add5~1\) # (GND)))
-- \C1|Add5~3\ = CARRY((!\C1|Add5~1\) # (!\C1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|Add5~1\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X35_Y20_N6
\C1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (\C1|Add0~2_combout\ & (\C1|Add5~3\ $ (GND))) # (!\C1|Add0~2_combout\ & (!\C1|Add5~3\ & VCC))
-- \C1|Add5~5\ = CARRY((\C1|Add0~2_combout\ & !\C1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X35_Y20_N8
\C1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (\C1|Add0~4_combout\ & (!\C1|Add5~5\)) # (!\C1|Add0~4_combout\ & ((\C1|Add5~5\) # (GND)))
-- \C1|Add5~7\ = CARRY((!\C1|Add5~5\) # (!\C1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X35_Y20_N10
\C1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (\C1|Add0~6_combout\ & (\C1|Add5~7\ $ (GND))) # (!\C1|Add0~6_combout\ & (!\C1|Add5~7\ & VCC))
-- \C1|Add5~9\ = CARRY((\C1|Add0~6_combout\ & !\C1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X35_Y20_N12
\C1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (\C1|Add0~8_combout\ & (!\C1|Add5~9\)) # (!\C1|Add0~8_combout\ & ((\C1|Add5~9\) # (GND)))
-- \C1|Add5~11\ = CARRY((!\C1|Add5~9\) # (!\C1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X35_Y20_N14
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

-- Location: LCCOMB_X35_Y20_N16
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

-- Location: LCCOMB_X35_Y20_N18
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

-- Location: LCCOMB_X35_Y20_N20
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

-- Location: LCCOMB_X35_Y20_N22
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

-- Location: LCCOMB_X36_Y20_N26
\C1|LessThan79~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~5_combout\ = (\C1|Add5~20_combout\) # ((\C1|Add5~18_combout\ & \C1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~20_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan79~5_combout\);

-- Location: LCCOMB_X35_Y20_N0
\C1|LessThan101~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan101~2_combout\ = ((!\C1|Add5~0_combout\ & !\C1|Add5~2_combout\)) # (!\C1|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan101~2_combout\);

-- Location: LCCOMB_X36_Y20_N6
\C1|LessThan79~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~6_combout\ = (!\C1|Add5~10_combout\ & (!\C1|Add5~8_combout\ & ((\C1|LessThan101~2_combout\) # (!\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan101~2_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan79~6_combout\);

-- Location: LCCOMB_X36_Y20_N18
\C1|LessThan79~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~7_combout\ = (!\C1|Add5~14_combout\ & (!\C1|Add5~20_combout\ & ((\C1|LessThan79~6_combout\) # (!\C1|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|LessThan79~6_combout\,
	combout => \C1|LessThan79~7_combout\);

-- Location: LCCOMB_X35_Y20_N30
\C1|LessThan79~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~4_combout\ = (!\C1|Add5~12_combout\ & !\C1|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~14_combout\,
	combout => \C1|LessThan79~4_combout\);

-- Location: LCCOMB_X36_Y20_N0
\C1|LessThan78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~0_combout\ = (\C1|Add5~10_combout\ & ((\C1|Add5~8_combout\) # ((\C1|Add5~6_combout\) # (!\C1|LessThan101~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|LessThan101~2_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan78~0_combout\);

-- Location: LCCOMB_X32_Y20_N28
\C1|LessThan78~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~1_combout\ = (\C1|Add5~18_combout\ & (\C1|Add5~16_combout\ & ((\C1|LessThan78~0_combout\) # (!\C1|LessThan79~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~18_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan79~4_combout\,
	datad => \C1|LessThan78~0_combout\,
	combout => \C1|LessThan78~1_combout\);

-- Location: LCCOMB_X32_Y20_N26
\C1|dMap~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~75_combout\ = (\C1|Add5~20_combout\ & (((\C1|LessThan79~7_combout\)) # (!\C1|LessThan79~5_combout\))) # (!\C1|Add5~20_combout\ & (\C1|LessThan78~1_combout\ & ((\C1|LessThan79~7_combout\) # (!\C1|LessThan79~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|LessThan79~5_combout\,
	datac => \C1|LessThan79~7_combout\,
	datad => \C1|LessThan78~1_combout\,
	combout => \C1|dMap~75_combout\);

-- Location: LCCOMB_X34_Y20_N4
\C1|LessThan100~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~2_combout\ = (\C1|Add5~12_combout\ & \C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan100~2_combout\);

-- Location: LCCOMB_X35_Y20_N28
\C1|LessThan84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~0_combout\ = (!\C1|Add5~18_combout\ & (!\C1|Add5~20_combout\ & ((!\C1|Add5~16_combout\) # (!\C1|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~20_combout\,
	combout => \C1|LessThan84~0_combout\);

-- Location: LCCOMB_X34_Y20_N0
\C1|LessThan88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan88~0_combout\ = ((\C1|LessThan100~2_combout\ & ((\C1|Add5~10_combout\) # (!\C1|LessThan93~0_combout\)))) # (!\C1|LessThan84~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan93~0_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan100~2_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|LessThan88~0_combout\);

-- Location: LCCOMB_X35_Y22_N8
\C1|LessThan75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan75~0_combout\ = (\C1|Add5~2_combout\ & \C1|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan75~0_combout\);

-- Location: LCCOMB_X35_Y22_N10
\C1|LessThan79~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~2_combout\ = (!\C1|Add5~8_combout\ & !\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan79~2_combout\);

-- Location: LCCOMB_X35_Y22_N16
\C1|LessThan92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan92~0_combout\ = ((\C1|Add5~6_combout\ & (\C1|Add5~0_combout\ & \C1|LessThan75~0_combout\))) # (!\C1|LessThan79~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|LessThan75~0_combout\,
	datad => \C1|LessThan79~2_combout\,
	combout => \C1|LessThan92~0_combout\);

-- Location: LCCOMB_X34_Y20_N6
\C1|dMap~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~74_combout\ = (!\C1|LessThan88~0_combout\ & (((\C1|LessThan100~2_combout\ & \C1|LessThan92~0_combout\)) # (!\C1|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan84~0_combout\,
	datab => \C1|LessThan100~2_combout\,
	datac => \C1|LessThan88~0_combout\,
	datad => \C1|LessThan92~0_combout\,
	combout => \C1|dMap~74_combout\);

-- Location: LCCOMB_X33_Y20_N0
\C1|SQ_X1[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~3_combout\ = (\C1|dMap~94_combout\ & (\C1|dMap~102_combout\ & (\C1|dMap~75_combout\))) # (!\C1|dMap~94_combout\ & ((\C1|dMap~74_combout\) # ((\C1|dMap~102_combout\ & \C1|dMap~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~94_combout\,
	datab => \C1|dMap~102_combout\,
	datac => \C1|dMap~75_combout\,
	datad => \C1|dMap~74_combout\,
	combout => \C1|SQ_X1[8]~3_combout\);

-- Location: LCCOMB_X31_Y21_N22
\C1|dMap~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~85_combout\ = (!\C1|SQ_Y1\(8) & (!\C1|SQ_Y1\(9) & !\C1|SQ_Y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|SQ_Y1\(9),
	datac => \C1|SQ_Y1\(10),
	combout => \C1|dMap~85_combout\);

-- Location: LCCOMB_X33_Y21_N22
\C1|dMap~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~95_combout\ = ((\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(2) & !\C1|SQ_Y1\(4))) # (!\C1|SQ_Y1\(3) & ((\C1|SQ_Y1\(4))))) # (!\C1|SQ_Y1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|dMap~95_combout\);

-- Location: LCCOMB_X33_Y21_N28
\C1|dMap~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~96_combout\ = (((\C1|dMap~95_combout\) # (!\C1|dMap~85_combout\)) # (!\C1|SQ_Y1\(6))) # (!\C1|SQ_Y1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~85_combout\,
	datad => \C1|dMap~95_combout\,
	combout => \C1|dMap~96_combout\);

-- Location: LCCOMB_X36_Y20_N20
\C1|LessThan100~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~4_combout\ = (\C1|Add5~6_combout\ & ((\C1|Add5~4_combout\) # ((\C1|Add5~0_combout\ & \C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~2_combout\,
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan100~4_combout\);

-- Location: LCCOMB_X36_Y20_N2
\C1|LessThan100~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~5_combout\ = (\C1|Add5~8_combout\ & (\C1|Add5~16_combout\ & (\C1|LessThan100~4_combout\ & \C1|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan100~4_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan100~5_combout\);

-- Location: LCCOMB_X34_Y22_N12
\C1|LessThan101~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan101~3_combout\ = (!\C1|Add5~8_combout\ & (!\C1|Add5~6_combout\ & (!\C1|Add5~10_combout\ & \C1|LessThan101~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan101~2_combout\,
	combout => \C1|LessThan101~3_combout\);

-- Location: LCCOMB_X34_Y22_N26
\C1|LessThan101~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan101~4_combout\ = ((!\C1|Add5~14_combout\ & ((\C1|LessThan101~3_combout\) # (!\C1|Add5~12_combout\)))) # (!\C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|LessThan101~3_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan101~4_combout\);

-- Location: LCCOMB_X35_Y19_N4
\C1|dMap~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~81_combout\ = (\C1|LessThan79~3_combout\ & (\C1|LessThan101~4_combout\ & ((\C1|LessThan100~5_combout\) # (!\C1|LessThan100~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan100~6_combout\,
	datab => \C1|LessThan79~3_combout\,
	datac => \C1|LessThan100~5_combout\,
	datad => \C1|LessThan101~4_combout\,
	combout => \C1|dMap~81_combout\);

-- Location: LCCOMB_X35_Y19_N8
\C1|LessThan106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan106~0_combout\ = (\C1|Add5~8_combout\) # ((\C1|Add5~6_combout\) # ((\C1|Add5~0_combout\ & \C1|LessThan75~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|LessThan75~0_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan106~0_combout\);

-- Location: LCCOMB_X35_Y19_N14
\C1|LessThan106~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan106~1_combout\ = (\C1|Add5~16_combout\ & (((\C1|Add5~10_combout\ & \C1|LessThan106~0_combout\)) # (!\C1|LessThan79~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan106~0_combout\,
	datad => \C1|LessThan79~4_combout\,
	combout => \C1|LessThan106~1_combout\);

-- Location: LCCOMB_X35_Y19_N0
\C1|DRAWMAP~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~59_combout\ = (\C1|LessThan79~3_combout\ & ((\C1|LessThan106~1_combout\ & (!\C1|LessThan104~1_combout\)) # (!\C1|LessThan106~1_combout\ & ((\C1|LessThan110~1_combout\))))) # (!\C1|LessThan79~3_combout\ & (!\C1|LessThan104~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan104~1_combout\,
	datab => \C1|LessThan79~3_combout\,
	datac => \C1|LessThan106~1_combout\,
	datad => \C1|LessThan110~1_combout\,
	combout => \C1|DRAWMAP~59_combout\);

-- Location: LCCOMB_X34_Y20_N16
\C1|SQ_X1[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~4_combout\ = (\C1|dMap~88_combout\ & (!\C1|dMap~96_combout\ & ((\C1|DRAWMAP~59_combout\)))) # (!\C1|dMap~88_combout\ & ((\C1|dMap~81_combout\) # ((!\C1|dMap~96_combout\ & \C1|DRAWMAP~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~88_combout\,
	datab => \C1|dMap~96_combout\,
	datac => \C1|dMap~81_combout\,
	datad => \C1|DRAWMAP~59_combout\,
	combout => \C1|SQ_X1[8]~4_combout\);

-- Location: LCCOMB_X34_Y20_N30
\C1|LessThan84~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~2_combout\ = (!\C1|Add5~4_combout\ & ((!\C1|Add5~2_combout\) # (!\C1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan84~2_combout\);

-- Location: LCCOMB_X34_Y20_N8
\C1|LessThan105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan105~0_combout\ = (((\C1|LessThan84~2_combout\) # (!\C1|Add5~10_combout\)) # (!\C1|Add5~6_combout\)) # (!\C1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan84~2_combout\,
	combout => \C1|LessThan105~0_combout\);

-- Location: LCCOMB_X35_Y20_N24
\C1|LessThan104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan104~0_combout\ = (\C1|Add5~4_combout\) # ((\C1|Add5~2_combout\) # ((\C1|Add5~6_combout\) # (\C1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~2_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~0_combout\,
	combout => \C1|LessThan104~0_combout\);

-- Location: LCCOMB_X34_Y20_N2
\C1|LessThan104~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan104~1_combout\ = (\C1|LessThan100~2_combout\) # (((\C1|LessThan100~3_combout\ & \C1|LessThan104~0_combout\)) # (!\C1|LessThan84~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan100~3_combout\,
	datab => \C1|LessThan104~0_combout\,
	datac => \C1|LessThan100~2_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|LessThan104~1_combout\);

-- Location: LCCOMB_X34_Y20_N26
\C1|dMap~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~65_combout\ = (\C1|LessThan104~1_combout\ & (((\C1|LessThan79~4_combout\ & \C1|LessThan105~0_combout\)) # (!\C1|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan79~4_combout\,
	datac => \C1|LessThan105~0_combout\,
	datad => \C1|LessThan104~1_combout\,
	combout => \C1|dMap~65_combout\);

-- Location: LCCOMB_X33_Y21_N18
\C1|dMap~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~89_combout\ = ((!\C1|SQ_Y1\(4) & \C1|SQ_Y1\(3))) # (!\C1|SQ_Y1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(4),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(6),
	combout => \C1|dMap~89_combout\);

-- Location: LCCOMB_X33_Y20_N2
\C1|LessThan87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan87~0_combout\ = (!\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(2)) # ((\C1|SQ_Y1\(3)) # (!\C1|SQ_Y1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|LessThan87~0_combout\);

-- Location: LCCOMB_X33_Y21_N30
\C1|dMap~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~91_combout\ = ((\C1|dMap~89_combout\) # ((!\C1|LessThan87~0_combout\ & \C1|SQ_Y1\(6)))) # (!\C1|dMap~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~90_combout\,
	datab => \C1|dMap~89_combout\,
	datac => \C1|LessThan87~0_combout\,
	datad => \C1|SQ_Y1\(6),
	combout => \C1|dMap~91_combout\);

-- Location: LCCOMB_X34_Y20_N14
\C1|LessThan84~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~1_combout\ = (\C1|Add5~10_combout\ & (\C1|Add5~12_combout\ & \C1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan84~1_combout\);

-- Location: LCCOMB_X34_Y20_N28
\C1|LessThan84~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~3_combout\ = ((\C1|LessThan84~1_combout\ & ((!\C1|LessThan84~2_combout\) # (!\C1|LessThan83~0_combout\)))) # (!\C1|LessThan84~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan83~0_combout\,
	datab => \C1|LessThan84~2_combout\,
	datac => \C1|LessThan84~1_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|LessThan84~3_combout\);

-- Location: LCCOMB_X34_Y20_N22
\C1|dMap~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~64_combout\ = (\C1|LessThan84~3_combout\ & ((\C1|LessThan93~0_combout\) # ((!\C1|Add5~14_combout\) # (!\C1|LessThan84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan93~0_combout\,
	datab => \C1|LessThan84~1_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|LessThan84~3_combout\,
	combout => \C1|dMap~64_combout\);

-- Location: LCCOMB_X34_Y20_N10
\C1|SQ_X1[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~7_combout\ = (\C1|dMap~105_combout\ & (((!\C1|dMap~91_combout\ & \C1|dMap~64_combout\)))) # (!\C1|dMap~105_combout\ & ((\C1|dMap~65_combout\) # ((!\C1|dMap~91_combout\ & \C1|dMap~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~105_combout\,
	datab => \C1|dMap~65_combout\,
	datac => \C1|dMap~91_combout\,
	datad => \C1|dMap~64_combout\,
	combout => \C1|SQ_X1[8]~7_combout\);

-- Location: LCCOMB_X31_Y22_N0
\C1|dMap~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~84_combout\ = ((\C1|SQ_Y1\(4) & ((!\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(3))))) # (!\C1|SQ_Y1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(4),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~84_combout\);

-- Location: LCCOMB_X32_Y22_N24
\C1|dMap~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~86_combout\ = (\C1|SQ_Y1\(7)) # ((\C1|SQ_Y1\(6)) # ((\C1|dMap~84_combout\) # (!\C1|dMap~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~84_combout\,
	datad => \C1|dMap~85_combout\,
	combout => \C1|dMap~86_combout\);

-- Location: LCCOMB_X34_Y22_N22
\C1|dMap~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~63_combout\ = (\C1|LessThan100~2_combout\ & (!\C1|LessThan101~3_combout\ & (!\C1|LessThan92~0_combout\ & \C1|LessThan84~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan100~2_combout\,
	datab => \C1|LessThan101~3_combout\,
	datac => \C1|LessThan92~0_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|dMap~63_combout\);

-- Location: LCCOMB_X33_Y20_N4
\C1|SQ_X1[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~8_combout\ = (\C1|LessThan71~1_combout\) # ((!\C1|dMap~86_combout\ & \C1|dMap~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan71~1_combout\,
	datac => \C1|dMap~86_combout\,
	datad => \C1|dMap~63_combout\,
	combout => \C1|SQ_X1[8]~8_combout\);

-- Location: LCCOMB_X33_Y20_N28
\C1|dMap~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~98_combout\ = ((\C1|SQ_Y1\(3) & ((\C1|SQ_Y1\(2)) # (\C1|SQ_Y1\(1))))) # (!\C1|SQ_Y1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(3),
	combout => \C1|dMap~98_combout\);

-- Location: LCCOMB_X33_Y20_N14
\C1|dMap~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~99_combout\ = (\C1|dMap~97_combout\) # ((!\C1|SQ_Y1\(6) & ((\C1|dMap~98_combout\) # (!\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~97_combout\,
	datab => \C1|dMap~98_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~99_combout\);

-- Location: LCCOMB_X34_Y22_N4
\C1|dMap~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~66_combout\ = (\C1|Add5~14_combout\ & \C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~14_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|dMap~66_combout\);

-- Location: LCCOMB_X34_Y22_N18
\C1|dMap~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~67_combout\ = (\C1|Add5~6_combout\) # ((\C1|Add5~4_combout\ & ((\C1|Add5~2_combout\) # (!\C1|Add5~10_combout\))) # (!\C1|Add5~4_combout\ & (!\C1|Add5~10_combout\ & \C1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|dMap~67_combout\);

-- Location: LCCOMB_X34_Y22_N28
\C1|dMap~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~68_combout\ = (\C1|Add5~10_combout\ & (\C1|LessThan79~3_combout\ $ (((\C1|Add5~8_combout\) # (\C1|dMap~67_combout\))))) # (!\C1|Add5~10_combout\ & (\C1|Add5~8_combout\ & (\C1|LessThan79~3_combout\ & \C1|dMap~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|LessThan79~3_combout\,
	datad => \C1|dMap~67_combout\,
	combout => \C1|dMap~68_combout\);

-- Location: LCCOMB_X34_Y22_N14
\C1|dMap~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~69_combout\ = (!\C1|Add5~16_combout\ & (\C1|LessThan79~3_combout\ $ (((!\C1|dMap~68_combout\) # (!\C1|dMap~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan79~3_combout\,
	datac => \C1|dMap~66_combout\,
	datad => \C1|dMap~68_combout\,
	combout => \C1|dMap~69_combout\);

-- Location: LCCOMB_X33_Y20_N30
\C1|SQ_X1[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~6_combout\ = (!\C1|dMap~99_combout\ & (\C1|dMap~69_combout\ & ((\C1|LessThan87~0_combout\) # (!\C1|SQ_Y1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|LessThan87~0_combout\,
	datac => \C1|dMap~99_combout\,
	datad => \C1|dMap~69_combout\,
	combout => \C1|SQ_X1[8]~6_combout\);

-- Location: LCCOMB_X33_Y20_N10
\C1|SQ_X1[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~9_combout\ = (\C1|SQ_X1[8]~8_combout\) # ((\C1|LessThan79~3_combout\ & ((\C1|SQ_X1[8]~7_combout\) # (\C1|SQ_X1[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~3_combout\,
	datab => \C1|SQ_X1[8]~7_combout\,
	datac => \C1|SQ_X1[8]~8_combout\,
	datad => \C1|SQ_X1[8]~6_combout\,
	combout => \C1|SQ_X1[8]~9_combout\);

-- Location: LCCOMB_X33_Y20_N16
\C1|SQ_X1[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~10_combout\ = (\C1|SQ_X1[8]~5_combout\) # ((\C1|SQ_X1[8]~3_combout\) # ((\C1|SQ_X1[8]~4_combout\) # (\C1|SQ_X1[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[8]~5_combout\,
	datab => \C1|SQ_X1[8]~3_combout\,
	datac => \C1|SQ_X1[8]~4_combout\,
	datad => \C1|SQ_X1[8]~9_combout\,
	combout => \C1|SQ_X1[8]~10_combout\);

-- Location: LCCOMB_X33_Y19_N30
\C1|SQ_X1[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~11_combout\ = (\C1|LessThan110~1_combout\ & (!\C1|LessThan69~2_combout\ & (\C1|SQ_X1[8]~10_combout\ & \C1|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan110~1_combout\,
	datab => \C1|LessThan69~2_combout\,
	datac => \C1|SQ_X1[8]~10_combout\,
	datad => \C1|process_0~13_combout\,
	combout => \C1|SQ_X1[8]~11_combout\);

-- Location: LCCOMB_X31_Y19_N8
\C1|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~1_cout\ = CARRY(\C1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|Add8~1_cout\);

-- Location: LCCOMB_X31_Y19_N10
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

-- Location: LCCOMB_X31_Y19_N12
\C1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~4_combout\ = (\C1|Add1~4_combout\ & ((GND) # (!\C1|Add8~3_cout\))) # (!\C1|Add1~4_combout\ & (\C1|Add8~3_cout\ $ (GND)))
-- \C1|Add8~5\ = CARRY((\C1|Add1~4_combout\) # (!\C1|Add8~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|Add8~3_cout\,
	combout => \C1|Add8~4_combout\,
	cout => \C1|Add8~5\);

-- Location: LCCOMB_X31_Y19_N14
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

-- Location: LCCOMB_X31_Y19_N16
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

-- Location: LCCOMB_X31_Y19_N18
\C1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~10_combout\ = (\C1|Add1~10_combout\ & (\C1|Add8~9\ & VCC)) # (!\C1|Add1~10_combout\ & (!\C1|Add8~9\))
-- \C1|Add8~11\ = CARRY((!\C1|Add1~10_combout\ & !\C1|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|Add8~9\,
	combout => \C1|Add8~10_combout\,
	cout => \C1|Add8~11\);

-- Location: LCCOMB_X31_Y19_N20
\C1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~12_combout\ = (\C1|Add1~12_combout\ & ((GND) # (!\C1|Add8~11\))) # (!\C1|Add1~12_combout\ & (\C1|Add8~11\ $ (GND)))
-- \C1|Add8~13\ = CARRY((\C1|Add1~12_combout\) # (!\C1|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|Add8~11\,
	combout => \C1|Add8~12_combout\,
	cout => \C1|Add8~13\);

-- Location: LCCOMB_X31_Y19_N22
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

-- Location: LCCOMB_X31_Y19_N24
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

-- Location: LCCOMB_X31_Y19_N26
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

-- Location: LCCOMB_X31_Y19_N28
\C1|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~20_combout\ = (\C1|Add1~20_combout\ & ((GND) # (!\C1|Add8~19\))) # (!\C1|Add1~20_combout\ & (\C1|Add8~19\ $ (GND)))
-- \C1|Add8~21\ = CARRY((\C1|Add1~20_combout\) # (!\C1|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add8~19\,
	combout => \C1|Add8~20_combout\,
	cout => \C1|Add8~21\);

-- Location: LCCOMB_X31_Y19_N30
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

-- Location: LCCOMB_X31_Y19_N0
\C1|dMap~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~111_combout\ = (!\C1|Add8~20_combout\ & (!\C1|Add8~18_combout\ & \C1|Add8~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~20_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|Add8~22_combout\,
	combout => \C1|dMap~111_combout\);

-- Location: LCCOMB_X31_Y19_N6
\C1|dMap~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~112_combout\ = (\C1|Add8~12_combout\ & (\C1|Add8~14_combout\ & (\C1|Add8~16_combout\ & \C1|dMap~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~14_combout\,
	datac => \C1|Add8~16_combout\,
	datad => \C1|dMap~111_combout\,
	combout => \C1|dMap~112_combout\);

-- Location: LCCOMB_X30_Y19_N16
\C1|LessThan119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~0_combout\ = (!\C1|Add8~8_combout\ & (((!\C1|Add8~4_combout\) # (!\C1|Add8~6_combout\)) # (!\C1|SQ_Y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|LessThan119~0_combout\);

-- Location: LCCOMB_X32_Y19_N26
\C1|dMap~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~204_combout\ = (\C1|LessThan121~0_combout\) # (((!\C1|LessThan119~0_combout\) # (!\C1|dMap~112_combout\)) # (!\C1|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan121~0_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~112_combout\,
	datad => \C1|LessThan119~0_combout\,
	combout => \C1|dMap~204_combout\);

-- Location: LCCOMB_X34_Y19_N0
\C1|dirQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~4_combout\ = (\C1|dMap~128_combout\ & (!\C1|dMap~204_combout\ & (\C1|dMap~64_combout\))) # (!\C1|dMap~128_combout\ & ((\C1|dMap~65_combout\) # ((!\C1|dMap~204_combout\ & \C1|dMap~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~128_combout\,
	datab => \C1|dMap~204_combout\,
	datac => \C1|dMap~64_combout\,
	datad => \C1|dMap~65_combout\,
	combout => \C1|dirQ1X2~4_combout\);

-- Location: LCCOMB_X32_Y19_N24
\C1|dMap~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~109_combout\ = (\C1|Add8~12_combout\) # ((\C1|Add8~14_combout\) # ((\C1|Add8~16_combout\) # (!\C1|Add8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~14_combout\,
	datac => \C1|Add8~16_combout\,
	datad => \C1|Add8~18_combout\,
	combout => \C1|dMap~109_combout\);

-- Location: LCCOMB_X31_Y21_N24
\C1|dMap~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~107_combout\ = (\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~107_combout\);

-- Location: LCCOMB_X30_Y19_N22
\C1|LessThan121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan121~0_combout\ = (!\C1|Add8~6_combout\ & !\C1|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~6_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|LessThan121~0_combout\);

-- Location: LCCOMB_X32_Y19_N18
\C1|dMap~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~108_combout\ = (\C1|Add8~10_combout\ & ((\C1|Add8~8_combout\) # ((!\C1|LessThan121~0_combout\) # (!\C1|dMap~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|dMap~107_combout\,
	datac => \C1|LessThan121~0_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~108_combout\);

-- Location: LCCOMB_X32_Y19_N6
\C1|dMap~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~110_combout\ = ((\C1|Add8~20_combout\) # ((\C1|dMap~109_combout\) # (\C1|dMap~108_combout\))) # (!\C1|Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|dMap~109_combout\,
	datad => \C1|dMap~108_combout\,
	combout => \C1|dMap~110_combout\);

-- Location: LCCOMB_X32_Y20_N18
\C1|dirQ1X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~5_combout\ = (\C1|dMap~70_combout\ & (((\C1|dMap~75_combout\ & !\C1|dMap~110_combout\)) # (!\C1|dMap~204_combout\))) # (!\C1|dMap~70_combout\ & (\C1|dMap~75_combout\ & (!\C1|dMap~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~70_combout\,
	datab => \C1|dMap~75_combout\,
	datac => \C1|dMap~110_combout\,
	datad => \C1|dMap~204_combout\,
	combout => \C1|dirQ1X2~5_combout\);

-- Location: LCCOMB_X30_Y19_N14
\C1|LessThan119~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~1_combout\ = (\C1|LessThan119~0_combout\) # (!\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan119~0_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|LessThan119~1_combout\);

-- Location: LCCOMB_X32_Y19_N28
\C1|LessThan112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~0_combout\ = (!\C1|Add8~16_combout\ & (!\C1|Add8~12_combout\ & !\C1|Add8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~16_combout\,
	datac => \C1|Add8~12_combout\,
	datad => \C1|Add8~14_combout\,
	combout => \C1|LessThan112~0_combout\);

-- Location: LCCOMB_X31_Y19_N4
\C1|dMap~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~122_combout\ = ((!\C1|Add8~10_combout\ & ((!\C1|Add8~6_combout\) # (!\C1|Add8~8_combout\)))) # (!\C1|LessThan112~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|LessThan112~0_combout\,
	combout => \C1|dMap~122_combout\);

-- Location: LCCOMB_X30_Y19_N28
\C1|dMap~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~123_combout\ = (\C1|dMap~121_combout\) # (((\C1|dMap~122_combout\) # (!\C1|LessThan119~1_combout\)) # (!\C1|dMap~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~121_combout\,
	datab => \C1|dMap~111_combout\,
	datac => \C1|LessThan119~1_combout\,
	datad => \C1|dMap~122_combout\,
	combout => \C1|dMap~123_combout\);

-- Location: LCCOMB_X34_Y22_N24
\C1|dirQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~3_combout\ = (!\C1|dMap~123_combout\ & \C1|dMap~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~123_combout\,
	datad => \C1|dMap~69_combout\,
	combout => \C1|dirQ1X2~3_combout\);

-- Location: LCCOMB_X33_Y19_N2
\C1|dirQ1X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~6_combout\ = (\C1|dirQ1X2~5_combout\) # ((\C1|LessThan79~3_combout\ & ((\C1|dirQ1X2~4_combout\) # (\C1|dirQ1X2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~3_combout\,
	datab => \C1|dirQ1X2~4_combout\,
	datac => \C1|dirQ1X2~5_combout\,
	datad => \C1|dirQ1X2~3_combout\,
	combout => \C1|dirQ1X2~6_combout\);

-- Location: LCCOMB_X36_Y20_N28
\C1|dMap~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~203_combout\ = (\C1|Add5~8_combout\ & (!\C1|Add5~14_combout\)) # (!\C1|Add5~8_combout\ & (\C1|Add5~14_combout\ & !\C1|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~14_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~203_combout\);

-- Location: LCCOMB_X36_Y20_N14
\C1|dMap~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~72_combout\ = (\C1|Add5~10_combout\ & ((\C1|Add5~14_combout\ & ((!\C1|dMap~203_combout\))) # (!\C1|Add5~14_combout\ & ((\C1|LessThan100~4_combout\) # (\C1|dMap~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|LessThan100~4_combout\,
	datad => \C1|dMap~203_combout\,
	combout => \C1|dMap~72_combout\);

-- Location: LCCOMB_X36_Y20_N30
\C1|dMap~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~71_combout\ = (!\C1|Add5~20_combout\ & (\C1|Add5~18_combout\ & !\C1|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~20_combout\,
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|dMap~71_combout\);

-- Location: LCCOMB_X36_Y20_N4
\C1|dMap~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~73_combout\ = (\C1|dMap~71_combout\ & (\C1|Add5~14_combout\ $ (((\C1|Add5~12_combout\) # (\C1|dMap~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|dMap~72_combout\,
	datad => \C1|dMap~71_combout\,
	combout => \C1|dMap~73_combout\);

-- Location: LCCOMB_X32_Y20_N30
\C1|dMap~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~129_combout\ = (\C1|LessThan88~0_combout\ & !\C1|LessThan84~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan88~0_combout\,
	datad => \C1|LessThan84~3_combout\,
	combout => \C1|dMap~129_combout\);

-- Location: LCCOMB_X32_Y20_N24
\C1|dirQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~0_combout\ = (\C1|LessThan113~1_combout\) # ((!\C1|dMap~204_combout\ & ((\C1|dMap~73_combout\) # (\C1|dMap~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan113~1_combout\,
	datab => \C1|dMap~204_combout\,
	datac => \C1|dMap~73_combout\,
	datad => \C1|dMap~129_combout\,
	combout => \C1|dirQ1X2~0_combout\);

-- Location: LCCOMB_X32_Y19_N10
\C1|dMap~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~106_combout\ = (!\C1|Add8~8_combout\ & !\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~106_combout\);

-- Location: LCCOMB_X31_Y19_N2
\C1|dMap~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~125_combout\ = (((\C1|dMap~124_combout\ & !\C1|Add8~6_combout\)) # (!\C1|dMap~112_combout\)) # (!\C1|dMap~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~124_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|dMap~106_combout\,
	datad => \C1|dMap~112_combout\,
	combout => \C1|dMap~125_combout\);

-- Location: LCCOMB_X35_Y19_N26
\C1|dirQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~1_combout\ = (\C1|dMap~120_combout\ & (!\C1|dMap~125_combout\ & (\C1|dMap~81_combout\))) # (!\C1|dMap~120_combout\ & ((\C1|DRAWMAP~59_combout\) # ((!\C1|dMap~125_combout\ & \C1|dMap~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~120_combout\,
	datab => \C1|dMap~125_combout\,
	datac => \C1|dMap~81_combout\,
	datad => \C1|DRAWMAP~59_combout\,
	combout => \C1|dirQ1X2~1_combout\);

-- Location: LCCOMB_X35_Y19_N20
\C1|dMap~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~116_combout\ = ((\C1|Add8~6_combout\ & ((\C1|SQ_Y1\(2)) # (\C1|Add8~4_combout\)))) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|dMap~116_combout\);

-- Location: LCCOMB_X35_Y19_N28
\C1|dMap~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~130_combout\ = (\C1|dMap~112_combout\ & (!\C1|Add8~10_combout\ & (!\C1|dMap~116_combout\ & \C1|dMap~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~112_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~116_combout\,
	datad => \C1|dMap~63_combout\,
	combout => \C1|dMap~130_combout\);

-- Location: LCCOMB_X34_Y19_N30
\C1|dirQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~2_combout\ = (\C1|dirQ1X2~1_combout\) # ((\C1|dMap~130_combout\) # ((!\C1|dMap~131_combout\ & \C1|dMap~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~131_combout\,
	datab => \C1|dMap~74_combout\,
	datac => \C1|dirQ1X2~1_combout\,
	datad => \C1|dMap~130_combout\,
	combout => \C1|dirQ1X2~2_combout\);

-- Location: LCCOMB_X33_Y19_N28
\C1|SQ_X1[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~2_combout\ = (!\C1|LessThan112~3_combout\ & ((\C1|dirQ1X2~6_combout\) # ((\C1|dirQ1X2~0_combout\) # (\C1|dirQ1X2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan112~3_combout\,
	datab => \C1|dirQ1X2~6_combout\,
	datac => \C1|dirQ1X2~0_combout\,
	datad => \C1|dirQ1X2~2_combout\,
	combout => \C1|SQ_X1[8]~2_combout\);

-- Location: LCCOMB_X33_Y19_N24
\C1|SQ_X1[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~12_combout\ = (((!\C1|Add8~20_combout\ & !\C1|SQ_X1[8]~2_combout\)) # (!\C1|process_0~13_combout\)) # (!\C1|LessThan110~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan110~1_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|process_0~13_combout\,
	datad => \C1|SQ_X1[8]~2_combout\,
	combout => \C1|SQ_X1[1]~12_combout\);

-- Location: LCCOMB_X29_Y19_N14
\C1|SQ_X1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~1_combout\ = (\SW~combout\(0) & (\C1|SQ_X2[1]~2_combout\ & ((!\C1|process_0~13_combout\) # (!\KEY~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \SW~combout\(0),
	datac => \C1|SQ_X2[1]~2_combout\,
	datad => \C1|process_0~13_combout\,
	combout => \C1|SQ_X1[1]~1_combout\);

-- Location: LCCOMB_X33_Y19_N26
\C1|SQ_X1[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~13_combout\ = (!\C1|SQ_X1[8]~11_combout\ & (\C1|SQ_X1[1]~1_combout\ & ((\C1|SQ_X1[1]~12_combout\) # (!\C1|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|SQ_X1[8]~11_combout\,
	datac => \C1|SQ_X1[1]~12_combout\,
	datad => \C1|SQ_X1[1]~1_combout\,
	combout => \C1|SQ_X1[1]~13_combout\);

-- Location: LCFF_X33_Y19_N7
\C1|SQ_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add18~2_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(2));

-- Location: LCCOMB_X33_Y19_N8
\C1|Add18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~4_combout\ = ((\C1|process_0~13_combout\ $ (\C1|SQ_X1\(3) $ (\C1|Add18~3\)))) # (GND)
-- \C1|Add18~5\ = CARRY((\C1|process_0~13_combout\ & (\C1|SQ_X1\(3) & !\C1|Add18~3\)) # (!\C1|process_0~13_combout\ & ((\C1|SQ_X1\(3)) # (!\C1|Add18~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add18~3\,
	combout => \C1|Add18~4_combout\,
	cout => \C1|Add18~5\);

-- Location: LCFF_X33_Y19_N9
\C1|SQ_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add18~4_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(3));

-- Location: LCCOMB_X33_Y19_N10
\C1|Add18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~6_combout\ = (\C1|process_0~13_combout\ & ((\C1|SQ_X1\(4) & ((\C1|Add18~5\) # (GND))) # (!\C1|SQ_X1\(4) & (!\C1|Add18~5\)))) # (!\C1|process_0~13_combout\ & ((\C1|SQ_X1\(4) & (!\C1|Add18~5\)) # (!\C1|SQ_X1\(4) & (\C1|Add18~5\ & VCC))))
-- \C1|Add18~7\ = CARRY((\C1|process_0~13_combout\ & ((\C1|SQ_X1\(4)) # (!\C1|Add18~5\))) # (!\C1|process_0~13_combout\ & (\C1|SQ_X1\(4) & !\C1|Add18~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add18~5\,
	combout => \C1|Add18~6_combout\,
	cout => \C1|Add18~7\);

-- Location: LCCOMB_X34_Y19_N8
\C1|SQ_X1[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~17_combout\ = !\C1|Add18~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add18~6_combout\,
	combout => \C1|SQ_X1[4]~17_combout\);

-- Location: LCFF_X34_Y19_N9
\C1|SQ_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[4]~17_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(4));

-- Location: LCCOMB_X33_Y19_N14
\C1|Add18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~10_combout\ = (\C1|process_0~13_combout\ & ((\C1|SQ_X1\(6) & (!\C1|Add18~9\)) # (!\C1|SQ_X1\(6) & ((\C1|Add18~9\) # (GND))))) # (!\C1|process_0~13_combout\ & ((\C1|SQ_X1\(6) & (\C1|Add18~9\ & VCC)) # (!\C1|SQ_X1\(6) & (!\C1|Add18~9\))))
-- \C1|Add18~11\ = CARRY((\C1|process_0~13_combout\ & ((!\C1|Add18~9\) # (!\C1|SQ_X1\(6)))) # (!\C1|process_0~13_combout\ & (!\C1|SQ_X1\(6) & !\C1|Add18~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add18~9\,
	combout => \C1|Add18~10_combout\,
	cout => \C1|Add18~11\);

-- Location: LCFF_X33_Y19_N15
\C1|SQ_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add18~10_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(6));

-- Location: LCCOMB_X33_Y19_N16
\C1|Add18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~12_combout\ = ((\C1|process_0~13_combout\ $ (\C1|SQ_X1\(7) $ (!\C1|Add18~11\)))) # (GND)
-- \C1|Add18~13\ = CARRY((\C1|process_0~13_combout\ & (!\C1|SQ_X1\(7) & !\C1|Add18~11\)) # (!\C1|process_0~13_combout\ & ((!\C1|Add18~11\) # (!\C1|SQ_X1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add18~11\,
	combout => \C1|Add18~12_combout\,
	cout => \C1|Add18~13\);

-- Location: LCCOMB_X34_Y19_N4
\C1|SQ_X1[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~15_combout\ = !\C1|Add18~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add18~12_combout\,
	combout => \C1|SQ_X1[7]~15_combout\);

-- Location: LCFF_X34_Y19_N5
\C1|SQ_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[7]~15_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(7));

-- Location: LCCOMB_X33_Y19_N18
\C1|Add18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~14_combout\ = (\C1|process_0~13_combout\ & ((\C1|SQ_X1\(8) & ((\C1|Add18~13\) # (GND))) # (!\C1|SQ_X1\(8) & (!\C1|Add18~13\)))) # (!\C1|process_0~13_combout\ & ((\C1|SQ_X1\(8) & (!\C1|Add18~13\)) # (!\C1|SQ_X1\(8) & (\C1|Add18~13\ & VCC))))
-- \C1|Add18~15\ = CARRY((\C1|process_0~13_combout\ & ((\C1|SQ_X1\(8)) # (!\C1|Add18~13\))) # (!\C1|process_0~13_combout\ & (\C1|SQ_X1\(8) & !\C1|Add18~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~13_combout\,
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add18~13\,
	combout => \C1|Add18~14_combout\,
	cout => \C1|Add18~15\);

-- Location: LCCOMB_X33_Y19_N0
\C1|SQ_X1[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~14_combout\ = !\C1|Add18~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add18~14_combout\,
	combout => \C1|SQ_X1[8]~14_combout\);

-- Location: LCFF_X33_Y19_N1
\C1|SQ_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[8]~14_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(8));

-- Location: LCCOMB_X34_Y19_N24
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(9) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(9) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X35_Y20_N26
\C1|LessThan79~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~3_combout\ = (!\C1|Add5~18_combout\ & !\C1|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~20_combout\,
	combout => \C1|LessThan79~3_combout\);

-- Location: LCCOMB_X36_Y20_N16
\C1|LessThan110~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan110~0_combout\ = (\C1|Add5~14_combout\ & \C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~14_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan110~0_combout\);

-- Location: LCCOMB_X35_Y19_N22
\C1|LessThan110~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan110~1_combout\ = (\C1|Add5~16_combout\) # (((\C1|LessThan110~0_combout\ & !\C1|LessThan79~6_combout\)) # (!\C1|LessThan79~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan79~3_combout\,
	datac => \C1|LessThan110~0_combout\,
	datad => \C1|LessThan79~6_combout\,
	combout => \C1|LessThan110~1_combout\);

-- Location: LCCOMB_X35_Y19_N12
\C1|SQ_Y1[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~4_combout\ = (\C1|SQ_Y1[9]~2_combout\ & \C1|LessThan110~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y1[9]~2_combout\,
	datad => \C1|LessThan110~1_combout\,
	combout => \C1|SQ_Y1[9]~4_combout\);

-- Location: LCCOMB_X35_Y21_N14
\C1|dMap~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~54_combout\ = (\C1|Add1~10_combout\ & (((!\C1|Add1~8_combout\)) # (!\C1|Add1~4_combout\))) # (!\C1|Add1~10_combout\ & ((\C1|Add1~8_combout\) # ((\C1|Add1~4_combout\ & \C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~54_combout\);

-- Location: LCCOMB_X35_Y21_N4
\C1|dMap~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~53_combout\ = (\C1|Add1~6_combout\ & (!\C1|Add1~12_combout\ & \C1|Add1~8_combout\)) # (!\C1|Add1~6_combout\ & (\C1|Add1~12_combout\ & !\C1|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~53_combout\);

-- Location: LCCOMB_X34_Y21_N0
\C1|dMap~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~55_combout\ = ((\C1|dMap~54_combout\) # (!\C1|dMap~53_combout\)) # (!\C1|dMap~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~41_combout\,
	datac => \C1|dMap~54_combout\,
	datad => \C1|dMap~53_combout\,
	combout => \C1|dMap~55_combout\);

-- Location: LCCOMB_X35_Y22_N24
\C1|dMap~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~56_combout\ = (\C1|Add1~4_combout\ & (((\C1|Add1~2_combout\) # (!\C1|Add1~10_combout\)))) # (!\C1|Add1~4_combout\ & (\C1|Add1~0_combout\ & (!\C1|Add1~10_combout\ & \C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|dMap~56_combout\);

-- Location: LCCOMB_X35_Y22_N30
\C1|dMap~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~57_combout\ = (\C1|Add1~8_combout\ & ((\C1|Add1~10_combout\) # ((!\C1|Add1~6_combout\) # (!\C1|dMap~56_combout\)))) # (!\C1|Add1~8_combout\ & (((\C1|dMap~56_combout\ & \C1|Add1~6_combout\)) # (!\C1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~56_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~57_combout\);

-- Location: LCCOMB_X34_Y22_N8
\C1|dMap~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~58_combout\ = (\C1|Add1~20_combout\) # ((\C1|dMap~57_combout\) # ((\C1|Add1~18_combout\) # (!\C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|dMap~57_combout\,
	datac => \C1|LessThan52~0_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|dMap~58_combout\);

-- Location: LCCOMB_X33_Y19_N20
\C1|Add18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~16_combout\ = ((\C1|SQ_X1\(9) $ (\C1|process_0~13_combout\ $ (\C1|Add18~15\)))) # (GND)
-- \C1|Add18~17\ = CARRY((\C1|SQ_X1\(9) & ((!\C1|Add18~15\) # (!\C1|process_0~13_combout\))) # (!\C1|SQ_X1\(9) & (!\C1|process_0~13_combout\ & !\C1|Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|process_0~13_combout\,
	datad => VCC,
	cin => \C1|Add18~15\,
	combout => \C1|Add18~16_combout\,
	cout => \C1|Add18~17\);

-- Location: LCFF_X33_Y19_N21
\C1|SQ_X1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add18~16_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(9));

-- Location: LCCOMB_X34_Y18_N6
\C1|LessThan149~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~6_combout\ = ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(4)))) # (!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(4),
	combout => \C1|LessThan149~6_combout\);

-- Location: LCCOMB_X33_Y18_N10
\C1|LessThan149~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~3_combout\ = ((!\C1|SQ_X1\(5) & (\C1|SQ_X1\(6) & \C1|LessThan149~6_combout\))) # (!\C1|SQ_X1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan149~6_combout\,
	combout => \C1|LessThan149~3_combout\);

-- Location: LCCOMB_X33_Y18_N24
\C1|LessThan149~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~23_combout\ = (\C1|SQ_X1\(10)) # ((\C1|SQ_X1\(9) & ((\C1|LessThan149~3_combout\) # (!\C1|SQ_X1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan149~3_combout\,
	combout => \C1|LessThan149~23_combout\);

-- Location: LCCOMB_X33_Y18_N28
\C1|LessThan134~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan134~0_combout\ = (\C1|SQ_X1\(8) & \C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan134~0_combout\);

-- Location: LCCOMB_X34_Y18_N4
\C1|LessThan133~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan133~2_combout\ = (!\C1|SQ_X1\(5) & \C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(5),
	datad => \C1|SQ_X1\(6),
	combout => \C1|LessThan133~2_combout\);

-- Location: LCCOMB_X34_Y18_N30
\C1|LessThan147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan147~0_combout\ = (!\C1|SQ_X1\(4) & (\C1|LessThan133~2_combout\ & ((\C1|LessThan151~0_combout\) # (\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan151~0_combout\,
	datab => \C1|SQ_X1\(4),
	datac => \C1|LessThan133~2_combout\,
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan147~0_combout\);

-- Location: LCCOMB_X33_Y18_N18
\C1|LessThan150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan150~0_combout\ = (!\C1|SQ_X1\(10) & (((\C1|LessThan134~0_combout\ & !\C1|LessThan147~0_combout\)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|LessThan134~0_combout\,
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan147~0_combout\,
	combout => \C1|LessThan150~0_combout\);

-- Location: LCCOMB_X33_Y18_N8
\C1|dMap~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~50_combout\ = (\C1|LessThan149~23_combout\ & \C1|LessThan150~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan149~23_combout\,
	datad => \C1|LessThan150~0_combout\,
	combout => \C1|dMap~50_combout\);

-- Location: LCCOMB_X34_Y22_N2
\C1|DRAWMAP~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~52_combout\ = (\C1|dMap~52_combout\ & (((!\C1|dMap~55_combout\ & \C1|dMap~50_combout\)) # (!\C1|dMap~58_combout\))) # (!\C1|dMap~52_combout\ & (!\C1|dMap~55_combout\ & ((\C1|dMap~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~52_combout\,
	datab => \C1|dMap~55_combout\,
	datac => \C1|dMap~58_combout\,
	datad => \C1|dMap~50_combout\,
	combout => \C1|DRAWMAP~52_combout\);

-- Location: LCCOMB_X35_Y22_N14
\C1|LessThan52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~1_combout\ = (\C1|Add1~6_combout\ & (\C1|Add1~4_combout\ & ((\C1|Add1~2_combout\) # (\C1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|LessThan52~1_combout\);

-- Location: LCCOMB_X35_Y22_N20
\C1|LessThan52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~2_combout\ = (\C1|Add1~8_combout\) # ((\C1|LessThan52~1_combout\) # ((\C1|Add1~10_combout\) # (!\C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|LessThan52~1_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|LessThan52~2_combout\);

-- Location: LCCOMB_X34_Y22_N20
\C1|LessThan52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~3_combout\ = (\C1|Add1~20_combout\) # ((\C1|Add1~18_combout\ & \C1|LessThan52~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|LessThan52~2_combout\,
	combout => \C1|LessThan52~3_combout\);

-- Location: LCCOMB_X34_Y18_N10
\C1|LessThan148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan148~0_combout\ = ((\C1|SQ_X1\(1) & !\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan148~0_combout\);

-- Location: LCCOMB_X33_Y18_N30
\C1|LessThan136~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~0_combout\ = (\C1|SQ_X1\(5) & !\C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(5),
	datad => \C1|SQ_X1\(6),
	combout => \C1|LessThan136~0_combout\);

-- Location: LCCOMB_X33_Y18_N6
\C1|LessThan134~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan134~1_combout\ = (\C1|SQ_X1\(8) & (\C1|LessThan136~0_combout\ & ((\C1|SQ_X1\(4)) # (\C1|LessThan148~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|LessThan148~0_combout\,
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan136~0_combout\,
	combout => \C1|LessThan134~1_combout\);

-- Location: LCCOMB_X33_Y20_N18
\C1|LessThan133~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan133~3_combout\ = (((\C1|SQ_X1\(6) & !\C1|SQ_X1\(4))) # (!\C1|SQ_X1\(7))) # (!\C1|SQ_X1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan133~3_combout\);

-- Location: LCCOMB_X33_Y20_N6
\C1|LessThan133~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan133~4_combout\ = (\C1|LessThan133~3_combout\) # ((\C1|SQ_X1\(6) & ((!\C1|LessThan148~0_combout\) # (!\C1|SQ_X1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan133~3_combout\,
	datac => \C1|SQ_X1\(5),
	datad => \C1|LessThan148~0_combout\,
	combout => \C1|LessThan133~4_combout\);

-- Location: LCCOMB_X33_Y20_N12
\C1|dMap~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~59_combout\ = (\C1|LessThan136~2_combout\ & (\C1|LessThan133~4_combout\ & ((\C1|LessThan134~1_combout\) # (\C1|LessThan134~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan136~2_combout\,
	datab => \C1|LessThan134~1_combout\,
	datac => \C1|LessThan134~0_combout\,
	datad => \C1|LessThan133~4_combout\,
	combout => \C1|dMap~59_combout\);

-- Location: LCCOMB_X35_Y22_N4
\C1|dMap~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~62_combout\ = (\C1|dMap~61_combout\ & (!\C1|Add1~20_combout\ & (\C1|dMap~59_combout\ & \C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~61_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|dMap~59_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|dMap~62_combout\);

-- Location: LCCOMB_X34_Y22_N30
\C1|DRAWMAP~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~53_combout\ = (\C1|DRAWMAP~51_combout\) # ((\C1|DRAWMAP~52_combout\) # ((\C1|LessThan52~3_combout\) # (\C1|dMap~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~51_combout\,
	datab => \C1|DRAWMAP~52_combout\,
	datac => \C1|LessThan52~3_combout\,
	datad => \C1|dMap~62_combout\,
	combout => \C1|DRAWMAP~53_combout\);

-- Location: LCCOMB_X33_Y21_N20
\C1|dMap~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~41_combout\ = (\C1|Add1~16_combout\ & (\C1|Add1~14_combout\ & (!\C1|Add1~20_combout\ & !\C1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add1~14_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|dMap~41_combout\);

-- Location: LCCOMB_X35_Y21_N24
\C1|dMap~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~47_combout\ = (!\C1|Add1~8_combout\ & ((\C1|Add1~4_combout\ & ((!\C1|Add1~6_combout\) # (!\C1|Add1~2_combout\))) # (!\C1|Add1~4_combout\ & ((\C1|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~47_combout\);

-- Location: LCCOMB_X34_Y21_N4
\C1|dMap~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~48_combout\ = (((!\C1|dMap~47_combout\) # (!\C1|dMap~41_combout\)) # (!\C1|Add1~10_combout\)) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~41_combout\,
	datad => \C1|dMap~47_combout\,
	combout => \C1|dMap~48_combout\);

-- Location: LCCOMB_X34_Y18_N26
\C1|LessThan145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan145~0_combout\ = (!\C1|SQ_X1\(7) & (((\C1|SQ_X1\(6)) # (!\C1|LessThan148~0_combout\)) # (!\C1|LessThan132~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan132~0_combout\,
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(7),
	datad => \C1|LessThan148~0_combout\,
	combout => \C1|LessThan145~0_combout\);

-- Location: LCCOMB_X34_Y18_N8
\C1|LessThan148~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan148~1_combout\ = (!\C1|SQ_X1\(10) & (((\C1|SQ_X1\(8) & !\C1|LessThan145~0_combout\)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(10),
	datad => \C1|LessThan145~0_combout\,
	combout => \C1|LessThan148~1_combout\);

-- Location: LCCOMB_X33_Y18_N0
\C1|dMap~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~40_combout\ = (\C1|LessThan148~1_combout\ & !\C1|LessThan150~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan148~1_combout\,
	datad => \C1|LessThan150~0_combout\,
	combout => \C1|dMap~40_combout\);

-- Location: LCCOMB_X33_Y21_N2
\C1|dMap~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~44_combout\ = (!\C1|Add1~8_combout\ & (\C1|Add1~14_combout\ & (!\C1|Add1~10_combout\ & \C1|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~14_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~16_combout\,
	combout => \C1|dMap~44_combout\);

-- Location: LCCOMB_X35_Y18_N28
\C1|dMap~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~45_combout\ = (!\C1|Add1~18_combout\ & ((\C1|Add1~6_combout\) # ((\C1|Add1~2_combout\ & \C1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~4_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|dMap~45_combout\);

-- Location: LCCOMB_X35_Y18_N26
\C1|dMap~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~46_combout\ = ((\C1|Add1~20_combout\) # ((!\C1|dMap~45_combout\) # (!\C1|dMap~44_combout\))) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|dMap~44_combout\,
	datad => \C1|dMap~45_combout\,
	combout => \C1|dMap~46_combout\);

-- Location: LCCOMB_X35_Y21_N8
\C1|dMap~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~42_combout\ = (!\C1|Add1~10_combout\ & (((!\C1|Add1~4_combout\ & !\C1|Add1~2_combout\)) # (!\C1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~4_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|dMap~42_combout\);

-- Location: LCCOMB_X35_Y21_N22
\C1|dMap~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~43_combout\ = (((!\C1|dMap~41_combout\) # (!\C1|dMap~42_combout\)) # (!\C1|Add1~8_combout\)) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|dMap~42_combout\,
	datad => \C1|dMap~41_combout\,
	combout => \C1|dMap~43_combout\);

-- Location: LCCOMB_X35_Y18_N24
\C1|DRAWMAP~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~42_combout\ = (\C1|dMap~39_combout\ & (((\C1|dMap~40_combout\ & !\C1|dMap~46_combout\)) # (!\C1|dMap~43_combout\))) # (!\C1|dMap~39_combout\ & (\C1|dMap~40_combout\ & (!\C1|dMap~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~39_combout\,
	datab => \C1|dMap~40_combout\,
	datac => \C1|dMap~46_combout\,
	datad => \C1|dMap~43_combout\,
	combout => \C1|DRAWMAP~42_combout\);

-- Location: LCCOMB_X35_Y22_N6
\C1|DRAWMAP~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~46_combout\ = (\C1|DRAWMAP~42_combout\) # ((\C1|DRAWMAP~45_combout\ & !\C1|dMap~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~45_combout\,
	datac => \C1|dMap~48_combout\,
	datad => \C1|DRAWMAP~42_combout\,
	combout => \C1|DRAWMAP~46_combout\);

-- Location: LCCOMB_X35_Y22_N22
\C1|SQ_Y1[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~3_combout\ = (\C1|LessThan153~2_combout\ & (\C1|SQ_Y1[9]~2_combout\ & ((\C1|DRAWMAP~53_combout\) # (\C1|DRAWMAP~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~2_combout\,
	datab => \C1|SQ_Y1[9]~2_combout\,
	datac => \C1|DRAWMAP~53_combout\,
	datad => \C1|DRAWMAP~46_combout\,
	combout => \C1|SQ_Y1[9]~3_combout\);

-- Location: LCCOMB_X35_Y21_N20
\C1|dMap~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~78_combout\ = (\C1|Add1~4_combout\) # ((\C1|Add1~6_combout\) # ((\C1|Add1~0_combout\ & \C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~78_combout\);

-- Location: LCCOMB_X35_Y21_N26
\C1|dMap~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~79_combout\ = (\C1|Add1~10_combout\ & ((\C1|dMap~78_combout\) # (\C1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~78_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~79_combout\);

-- Location: LCCOMB_X35_Y22_N18
\C1|dMap~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~80_combout\ = ((\C1|Add1~20_combout\) # ((\C1|dMap~79_combout\) # (!\C1|LessThan52~0_combout\))) # (!\C1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|dMap~79_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|dMap~80_combout\);

-- Location: LCCOMB_X32_Y20_N8
\C1|DRAWMAP~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~58_combout\ = (\C1|dMap~77_combout\ & (((!\C1|dMap~80_combout\ & \C1|dMap~75_combout\)))) # (!\C1|dMap~77_combout\ & ((\C1|dMap~74_combout\) # ((!\C1|dMap~80_combout\ & \C1|dMap~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~77_combout\,
	datab => \C1|dMap~74_combout\,
	datac => \C1|dMap~80_combout\,
	datad => \C1|dMap~75_combout\,
	combout => \C1|DRAWMAP~58_combout\);

-- Location: LCCOMB_X33_Y22_N20
\C1|DRAWMAP~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~54_combout\ = (\C1|LessThan52~3_combout\) # ((!\C1|dMap~43_combout\ & \C1|dMap~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan52~3_combout\,
	datac => \C1|dMap~43_combout\,
	datad => \C1|dMap~63_combout\,
	combout => \C1|DRAWMAP~54_combout\);

-- Location: LCCOMB_X32_Y20_N16
\C1|SQ_X1[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~0_combout\ = (\C1|dMap~70_combout\) # ((\C1|dMap~73_combout\) # ((\C1|LessThan88~0_combout\ & !\C1|LessThan84~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~70_combout\,
	datab => \C1|LessThan88~0_combout\,
	datac => \C1|dMap~73_combout\,
	datad => \C1|LessThan84~3_combout\,
	combout => \C1|SQ_X1[8]~0_combout\);

-- Location: LCCOMB_X33_Y22_N2
\C1|DRAWMAP~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~55_combout\ = (\C1|dMap~55_combout\ & (!\C1|dMap~48_combout\ & ((\C1|dMap~64_combout\)))) # (!\C1|dMap~55_combout\ & ((\C1|dMap~65_combout\) # ((!\C1|dMap~48_combout\ & \C1|dMap~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~55_combout\,
	datab => \C1|dMap~48_combout\,
	datac => \C1|dMap~65_combout\,
	datad => \C1|dMap~64_combout\,
	combout => \C1|DRAWMAP~55_combout\);

-- Location: LCCOMB_X33_Y22_N12
\C1|DRAWMAP~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~56_combout\ = (\C1|LessThan79~3_combout\ & ((\C1|DRAWMAP~55_combout\) # ((!\C1|dMap~58_combout\ & \C1|dMap~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~3_combout\,
	datab => \C1|dMap~58_combout\,
	datac => \C1|dMap~69_combout\,
	datad => \C1|DRAWMAP~55_combout\,
	combout => \C1|DRAWMAP~56_combout\);

-- Location: LCCOMB_X32_Y20_N10
\C1|DRAWMAP~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~57_combout\ = (\C1|DRAWMAP~56_combout\) # ((!\C1|dMap~48_combout\ & \C1|SQ_X1[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~48_combout\,
	datac => \C1|SQ_X1[8]~0_combout\,
	datad => \C1|DRAWMAP~56_combout\,
	combout => \C1|DRAWMAP~57_combout\);

-- Location: LCCOMB_X32_Y20_N22
\C1|DRAWMAP~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~61_combout\ = (\C1|DRAWMAP~60_combout\) # ((\C1|DRAWMAP~58_combout\) # ((\C1|DRAWMAP~54_combout\) # (\C1|DRAWMAP~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~60_combout\,
	datab => \C1|DRAWMAP~58_combout\,
	datac => \C1|DRAWMAP~54_combout\,
	datad => \C1|DRAWMAP~57_combout\,
	combout => \C1|DRAWMAP~61_combout\);

-- Location: LCCOMB_X32_Y20_N20
\C1|SQ_Y1[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~5_combout\ = (\C1|SQ_X2[1]~2_combout\ & (!\C1|SQ_Y1[9]~3_combout\ & ((!\C1|DRAWMAP~61_combout\) # (!\C1|SQ_Y1[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2[1]~2_combout\,
	datab => \C1|SQ_Y1[9]~4_combout\,
	datac => \C1|SQ_Y1[9]~3_combout\,
	datad => \C1|DRAWMAP~61_combout\,
	combout => \C1|SQ_Y1[1]~5_combout\);

-- Location: LCFF_X32_Y21_N31
\C1|SQ_Y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[1]~11_combout\,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(1));

-- Location: LCCOMB_X31_Y21_N6
\C1|Add16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~7_combout\ = (\C1|Add16~0_combout\ & ((\C1|SQ_Y1\(4) & (!\C1|Add16~6\)) # (!\C1|SQ_Y1\(4) & ((\C1|Add16~6\) # (GND))))) # (!\C1|Add16~0_combout\ & ((\C1|SQ_Y1\(4) & (\C1|Add16~6\ & VCC)) # (!\C1|SQ_Y1\(4) & (!\C1|Add16~6\))))
-- \C1|Add16~8\ = CARRY((\C1|Add16~0_combout\ & ((!\C1|Add16~6\) # (!\C1|SQ_Y1\(4)))) # (!\C1|Add16~0_combout\ & (!\C1|SQ_Y1\(4) & !\C1|Add16~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add16~0_combout\,
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add16~6\,
	combout => \C1|Add16~7_combout\,
	cout => \C1|Add16~8\);

-- Location: LCFF_X32_Y21_N19
\C1|SQ_Y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add16~7_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X31_Y21_N8
\C1|Add16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~9_combout\ = ((\C1|Add16~0_combout\ $ (\C1|SQ_Y1\(5) $ (\C1|Add16~8\)))) # (GND)
-- \C1|Add16~10\ = CARRY((\C1|Add16~0_combout\ & (\C1|SQ_Y1\(5) & !\C1|Add16~8\)) # (!\C1|Add16~0_combout\ & ((\C1|SQ_Y1\(5)) # (!\C1|Add16~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add16~0_combout\,
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add16~8\,
	combout => \C1|Add16~9_combout\,
	cout => \C1|Add16~10\);

-- Location: LCFF_X32_Y21_N25
\C1|SQ_Y1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add16~9_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(5));

-- Location: LCCOMB_X31_Y21_N12
\C1|Add16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~13_combout\ = ((\C1|Add16~0_combout\ $ (\C1|SQ_Y1\(7) $ (!\C1|Add16~12\)))) # (GND)
-- \C1|Add16~14\ = CARRY((\C1|Add16~0_combout\ & (!\C1|SQ_Y1\(7) & !\C1|Add16~12\)) # (!\C1|Add16~0_combout\ & ((!\C1|Add16~12\) # (!\C1|SQ_Y1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add16~0_combout\,
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add16~12\,
	combout => \C1|Add16~13_combout\,
	cout => \C1|Add16~14\);

-- Location: LCCOMB_X31_Y21_N30
\C1|SQ_Y1[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[7]~8_combout\ = !\C1|Add16~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~13_combout\,
	combout => \C1|SQ_Y1[7]~8_combout\);

-- Location: LCFF_X32_Y21_N11
\C1|SQ_Y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y1[7]~8_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(7));

-- Location: LCCOMB_X31_Y21_N16
\C1|Add16~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~17_combout\ = ((\C1|Add16~0_combout\ $ (\C1|SQ_Y1\(9) $ (!\C1|Add16~16\)))) # (GND)
-- \C1|Add16~18\ = CARRY((\C1|Add16~0_combout\ & (!\C1|SQ_Y1\(9) & !\C1|Add16~16\)) # (!\C1|Add16~0_combout\ & ((!\C1|Add16~16\) # (!\C1|SQ_Y1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add16~0_combout\,
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add16~16\,
	combout => \C1|Add16~17_combout\,
	cout => \C1|Add16~18\);

-- Location: LCCOMB_X32_Y21_N0
\C1|SQ_Y1[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~6_combout\ = !\C1|Add16~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~17_combout\,
	combout => \C1|SQ_Y1[9]~6_combout\);

-- Location: LCFF_X32_Y21_N1
\C1|SQ_Y1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[9]~6_combout\,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(9));

-- Location: LCCOMB_X31_Y21_N18
\C1|Add16~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~19_combout\ = \C1|Add16~0_combout\ $ (\C1|SQ_Y1\(10) $ (!\C1|Add16~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add16~0_combout\,
	datab => \C1|SQ_Y1\(10),
	cin => \C1|Add16~18\,
	combout => \C1|Add16~19_combout\);

-- Location: LCFF_X32_Y21_N9
\C1|SQ_Y1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add16~19_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(10));

-- Location: LCCOMB_X32_Y22_N0
\C1|LessThan69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan69~1_combout\ = (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(3)) # ((\C1|SQ_Y1\(2) & \C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(1),
	datad => \C1|SQ_Y1\(3),
	combout => \C1|LessThan69~1_combout\);

-- Location: LCCOMB_X32_Y22_N30
\C1|LessThan69~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan69~2_combout\ = (\C1|LessThan69~0_combout\ & (!\C1|SQ_Y1\(10) & ((\C1|LessThan69~1_combout\) # (!\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan69~0_combout\,
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1\(5),
	datad => \C1|LessThan69~1_combout\,
	combout => \C1|LessThan69~2_combout\);

-- Location: LCCOMB_X31_Y22_N28
\C1|dMap~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~103_combout\ = (\C1|SQ_Y1\(3)) # ((\C1|SQ_Y1\(2) & !\C1|SQ_Y1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(7),
	datad => \C1|SQ_Y1\(3),
	combout => \C1|dMap~103_combout\);

-- Location: LCCOMB_X31_Y22_N2
\C1|dMap~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~104_combout\ = (\C1|SQ_Y1\(6) & (((\C1|SQ_Y1\(4) & \C1|SQ_Y1\(7))) # (!\C1|SQ_Y1\(5)))) # (!\C1|SQ_Y1\(6) & (!\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(4)) # (\C1|SQ_Y1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|dMap~104_combout\);

-- Location: LCCOMB_X31_Y22_N4
\C1|dMap~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~105_combout\ = ((\C1|dMap~103_combout\ & ((\C1|SQ_Y1\(5)) # (\C1|dMap~104_combout\))) # (!\C1|dMap~103_combout\ & ((!\C1|dMap~104_combout\) # (!\C1|SQ_Y1\(5))))) # (!\C1|dMap~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~85_combout\,
	datab => \C1|dMap~103_combout\,
	datac => \C1|SQ_Y1\(5),
	datad => \C1|dMap~104_combout\,
	combout => \C1|dMap~105_combout\);

-- Location: LCCOMB_X34_Y21_N2
\C1|LessThan141~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan141~0_combout\ = (\C1|SQ_X1\(9) & !\C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(9),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan141~0_combout\);

-- Location: LCCOMB_X34_Y21_N8
\C1|LessThan139~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~4_combout\ = (!\C1|SQ_X1\(10) & ((\C1|SQ_X1\(8)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datac => \C1|SQ_X1\(10),
	datad => \C1|SQ_X1\(8),
	combout => \C1|LessThan139~4_combout\);

-- Location: LCCOMB_X34_Y21_N16
\C1|LessThan144~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan144~0_combout\ = (\C1|SQ_X1\(4)) # ((!\C1|SQ_X1\(3) & (\C1|SQ_X1\(1) & !\C1|SQ_X1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(1),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan144~0_combout\);

-- Location: LCCOMB_X34_Y21_N26
\C1|LessThan144~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan144~1_combout\ = (\C1|LessThan144~0_combout\) # (\C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan144~0_combout\,
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan144~1_combout\);

-- Location: LCCOMB_X34_Y21_N28
\C1|LessThan141~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan141~1_combout\ = ((\C1|LessThan141~0_combout\ & ((\C1|SQ_X1\(6)) # (!\C1|LessThan144~1_combout\)))) # (!\C1|LessThan139~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan144~1_combout\,
	datac => \C1|LessThan139~4_combout\,
	datad => \C1|LessThan141~0_combout\,
	combout => \C1|LessThan141~1_combout\);

-- Location: LCCOMB_X34_Y21_N18
\C1|dMap~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~49_combout\ = (!\C1|LessThan141~1_combout\ & (((\C1|LessThan143~0_combout\ & \C1|LessThan141~0_combout\)) # (!\C1|LessThan139~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan143~0_combout\,
	datab => \C1|LessThan141~0_combout\,
	datac => \C1|LessThan139~4_combout\,
	datad => \C1|LessThan141~1_combout\,
	combout => \C1|dMap~49_combout\);

-- Location: LCCOMB_X33_Y18_N4
\C1|LessThan153~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~0_combout\ = (!\C1|SQ_X1\(8) & !\C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan153~0_combout\);

-- Location: LCCOMB_X33_Y18_N20
\C1|LessThan153~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~1_combout\ = (\C1|LessThan153~0_combout\ & (((!\C1|SQ_X1\(4) & !\C1|LessThan148~0_combout\)) # (!\C1|LessThan136~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|LessThan153~0_combout\,
	datac => \C1|LessThan148~0_combout\,
	datad => \C1|LessThan136~0_combout\,
	combout => \C1|LessThan153~1_combout\);

-- Location: LCCOMB_X33_Y18_N22
\C1|LessThan153~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~2_combout\ = (\C1|SQ_X1\(9)) # ((\C1|LessThan153~1_combout\) # (\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datac => \C1|LessThan153~1_combout\,
	datad => \C1|SQ_X1\(10),
	combout => \C1|LessThan153~2_combout\);

-- Location: LCCOMB_X33_Y18_N26
\C1|DRAWMAP~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~47_combout\ = (\C1|LessThan151~2_combout\ & (!\C1|LessThan149~23_combout\)) # (!\C1|LessThan151~2_combout\ & ((\C1|LessThan153~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan151~2_combout\,
	datac => \C1|LessThan149~23_combout\,
	datad => \C1|LessThan153~2_combout\,
	combout => \C1|DRAWMAP~47_combout\);

-- Location: LCCOMB_X33_Y21_N14
\C1|DRAWMAP~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~64_combout\ = (\C1|dMap~94_combout\ & (((!\C1|dMap~96_combout\ & \C1|DRAWMAP~47_combout\)))) # (!\C1|dMap~94_combout\ & ((\C1|dMap~49_combout\) # ((!\C1|dMap~96_combout\ & \C1|DRAWMAP~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~94_combout\,
	datab => \C1|dMap~49_combout\,
	datac => \C1|dMap~96_combout\,
	datad => \C1|DRAWMAP~47_combout\,
	combout => \C1|DRAWMAP~64_combout\);

-- Location: LCCOMB_X32_Y19_N8
\C1|DRAWMAP~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~66_combout\ = (\C1|DRAWMAP~65_combout\) # ((\C1|DRAWMAP~64_combout\) # ((!\C1|dMap~105_combout\ & \C1|dMap~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~65_combout\,
	datab => \C1|dMap~105_combout\,
	datac => \C1|dMap~50_combout\,
	datad => \C1|DRAWMAP~64_combout\,
	combout => \C1|DRAWMAP~66_combout\);

-- Location: LCCOMB_X34_Y18_N18
\C1|LessThan143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan143~0_combout\ = ((\C1|LessThan151~0_combout\ & (!\C1|SQ_X1\(4) & \C1|SQ_X1\(3)))) # (!\C1|LessThan136~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan151~0_combout\,
	datab => \C1|SQ_X1\(4),
	datac => \C1|LessThan136~0_combout\,
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan143~0_combout\);

-- Location: LCCOMB_X34_Y18_N2
\C1|dMap~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~39_combout\ = (\C1|LessThan139~4_combout\ & (!\C1|LessThan148~1_combout\ & ((!\C1|LessThan143~0_combout\) # (!\C1|LessThan141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan139~4_combout\,
	datab => \C1|LessThan141~0_combout\,
	datac => \C1|LessThan148~1_combout\,
	datad => \C1|LessThan143~0_combout\,
	combout => \C1|dMap~39_combout\);

-- Location: LCCOMB_X33_Y18_N12
\C1|DRAWMAP~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~62_combout\ = (\C1|dMap~88_combout\ & (((\C1|dMap~39_combout\ & !\C1|dMap~86_combout\)))) # (!\C1|dMap~88_combout\ & ((\C1|dMap~40_combout\) # ((\C1|dMap~39_combout\ & !\C1|dMap~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~88_combout\,
	datab => \C1|dMap~40_combout\,
	datac => \C1|dMap~39_combout\,
	datad => \C1|dMap~86_combout\,
	combout => \C1|DRAWMAP~62_combout\);

-- Location: LCCOMB_X34_Y21_N24
\C1|LessThan149~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~22_combout\ = ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1)))) # (!\C1|SQ_X1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(1),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan149~22_combout\);

-- Location: LCCOMB_X34_Y21_N30
\C1|LessThan135~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan135~0_combout\ = (\C1|SQ_X1\(9)) # ((\C1|LessThan153~0_combout\ & ((\C1|LessThan149~22_combout\) # (!\C1|LessThan136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan136~0_combout\,
	datab => \C1|LessThan149~22_combout\,
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan153~0_combout\,
	combout => \C1|LessThan135~0_combout\);

-- Location: LCCOMB_X34_Y18_N12
\C1|LessThan132~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan132~0_combout\ = (\C1|SQ_X1\(5) & \C1|SQ_X1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(5),
	datad => \C1|SQ_X1\(4),
	combout => \C1|LessThan132~0_combout\);

-- Location: LCCOMB_X34_Y21_N10
\C1|LessThan139~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~6_combout\ = (\C1|SQ_X1\(3)) # (((!\C1|SQ_X1\(1) & \C1|SQ_X1\(2))) # (!\C1|LessThan132~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(3),
	datac => \C1|LessThan132~0_combout\,
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan139~6_combout\);

-- Location: LCCOMB_X34_Y21_N12
\C1|LessThan139~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~5_combout\ = ((\C1|SQ_X1\(6) & (\C1|LessThan141~0_combout\ & \C1|LessThan139~6_combout\))) # (!\C1|LessThan139~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan141~0_combout\,
	datac => \C1|LessThan139~4_combout\,
	datad => \C1|LessThan139~6_combout\,
	combout => \C1|LessThan139~5_combout\);

-- Location: LCCOMB_X34_Y21_N14
\C1|DRAWMAP~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~43_combout\ = (\C1|LessThan139~5_combout\ & (\C1|LessThan140~0_combout\ & ((!\C1|SQ_X1\(10))))) # (!\C1|LessThan139~5_combout\ & (((\C1|LessThan141~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan140~0_combout\,
	datab => \C1|LessThan141~1_combout\,
	datac => \C1|SQ_X1\(10),
	datad => \C1|LessThan139~5_combout\,
	combout => \C1|DRAWMAP~43_combout\);

-- Location: LCCOMB_X34_Y21_N20
\C1|LessThan138~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan138~0_combout\ = (\C1|SQ_X1\(8)) # ((\C1|SQ_X1\(7) & ((\C1|LessThan132~0_combout\) # (!\C1|SQ_X1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X1\(8),
	datac => \C1|LessThan132~0_combout\,
	datad => \C1|SQ_X1\(6),
	combout => \C1|LessThan138~0_combout\);

-- Location: LCCOMB_X34_Y18_N16
\C1|LessThan151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~0_combout\ = (\C1|SQ_X1\(2) & !\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(1),
	combout => \C1|LessThan151~0_combout\);

-- Location: LCCOMB_X34_Y18_N24
\C1|LessThan137~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan137~0_combout\ = ((!\C1|SQ_X1\(4) & ((\C1|LessThan151~0_combout\) # (\C1|SQ_X1\(3))))) # (!\C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(4),
	datac => \C1|LessThan151~0_combout\,
	datad => \C1|SQ_X1\(3),
	combout => \C1|LessThan137~0_combout\);

-- Location: LCCOMB_X34_Y18_N22
\C1|LessThan137~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan137~1_combout\ = (\C1|SQ_X1\(9)) # (((\C1|SQ_X1\(6) & \C1|LessThan137~0_combout\)) # (!\C1|LessThan134~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(6),
	datac => \C1|LessThan137~0_combout\,
	datad => \C1|LessThan134~0_combout\,
	combout => \C1|LessThan137~1_combout\);

-- Location: LCCOMB_X34_Y21_N22
\C1|DRAWMAP~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~44_combout\ = (!\C1|SQ_X1\(9) & (\C1|SQ_X1\(10) & (\C1|LessThan138~0_combout\ & \C1|LessThan137~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan138~0_combout\,
	datad => \C1|LessThan137~1_combout\,
	combout => \C1|DRAWMAP~44_combout\);

-- Location: LCCOMB_X33_Y21_N24
\C1|DRAWMAP~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~45_combout\ = (\C1|DRAWMAP~43_combout\) # ((\C1|DRAWMAP~44_combout\) # ((\C1|DRAWMAP~143_combout\ & \C1|LessThan135~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~143_combout\,
	datab => \C1|LessThan135~0_combout\,
	datac => \C1|DRAWMAP~43_combout\,
	datad => \C1|DRAWMAP~44_combout\,
	combout => \C1|DRAWMAP~45_combout\);

-- Location: LCCOMB_X32_Y18_N0
\C1|DRAWMAP~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~63_combout\ = (\C1|DRAWMAP~62_combout\) # ((!\C1|dMap~91_combout\ & \C1|DRAWMAP~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~91_combout\,
	datac => \C1|DRAWMAP~62_combout\,
	datad => \C1|DRAWMAP~45_combout\,
	combout => \C1|DRAWMAP~63_combout\);

-- Location: LCCOMB_X32_Y19_N22
\C1|esqQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~0_combout\ = (\C1|LessThan153~2_combout\ & (!\C1|LessThan69~2_combout\ & ((\C1|DRAWMAP~66_combout\) # (\C1|DRAWMAP~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~2_combout\,
	datab => \C1|LessThan69~2_combout\,
	datac => \C1|DRAWMAP~66_combout\,
	datad => \C1|DRAWMAP~63_combout\,
	combout => \C1|esqQ1X1~0_combout\);

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

-- Location: LCCOMB_X30_Y19_N6
\C1|LessThan112~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~2_combout\ = ((!\C1|Add8~6_combout\ & ((\C1|LessThan112~1_combout\) # (!\C1|Add8~4_combout\)))) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan112~1_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|LessThan112~2_combout\);

-- Location: LCCOMB_X32_Y19_N16
\C1|LessThan112~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~3_combout\ = (\C1|LessThan112~0_combout\ & (!\C1|Add8~10_combout\ & (\C1|LessThan112~2_combout\ & !\C1|Add8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan112~0_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|LessThan112~2_combout\,
	datad => \C1|Add8~18_combout\,
	combout => \C1|LessThan112~3_combout\);

-- Location: LCCOMB_X30_Y19_N12
\C1|LessThan113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan113~0_combout\ = (\C1|Add8~6_combout\ & (\C1|Add8~4_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(2),
	combout => \C1|LessThan113~0_combout\);

-- Location: LCCOMB_X32_Y19_N0
\C1|LessThan113~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan113~1_combout\ = (\C1|Add8~18_combout\ & (((\C1|LessThan113~0_combout\) # (!\C1|LessThan112~0_combout\)) # (!\C1|dMap~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~106_combout\,
	datab => \C1|Add8~18_combout\,
	datac => \C1|LessThan113~0_combout\,
	datad => \C1|LessThan112~0_combout\,
	combout => \C1|LessThan113~1_combout\);

-- Location: LCCOMB_X32_Y19_N4
\C1|esqQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~0_combout\ = (\C1|LessThan113~1_combout\) # ((\C1|dMap~59_combout\ & !\C1|dMap~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan113~1_combout\,
	datac => \C1|dMap~59_combout\,
	datad => \C1|dMap~110_combout\,
	combout => \C1|esqQ1X2~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\C1|dMap~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~113_combout\ = (\C1|Add8~6_combout\ & (((\C1|Add8~10_combout\)))) # (!\C1|Add8~6_combout\ & ((\C1|Add8~8_combout\) # ((\C1|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~113_combout\);

-- Location: LCCOMB_X35_Y19_N24
\C1|dMap~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~114_combout\ = (!\C1|Add8~10_combout\ & (((!\C1|SQ_Y1\(2) & !\C1|Add8~4_combout\)) # (!\C1|Add8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~114_combout\);

-- Location: LCCOMB_X35_Y19_N30
\C1|dMap~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~115_combout\ = (\C1|dMap~49_combout\ & (!\C1|dMap~113_combout\ & (!\C1|dMap~114_combout\ & \C1|dMap~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~49_combout\,
	datab => \C1|dMap~113_combout\,
	datac => \C1|dMap~114_combout\,
	datad => \C1|dMap~112_combout\,
	combout => \C1|dMap~115_combout\);

-- Location: LCCOMB_X35_Y19_N10
\C1|dMap~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~117_combout\ = (\C1|dMap~39_combout\ & (!\C1|Add8~10_combout\ & (!\C1|dMap~116_combout\ & \C1|dMap~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~39_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~116_combout\,
	datad => \C1|dMap~112_combout\,
	combout => \C1|dMap~117_combout\);

-- Location: LCCOMB_X32_Y19_N14
\C1|esqQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~1_combout\ = (\C1|dMap~115_combout\) # ((\C1|dMap~117_combout\) # ((\C1|DRAWMAP~45_combout\ & !\C1|dMap~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~45_combout\,
	datab => \C1|dMap~204_combout\,
	datac => \C1|dMap~115_combout\,
	datad => \C1|dMap~117_combout\,
	combout => \C1|esqQ1X2~1_combout\);

-- Location: LCCOMB_X30_Y19_N20
\C1|dMap~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~118_combout\ = ((\C1|Add8~6_combout\ & (\C1|Add8~4_combout\)) # (!\C1|Add8~6_combout\ & (!\C1|Add8~4_combout\ & !\C1|SQ_Y1\(2)))) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~118_combout\);

-- Location: LCCOMB_X30_Y19_N18
\C1|dMap~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~119_combout\ = (\C1|Add8~16_combout\ & (\C1|dMap~111_combout\ & \C1|Add8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~16_combout\,
	datac => \C1|dMap~111_combout\,
	datad => \C1|Add8~14_combout\,
	combout => \C1|dMap~119_combout\);

-- Location: LCCOMB_X30_Y19_N8
\C1|dMap~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~120_combout\ = (\C1|Add8~12_combout\) # (((\C1|dMap~118_combout\) # (!\C1|dMap~119_combout\)) # (!\C1|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~118_combout\,
	datad => \C1|dMap~119_combout\,
	combout => \C1|dMap~120_combout\);

-- Location: LCCOMB_X30_Y19_N2
\C1|esqQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~2_combout\ = (\C1|dMap~52_combout\ & (((\C1|DRAWMAP~47_combout\ & !\C1|dMap~120_combout\)) # (!\C1|dMap~123_combout\))) # (!\C1|dMap~52_combout\ & (\C1|DRAWMAP~47_combout\ & (!\C1|dMap~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~52_combout\,
	datab => \C1|DRAWMAP~47_combout\,
	datac => \C1|dMap~120_combout\,
	datad => \C1|dMap~123_combout\,
	combout => \C1|esqQ1X2~2_combout\);

-- Location: LCCOMB_X32_Y19_N2
\C1|esqQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X2~4_combout\ = (\C1|esqQ1X2~3_combout\) # ((\C1|esqQ1X2~0_combout\) # ((\C1|esqQ1X2~1_combout\) # (\C1|esqQ1X2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X2~3_combout\,
	datab => \C1|esqQ1X2~0_combout\,
	datac => \C1|esqQ1X2~1_combout\,
	datad => \C1|esqQ1X2~2_combout\,
	combout => \C1|esqQ1X2~4_combout\);

-- Location: LCCOMB_X32_Y19_N12
\C1|process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (\C1|LessThan153~2_combout\ & ((\C1|Add8~20_combout\) # ((!\C1|LessThan112~3_combout\ & \C1|esqQ1X2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~2_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|LessThan112~3_combout\,
	datad => \C1|esqQ1X2~4_combout\,
	combout => \C1|process_0~12_combout\);

-- Location: LCCOMB_X32_Y19_N30
\C1|process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~13_combout\ = (\C1|esqQ1X1~0_combout\) # ((\KEY~combout\(1)) # ((\C1|Add8~22_combout\ & \C1|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|esqQ1X1~0_combout\,
	datac => \KEY~combout\(1),
	datad => \C1|process_0~12_combout\,
	combout => \C1|process_0~13_combout\);

-- Location: LCCOMB_X33_Y19_N22
\C1|Add18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add18~18_combout\ = \C1|SQ_X1\(10) $ (\C1|Add18~17\ $ (!\C1|process_0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|process_0~13_combout\,
	cin => \C1|Add18~17\,
	combout => \C1|Add18~18_combout\);

-- Location: LCFF_X33_Y19_N23
\C1|SQ_X1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add18~18_combout\,
	ena => \C1|SQ_X1[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(10));

-- Location: LCCOMB_X32_Y18_N12
\C1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((\C1|HPOS\(1) & \C1|SQ_X1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y18_N14
\C1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|HPOS\(2) & (\C1|SQ_X1\(2) & !\C1|LessThan0~1_cout\)) # (!\C1|HPOS\(2) & ((\C1|SQ_X1\(2)) # (!\C1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y18_N16
\C1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|SQ_X1\(3) & (\C1|HPOS\(3) & !\C1|LessThan0~3_cout\)) # (!\C1|SQ_X1\(3) & ((\C1|HPOS\(3)) # (!\C1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y18_N18
\C1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|SQ_X1\(4) & (!\C1|HPOS\(4) & !\C1|LessThan0~5_cout\)) # (!\C1|SQ_X1\(4) & ((!\C1|LessThan0~5_cout\) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y18_N20
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

-- Location: LCCOMB_X32_Y18_N22
\C1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|HPOS\(6) & (\C1|SQ_X1\(6) & !\C1|LessThan0~9_cout\)) # (!\C1|HPOS\(6) & ((\C1|SQ_X1\(6)) # (!\C1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y18_N24
\C1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|HPOS\(7) & ((\C1|SQ_X1\(7)) # (!\C1|LessThan0~11_cout\))) # (!\C1|HPOS\(7) & (\C1|SQ_X1\(7) & !\C1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y18_N26
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

-- Location: LCCOMB_X32_Y18_N28
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

-- Location: LCCOMB_X32_Y18_N30
\C1|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~18_combout\ = (\C1|HPOS\(10) & ((\C1|LessThan0~17_cout\) # (!\C1|SQ_X1\(10)))) # (!\C1|HPOS\(10) & (\C1|LessThan0~17_cout\ & !\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|SQ_X1\(10),
	cin => \C1|LessThan0~17_cout\,
	combout => \C1|LessThan0~18_combout\);

-- Location: LCCOMB_X31_Y20_N10
\C1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y20_N12
\C1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|HPOS\(1) & (!\C1|SQ_X1\(1) & !\C1|LessThan1~1_cout\)) # (!\C1|HPOS\(1) & ((!\C1|LessThan1~1_cout\) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y20_N14
\C1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|Add0~0_combout\ & (\C1|HPOS\(2) & !\C1|LessThan1~3_cout\)) # (!\C1|Add0~0_combout\ & ((\C1|HPOS\(2)) # (!\C1|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y20_N16
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

-- Location: LCCOMB_X31_Y20_N18
\C1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|Add0~4_combout\ & (\C1|HPOS\(4) & !\C1|LessThan1~7_cout\)) # (!\C1|Add0~4_combout\ & ((\C1|HPOS\(4)) # (!\C1|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~4_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y20_N20
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

-- Location: LCCOMB_X31_Y20_N22
\C1|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan1~11_cout\) # (!\C1|Add0~8_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add0~8_combout\ & !\C1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y20_N24
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

-- Location: LCCOMB_X31_Y20_N26
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

-- Location: LCCOMB_X31_Y20_N28
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

-- Location: LCCOMB_X31_Y20_N30
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

-- Location: LCCOMB_X31_Y22_N6
\C1|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_cout\ = CARRY((!\C1|VPOS\(1) & \C1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y22_N8
\C1|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~3_cout\ = CARRY((\C1|Add1~2_combout\ & (\C1|VPOS\(2) & !\C1|LessThan3~1_cout\)) # (!\C1|Add1~2_combout\ & ((\C1|VPOS\(2)) # (!\C1|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan3~1_cout\,
	cout => \C1|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y22_N10
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

-- Location: LCCOMB_X31_Y22_N12
\C1|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan3~5_cout\) # (!\C1|Add1~6_combout\))) # (!\C1|VPOS\(4) & (!\C1|Add1~6_combout\ & !\C1|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|LessThan3~5_cout\,
	cout => \C1|LessThan3~7_cout\);

-- Location: LCCOMB_X31_Y22_N14
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

-- Location: LCCOMB_X31_Y22_N16
\C1|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan3~9_cout\) # (!\C1|Add1~10_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add1~10_combout\ & !\C1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|LessThan3~9_cout\,
	cout => \C1|LessThan3~11_cout\);

-- Location: LCCOMB_X31_Y22_N18
\C1|LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~13_cout\ = CARRY((\C1|Add1~12_combout\ & ((!\C1|LessThan3~11_cout\) # (!\C1|VPOS\(7)))) # (!\C1|Add1~12_combout\ & (!\C1|VPOS\(7) & !\C1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan3~11_cout\,
	cout => \C1|LessThan3~13_cout\);

-- Location: LCCOMB_X31_Y22_N20
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

-- Location: LCCOMB_X31_Y22_N22
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

-- Location: LCCOMB_X31_Y22_N24
\C1|LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~18_combout\ = (\C1|Add1~18_combout\ & ((\C1|LessThan3~17_cout\) # (!\C1|VPOS\(10)))) # (!\C1|Add1~18_combout\ & (\C1|LessThan3~17_cout\ & !\C1|VPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan3~17_cout\,
	combout => \C1|LessThan3~18_combout\);

-- Location: LCCOMB_X31_Y21_N28
\C1|DRAW1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|Add1~20_combout\ & ((\C1|Add0~18_combout\) # ((\C1|LessThan1~20_combout\)))) # (!\C1|Add1~20_combout\ & (\C1|LessThan3~18_combout\ & ((\C1|Add0~18_combout\) # (\C1|LessThan1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add0~18_combout\,
	datac => \C1|LessThan1~20_combout\,
	datad => \C1|LessThan3~18_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X26_Y21_N22
\C1|B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~0_combout\ = (!\C1|DRAW2~1_combout\ & (((!\C1|DRAW1~0_combout\) # (!\C1|LessThan0~18_combout\)) # (!\C1|LessThan2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan2~20_combout\,
	datab => \C1|LessThan0~18_combout\,
	datac => \C1|DRAW2~1_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|B~0_combout\);

-- Location: LCCOMB_X29_Y21_N2
\C1|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(9)) # ((\C1|HPOS\(8) & !\C1|LessThan262~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|LessThan262~0_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(9),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X29_Y21_N20
\C1|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (!\C1|VPOS\(10) & ((\C1|VPOS\(5)) # (\C1|LessThan266~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datac => \C1|VPOS\(5),
	datad => \C1|LessThan266~0_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X31_Y17_N28
\C1|LessThan264~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan264~0_combout\ = (\C1|HPOS\(0)) # ((\C1|HPOS\(2)) # ((\C1|HPOS\(3)) # (\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan264~0_combout\);

-- Location: LCCOMB_X32_Y17_N22
\C1|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (!\C1|HPOS\(7) & (!\C1|HPOS\(6) & (!\C1|HPOS\(5) & !\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X32_Y17_N16
\C1|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|LessThan264~0_combout\ & (!\C1|HPOS\(4) & \C1|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan264~0_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|process_0~6_combout\,
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X29_Y21_N16
\C1|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (\C1|LessThan263~2_combout\ & ((\C1|process_0~5_combout\) # ((!\C1|process_0~8_combout\ & !\C1|process_0~7_combout\)))) # (!\C1|LessThan263~2_combout\ & (!\C1|process_0~8_combout\ & ((!\C1|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan263~2_combout\,
	datab => \C1|process_0~8_combout\,
	datac => \C1|process_0~5_combout\,
	datad => \C1|process_0~7_combout\,
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X30_Y22_N0
\C1|dMap~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~26_combout\ = (\C1|VPOS\(4) & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~26_combout\);

-- Location: LCCOMB_X30_Y22_N28
\C1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|VPOS\(2) & ((!\C1|VPOS\(0)) # (!\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCCOMB_X30_Y22_N26
\C1|DRAWMAP~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~35_combout\ = (\C1|VPOS\(5)) # (((\C1|dMap~26_combout\ & !\C1|LessThan8~0_combout\)) # (!\C1|LessThan263~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|dMap~26_combout\,
	datac => \C1|LessThan263~0_combout\,
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|DRAWMAP~35_combout\);

-- Location: LCCOMB_X29_Y20_N4
\C1|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~0_combout\ = ((\C1|dMap~7_combout\ & ((\C1|LessThan40~0_combout\) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan40~0_combout\,
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(4),
	datad => \C1|dMap~7_combout\,
	combout => \C1|LessThan18~0_combout\);

-- Location: LCCOMB_X30_Y17_N18
\C1|DRAWMAP~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~33_combout\ = (\C1|HPOS\(9) & (\C1|HPOS\(10) & (\C1|LessThan18~0_combout\ & !\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(10),
	datac => \C1|LessThan18~0_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|DRAWMAP~33_combout\);

-- Location: LCCOMB_X31_Y17_N12
\C1|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan14~0_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	combout => \C1|LessThan14~0_combout\);

-- Location: LCCOMB_X31_Y17_N4
\C1|LessThan35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan35~0_combout\ = ((\C1|HPOS\(3) & ((\C1|HPOS\(1)) # (\C1|HPOS\(2))))) # (!\C1|LessThan14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan14~0_combout\,
	combout => \C1|LessThan35~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\C1|DRAWMAP~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~34_combout\ = (\C1|DRAWMAP~33_combout\ & ((\C1|HPOS\(7)) # ((\C1|HPOS\(6) & \C1|LessThan35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|DRAWMAP~33_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan35~0_combout\,
	combout => \C1|DRAWMAP~34_combout\);

-- Location: LCCOMB_X30_Y21_N4
\C1|dMap~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~10_combout\ = (\C1|VPOS\(2)) # ((!\C1|VPOS\(4) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~10_combout\);

-- Location: LCCOMB_X27_Y21_N30
\C1|dMap~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~8_combout\ = (\C1|VPOS\(8) & (\C1|VPOS\(9) & (!\C1|VPOS\(10) & \C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(6),
	combout => \C1|dMap~8_combout\);

-- Location: LCCOMB_X27_Y21_N28
\C1|dMap~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~9_combout\ = (\C1|dMap~8_combout\ & (\C1|VPOS\(7) & !\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~8_combout\,
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~9_combout\);

-- Location: LCCOMB_X30_Y21_N22
\C1|dMap~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~11_combout\ = (\C1|VPOS\(4) $ (((!\C1|VPOS\(3)) # (!\C1|dMap~10_combout\)))) # (!\C1|dMap~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|dMap~10_combout\,
	datac => \C1|VPOS\(3),
	datad => \C1|dMap~9_combout\,
	combout => \C1|dMap~11_combout\);

-- Location: LCCOMB_X31_Y17_N26
\C1|dMap~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~22_combout\ = (\C1|HPOS\(3)) # (((\C1|HPOS\(1) & \C1|HPOS\(2))) # (!\C1|LessThan14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan14~0_combout\,
	combout => \C1|dMap~22_combout\);

-- Location: LCCOMB_X31_Y17_N22
\C1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = ((!\C1|LessThan264~0_combout\) # (!\C1|HPOS\(5))) # (!\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|LessThan264~0_combout\,
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X30_Y17_N6
\C1|dMap~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~24_combout\ = (\C1|dMap~23_combout\ & ((\C1|HPOS\(8) & ((\C1|process_0~0_combout\))) # (!\C1|HPOS\(8) & (\C1|dMap~22_combout\)))) # (!\C1|dMap~23_combout\ & (\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~23_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|dMap~22_combout\,
	datad => \C1|process_0~0_combout\,
	combout => \C1|dMap~24_combout\);

-- Location: LCCOMB_X30_Y17_N28
\C1|dMap~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~25_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS\(10) & (!\C1|dMap~11_combout\ & \C1|dMap~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(10),
	datac => \C1|dMap~11_combout\,
	datad => \C1|dMap~24_combout\,
	combout => \C1|dMap~25_combout\);

-- Location: LCCOMB_X30_Y17_N2
\C1|DRAWMAP~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~36_combout\ = (\C1|dMap~25_combout\) # ((\C1|VPOS\(10) & ((\C1|DRAWMAP~35_combout\) # (\C1|DRAWMAP~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|DRAWMAP~35_combout\,
	datac => \C1|DRAWMAP~34_combout\,
	datad => \C1|dMap~25_combout\,
	combout => \C1|DRAWMAP~36_combout\);

-- Location: LCCOMB_X30_Y17_N4
\C1|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (!\C1|HPOS\(9) & (!\C1|HPOS\(10) & ((\C1|LessThan18~0_combout\) # (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(10),
	datac => \C1|LessThan18~0_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan9~0_combout\);

-- Location: LCCOMB_X30_Y22_N6
\C1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = ((!\C1|VPOS\(4) & ((\C1|LessThan8~0_combout\) # (!\C1|VPOS\(3))))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(5),
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|LessThan8~1_combout\);

-- Location: LCCOMB_X30_Y17_N14
\C1|DRAWMAP~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~10_combout\ = (!\C1|LessThan9~0_combout\ & ((\C1|VPOS\(10)) # ((!\C1|LessThan8~1_combout\) # (!\C1|LessThan263~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan9~0_combout\,
	datac => \C1|LessThan263~0_combout\,
	datad => \C1|LessThan8~1_combout\,
	combout => \C1|DRAWMAP~10_combout\);

-- Location: LCCOMB_X30_Y21_N14
\C1|LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan47~0_combout\ = (\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan47~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\C1|dMap~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~17_combout\ = ((\C1|VPOS\(7)) # ((\C1|VPOS\(3) & \C1|VPOS\(4)))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|dMap~17_combout\);

-- Location: LCCOMB_X30_Y21_N16
\C1|dMap~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~18_combout\ = ((\C1|dMap~17_combout\) # ((\C1|dMap~6_combout\ & !\C1|LessThan47~0_combout\))) # (!\C1|dMap~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~8_combout\,
	datab => \C1|dMap~6_combout\,
	datac => \C1|LessThan47~0_combout\,
	datad => \C1|dMap~17_combout\,
	combout => \C1|dMap~18_combout\);

-- Location: LCCOMB_X32_Y17_N0
\C1|LessThan20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan20~0_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(2)) # (!\C1|HPOS\(0))) # (!\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan20~0_combout\);

-- Location: LCCOMB_X32_Y17_N26
\C1|DRAWMAP~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~37_combout\ = (\C1|dMap~32_combout\ & (\C1|dMap~7_combout\ & ((\C1|LessThan20~0_combout\) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~32_combout\,
	datab => \C1|dMap~7_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan20~0_combout\,
	combout => \C1|DRAWMAP~37_combout\);

-- Location: LCCOMB_X29_Y20_N10
\C1|dMap~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~31_combout\ = (\C1|HPOS\(8) & (\C1|HPOS\(7) & !\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(9),
	combout => \C1|dMap~31_combout\);

-- Location: LCCOMB_X29_Y20_N28
\C1|DRAWMAP~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~142_combout\ = (\C1|dMap~31_combout\ & ((\C1|LessThan43~0_combout\) # ((\C1|HPOS\(6)) # (\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan43~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|dMap~31_combout\,
	combout => \C1|DRAWMAP~142_combout\);

-- Location: LCCOMB_X31_Y20_N6
\C1|LessThan39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan39~0_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(1) & \C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan39~0_combout\);

-- Location: LCCOMB_X31_Y20_N4
\C1|dMap~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~33_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & ((\C1|HPOS\(5)) # (\C1|LessThan39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan39~0_combout\,
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~33_combout\);

-- Location: LCCOMB_X31_Y17_N24
\C1|dMap~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~12_combout\ = (\C1|HPOS\(2) & (\C1|HPOS\(1) & \C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(3),
	combout => \C1|dMap~12_combout\);

-- Location: LCCOMB_X32_Y17_N12
\C1|dMap~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~34_combout\ = ((\C1|LessThan14~0_combout\ & ((!\C1|dMap~12_combout\) # (!\C1|HPOS\(0))))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan14~0_combout\,
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(6),
	datad => \C1|dMap~12_combout\,
	combout => \C1|dMap~34_combout\);

-- Location: LCCOMB_X32_Y17_N6
\C1|dMap~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~35_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(7) & ((\C1|dMap~34_combout\)))) # (!\C1|HPOS\(8) & (((\C1|dMap~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(8),
	datac => \C1|dMap~33_combout\,
	datad => \C1|dMap~34_combout\,
	combout => \C1|dMap~35_combout\);

-- Location: LCCOMB_X32_Y17_N20
\C1|DRAWMAP~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~38_combout\ = (\C1|DRAWMAP~37_combout\) # ((\C1|DRAWMAP~142_combout\) # ((!\C1|HPOS\(9) & \C1|dMap~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|DRAWMAP~37_combout\,
	datac => \C1|DRAWMAP~142_combout\,
	datad => \C1|dMap~35_combout\,
	combout => \C1|DRAWMAP~38_combout\);

-- Location: LCCOMB_X31_Y17_N20
\C1|DRAWMAP~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~39_combout\ = (\C1|dMap~206_combout\) # ((\C1|HPOS\(10) & (!\C1|dMap~11_combout\ & \C1|DRAWMAP~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~206_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|dMap~11_combout\,
	datad => \C1|DRAWMAP~38_combout\,
	combout => \C1|DRAWMAP~39_combout\);

-- Location: LCCOMB_X31_Y17_N6
\C1|DRAWMAP~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~40_combout\ = (\C1|DRAWMAP~39_combout\) # ((\C1|dMap~38_combout\ & (!\C1|dMap~18_combout\ & !\C1|HPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~38_combout\,
	datab => \C1|dMap~18_combout\,
	datac => \C1|DRAWMAP~39_combout\,
	datad => \C1|HPOS\(10),
	combout => \C1|DRAWMAP~40_combout\);

-- Location: LCCOMB_X30_Y17_N8
\C1|DRAWMAP~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~41_combout\ = (\C1|DRAWMAP~10_combout\ & ((\C1|DRAWMAP~32_combout\) # ((\C1|DRAWMAP~36_combout\) # (\C1|DRAWMAP~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~32_combout\,
	datab => \C1|DRAWMAP~36_combout\,
	datac => \C1|DRAWMAP~10_combout\,
	datad => \C1|DRAWMAP~40_combout\,
	combout => \C1|DRAWMAP~41_combout\);

-- Location: LCCOMB_X26_Y21_N12
\C1|R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (!\C1|process_0~9_combout\ & ((\C1|DRAWMAP~41_combout\) # (!\C1|B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|B~0_combout\,
	datac => \C1|process_0~9_combout\,
	datad => \C1|DRAWMAP~41_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X26_Y21_N8
\C1|R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|R~0_combout\ & ((!\C1|DRAW2~1_combout\) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datac => \C1|DRAW2~1_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|R~1_combout\);

-- Location: LCFF_X26_Y21_N9
\C1|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(0));

-- Location: LCCOMB_X26_Y21_N14
\C1|R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (\C1|LessThan2~20_combout\ & (\C1|LessThan0~18_combout\ & (!\C1|DRAW2~1_combout\ & \C1|DRAW1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan2~20_combout\,
	datab => \C1|LessThan0~18_combout\,
	datac => \C1|DRAW2~1_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|R~2_combout\);

-- Location: LCCOMB_X26_Y21_N0
\C1|B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~1_combout\ = (!\C1|R~2_combout\ & ((\C1|B~0_combout\ & ((\C1|DRAWMAP~41_combout\))) # (!\C1|B~0_combout\ & (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \C1|B~0_combout\,
	datac => \C1|R~2_combout\,
	datad => \C1|DRAWMAP~41_combout\,
	combout => \C1|B~1_combout\);

-- Location: LCCOMB_X26_Y21_N26
\C1|B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (!\C1|process_0~9_combout\ & ((\C1|B~1_combout\) # ((!\SW~combout\(0) & \C1|R~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \C1|R~2_combout\,
	datac => \C1|process_0~9_combout\,
	datad => \C1|B~1_combout\,
	combout => \C1|B~2_combout\);

-- Location: LCFF_X26_Y21_N27
\C1|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(0));

-- Location: LCCOMB_X26_Y21_N24
\C1|G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~0_combout\ = (\C1|R~0_combout\ & ((!\C1|R~2_combout\) # (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \C1|R~2_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|G~0_combout\);

-- Location: LCFF_X26_Y21_N25
\C1|G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|G\(0));

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
	datain => \C1|R\(0),
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
	datain => \C1|R\(0),
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
	datain => \C1|R\(0),
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
	datain => \C1|B\(0),
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
	datain => \C1|B\(0),
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
	datain => \C1|B\(0),
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
	datain => \C1|G\(0),
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
	datain => \C1|G\(0),
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
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));
END structure;


