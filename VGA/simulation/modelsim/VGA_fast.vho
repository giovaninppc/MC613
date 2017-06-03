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

-- DATE "06/03/2017 18:34:32"

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
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
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
SIGNAL \C1|Add3~6_combout\ : std_logic;
SIGNAL \C1|Add3~17\ : std_logic;
SIGNAL \C1|Add3~18_combout\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
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
SIGNAL \C1|Add6~12_combout\ : std_logic;
SIGNAL \C1|Add8~2_combout\ : std_logic;
SIGNAL \C1|Add8~10_combout\ : std_logic;
SIGNAL \C1|Add8~17\ : std_logic;
SIGNAL \C1|Add8~18_combout\ : std_logic;
SIGNAL \C1|Add11~2_combout\ : std_logic;
SIGNAL \C1|Add11~4_combout\ : std_logic;
SIGNAL \C1|Add11~6_combout\ : std_logic;
SIGNAL \C1|Add11~16_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|dMap~3_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|LessThan9~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~2_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
SIGNAL \C1|LessThan12~0_combout\ : std_logic;
SIGNAL \C1|LessThan12~1_combout\ : std_logic;
SIGNAL \C1|dMap~4_combout\ : std_logic;
SIGNAL \C1|LessThan14~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~4_combout\ : std_logic;
SIGNAL \C1|LessThan10~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~5_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~8_combout\ : std_logic;
SIGNAL \C1|dMap~18_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~14_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~15_combout\ : std_logic;
SIGNAL \C1|dMap~26_combout\ : std_logic;
SIGNAL \C1|dMap~27_combout\ : std_logic;
SIGNAL \C1|dMap~28_combout\ : std_logic;
SIGNAL \C1|dMap~32_combout\ : std_logic;
SIGNAL \C1|LessThan39~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~32_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~33_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~34_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~35_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~36_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~37_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~38_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~39_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~40_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|LessThan56~0_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~2_combout\ : std_logic;
SIGNAL \C1|LessThan54~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[7]~7_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[2]~5_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|LessThan51~0_combout\ : std_logic;
SIGNAL \C1|LessThan51~1_combout\ : std_logic;
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
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan58~1_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|LessThan58~0_combout\ : std_logic;
SIGNAL \C1|LessThan58~2_combout\ : std_logic;
SIGNAL \C1|LessThan52~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|LessThan61~0_combout\ : std_logic;
SIGNAL \C1|dMap~2_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~regout\ : std_logic;
SIGNAL \C1|Add11~1\ : std_logic;
SIGNAL \C1|Add11~3\ : std_logic;
SIGNAL \C1|Add11~5\ : std_logic;
SIGNAL \C1|Add11~7\ : std_logic;
SIGNAL \C1|Add11~9\ : std_logic;
SIGNAL \C1|Add11~11\ : std_logic;
SIGNAL \C1|Add11~13\ : std_logic;
SIGNAL \C1|Add11~15\ : std_logic;
SIGNAL \C1|Add11~17\ : std_logic;
SIGNAL \C1|Add11~18_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~0_combout\ : std_logic;
SIGNAL \C1|Add11~14_combout\ : std_logic;
SIGNAL \C1|SQ_X2[8]~1_combout\ : std_logic;
SIGNAL \C1|Add11~12_combout\ : std_logic;
SIGNAL \C1|SQ_X2[7]~2_combout\ : std_logic;
SIGNAL \C1|Add11~10_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~3_combout\ : std_logic;
SIGNAL \C1|Add11~8_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|Add11~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~feeder_combout\ : std_logic;
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
SIGNAL \C1|SQ_Y2[9]~0_combout\ : std_logic;
SIGNAL \C1|Add7~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~8_combout\ : std_logic;
SIGNAL \C1|Add7~8_combout\ : std_logic;
SIGNAL \C1|LessThan54~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~2_combout\ : std_logic;
SIGNAL \C1|Add7~1\ : std_logic;
SIGNAL \C1|Add7~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[2]~7_combout\ : std_logic;
SIGNAL \C1|Add7~3\ : std_logic;
SIGNAL \C1|Add7~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[3]~6_combout\ : std_logic;
SIGNAL \C1|Add7~5\ : std_logic;
SIGNAL \C1|Add7~6_combout\ : std_logic;
SIGNAL \C1|Add7~7\ : std_logic;
SIGNAL \C1|Add7~9\ : std_logic;
SIGNAL \C1|Add7~10_combout\ : std_logic;
SIGNAL \C1|Add7~11\ : std_logic;
SIGNAL \C1|Add7~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~5_combout\ : std_logic;
SIGNAL \C1|Add7~13\ : std_logic;
SIGNAL \C1|Add7~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[8]~4_combout\ : std_logic;
SIGNAL \C1|Add7~15\ : std_logic;
SIGNAL \C1|Add7~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~3_combout\ : std_logic;
SIGNAL \C1|Add7~17\ : std_logic;
SIGNAL \C1|Add7~18_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~15\ : std_logic;
SIGNAL \C1|Add3~16_combout\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add3~12_combout\ : std_logic;
SIGNAL \C1|Add3~10_combout\ : std_logic;
SIGNAL \C1|Add3~8_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|Add3~4_combout\ : std_logic;
SIGNAL \C1|Add3~2_combout\ : std_logic;
SIGNAL \C1|Add3~0_combout\ : std_logic;
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
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|dMap~10_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|LessThan50~0_combout\ : std_logic;
SIGNAL \C1|dMap~33_combout\ : std_logic;
SIGNAL \C1|LessThan49~0_combout\ : std_logic;
SIGNAL \C1|dMap~12_combout\ : std_logic;
SIGNAL \C1|dMap~13_combout\ : std_logic;
SIGNAL \C1|dMap~14_combout\ : std_logic;
SIGNAL \C1|dMap~8_combout\ : std_logic;
SIGNAL \C1|dMap~9_combout\ : std_logic;
SIGNAL \C1|dMap~5_combout\ : std_logic;
SIGNAL \C1|LessThan14~0_combout\ : std_logic;
SIGNAL \C1|dMap~6_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|LessThan11~1_combout\ : std_logic;
SIGNAL \C1|dMap~7_combout\ : std_logic;
SIGNAL \C1|LessThan18~0_combout\ : std_logic;
SIGNAL \C1|LessThan18~1_combout\ : std_logic;
SIGNAL \C1|LessThan18~2_combout\ : std_logic;
SIGNAL \C1|dMap~11_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~6_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~7_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~9_combout\ : std_logic;
SIGNAL \C1|dMap~19_combout\ : std_logic;
SIGNAL \C1|dMap~20_combout\ : std_logic;
SIGNAL \C1|dMap~21_combout\ : std_logic;
SIGNAL \C1|LessThan59~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|dMap~29_combout\ : std_logic;
SIGNAL \C1|dMap~30_combout\ : std_logic;
SIGNAL \C1|dMap~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~43_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~44_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~18_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~19_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~17_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~20_combout\ : std_logic;
SIGNAL \C1|LessThan47~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~12_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~11_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~13_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~42_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~10_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~16_combout\ : std_logic;
SIGNAL \C1|dMap~23_combout\ : std_logic;
SIGNAL \C1|dMap~22_combout\ : std_logic;
SIGNAL \C1|dMap~24_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~21_combout\ : std_logic;
SIGNAL \C1|dMap~25_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~22_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~26_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~25_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~27_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~28_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~23_combout\ : std_logic;
SIGNAL \C1|dMap~16_combout\ : std_logic;
SIGNAL \C1|dMap~15_combout\ : std_logic;
SIGNAL \C1|dMap~17_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~24_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~29_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~30_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~41_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~0_combout\ : std_logic;
SIGNAL \C1|Add6~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~10_combout\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~9_combout\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~1_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~3_combout\ : std_logic;
SIGNAL \C1|LessThan58~3_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~4_combout\ : std_logic;
SIGNAL \C1|Add6~1\ : std_logic;
SIGNAL \C1|Add6~3\ : std_logic;
SIGNAL \C1|Add6~5\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~11\ : std_logic;
SIGNAL \C1|Add6~13\ : std_logic;
SIGNAL \C1|Add6~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~6_combout\ : std_logic;
SIGNAL \C1|Add6~15\ : std_logic;
SIGNAL \C1|Add6~17\ : std_logic;
SIGNAL \C1|Add6~18_combout\ : std_logic;
SIGNAL \C1|Add6~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~5_combout\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~8_combout\ : std_logic;
SIGNAL \C1|Add1~1_cout\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~17\ : std_logic;
SIGNAL \C1|Add1~19\ : std_logic;
SIGNAL \C1|Add1~20_combout\ : std_logic;
SIGNAL \C1|Add1~18_combout\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
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
SIGNAL \C1|Add8~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~1_combout\ : std_logic;
SIGNAL \C1|Add8~1\ : std_logic;
SIGNAL \C1|Add8~3\ : std_logic;
SIGNAL \C1|Add8~5\ : std_logic;
SIGNAL \C1|Add8~7\ : std_logic;
SIGNAL \C1|Add8~9\ : std_logic;
SIGNAL \C1|Add8~11\ : std_logic;
SIGNAL \C1|Add8~13\ : std_logic;
SIGNAL \C1|Add8~15\ : std_logic;
SIGNAL \C1|Add8~16_combout\ : std_logic;
SIGNAL \C1|Add8~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~2_combout\ : std_logic;
SIGNAL \C1|Add8~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~3_combout\ : std_logic;
SIGNAL \C1|Add8~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~4_combout\ : std_logic;
SIGNAL \C1|Add8~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~5_combout\ : std_logic;
SIGNAL \C1|Add8~4_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
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
SIGNAL \C1|B~0_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|B~1_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \C1|G~0_combout\ : std_logic;
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);

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

-- Location: LCCOMB_X21_Y10_N12
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

-- Location: LCCOMB_X21_Y10_N14
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

-- Location: LCCOMB_X21_Y10_N18
\C1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|SQ_Y1\(6) & (!\C1|Add1~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add1~9\) # (GND)))
-- \C1|Add1~11\ = CARRY((!\C1|Add1~9\) # (!\C1|SQ_Y1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X21_Y10_N20
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

-- Location: LCCOMB_X21_Y10_N24
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

-- Location: LCCOMB_X19_Y12_N10
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = (\C1|SQ_X1\(2) & (\C1|SQ_X1\(3) $ (VCC))) # (!\C1|SQ_X1\(2) & (\C1|SQ_X1\(3) & VCC))
-- \C1|Add0~1\ = CARRY((\C1|SQ_X1\(2) & \C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X19_Y12_N12
\C1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(4) & (!\C1|Add0~1\)) # (!\C1|SQ_X1\(4) & (\C1|Add0~1\ & VCC))
-- \C1|Add0~3\ = CARRY((\C1|SQ_X1\(4) & !\C1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X19_Y12_N14
\C1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|SQ_X1\(5) & (!\C1|Add0~3\ & VCC)) # (!\C1|SQ_X1\(5) & (\C1|Add0~3\ $ (GND)))
-- \C1|Add0~5\ = CARRY((!\C1|SQ_X1\(5) & !\C1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X19_Y12_N16
\C1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(6) & (!\C1|Add0~5\)) # (!\C1|SQ_X1\(6) & ((\C1|Add0~5\) # (GND)))
-- \C1|Add0~7\ = CARRY((!\C1|Add0~5\) # (!\C1|SQ_X1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X19_Y12_N18
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(7) & (!\C1|Add0~7\ & VCC)) # (!\C1|SQ_X1\(7) & (\C1|Add0~7\ $ (GND)))
-- \C1|Add0~9\ = CARRY((!\C1|SQ_X1\(7) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X19_Y12_N20
\C1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|SQ_X1\(8) & ((\C1|Add0~9\) # (GND))) # (!\C1|SQ_X1\(8) & (!\C1|Add0~9\))
-- \C1|Add0~11\ = CARRY((\C1|SQ_X1\(8)) # (!\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X19_Y12_N22
\C1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(9) & (\C1|Add0~11\ $ (GND))) # (!\C1|SQ_X1\(9) & (!\C1|Add0~11\ & VCC))
-- \C1|Add0~13\ = CARRY((\C1|SQ_X1\(9) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X19_Y12_N24
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(10) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(10) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X21_Y12_N10
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

-- Location: LCCOMB_X21_Y12_N12
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

-- Location: LCCOMB_X21_Y12_N14
\C1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|HPOS\(2) & ((\C1|SQ_X1\(2)) # (!\C1|LessThan1~3_cout\))) # (!\C1|HPOS\(2) & (\C1|SQ_X1\(2) & !\C1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X21_Y12_N16
\C1|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~7_cout\ = CARRY((\C1|Add0~0_combout\ & ((!\C1|LessThan1~5_cout\) # (!\C1|HPOS\(3)))) # (!\C1|Add0~0_combout\ & (!\C1|HPOS\(3) & !\C1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan1~5_cout\,
	cout => \C1|LessThan1~7_cout\);

-- Location: LCCOMB_X21_Y12_N18
\C1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|HPOS\(4) & ((!\C1|LessThan1~7_cout\) # (!\C1|Add0~2_combout\))) # (!\C1|HPOS\(4) & (!\C1|Add0~2_combout\ & !\C1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X21_Y12_N20
\C1|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|Add0~4_combout\ & !\C1|LessThan1~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|Add0~4_combout\) # (!\C1|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan1~9_cout\,
	cout => \C1|LessThan1~11_cout\);

-- Location: LCCOMB_X21_Y12_N22
\C1|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan1~11_cout\) # (!\C1|Add0~6_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add0~6_combout\ & !\C1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X21_Y12_N24
\C1|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~15_cout\ = CARRY((\C1|HPOS\(7) & (\C1|Add0~8_combout\ & !\C1|LessThan1~13_cout\)) # (!\C1|HPOS\(7) & ((\C1|Add0~8_combout\) # (!\C1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|LessThan1~13_cout\,
	cout => \C1|LessThan1~15_cout\);

-- Location: LCCOMB_X21_Y12_N26
\C1|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~17_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan1~15_cout\) # (!\C1|Add0~10_combout\))) # (!\C1|HPOS\(8) & (!\C1|Add0~10_combout\ & !\C1|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan1~15_cout\,
	cout => \C1|LessThan1~17_cout\);

-- Location: LCCOMB_X21_Y12_N28
\C1|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~19_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add0~12_combout\ & !\C1|LessThan1~17_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add0~12_combout\) # (!\C1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan1~17_cout\,
	cout => \C1|LessThan1~19_cout\);

-- Location: LCCOMB_X21_Y12_N30
\C1|LessThan1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~20_combout\ = (\C1|HPOS\(10) & (\C1|LessThan1~19_cout\ & \C1|Add0~14_combout\)) # (!\C1|HPOS\(10) & ((\C1|LessThan1~19_cout\) # (\C1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|Add0~14_combout\,
	cin => \C1|LessThan1~19_cout\,
	combout => \C1|LessThan1~20_combout\);

-- Location: LCCOMB_X20_Y12_N12
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

-- Location: LCCOMB_X20_Y12_N14
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

-- Location: LCCOMB_X20_Y12_N16
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

-- Location: LCCOMB_X20_Y12_N18
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

-- Location: LCCOMB_X20_Y12_N20
\C1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|HPOS\(5) & ((\C1|SQ_X1\(5)) # (!\C1|LessThan0~7_cout\))) # (!\C1|HPOS\(5) & (\C1|SQ_X1\(5) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y12_N22
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

-- Location: LCCOMB_X20_Y12_N24
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

-- Location: LCCOMB_X20_Y12_N26
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

-- Location: LCCOMB_X20_Y12_N28
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

-- Location: LCCOMB_X20_Y12_N30
\C1|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~18_combout\ = (\C1|SQ_X1\(10) & (\C1|HPOS\(10) & \C1|LessThan0~17_cout\)) # (!\C1|SQ_X1\(10) & ((\C1|HPOS\(10)) # (\C1|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|HPOS\(10),
	cin => \C1|LessThan0~17_cout\,
	combout => \C1|LessThan0~18_combout\);

-- Location: LCCOMB_X25_Y12_N16
\C1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(5) & (!\C1|Add3~5\)) # (!\C1|SQ_Y2\(5) & ((\C1|Add3~5\) # (GND)))
-- \C1|Add3~7\ = CARRY((!\C1|Add3~5\) # (!\C1|SQ_Y2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X25_Y12_N26
\C1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~16_combout\ = (\C1|SQ_Y2\(10) & (\C1|Add3~15\ $ (GND))) # (!\C1|SQ_Y2\(10) & (!\C1|Add3~15\ & VCC))
-- \C1|Add3~17\ = CARRY((\C1|SQ_Y2\(10) & !\C1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => VCC,
	cin => \C1|Add3~15\,
	combout => \C1|Add3~16_combout\,
	cout => \C1|Add3~17\);

-- Location: LCCOMB_X25_Y12_N28
\C1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~18_combout\ = \C1|Add3~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add3~17\,
	combout => \C1|Add3~18_combout\);

-- Location: LCCOMB_X22_Y11_N20
\C1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = (\C1|SQ_X2\(7) & (!\C1|Add2~3\ & VCC)) # (!\C1|SQ_X2\(7) & (\C1|Add2~3\ $ (GND)))
-- \C1|Add2~5\ = CARRY((!\C1|SQ_X2\(7) & !\C1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X19_Y11_N4
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

-- Location: LCCOMB_X19_Y11_N6
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

-- Location: LCCOMB_X19_Y11_N8
\C1|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|SQ_X2\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan4~3_cout\))) # (!\C1|SQ_X2\(2) & (\C1|HPOS\(2) & !\C1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X19_Y11_N10
\C1|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|HPOS\(3) & (!\C1|SQ_X2\(3) & !\C1|LessThan4~5_cout\)) # (!\C1|HPOS\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|SQ_X2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X19_Y11_N12
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

-- Location: LCCOMB_X19_Y11_N14
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

-- Location: LCCOMB_X19_Y11_N16
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

-- Location: LCCOMB_X19_Y11_N18
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

-- Location: LCCOMB_X19_Y11_N20
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

-- Location: LCCOMB_X19_Y11_N22
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

-- Location: LCCOMB_X19_Y11_N24
\C1|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|HPOS\(10) & ((!\C1|SQ_X2\(10)) # (!\C1|LessThan4~19_cout\))) # (!\C1|HPOS\(10) & (!\C1|LessThan4~19_cout\ & !\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|SQ_X2\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X18_Y10_N12
\C1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~12_combout\ = ((\C1|SQ_Y1\(7) $ (\C1|SQ_Y1[8]~0_combout\ $ (!\C1|Add6~11\)))) # (GND)
-- \C1|Add6~13\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~11\)) # (!\C1|SQ_Y1\(7) & ((!\C1|Add6~11\) # (!\C1|SQ_Y1[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~11\,
	combout => \C1|Add6~12_combout\,
	cout => \C1|Add6~13\);

-- Location: LCCOMB_X18_Y12_N4
\C1|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~2_combout\ = (\C1|SQ_X1\(2) & ((\KEY~combout\(1) & (!\C1|Add8~1\)) # (!\KEY~combout\(1) & (\C1|Add8~1\ & VCC)))) # (!\C1|SQ_X1\(2) & ((\KEY~combout\(1) & ((\C1|Add8~1\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add8~1\))))
-- \C1|Add8~3\ = CARRY((\C1|SQ_X1\(2) & (\KEY~combout\(1) & !\C1|Add8~1\)) # (!\C1|SQ_X1\(2) & ((\KEY~combout\(1)) # (!\C1|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~1\,
	combout => \C1|Add8~2_combout\,
	cout => \C1|Add8~3\);

-- Location: LCCOMB_X18_Y12_N12
\C1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~10_combout\ = (\C1|SQ_X1\(6) & ((\KEY~combout\(1) & (!\C1|Add8~9\)) # (!\KEY~combout\(1) & (\C1|Add8~9\ & VCC)))) # (!\C1|SQ_X1\(6) & ((\KEY~combout\(1) & ((\C1|Add8~9\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add8~9\))))
-- \C1|Add8~11\ = CARRY((\C1|SQ_X1\(6) & (\KEY~combout\(1) & !\C1|Add8~9\)) # (!\C1|SQ_X1\(6) & ((\KEY~combout\(1)) # (!\C1|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~9\,
	combout => \C1|Add8~10_combout\,
	cout => \C1|Add8~11\);

-- Location: LCCOMB_X18_Y12_N18
\C1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~16_combout\ = ((\C1|SQ_X1\(9) $ (\KEY~combout\(1) $ (\C1|Add8~15\)))) # (GND)
-- \C1|Add8~17\ = CARRY((\C1|SQ_X1\(9) & ((!\C1|Add8~15\) # (!\KEY~combout\(1)))) # (!\C1|SQ_X1\(9) & (!\KEY~combout\(1) & !\C1|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~15\,
	combout => \C1|Add8~16_combout\,
	cout => \C1|Add8~17\);

-- Location: LCCOMB_X18_Y12_N20
\C1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~18_combout\ = \C1|SQ_X1\(10) $ (\KEY~combout\(1) $ (!\C1|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \KEY~combout\(1),
	cin => \C1|Add8~17\,
	combout => \C1|Add8~18_combout\);

-- Location: LCCOMB_X21_Y11_N6
\C1|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~2_combout\ = (\C1|SQ_X2\(2) & ((\KEY~combout\(1) & ((\C1|Add11~1\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add11~1\)))) # (!\C1|SQ_X2\(2) & ((\KEY~combout\(1) & (!\C1|Add11~1\)) # (!\KEY~combout\(1) & (\C1|Add11~1\ & VCC))))
-- \C1|Add11~3\ = CARRY((\C1|SQ_X2\(2) & ((\KEY~combout\(1)) # (!\C1|Add11~1\))) # (!\C1|SQ_X2\(2) & (\KEY~combout\(1) & !\C1|Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~1\,
	combout => \C1|Add11~2_combout\,
	cout => \C1|Add11~3\);

-- Location: LCCOMB_X21_Y11_N8
\C1|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~4_combout\ = ((\C1|SQ_X2\(3) $ (\KEY~combout\(1) $ (!\C1|Add11~3\)))) # (GND)
-- \C1|Add11~5\ = CARRY((\C1|SQ_X2\(3) & (!\KEY~combout\(1) & !\C1|Add11~3\)) # (!\C1|SQ_X2\(3) & ((!\C1|Add11~3\) # (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~3\,
	combout => \C1|Add11~4_combout\,
	cout => \C1|Add11~5\);

-- Location: LCCOMB_X21_Y11_N10
\C1|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~6_combout\ = (\C1|SQ_X2\(4) & ((\KEY~combout\(1) & (!\C1|Add11~5\)) # (!\KEY~combout\(1) & (\C1|Add11~5\ & VCC)))) # (!\C1|SQ_X2\(4) & ((\KEY~combout\(1) & ((\C1|Add11~5\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add11~5\))))
-- \C1|Add11~7\ = CARRY((\C1|SQ_X2\(4) & (\KEY~combout\(1) & !\C1|Add11~5\)) # (!\C1|SQ_X2\(4) & ((\KEY~combout\(1)) # (!\C1|Add11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~5\,
	combout => \C1|Add11~6_combout\,
	cout => \C1|Add11~7\);

-- Location: LCCOMB_X21_Y11_N20
\C1|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~16_combout\ = ((\C1|SQ_X2\(9) $ (\KEY~combout\(1) $ (\C1|Add11~15\)))) # (GND)
-- \C1|Add11~17\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|Add11~15\) # (!\KEY~combout\(1)))) # (!\C1|SQ_X2\(9) & (!\KEY~combout\(1) & !\C1|Add11~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~15\,
	combout => \C1|Add11~16_combout\,
	cout => \C1|Add11~17\);

-- Location: LCCOMB_X22_Y11_N10
\C1|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(4)) # ((\C1|VPOS\(2)) # (\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(5),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X23_Y10_N16
\C1|dMap~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~3_combout\ = (!\C1|VPOS\(4) & !\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~3_combout\);

-- Location: LCCOMB_X22_Y11_N12
\C1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|VPOS\(2) & ((!\C1|VPOS\(1)) # (!\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(1),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCCOMB_X22_Y11_N6
\C1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = ((!\C1|VPOS\(4) & ((\C1|LessThan8~0_combout\) # (!\C1|VPOS\(3))))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~0_combout\,
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan8~1_combout\);

-- Location: LCCOMB_X21_Y12_N6
\C1|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~1_combout\ = (!\C1|HPOS\(9) & (!\C1|HPOS\(10) & ((\C1|LessThan18~2_combout\) # (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|LessThan18~2_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(10),
	combout => \C1|LessThan9~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\C1|DRAWMAP~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~2_combout\ = (!\C1|LessThan9~1_combout\ & (((\C1|VPOS\(6)) # (!\C1|dMap~2_combout\)) # (!\C1|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~1_combout\,
	datab => \C1|LessThan9~1_combout\,
	datac => \C1|VPOS\(6),
	datad => \C1|dMap~2_combout\,
	combout => \C1|DRAWMAP~2_combout\);

-- Location: LCCOMB_X20_Y12_N0
\C1|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(4)) # ((\C1|HPOS\(2)) # (\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan13~0_combout\);

-- Location: LCCOMB_X24_Y11_N22
\C1|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan12~0_combout\ = (!\C1|VPOS\(5) & (((!\C1|VPOS\(1) & !\C1|VPOS\(0))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan12~0_combout\);

-- Location: LCCOMB_X24_Y11_N24
\C1|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan12~1_combout\ = ((!\C1|VPOS\(5) & ((!\C1|VPOS\(2)) # (!\C1|VPOS\(4))))) # (!\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan12~1_combout\);

-- Location: LCCOMB_X20_Y12_N10
\C1|dMap~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~4_combout\ = (\C1|LessThan12~0_combout\ & ((\C1|LessThan13~0_combout\) # ((\C1|HPOS\(6))))) # (!\C1|LessThan12~0_combout\ & (\C1|LessThan12~1_combout\ & ((\C1|LessThan13~0_combout\) # (\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan12~0_combout\,
	datab => \C1|LessThan13~0_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan12~1_combout\,
	combout => \C1|dMap~4_combout\);

-- Location: LCCOMB_X19_Y10_N2
\C1|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan14~1_combout\ = (!\C1|HPOS\(4) & (!\C1|HPOS\(5) & ((!\C1|HPOS\(1)) # (!\C1|HPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan14~1_combout\);

-- Location: LCCOMB_X23_Y10_N12
\C1|DRAWMAP~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~3_combout\ = (\C1|VPOS\(10) & ((\C1|VPOS\(5)) # ((\C1|VPOS\(7)) # (\C1|VPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(6),
	combout => \C1|DRAWMAP~3_combout\);

-- Location: LCCOMB_X23_Y10_N22
\C1|DRAWMAP~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~4_combout\ = (\C1|DRAWMAP~3_combout\) # ((\C1|VPOS\(10) & ((\C1|VPOS\(8)) # (\C1|VPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~3_combout\,
	datab => \C1|VPOS\(10),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~4_combout\);

-- Location: LCCOMB_X23_Y10_N24
\C1|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan10~0_combout\ = (\C1|VPOS\(10) & ((\C1|VPOS\(2)) # ((\C1|VPOS\(1) & \C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan10~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\C1|DRAWMAP~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~5_combout\ = (\C1|DRAWMAP~4_combout\) # ((\C1|LessThan10~0_combout\ & (\C1|VPOS\(3) & \C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan10~0_combout\,
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|DRAWMAP~4_combout\,
	combout => \C1|DRAWMAP~5_combout\);

-- Location: LCCOMB_X21_Y12_N8
\C1|DRAWMAP~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~8_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS\(10) & !\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(8),
	combout => \C1|DRAWMAP~8_combout\);

-- Location: LCCOMB_X20_Y10_N24
\C1|dMap~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~18_combout\ = (\C1|HPOS\(1) & (\C1|HPOS\(2) & \C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|dMap~18_combout\);

-- Location: LCCOMB_X24_Y10_N20
\C1|DRAWMAP~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~14_combout\ = (!\C1|HPOS\(5) & (((!\C1|VPOS\(3) & !\C1|VPOS\(2))) # (!\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(2),
	combout => \C1|DRAWMAP~14_combout\);

-- Location: LCCOMB_X24_Y10_N6
\C1|DRAWMAP~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~15_combout\ = (!\C1|VPOS\(6) & (\C1|LessThan61~0_combout\ & (\C1|DRAWMAP~14_combout\ & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|LessThan61~0_combout\,
	datac => \C1|DRAWMAP~14_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~15_combout\);

-- Location: LCCOMB_X22_Y11_N8
\C1|dMap~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~26_combout\ = (\C1|VPOS\(2)) # ((\C1|VPOS\(6) & ((\C1|VPOS\(0)) # (\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(6),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(1),
	combout => \C1|dMap~26_combout\);

-- Location: LCCOMB_X23_Y11_N20
\C1|dMap~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~27_combout\ = (\C1|VPOS\(6) & (\C1|VPOS\(4) & (\C1|VPOS\(5) & !\C1|VPOS\(7)))) # (!\C1|VPOS\(6) & (!\C1|VPOS\(4) & (!\C1|VPOS\(5) & \C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(5),
	datad => \C1|VPOS\(7),
	combout => \C1|dMap~27_combout\);

-- Location: LCCOMB_X22_Y11_N2
\C1|dMap~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~28_combout\ = (\C1|dMap~27_combout\ & (\C1|VPOS\(4) $ (((!\C1|dMap~26_combout\) # (!\C1|VPOS\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|dMap~26_combout\,
	datac => \C1|VPOS\(4),
	datad => \C1|dMap~27_combout\,
	combout => \C1|dMap~28_combout\);

-- Location: LCCOMB_X19_Y10_N24
\C1|dMap~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~32_combout\ = (!\C1|HPOS\(8) & \C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|HPOS\(6),
	combout => \C1|dMap~32_combout\);

-- Location: LCCOMB_X19_Y10_N18
\C1|LessThan39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan39~0_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(1) & \C1|HPOS\(2)))))

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
	combout => \C1|LessThan39~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\C1|DRAWMAP~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~31_combout\ = (\C1|dMap~32_combout\ & (!\C1|HPOS\(9) & ((\C1|LessThan39~0_combout\) # (\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~32_combout\,
	datab => \C1|LessThan39~0_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~31_combout\);

-- Location: LCCOMB_X19_Y10_N6
\C1|DRAWMAP~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~32_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & !\C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~32_combout\);

-- Location: LCCOMB_X19_Y10_N16
\C1|DRAWMAP~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~33_combout\ = (\C1|DRAWMAP~32_combout\ & (!\C1|HPOS\(7) & ((!\C1|dMap~18_combout\) # (!\C1|HPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~32_combout\,
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(7),
	datad => \C1|dMap~18_combout\,
	combout => \C1|DRAWMAP~33_combout\);

-- Location: LCCOMB_X19_Y10_N10
\C1|DRAWMAP~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~34_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(5) & (\C1|HPOS\(8) & !\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(2),
	combout => \C1|DRAWMAP~34_combout\);

-- Location: LCCOMB_X19_Y10_N20
\C1|DRAWMAP~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~35_combout\ = ((\C1|HPOS\(4)) # ((\C1|HPOS\(6)) # (\C1|HPOS\(3)))) # (!\C1|DRAWMAP~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~34_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(3),
	combout => \C1|DRAWMAP~35_combout\);

-- Location: LCCOMB_X19_Y10_N14
\C1|DRAWMAP~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~36_combout\ = (\C1|DRAWMAP~33_combout\) # ((\C1|HPOS\(7) & (\C1|DRAWMAP~35_combout\ & !\C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~33_combout\,
	datab => \C1|HPOS\(7),
	datac => \C1|DRAWMAP~35_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~36_combout\);

-- Location: LCCOMB_X19_Y10_N8
\C1|DRAWMAP~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~37_combout\ = (\C1|HPOS\(8) & (((!\C1|HPOS\(9))))) # (!\C1|HPOS\(8) & (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & \C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~37_combout\);

-- Location: LCCOMB_X19_Y10_N26
\C1|DRAWMAP~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~38_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(2)) # (!\C1|HPOS\(0))) # (!\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(2),
	combout => \C1|DRAWMAP~38_combout\);

-- Location: LCCOMB_X19_Y10_N4
\C1|DRAWMAP~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~39_combout\ = (\C1|DRAWMAP~37_combout\) # ((\C1|DRAWMAP~38_combout\ & (!\C1|HPOS\(5) & \C1|dMap~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~38_combout\,
	datab => \C1|DRAWMAP~37_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|dMap~10_combout\,
	combout => \C1|DRAWMAP~39_combout\);

-- Location: LCCOMB_X19_Y10_N30
\C1|DRAWMAP~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~40_combout\ = (\C1|DRAWMAP~31_combout\) # ((\C1|DRAWMAP~36_combout\) # ((\C1|DRAWMAP~39_combout\ & \C1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~31_combout\,
	datab => \C1|DRAWMAP~39_combout\,
	datac => \C1|DRAWMAP~36_combout\,
	datad => \C1|process_0~2_combout\,
	combout => \C1|DRAWMAP~40_combout\);

-- Location: LCFF_X21_Y10_N13
\C1|SQ_Y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y1[7]~7_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(7));

-- Location: LCFF_X18_Y12_N21
\C1|SQ_X1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~18_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(10));

-- Location: LCFF_X18_Y12_N13
\C1|SQ_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~10_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(6));

-- Location: LCFF_X19_Y12_N5
\C1|SQ_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add8~2_combout\,
	sload => VCC,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(2));

-- Location: LCFF_X21_Y11_N21
\C1|SQ_X2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add11~16_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(9));

-- Location: LCFF_X21_Y11_N11
\C1|SQ_X2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add11~6_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(4));

-- Location: LCFF_X23_Y11_N31
\C1|SQ_X2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[3]~4_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(3));

-- Location: LCFF_X23_Y11_N25
\C1|SQ_X2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[2]~5_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(2));

-- Location: LCCOMB_X23_Y10_N6
\C1|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (!\C1|VPOS\(10) & (!\C1|VPOS\(9) & ((\C1|VPOS\(5)) # (\C1|LessThan61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(10),
	datac => \C1|VPOS\(9),
	datad => \C1|LessThan61~0_combout\,
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X21_Y13_N24
\C1|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|HPOS\(8) & (!\C1|LessThan59~0_combout\ & (\C1|process_0~2_combout\ & \C1|dMap~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|LessThan59~0_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|dMap~8_combout\,
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X21_Y13_N10
\C1|LessThan56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan56~0_combout\ = (!\C1|HPOS\(6) & (!\C1|HPOS\(5) & ((!\C1|HPOS\(3)) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan56~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\C1|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = ((\C1|HPOS\(7) & (\C1|HPOS\(8) & !\C1|LessThan56~0_combout\))) # (!\C1|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan9~0_combout\,
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan56~0_combout\,
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X22_Y13_N28
\C1|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (\C1|process_0~6_combout\ & ((\C1|LessThan58~2_combout\) # ((!\C1|process_0~7_combout\ & !\C1|process_0~8_combout\)))) # (!\C1|process_0~6_combout\ & (!\C1|process_0~7_combout\ & (!\C1|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~6_combout\,
	datab => \C1|process_0~7_combout\,
	datac => \C1|process_0~8_combout\,
	datad => \C1|LessThan58~2_combout\,
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X18_Y10_N30
\C1|SQ_Y1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~2_combout\ = (\C1|SQ_Y1\(6) & (!\C1|SQ_Y1\(8) & (!\C1|SQ_Y1\(9) & !\C1|SQ_Y1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(8),
	datac => \C1|SQ_Y1\(9),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|SQ_Y1[1]~2_combout\);

-- Location: LCCOMB_X26_Y12_N6
\C1|LessThan54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan54~1_combout\ = (!\C1|SQ_Y2\(9)) # (!\C1|SQ_Y2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(9),
	combout => \C1|LessThan54~1_combout\);

-- Location: LCCOMB_X18_Y10_N28
\C1|SQ_Y1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[7]~7_combout\ = !\C1|Add6~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~12_combout\,
	combout => \C1|SQ_Y1[7]~7_combout\);

-- Location: LCCOMB_X23_Y11_N30
\C1|SQ_X2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~4_combout\ = !\C1|Add11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add11~4_combout\,
	combout => \C1|SQ_X2[3]~4_combout\);

-- Location: LCCOMB_X23_Y11_N24
\C1|SQ_X2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[2]~5_combout\ = !\C1|Add11~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add11~2_combout\,
	combout => \C1|SQ_X2[2]~5_combout\);

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
	pll_compensation_delay => 4185,
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

-- Location: LCCOMB_X20_Y10_N0
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

-- Location: LCCOMB_X20_Y10_N16
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

-- Location: LCFF_X20_Y10_N17
\C1|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(8));

-- Location: LCCOMB_X22_Y13_N22
\C1|LessThan51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan51~0_combout\ = (!\C1|HPOS\(10)) # (!\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C1|HPOS\(10),
	combout => \C1|LessThan51~0_combout\);

-- Location: LCCOMB_X24_Y10_N2
\C1|LessThan51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan51~1_combout\ = (!\C1|LessThan51~0_combout\ & ((\C1|HPOS\(8)) # ((!\C1|LessThan56~0_combout\ & \C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan56~0_combout\,
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan51~0_combout\,
	combout => \C1|LessThan51~1_combout\);

-- Location: LCFF_X20_Y10_N1
\C1|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(0));

-- Location: LCCOMB_X20_Y10_N2
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

-- Location: LCFF_X20_Y10_N3
\C1|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(1));

-- Location: LCCOMB_X20_Y10_N4
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

-- Location: LCFF_X20_Y10_N5
\C1|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(2));

-- Location: LCCOMB_X20_Y10_N6
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

-- Location: LCCOMB_X20_Y10_N8
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

-- Location: LCFF_X20_Y10_N9
\C1|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(4));

-- Location: LCCOMB_X20_Y10_N10
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

-- Location: LCCOMB_X20_Y10_N12
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

-- Location: LCCOMB_X20_Y10_N14
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

-- Location: LCFF_X20_Y10_N15
\C1|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(7));

-- Location: LCCOMB_X20_Y10_N18
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

-- Location: LCFF_X20_Y10_N19
\C1|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(9));

-- Location: LCCOMB_X20_Y10_N20
\C1|HPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS\(10) $ (!\C1|HPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: LCFF_X20_Y10_N21
\C1|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(10));

-- Location: LCCOMB_X21_Y13_N6
\C1|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (!\C1|HPOS\(10) & !\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(9),
	combout => \C1|LessThan9~0_combout\);

-- Location: LCFF_X20_Y10_N13
\C1|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(6));

-- Location: LCCOMB_X19_Y10_N0
\C1|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (!\C1|HPOS\(7) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(6),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X21_Y13_N26
\C1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(8)) # ((\C1|HPOS\(7) & ((\C1|HPOS\(5)) # (\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X21_Y13_N16
\C1|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = ((\C1|process_0~0_combout\) # ((\C1|process_0~1_combout\ & \C1|process_0~2_combout\))) # (!\C1|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~1_combout\,
	datab => \C1|LessThan9~0_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|process_0~0_combout\,
	combout => \C1|process_0~3_combout\);

-- Location: LCFF_X21_Y13_N17
\C1|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HSYNC~regout\);

-- Location: LCCOMB_X24_Y11_N0
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

-- Location: LCCOMB_X24_Y11_N4
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

-- Location: LCCOMB_X24_Y11_N6
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

-- Location: LCFF_X24_Y11_N7
\C1|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(3));

-- Location: LCCOMB_X24_Y11_N8
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

-- Location: LCFF_X24_Y11_N9
\C1|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(4));

-- Location: LCCOMB_X24_Y11_N10
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

-- Location: LCCOMB_X24_Y11_N12
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

-- Location: LCCOMB_X24_Y11_N14
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

-- Location: LCFF_X24_Y11_N15
\C1|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(7));

-- Location: LCCOMB_X24_Y11_N16
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

-- Location: LCCOMB_X24_Y11_N18
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

-- Location: LCFF_X24_Y11_N19
\C1|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(9));

-- Location: LCCOMB_X24_Y11_N20
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

-- Location: LCFF_X24_Y11_N21
\C1|VPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(10));

-- Location: LCCOMB_X25_Y11_N24
\C1|LessThan58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan58~1_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(2) & !\C1|VPOS\(1))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(4),
	combout => \C1|LessThan58~1_combout\);

-- Location: LCFF_X24_Y11_N17
\C1|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(8));

-- Location: LCFF_X24_Y11_N13
\C1|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(6));

-- Location: LCCOMB_X25_Y11_N30
\C1|LessThan58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan58~0_combout\ = (!\C1|VPOS\(7) & (!\C1|VPOS\(8) & !\C1|VPOS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|VPOS\(8),
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan58~0_combout\);

-- Location: LCCOMB_X25_Y11_N26
\C1|LessThan58~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan58~2_combout\ = (\C1|LessThan58~0_combout\ & ((\C1|LessThan58~1_combout\) # (!\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datac => \C1|LessThan58~1_combout\,
	datad => \C1|LessThan58~0_combout\,
	combout => \C1|LessThan58~2_combout\);

-- Location: LCCOMB_X25_Y11_N28
\C1|LessThan52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~0_combout\ = (\C1|VPOS\(10) & ((\C1|VPOS\(9)) # (!\C1|LessThan58~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(10),
	datad => \C1|LessThan58~2_combout\,
	combout => \C1|LessThan52~0_combout\);

-- Location: LCFF_X24_Y11_N1
\C1|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(0));

-- Location: LCCOMB_X24_Y11_N2
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

-- Location: LCFF_X24_Y11_N3
\C1|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(1));

-- Location: LCFF_X24_Y11_N5
\C1|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(2));

-- Location: LCCOMB_X23_Y10_N26
\C1|LessThan61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan61~0_combout\ = ((\C1|VPOS\(2)) # ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))) # (!\C1|dMap~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~3_combout\,
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan61~0_combout\);

-- Location: LCCOMB_X20_Y11_N0
\C1|dMap~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~2_combout\ = (!\C1|VPOS\(10) & (!\C1|VPOS\(7) & (!\C1|VPOS\(9) & !\C1|VPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(9),
	datad => \C1|VPOS\(8),
	combout => \C1|dMap~2_combout\);

-- Location: LCCOMB_X22_Y11_N0
\C1|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|process_0~4_combout\) # (((\C1|VPOS\(6)) # (!\C1|dMap~2_combout\)) # (!\C1|LessThan61~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|LessThan61~0_combout\,
	datac => \C1|VPOS\(6),
	datad => \C1|dMap~2_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCFF_X22_Y11_N1
\C1|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VSYNC~regout\);

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

-- Location: LCCOMB_X21_Y11_N4
\C1|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add11~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add11~0_combout\,
	cout => \C1|Add11~1\);

-- Location: LCCOMB_X21_Y11_N12
\C1|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~8_combout\ = ((\C1|SQ_X2\(5) $ (\KEY~combout\(1) $ (\C1|Add11~7\)))) # (GND)
-- \C1|Add11~9\ = CARRY((\C1|SQ_X2\(5) & ((!\C1|Add11~7\) # (!\KEY~combout\(1)))) # (!\C1|SQ_X2\(5) & (!\KEY~combout\(1) & !\C1|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~7\,
	combout => \C1|Add11~8_combout\,
	cout => \C1|Add11~9\);

-- Location: LCCOMB_X21_Y11_N14
\C1|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~10_combout\ = (\C1|SQ_X2\(6) & ((\KEY~combout\(1) & ((\C1|Add11~9\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add11~9\)))) # (!\C1|SQ_X2\(6) & ((\KEY~combout\(1) & (!\C1|Add11~9\)) # (!\KEY~combout\(1) & (\C1|Add11~9\ & VCC))))
-- \C1|Add11~11\ = CARRY((\C1|SQ_X2\(6) & ((\KEY~combout\(1)) # (!\C1|Add11~9\))) # (!\C1|SQ_X2\(6) & (\KEY~combout\(1) & !\C1|Add11~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~9\,
	combout => \C1|Add11~10_combout\,
	cout => \C1|Add11~11\);

-- Location: LCCOMB_X21_Y11_N16
\C1|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~12_combout\ = ((\C1|SQ_X2\(7) $ (\KEY~combout\(1) $ (!\C1|Add11~11\)))) # (GND)
-- \C1|Add11~13\ = CARRY((\C1|SQ_X2\(7) & (!\KEY~combout\(1) & !\C1|Add11~11\)) # (!\C1|SQ_X2\(7) & ((!\C1|Add11~11\) # (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~11\,
	combout => \C1|Add11~12_combout\,
	cout => \C1|Add11~13\);

-- Location: LCCOMB_X21_Y11_N18
\C1|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~14_combout\ = (\C1|SQ_X2\(8) & ((\KEY~combout\(1) & ((\C1|Add11~13\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add11~13\)))) # (!\C1|SQ_X2\(8) & ((\KEY~combout\(1) & (!\C1|Add11~13\)) # (!\KEY~combout\(1) & (\C1|Add11~13\ & VCC))))
-- \C1|Add11~15\ = CARRY((\C1|SQ_X2\(8) & ((\KEY~combout\(1)) # (!\C1|Add11~13\))) # (!\C1|SQ_X2\(8) & (\KEY~combout\(1) & !\C1|Add11~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add11~13\,
	combout => \C1|Add11~14_combout\,
	cout => \C1|Add11~15\);

-- Location: LCCOMB_X21_Y11_N22
\C1|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add11~18_combout\ = \KEY~combout\(1) $ (\C1|Add11~17\ $ (!\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datad => \C1|SQ_X2\(10),
	cin => \C1|Add11~17\,
	combout => \C1|Add11~18_combout\);

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

-- Location: LCCOMB_X25_Y10_N0
\C1|SQ_X1[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~0_combout\ = (\KEY~combout\(0) & \KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \KEY~combout\(1),
	combout => \C1|SQ_X1[7]~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\C1|SQ_X2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~0_combout\ = (\SW~combout\(1) & (\C1|LessThan51~1_combout\ & (!\C1|SQ_X1[7]~0_combout\ & \C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \C1|LessThan51~1_combout\,
	datac => \C1|SQ_X1[7]~0_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|SQ_X2[1]~0_combout\);

-- Location: LCFF_X21_Y11_N23
\C1|SQ_X2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add11~18_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(10));

-- Location: LCCOMB_X22_Y11_N4
\C1|SQ_X2[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[8]~1_combout\ = !\C1|Add11~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add11~14_combout\,
	combout => \C1|SQ_X2[8]~1_combout\);

-- Location: LCFF_X22_Y11_N5
\C1|SQ_X2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[8]~1_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(8));

-- Location: LCCOMB_X22_Y11_N30
\C1|SQ_X2[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[7]~2_combout\ = !\C1|Add11~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add11~12_combout\,
	combout => \C1|SQ_X2[7]~2_combout\);

-- Location: LCFF_X22_Y11_N31
\C1|SQ_X2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[7]~2_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(7));

-- Location: LCCOMB_X22_Y11_N14
\C1|SQ_X2[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~3_combout\ = !\C1|Add11~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add11~10_combout\,
	combout => \C1|SQ_X2[6]~3_combout\);

-- Location: LCFF_X22_Y11_N15
\C1|SQ_X2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[6]~3_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(6));

-- Location: LCFF_X21_Y11_N13
\C1|SQ_X2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add11~8_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(5));

-- Location: LCCOMB_X22_Y11_N16
\C1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\C1|SQ_X2\(4) & (\C1|SQ_X2\(5) $ (VCC))) # (!\C1|SQ_X2\(4) & (\C1|SQ_X2\(5) & VCC))
-- \C1|Add2~1\ = CARRY((\C1|SQ_X2\(4) & \C1|SQ_X2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X22_Y11_N18
\C1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(6) & (!\C1|Add2~1\)) # (!\C1|SQ_X2\(6) & (\C1|Add2~1\ & VCC))
-- \C1|Add2~3\ = CARRY((\C1|SQ_X2\(6) & !\C1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X22_Y11_N22
\C1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(8) & ((\C1|Add2~5\) # (GND))) # (!\C1|SQ_X2\(8) & (!\C1|Add2~5\))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(8)) # (!\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X22_Y11_N24
\C1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(9) & (\C1|Add2~7\ $ (GND))) # (!\C1|SQ_X2\(9) & (!\C1|Add2~7\ & VCC))
-- \C1|Add2~9\ = CARRY((\C1|SQ_X2\(9) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X22_Y11_N26
\C1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(10) & (!\C1|Add2~9\)) # (!\C1|SQ_X2\(10) & ((\C1|Add2~9\) # (GND)))
-- \C1|Add2~11\ = CARRY((!\C1|Add2~9\) # (!\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X22_Y11_N28
\C1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = !\C1|Add2~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\);

-- Location: LCFF_X20_Y10_N7
\C1|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(3));

-- Location: LCCOMB_X23_Y11_N26
\C1|SQ_X2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~feeder_combout\ = \C1|Add11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add11~0_combout\,
	combout => \C1|SQ_X2[1]~feeder_combout\);

-- Location: LCFF_X23_Y11_N27
\C1|SQ_X2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[1]~feeder_combout\,
	ena => \C1|SQ_X2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(1));

-- Location: LCCOMB_X23_Y11_N0
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

-- Location: LCCOMB_X23_Y11_N2
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

-- Location: LCCOMB_X23_Y11_N4
\C1|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan5~3_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X23_Y11_N6
\C1|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|SQ_X2\(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan5~5_cout\))) # (!\C1|SQ_X2\(4) & (\C1|HPOS\(4) & !\C1|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X23_Y11_N8
\C1|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|HPOS\(5) & (\C1|Add2~0_combout\ & !\C1|LessThan5~7_cout\)) # (!\C1|HPOS\(5) & ((\C1|Add2~0_combout\) # (!\C1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X23_Y11_N10
\C1|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add2~2_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add2~2_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X23_Y11_N12
\C1|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|Add2~4_combout\ & ((!\C1|LessThan5~11_cout\) # (!\C1|HPOS\(7)))) # (!\C1|Add2~4_combout\ & (!\C1|HPOS\(7) & !\C1|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X23_Y11_N14
\C1|LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan5~13_cout\) # (!\C1|Add2~6_combout\))) # (!\C1|HPOS\(8) & (!\C1|Add2~6_combout\ & !\C1|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X23_Y11_N16
\C1|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add2~8_combout\ & !\C1|LessThan5~15_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add2~8_combout\) # (!\C1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add2~8_combout\,
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X23_Y11_N18
\C1|LessThan5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~18_combout\ = (\C1|HPOS\(10) & (\C1|LessThan5~17_cout\ & \C1|Add2~10_combout\)) # (!\C1|HPOS\(10) & ((\C1|LessThan5~17_cout\) # (\C1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|Add2~10_combout\,
	cin => \C1|LessThan5~17_cout\,
	combout => \C1|LessThan5~18_combout\);

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

-- Location: LCCOMB_X26_Y12_N10
\C1|SQ_Y2[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~0_combout\ = (\KEY~combout\(2)) # (!\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datad => \KEY~combout\(2),
	combout => \C1|SQ_Y2[9]~0_combout\);

-- Location: LCCOMB_X26_Y12_N12
\C1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~0_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add7~1\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add7~0_combout\,
	cout => \C1|Add7~1\);

-- Location: LCCOMB_X25_Y12_N6
\C1|SQ_Y2[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~8_combout\ = !\C1|Add7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add7~0_combout\,
	combout => \C1|SQ_Y2[1]~8_combout\);

-- Location: LCCOMB_X26_Y12_N20
\C1|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~8_combout\ = ((\C1|SQ_Y2\(5) $ (\C1|SQ_Y2[9]~0_combout\ $ (\C1|Add7~7\)))) # (GND)
-- \C1|Add7~9\ = CARRY((\C1|SQ_Y2\(5) & ((!\C1|Add7~7\) # (!\C1|SQ_Y2[9]~0_combout\))) # (!\C1|SQ_Y2\(5) & (!\C1|SQ_Y2[9]~0_combout\ & !\C1|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2[9]~0_combout\,
	datad => VCC,
	cin => \C1|Add7~7\,
	combout => \C1|Add7~8_combout\,
	cout => \C1|Add7~9\);

-- Location: LCFF_X26_Y12_N21
\C1|SQ_Y2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add7~8_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(5));

-- Location: LCCOMB_X26_Y12_N4
\C1|LessThan54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan54~0_combout\ = (\C1|SQ_Y2\(6)) # (((\C1|SQ_Y2\(5)) # (\C1|SQ_Y2\(4))) # (!\C1|SQ_Y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(4),
	combout => \C1|LessThan54~0_combout\);

-- Location: LCCOMB_X26_Y12_N0
\C1|SQ_Y2[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~1_combout\ = (\C1|SQ_Y2\(10) & (\C1|SQ_Y2[9]~0_combout\ & ((\C1|LessThan54~1_combout\) # (\C1|LessThan54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan54~1_combout\,
	datab => \C1|SQ_Y2\(10),
	datac => \C1|LessThan54~0_combout\,
	datad => \C1|SQ_Y2[9]~0_combout\,
	combout => \C1|SQ_Y2[9]~1_combout\);

-- Location: LCCOMB_X26_Y12_N2
\C1|SQ_Y2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~2_combout\ = (!\C1|LessThan58~3_combout\ & (\C1|VPOS\(10) & (\C1|LessThan51~1_combout\ & !\C1|SQ_Y2[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan58~3_combout\,
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan51~1_combout\,
	datad => \C1|SQ_Y2[9]~1_combout\,
	combout => \C1|SQ_Y2[1]~2_combout\);

-- Location: LCFF_X25_Y12_N7
\C1|SQ_Y2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[1]~8_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(1));

-- Location: LCCOMB_X26_Y12_N14
\C1|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~2_combout\ = (\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(2) & ((\C1|Add7~1\) # (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|Add7~1\)))) # (!\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(2) & (!\C1|Add7~1\)) # (!\C1|SQ_Y2\(2) & (\C1|Add7~1\ & VCC))))
-- \C1|Add7~3\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(2)) # (!\C1|Add7~1\))) # (!\C1|SQ_Y2[9]~0_combout\ & (\C1|SQ_Y2\(2) & !\C1|Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add7~1\,
	combout => \C1|Add7~2_combout\,
	cout => \C1|Add7~3\);

-- Location: LCCOMB_X25_Y12_N0
\C1|SQ_Y2[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[2]~7_combout\ = !\C1|Add7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add7~2_combout\,
	combout => \C1|SQ_Y2[2]~7_combout\);

-- Location: LCFF_X25_Y12_N1
\C1|SQ_Y2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[2]~7_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X26_Y12_N16
\C1|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~4_combout\ = ((\C1|SQ_Y2[9]~0_combout\ $ (\C1|SQ_Y2\(3) $ (!\C1|Add7~3\)))) # (GND)
-- \C1|Add7~5\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & (!\C1|SQ_Y2\(3) & !\C1|Add7~3\)) # (!\C1|SQ_Y2[9]~0_combout\ & ((!\C1|Add7~3\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add7~3\,
	combout => \C1|Add7~4_combout\,
	cout => \C1|Add7~5\);

-- Location: LCCOMB_X25_Y12_N30
\C1|SQ_Y2[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[3]~6_combout\ = !\C1|Add7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add7~4_combout\,
	combout => \C1|SQ_Y2[3]~6_combout\);

-- Location: LCFF_X25_Y12_N31
\C1|SQ_Y2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[3]~6_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X26_Y12_N18
\C1|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~6_combout\ = (\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(4) & (!\C1|Add7~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add7~5\) # (GND))))) # (!\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(4) & (\C1|Add7~5\ & VCC)) # (!\C1|SQ_Y2\(4) & (!\C1|Add7~5\))))
-- \C1|Add7~7\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & ((!\C1|Add7~5\) # (!\C1|SQ_Y2\(4)))) # (!\C1|SQ_Y2[9]~0_combout\ & (!\C1|SQ_Y2\(4) & !\C1|Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add7~5\,
	combout => \C1|Add7~6_combout\,
	cout => \C1|Add7~7\);

-- Location: LCFF_X26_Y12_N19
\C1|SQ_Y2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add7~6_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X26_Y12_N22
\C1|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~10_combout\ = (\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(6) & (!\C1|Add7~9\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add7~9\) # (GND))))) # (!\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(6) & (\C1|Add7~9\ & VCC)) # (!\C1|SQ_Y2\(6) & (!\C1|Add7~9\))))
-- \C1|Add7~11\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & ((!\C1|Add7~9\) # (!\C1|SQ_Y2\(6)))) # (!\C1|SQ_Y2[9]~0_combout\ & (!\C1|SQ_Y2\(6) & !\C1|Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add7~9\,
	combout => \C1|Add7~10_combout\,
	cout => \C1|Add7~11\);

-- Location: LCFF_X26_Y12_N23
\C1|SQ_Y2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add7~10_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X26_Y12_N24
\C1|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~12_combout\ = ((\C1|SQ_Y2[9]~0_combout\ $ (\C1|SQ_Y2\(7) $ (!\C1|Add7~11\)))) # (GND)
-- \C1|Add7~13\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & (!\C1|SQ_Y2\(7) & !\C1|Add7~11\)) # (!\C1|SQ_Y2[9]~0_combout\ & ((!\C1|Add7~11\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add7~11\,
	combout => \C1|Add7~12_combout\,
	cout => \C1|Add7~13\);

-- Location: LCCOMB_X25_Y12_N4
\C1|SQ_Y2[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~5_combout\ = !\C1|Add7~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add7~12_combout\,
	combout => \C1|SQ_Y2[7]~5_combout\);

-- Location: LCFF_X25_Y12_N5
\C1|SQ_Y2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[7]~5_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X26_Y12_N26
\C1|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~14_combout\ = (\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(8) & ((\C1|Add7~13\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add7~13\)))) # (!\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(8) & (!\C1|Add7~13\)) # (!\C1|SQ_Y2\(8) & (\C1|Add7~13\ & VCC))))
-- \C1|Add7~15\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & ((\C1|SQ_Y2\(8)) # (!\C1|Add7~13\))) # (!\C1|SQ_Y2[9]~0_combout\ & (\C1|SQ_Y2\(8) & !\C1|Add7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add7~13\,
	combout => \C1|Add7~14_combout\,
	cout => \C1|Add7~15\);

-- Location: LCCOMB_X25_Y12_N2
\C1|SQ_Y2[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[8]~4_combout\ = !\C1|Add7~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add7~14_combout\,
	combout => \C1|SQ_Y2[8]~4_combout\);

-- Location: LCFF_X25_Y12_N3
\C1|SQ_Y2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[8]~4_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X26_Y12_N28
\C1|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~16_combout\ = ((\C1|SQ_Y2[9]~0_combout\ $ (\C1|SQ_Y2\(9) $ (!\C1|Add7~15\)))) # (GND)
-- \C1|Add7~17\ = CARRY((\C1|SQ_Y2[9]~0_combout\ & (!\C1|SQ_Y2\(9) & !\C1|Add7~15\)) # (!\C1|SQ_Y2[9]~0_combout\ & ((!\C1|Add7~15\) # (!\C1|SQ_Y2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add7~15\,
	combout => \C1|Add7~16_combout\,
	cout => \C1|Add7~17\);

-- Location: LCCOMB_X25_Y12_N8
\C1|SQ_Y2[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~3_combout\ = !\C1|Add7~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add7~16_combout\,
	combout => \C1|SQ_Y2[9]~3_combout\);

-- Location: LCFF_X25_Y12_N9
\C1|SQ_Y2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[9]~3_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X26_Y12_N30
\C1|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add7~18_combout\ = \C1|SQ_Y2[9]~0_combout\ $ (\C1|Add7~17\ $ (!\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2[9]~0_combout\,
	datad => \C1|SQ_Y2\(10),
	cin => \C1|Add7~17\,
	combout => \C1|Add7~18_combout\);

-- Location: LCFF_X26_Y12_N31
\C1|SQ_Y2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add7~18_combout\,
	ena => \C1|SQ_Y2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(10));

-- Location: LCCOMB_X25_Y12_N10
\C1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~0_combout\ = (\C1|SQ_Y2\(1) & (!\C1|SQ_Y2\(2) & VCC)) # (!\C1|SQ_Y2\(1) & (\C1|SQ_Y2\(2) $ (GND)))
-- \C1|Add3~1\ = CARRY((!\C1|SQ_Y2\(1) & !\C1|SQ_Y2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	combout => \C1|Add3~0_combout\,
	cout => \C1|Add3~1\);

-- Location: LCCOMB_X25_Y12_N12
\C1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~2_combout\ = (\C1|SQ_Y2\(3) & (!\C1|Add3~1\)) # (!\C1|SQ_Y2\(3) & (\C1|Add3~1\ & VCC))
-- \C1|Add3~3\ = CARRY((\C1|SQ_Y2\(3) & !\C1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add3~1\,
	combout => \C1|Add3~2_combout\,
	cout => \C1|Add3~3\);

-- Location: LCCOMB_X25_Y12_N14
\C1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~4_combout\ = (\C1|SQ_Y2\(4) & (\C1|Add3~3\ $ (GND))) # (!\C1|SQ_Y2\(4) & (!\C1|Add3~3\ & VCC))
-- \C1|Add3~5\ = CARRY((\C1|SQ_Y2\(4) & !\C1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add3~3\,
	combout => \C1|Add3~4_combout\,
	cout => \C1|Add3~5\);

-- Location: LCCOMB_X25_Y12_N18
\C1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~8_combout\ = (\C1|SQ_Y2\(6) & (\C1|Add3~7\ $ (GND))) # (!\C1|SQ_Y2\(6) & (!\C1|Add3~7\ & VCC))
-- \C1|Add3~9\ = CARRY((\C1|SQ_Y2\(6) & !\C1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add3~7\,
	combout => \C1|Add3~8_combout\,
	cout => \C1|Add3~9\);

-- Location: LCCOMB_X25_Y12_N20
\C1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~10_combout\ = (\C1|SQ_Y2\(7) & ((\C1|Add3~9\) # (GND))) # (!\C1|SQ_Y2\(7) & (!\C1|Add3~9\))
-- \C1|Add3~11\ = CARRY((\C1|SQ_Y2\(7)) # (!\C1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add3~9\,
	combout => \C1|Add3~10_combout\,
	cout => \C1|Add3~11\);

-- Location: LCCOMB_X25_Y12_N22
\C1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~12_combout\ = (\C1|SQ_Y2\(8) & (!\C1|Add3~11\ & VCC)) # (!\C1|SQ_Y2\(8) & (\C1|Add3~11\ $ (GND)))
-- \C1|Add3~13\ = CARRY((!\C1|SQ_Y2\(8) & !\C1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~11\,
	combout => \C1|Add3~12_combout\,
	cout => \C1|Add3~13\);

-- Location: LCCOMB_X25_Y12_N24
\C1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = (\C1|SQ_Y2\(9) & ((\C1|Add3~13\) # (GND))) # (!\C1|SQ_Y2\(9) & (!\C1|Add3~13\))
-- \C1|Add3~15\ = CARRY((\C1|SQ_Y2\(9)) # (!\C1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\,
	cout => \C1|Add3~15\);

-- Location: LCFF_X24_Y11_N11
\C1|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan52~0_combout\,
	ena => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(5));

-- Location: LCCOMB_X24_Y12_N10
\C1|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((!\C1|VPOS\(1) & \C1|SQ_Y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X24_Y12_N12
\C1|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan7~1_cout\) # (!\C1|Add3~0_combout\))) # (!\C1|VPOS\(2) & (!\C1|Add3~0_combout\ & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|Add3~0_combout\,
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X24_Y12_N14
\C1|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|VPOS\(3) & (\C1|Add3~2_combout\ & !\C1|LessThan7~3_cout\)) # (!\C1|VPOS\(3) & ((\C1|Add3~2_combout\) # (!\C1|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X24_Y12_N16
\C1|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan7~5_cout\) # (!\C1|Add3~4_combout\))) # (!\C1|VPOS\(4) & (!\C1|Add3~4_combout\ & !\C1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X24_Y12_N18
\C1|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|Add3~6_combout\ & ((!\C1|LessThan7~7_cout\) # (!\C1|VPOS\(5)))) # (!\C1|Add3~6_combout\ & (!\C1|VPOS\(5) & !\C1|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X24_Y12_N20
\C1|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan7~9_cout\) # (!\C1|Add3~8_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add3~8_combout\ & !\C1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X24_Y12_N22
\C1|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|VPOS\(7) & (\C1|Add3~10_combout\ & !\C1|LessThan7~11_cout\)) # (!\C1|VPOS\(7) & ((\C1|Add3~10_combout\) # (!\C1|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X24_Y12_N24
\C1|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan7~13_cout\) # (!\C1|Add3~12_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add3~12_combout\ & !\C1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X24_Y12_N26
\C1|LessThan7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~17_cout\ = CARRY((\C1|VPOS\(9) & (\C1|Add3~14_combout\ & !\C1|LessThan7~15_cout\)) # (!\C1|VPOS\(9) & ((\C1|Add3~14_combout\) # (!\C1|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan7~15_cout\,
	cout => \C1|LessThan7~17_cout\);

-- Location: LCCOMB_X24_Y12_N28
\C1|LessThan7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~18_combout\ = (\C1|VPOS\(10) & (\C1|LessThan7~17_cout\ & \C1|Add3~16_combout\)) # (!\C1|VPOS\(10) & ((\C1|LessThan7~17_cout\) # (\C1|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datad => \C1|Add3~16_combout\,
	cin => \C1|LessThan7~17_cout\,
	combout => \C1|LessThan7~18_combout\);

-- Location: LCCOMB_X23_Y12_N24
\C1|DRAW2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|Add3~18_combout\ & ((\C1|Add2~12_combout\) # ((\C1|LessThan5~18_combout\)))) # (!\C1|Add3~18_combout\ & (\C1|LessThan7~18_combout\ & ((\C1|Add2~12_combout\) # (\C1|LessThan5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|Add2~12_combout\,
	datac => \C1|LessThan5~18_combout\,
	datad => \C1|LessThan7~18_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X25_Y11_N0
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

-- Location: LCCOMB_X25_Y11_N2
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

-- Location: LCCOMB_X25_Y11_N4
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

-- Location: LCCOMB_X25_Y11_N6
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

-- Location: LCCOMB_X25_Y11_N8
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

-- Location: LCCOMB_X25_Y11_N10
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

-- Location: LCCOMB_X25_Y11_N12
\C1|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan6~11_cout\) # (!\C1|SQ_Y2\(6)))) # (!\C1|VPOS\(6) & (!\C1|SQ_Y2\(6) & !\C1|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X25_Y11_N14
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

-- Location: LCCOMB_X25_Y11_N16
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

-- Location: LCCOMB_X25_Y11_N18
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

-- Location: LCCOMB_X25_Y11_N20
\C1|LessThan6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~20_combout\ = (\C1|VPOS\(10) & ((!\C1|SQ_Y2\(10)) # (!\C1|LessThan6~19_cout\))) # (!\C1|VPOS\(10) & (!\C1|LessThan6~19_cout\ & !\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datad => \C1|SQ_Y2\(10),
	cin => \C1|LessThan6~19_cout\,
	combout => \C1|LessThan6~20_combout\);

-- Location: LCCOMB_X23_Y12_N26
\C1|DRAW2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan4~20_combout\ & (\C1|DRAW2~0_combout\ & \C1|LessThan6~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan4~20_combout\,
	datac => \C1|DRAW2~0_combout\,
	datad => \C1|LessThan6~20_combout\,
	combout => \C1|DRAW2~1_combout\);

-- Location: LCCOMB_X19_Y10_N28
\C1|dMap~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~10_combout\ = (!\C1|HPOS\(8) & \C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|dMap~10_combout\);

-- Location: LCFF_X20_Y10_N11
\C1|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(5));

-- Location: LCCOMB_X21_Y13_N8
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

-- Location: LCCOMB_X22_Y13_N24
\C1|dMap~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~33_combout\ = ((!\C1|HPOS\(4) & (!\C1|HPOS\(5) & \C1|LessThan50~0_combout\))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|LessThan50~0_combout\,
	combout => \C1|dMap~33_combout\);

-- Location: LCCOMB_X21_Y13_N0
\C1|LessThan49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan49~0_combout\ = (\C1|HPOS\(3) & ((\C1|HPOS\(1)) # (\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan49~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\C1|dMap~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~12_combout\ = (\C1|HPOS\(5)) # ((\C1|HPOS\(6)) # ((\C1|LessThan49~0_combout\ & \C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan49~0_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(4),
	combout => \C1|dMap~12_combout\);

-- Location: LCCOMB_X21_Y13_N14
\C1|dMap~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~13_combout\ = (!\C1|HPOS\(9) & (\C1|HPOS\(7) & (\C1|HPOS\(8) & \C1|dMap~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(8),
	datad => \C1|dMap~12_combout\,
	combout => \C1|dMap~13_combout\);

-- Location: LCCOMB_X22_Y13_N2
\C1|dMap~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~14_combout\ = (\C1|dMap~13_combout\) # ((!\C1|HPOS\(7) & (\C1|dMap~10_combout\ & \C1|dMap~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|dMap~10_combout\,
	datac => \C1|dMap~33_combout\,
	datad => \C1|dMap~13_combout\,
	combout => \C1|dMap~14_combout\);

-- Location: LCCOMB_X21_Y13_N2
\C1|dMap~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~8_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|dMap~8_combout\);

-- Location: LCCOMB_X22_Y13_N8
\C1|dMap~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~9_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & ((\C1|LessThan49~0_combout\) # (!\C1|dMap~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan49~0_combout\,
	datad => \C1|dMap~8_combout\,
	combout => \C1|dMap~9_combout\);

-- Location: LCCOMB_X20_Y12_N4
\C1|dMap~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~5_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(9) & (!\C1|HPOS\(10) & \C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(10),
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~5_combout\);

-- Location: LCCOMB_X20_Y12_N6
\C1|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan14~0_combout\ = ((!\C1|HPOS\(4) & (!\C1|HPOS\(5) & !\C1|HPOS\(3)))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan14~0_combout\);

-- Location: LCCOMB_X20_Y12_N8
\C1|dMap~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~6_combout\ = (\C1|dMap~5_combout\ & ((\C1|LessThan14~0_combout\) # ((\C1|LessThan14~1_combout\ & !\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan14~1_combout\,
	datab => \C1|dMap~5_combout\,
	datac => \C1|HPOS\(2),
	datad => \C1|LessThan14~0_combout\,
	combout => \C1|dMap~6_combout\);

-- Location: LCCOMB_X20_Y11_N24
\C1|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(2) & \C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(1),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X20_Y11_N26
\C1|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~1_combout\ = (\C1|VPOS\(6)) # ((\C1|VPOS\(4) & (\C1|LessThan11~0_combout\ & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(4),
	datac => \C1|LessThan11~0_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan11~1_combout\);

-- Location: LCCOMB_X20_Y12_N2
\C1|dMap~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~7_combout\ = (\C1|dMap~4_combout\ & (\C1|dMap~2_combout\ & (\C1|dMap~6_combout\ & \C1|LessThan11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~4_combout\,
	datab => \C1|dMap~2_combout\,
	datac => \C1|dMap~6_combout\,
	datad => \C1|LessThan11~1_combout\,
	combout => \C1|dMap~7_combout\);

-- Location: LCCOMB_X21_Y12_N0
\C1|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~0_combout\ = (\C1|HPOS\(1)) # ((\C1|HPOS\(0)) # (\C1|HPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan18~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\C1|LessThan18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~1_combout\ = (\C1|HPOS\(3) & (\C1|HPOS\(4) & \C1|LessThan18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan18~0_combout\,
	combout => \C1|LessThan18~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\C1|LessThan18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~2_combout\ = ((!\C1|LessThan18~1_combout\ & (!\C1|HPOS\(5) & !\C1|HPOS\(6)))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|LessThan18~1_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|LessThan18~2_combout\);

-- Location: LCCOMB_X22_Y12_N2
\C1|dMap~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~11_combout\ = (\C1|HPOS\(10) & (\C1|VPOS\(10) & (\C1|LessThan18~2_combout\ & \C1|dMap~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|VPOS\(10),
	datac => \C1|LessThan18~2_combout\,
	datad => \C1|dMap~10_combout\,
	combout => \C1|dMap~11_combout\);

-- Location: LCCOMB_X23_Y12_N6
\C1|DRAWMAP~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~6_combout\ = (\C1|DRAWMAP~5_combout\) # ((\C1|dMap~7_combout\) # ((\C1|dMap~9_combout\ & \C1|dMap~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~5_combout\,
	datab => \C1|dMap~9_combout\,
	datac => \C1|dMap~7_combout\,
	datad => \C1|dMap~11_combout\,
	combout => \C1|DRAWMAP~6_combout\);

-- Location: LCCOMB_X23_Y12_N8
\C1|DRAWMAP~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~7_combout\ = (\C1|DRAWMAP~6_combout\) # ((!\C1|dMap~17_combout\ & (!\C1|HPOS\(10) & \C1|dMap~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~17_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|dMap~14_combout\,
	datad => \C1|DRAWMAP~6_combout\,
	combout => \C1|DRAWMAP~7_combout\);

-- Location: LCCOMB_X23_Y10_N2
\C1|DRAWMAP~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~9_combout\ = (\C1|VPOS\(9) & (\C1|VPOS\(8) & \C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|DRAWMAP~9_combout\);

-- Location: LCCOMB_X23_Y10_N28
\C1|dMap~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~19_combout\ = (\C1|VPOS\(6) & (!\C1|VPOS\(10) & (\C1|DRAWMAP~9_combout\ & !\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(10),
	datac => \C1|DRAWMAP~9_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~19_combout\);

-- Location: LCCOMB_X24_Y11_N30
\C1|dMap~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~20_combout\ = (\C1|VPOS\(2)) # ((!\C1|VPOS\(4) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~20_combout\);

-- Location: LCCOMB_X23_Y10_N30
\C1|dMap~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~21_combout\ = (\C1|VPOS\(4) $ (((!\C1|VPOS\(3)) # (!\C1|dMap~20_combout\)))) # (!\C1|dMap~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|dMap~19_combout\,
	datac => \C1|dMap~20_combout\,
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~21_combout\);

-- Location: LCCOMB_X20_Y10_N30
\C1|LessThan59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan59~0_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(0)) # ((\C1|HPOS\(2)) # (\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan59~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\C1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = ((!\C1|HPOS\(4)) # (!\C1|HPOS\(5))) # (!\C1|LessThan59~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan59~0_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\C1|dMap~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~29_combout\ = (\C1|HPOS\(8) & (((\C1|process_0~1_combout\) # (!\C1|HPOS\(6))) # (!\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(6),
	datad => \C1|process_0~1_combout\,
	combout => \C1|dMap~29_combout\);

-- Location: LCCOMB_X21_Y13_N4
\C1|dMap~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~30_combout\ = ((\C1|HPOS\(3)) # ((\C1|HPOS\(2) & \C1|HPOS\(1)))) # (!\C1|dMap~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|dMap~8_combout\,
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(3),
	combout => \C1|dMap~30_combout\);

-- Location: LCCOMB_X21_Y13_N30
\C1|dMap~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~31_combout\ = (!\C1|HPOS\(8) & (\C1|HPOS\(6) & (\C1|dMap~30_combout\ & \C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(6),
	datac => \C1|dMap~30_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~31_combout\);

-- Location: LCCOMB_X22_Y13_N12
\C1|DRAWMAP~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~43_combout\ = (\C1|HPOS\(9) & (!\C1|dMap~21_combout\ & ((\C1|dMap~29_combout\) # (\C1|dMap~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|dMap~29_combout\,
	datac => \C1|dMap~31_combout\,
	datad => \C1|dMap~21_combout\,
	combout => \C1|DRAWMAP~43_combout\);

-- Location: LCCOMB_X23_Y12_N20
\C1|DRAWMAP~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~44_combout\ = (!\C1|dMap~21_combout\ & ((\C1|HPOS\(10) & (\C1|DRAWMAP~40_combout\)) # (!\C1|HPOS\(10) & ((\C1|DRAWMAP~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~40_combout\,
	datab => \C1|dMap~21_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|DRAWMAP~43_combout\,
	combout => \C1|DRAWMAP~44_combout\);

-- Location: LCCOMB_X19_Y10_N22
\C1|DRAWMAP~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~18_combout\ = (\C1|HPOS\(1) & (((\C1|HPOS\(2)) # (!\C1|HPOS\(6))))) # (!\C1|HPOS\(1) & (\C1|HPOS\(2) & ((\C1|HPOS\(0)) # (!\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(2),
	combout => \C1|DRAWMAP~18_combout\);

-- Location: LCCOMB_X22_Y10_N2
\C1|DRAWMAP~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~19_combout\ = (\C1|HPOS\(6) & (!\C1|DRAWMAP~18_combout\ & (!\C1|HPOS\(3) & \C1|dMap~8_combout\))) # (!\C1|HPOS\(6) & ((\C1|DRAWMAP~18_combout\) # ((\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|DRAWMAP~18_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|dMap~8_combout\,
	combout => \C1|DRAWMAP~19_combout\);

-- Location: LCCOMB_X22_Y10_N16
\C1|DRAWMAP~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~17_combout\ = (\C1|HPOS\(7) & ((\C1|HPOS\(6)) # ((\C1|HPOS\(4) & \C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(6),
	combout => \C1|DRAWMAP~17_combout\);

-- Location: LCCOMB_X22_Y10_N28
\C1|DRAWMAP~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~20_combout\ = (\C1|DRAWMAP~19_combout\ & (\C1|DRAWMAP~17_combout\ & !\C1|dMap~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~19_combout\,
	datac => \C1|DRAWMAP~17_combout\,
	datad => \C1|dMap~21_combout\,
	combout => \C1|DRAWMAP~20_combout\);

-- Location: LCCOMB_X24_Y11_N26
\C1|LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan47~0_combout\ = (\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan47~0_combout\);

-- Location: LCCOMB_X24_Y11_N28
\C1|DRAWMAP~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~12_combout\ = (\C1|VPOS\(6) & (((!\C1|VPOS\(3) & !\C1|VPOS\(5))))) # (!\C1|VPOS\(6) & (\C1|VPOS\(5) & ((\C1|LessThan47~0_combout\) # (\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|LessThan47~0_combout\,
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~12_combout\);

-- Location: LCCOMB_X20_Y10_N26
\C1|DRAWMAP~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~11_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(5) & ((!\C1|LessThan59~0_combout\))) # (!\C1|HPOS\(5) & (\C1|dMap~18_combout\)))) # (!\C1|HPOS\(4) & (((\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~18_combout\,
	datab => \C1|LessThan59~0_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(5),
	combout => \C1|DRAWMAP~11_combout\);

-- Location: LCCOMB_X24_Y10_N26
\C1|DRAWMAP~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~13_combout\ = (\C1|DRAWMAP~12_combout\ & (\C1|DRAWMAP~11_combout\ & (\C1|VPOS\(4) $ (!\C1|VPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|DRAWMAP~12_combout\,
	datac => \C1|DRAWMAP~11_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~13_combout\);

-- Location: LCCOMB_X22_Y13_N18
\C1|DRAWMAP~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~42_combout\ = (\C1|HPOS\(4) & (((\C1|LessThan50~0_combout\)))) # (!\C1|HPOS\(4) & ((\C1|HPOS\(5)) # ((\C1|LessThan49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|LessThan49~0_combout\,
	datad => \C1|LessThan50~0_combout\,
	combout => \C1|DRAWMAP~42_combout\);

-- Location: LCCOMB_X24_Y10_N0
\C1|DRAWMAP~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~10_combout\ = (!\C1|HPOS\(6) & (\C1|HPOS\(7) & \C1|DRAWMAP~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datad => \C1|DRAWMAP~9_combout\,
	combout => \C1|DRAWMAP~10_combout\);

-- Location: LCCOMB_X24_Y10_N16
\C1|DRAWMAP~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~16_combout\ = (\C1|DRAWMAP~10_combout\ & ((\C1|DRAWMAP~13_combout\) # ((\C1|DRAWMAP~15_combout\ & \C1|DRAWMAP~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~15_combout\,
	datab => \C1|DRAWMAP~13_combout\,
	datac => \C1|DRAWMAP~42_combout\,
	datad => \C1|DRAWMAP~10_combout\,
	combout => \C1|DRAWMAP~16_combout\);

-- Location: LCCOMB_X22_Y10_N8
\C1|dMap~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~23_combout\ = (\C1|HPOS\(1) & (((\C1|HPOS\(2))) # (!\C1|HPOS\(5)))) # (!\C1|HPOS\(1) & (!\C1|HPOS\(5) & ((\C1|HPOS\(0)) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(2),
	combout => \C1|dMap~23_combout\);

-- Location: LCCOMB_X22_Y10_N6
\C1|dMap~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~22_combout\ = (\C1|HPOS\(4) & (\C1|HPOS\(5) & (!\C1|HPOS\(7) & \C1|HPOS\(6)))) # (!\C1|HPOS\(4) & (!\C1|HPOS\(5) & (\C1|HPOS\(7) & !\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~22_combout\);

-- Location: LCCOMB_X22_Y10_N18
\C1|dMap~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~24_combout\ = (\C1|dMap~22_combout\ & ((\C1|HPOS\(5) & ((\C1|dMap~23_combout\) # (\C1|HPOS\(3)))) # (!\C1|HPOS\(5) & ((!\C1|HPOS\(3)) # (!\C1|dMap~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|dMap~23_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|dMap~22_combout\,
	combout => \C1|dMap~24_combout\);

-- Location: LCCOMB_X23_Y10_N8
\C1|DRAWMAP~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~21_combout\ = (!\C1|VPOS\(6) & (\C1|DRAWMAP~9_combout\ & !\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|DRAWMAP~9_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~21_combout\);

-- Location: LCCOMB_X23_Y10_N18
\C1|dMap~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~25_combout\ = (\C1|VPOS\(3) & (\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|dMap~25_combout\);

-- Location: LCCOMB_X22_Y10_N20
\C1|DRAWMAP~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~22_combout\ = (\C1|dMap~24_combout\ & (\C1|DRAWMAP~21_combout\ & ((\C1|VPOS\(4)) # (\C1|dMap~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|dMap~24_combout\,
	datac => \C1|DRAWMAP~21_combout\,
	datad => \C1|dMap~25_combout\,
	combout => \C1|DRAWMAP~22_combout\);

-- Location: LCCOMB_X20_Y10_N22
\C1|DRAWMAP~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~26_combout\ = (\C1|HPOS\(4) & (\C1|HPOS\(2) & ((\C1|HPOS\(0)) # (\C1|HPOS\(1))))) # (!\C1|HPOS\(4) & (((\C1|HPOS\(2)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|DRAWMAP~26_combout\);

-- Location: LCCOMB_X21_Y10_N0
\C1|DRAWMAP~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~25_combout\ = (\C1|HPOS\(5) & (\C1|HPOS\(6) & !\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|DRAWMAP~25_combout\);

-- Location: LCCOMB_X22_Y10_N22
\C1|DRAWMAP~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~27_combout\ = (\C1|DRAWMAP~25_combout\ & (\C1|HPOS\(4) $ (((\C1|HPOS\(3)) # (\C1|DRAWMAP~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|DRAWMAP~26_combout\,
	datac => \C1|DRAWMAP~25_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|DRAWMAP~27_combout\);

-- Location: LCCOMB_X22_Y10_N24
\C1|DRAWMAP~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~28_combout\ = (\C1|DRAWMAP~27_combout\ & (\C1|VPOS\(9) & \C1|VPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~27_combout\,
	datac => \C1|VPOS\(9),
	datad => \C1|VPOS\(8),
	combout => \C1|DRAWMAP~28_combout\);

-- Location: LCCOMB_X20_Y10_N28
\C1|DRAWMAP~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~23_combout\ = (\C1|HPOS\(4) & (((!\C1|HPOS\(5))))) # (!\C1|HPOS\(4) & ((\C1|HPOS\(5) & ((!\C1|LessThan59~0_combout\))) # (!\C1|HPOS\(5) & (\C1|dMap~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~18_combout\,
	datab => \C1|LessThan59~0_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(5),
	combout => \C1|DRAWMAP~23_combout\);

-- Location: LCCOMB_X23_Y10_N14
\C1|dMap~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~16_combout\ = (((\C1|VPOS\(4) & \C1|VPOS\(3))) # (!\C1|VPOS\(8))) # (!\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~16_combout\);

-- Location: LCCOMB_X23_Y10_N4
\C1|dMap~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~15_combout\ = ((\C1|VPOS\(7)) # ((\C1|VPOS\(10)) # (!\C1|VPOS\(6)))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(6),
	combout => \C1|dMap~15_combout\);

-- Location: LCCOMB_X23_Y10_N0
\C1|dMap~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~17_combout\ = (\C1|dMap~16_combout\) # ((\C1|dMap~15_combout\) # ((\C1|dMap~3_combout\ & !\C1|LessThan47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~3_combout\,
	datab => \C1|dMap~16_combout\,
	datac => \C1|dMap~15_combout\,
	datad => \C1|LessThan47~0_combout\,
	combout => \C1|dMap~17_combout\);

-- Location: LCCOMB_X23_Y10_N20
\C1|DRAWMAP~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~24_combout\ = (\C1|HPOS\(6) & (!\C1|HPOS\(7) & (\C1|DRAWMAP~23_combout\ & !\C1|dMap~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|DRAWMAP~23_combout\,
	datad => \C1|dMap~17_combout\,
	combout => \C1|DRAWMAP~24_combout\);

-- Location: LCCOMB_X23_Y12_N2
\C1|DRAWMAP~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~29_combout\ = (\C1|DRAWMAP~22_combout\) # ((\C1|DRAWMAP~24_combout\) # ((\C1|dMap~28_combout\ & \C1|DRAWMAP~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~28_combout\,
	datab => \C1|DRAWMAP~22_combout\,
	datac => \C1|DRAWMAP~28_combout\,
	datad => \C1|DRAWMAP~24_combout\,
	combout => \C1|DRAWMAP~29_combout\);

-- Location: LCCOMB_X23_Y12_N28
\C1|DRAWMAP~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~30_combout\ = (\C1|DRAWMAP~8_combout\ & ((\C1|DRAWMAP~20_combout\) # ((\C1|DRAWMAP~16_combout\) # (\C1|DRAWMAP~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~8_combout\,
	datab => \C1|DRAWMAP~20_combout\,
	datac => \C1|DRAWMAP~16_combout\,
	datad => \C1|DRAWMAP~29_combout\,
	combout => \C1|DRAWMAP~30_combout\);

-- Location: LCCOMB_X23_Y12_N14
\C1|DRAWMAP~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~41_combout\ = (\C1|DRAWMAP~2_combout\ & ((\C1|DRAWMAP~7_combout\) # ((\C1|DRAWMAP~44_combout\) # (\C1|DRAWMAP~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~2_combout\,
	datab => \C1|DRAWMAP~7_combout\,
	datac => \C1|DRAWMAP~44_combout\,
	datad => \C1|DRAWMAP~30_combout\,
	combout => \C1|DRAWMAP~41_combout\);

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

-- Location: LCCOMB_X26_Y12_N8
\C1|SQ_Y1[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~0_combout\ = (\KEY~combout\(2)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \KEY~combout\(2),
	combout => \C1|SQ_Y1[8]~0_combout\);

-- Location: LCCOMB_X18_Y10_N0
\C1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add6~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add6~0_combout\,
	cout => \C1|Add6~1\);

-- Location: LCCOMB_X21_Y10_N6
\C1|SQ_Y1[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~10_combout\ = !\C1|Add6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~0_combout\,
	combout => \C1|SQ_Y1[1]~10_combout\);

-- Location: LCCOMB_X18_Y10_N8
\C1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = ((\C1|SQ_Y1\(5) $ (\C1|SQ_Y1[8]~0_combout\ $ (\C1|Add6~7\)))) # (GND)
-- \C1|Add6~9\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|Add6~7\) # (!\C1|SQ_Y1[8]~0_combout\))) # (!\C1|SQ_Y1\(5) & (!\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: LCFF_X18_Y10_N9
\C1|SQ_Y1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~8_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(5));

-- Location: LCCOMB_X18_Y10_N2
\C1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~2_combout\ = (\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[8]~0_combout\ & ((\C1|Add6~1\) # (GND))) # (!\C1|SQ_Y1[8]~0_combout\ & (!\C1|Add6~1\)))) # (!\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[8]~0_combout\ & (!\C1|Add6~1\)) # (!\C1|SQ_Y1[8]~0_combout\ & (\C1|Add6~1\ & 
-- VCC))))
-- \C1|Add6~3\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[8]~0_combout\) # (!\C1|Add6~1\))) # (!\C1|SQ_Y1\(2) & (\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~1\,
	combout => \C1|Add6~2_combout\,
	cout => \C1|Add6~3\);

-- Location: LCCOMB_X20_Y11_N30
\C1|SQ_Y1[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~9_combout\ = !\C1|Add6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~2_combout\,
	combout => \C1|SQ_Y1[2]~9_combout\);

-- Location: LCFF_X21_Y10_N31
\C1|SQ_Y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y1[2]~9_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X18_Y10_N6
\C1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[8]~0_combout\ & (!\C1|Add6~5\)) # (!\C1|SQ_Y1[8]~0_combout\ & (\C1|Add6~5\ & VCC)))) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[8]~0_combout\ & ((\C1|Add6~5\) # (GND))) # (!\C1|SQ_Y1[8]~0_combout\ & 
-- (!\C1|Add6~5\))))
-- \C1|Add6~7\ = CARRY((\C1|SQ_Y1\(4) & (\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~5\)) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[8]~0_combout\) # (!\C1|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~5\,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: LCFF_X18_Y10_N7
\C1|SQ_Y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~6_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X18_Y10_N20
\C1|SQ_Y1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~1_combout\ = (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(5) & (!\C1|SQ_Y1\(2) & \C1|SQ_Y1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(4),
	combout => \C1|SQ_Y1[1]~1_combout\);

-- Location: LCCOMB_X18_Y10_N24
\C1|SQ_Y1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~3_combout\ = (\C1|SQ_Y1[8]~0_combout\ & ((\C1|SQ_Y1\(10)) # ((\C1|SQ_Y1[1]~2_combout\ & \C1|SQ_Y1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1[1]~2_combout\,
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1[1]~1_combout\,
	datad => \C1|SQ_Y1[8]~0_combout\,
	combout => \C1|SQ_Y1[1]~3_combout\);

-- Location: LCCOMB_X25_Y11_N22
\C1|LessThan58~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan58~3_combout\ = (!\C1|VPOS\(9) & (\C1|LessThan58~0_combout\ & ((\C1|LessThan58~1_combout\) # (!\C1|VPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(9),
	datac => \C1|LessThan58~1_combout\,
	datad => \C1|LessThan58~0_combout\,
	combout => \C1|LessThan58~3_combout\);

-- Location: LCCOMB_X18_Y10_N26
\C1|SQ_Y1[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~4_combout\ = (\C1|VPOS\(10) & (\C1|LessThan51~1_combout\ & (!\C1|SQ_Y1[1]~3_combout\ & !\C1|LessThan58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan51~1_combout\,
	datac => \C1|SQ_Y1[1]~3_combout\,
	datad => \C1|LessThan58~3_combout\,
	combout => \C1|SQ_Y1[1]~4_combout\);

-- Location: LCFF_X21_Y10_N7
\C1|SQ_Y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[1]~10_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(1));

-- Location: LCCOMB_X18_Y10_N4
\C1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~4_combout\ = ((\C1|SQ_Y1\(3) $ (\C1|SQ_Y1[8]~0_combout\ $ (!\C1|Add6~3\)))) # (GND)
-- \C1|Add6~5\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~3\)) # (!\C1|SQ_Y1\(3) & ((!\C1|Add6~3\) # (!\C1|SQ_Y1[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~3\,
	combout => \C1|Add6~4_combout\,
	cout => \C1|Add6~5\);

-- Location: LCCOMB_X18_Y10_N10
\C1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~10_combout\ = (\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[8]~0_combout\ & (!\C1|Add6~9\)) # (!\C1|SQ_Y1[8]~0_combout\ & (\C1|Add6~9\ & VCC)))) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[8]~0_combout\ & ((\C1|Add6~9\) # (GND))) # (!\C1|SQ_Y1[8]~0_combout\ & 
-- (!\C1|Add6~9\))))
-- \C1|Add6~11\ = CARRY((\C1|SQ_Y1\(6) & (\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[8]~0_combout\) # (!\C1|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~9\,
	combout => \C1|Add6~10_combout\,
	cout => \C1|Add6~11\);

-- Location: LCCOMB_X18_Y10_N14
\C1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~14_combout\ = (\C1|SQ_Y1[8]~0_combout\ & ((\C1|SQ_Y1\(8) & ((\C1|Add6~13\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add6~13\)))) # (!\C1|SQ_Y1[8]~0_combout\ & ((\C1|SQ_Y1\(8) & (!\C1|Add6~13\)) # (!\C1|SQ_Y1\(8) & (\C1|Add6~13\ & VCC))))
-- \C1|Add6~15\ = CARRY((\C1|SQ_Y1[8]~0_combout\ & ((\C1|SQ_Y1\(8)) # (!\C1|Add6~13\))) # (!\C1|SQ_Y1[8]~0_combout\ & (\C1|SQ_Y1\(8) & !\C1|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1[8]~0_combout\,
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add6~13\,
	combout => \C1|Add6~14_combout\,
	cout => \C1|Add6~15\);

-- Location: LCCOMB_X21_Y10_N4
\C1|SQ_Y1[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~6_combout\ = !\C1|Add6~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~14_combout\,
	combout => \C1|SQ_Y1[8]~6_combout\);

-- Location: LCFF_X21_Y10_N5
\C1|SQ_Y1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[8]~6_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X18_Y10_N16
\C1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~16_combout\ = ((\C1|SQ_Y1\(9) $ (\C1|SQ_Y1[8]~0_combout\ $ (!\C1|Add6~15\)))) # (GND)
-- \C1|Add6~17\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|SQ_Y1[8]~0_combout\ & !\C1|Add6~15\)) # (!\C1|SQ_Y1\(9) & ((!\C1|Add6~15\) # (!\C1|SQ_Y1[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1[8]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~15\,
	combout => \C1|Add6~16_combout\,
	cout => \C1|Add6~17\);

-- Location: LCCOMB_X18_Y10_N18
\C1|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~18_combout\ = \C1|SQ_Y1\(10) $ (\C1|Add6~17\ $ (!\C1|SQ_Y1[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1[8]~0_combout\,
	cin => \C1|Add6~17\,
	combout => \C1|Add6~18_combout\);

-- Location: LCFF_X18_Y10_N19
\C1|SQ_Y1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~18_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(10));

-- Location: LCCOMB_X21_Y10_N2
\C1|SQ_Y1[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~5_combout\ = !\C1|Add6~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~16_combout\,
	combout => \C1|SQ_Y1[9]~5_combout\);

-- Location: LCFF_X21_Y10_N3
\C1|SQ_Y1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[9]~5_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(9));

-- Location: LCFF_X18_Y10_N11
\C1|SQ_Y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~10_combout\,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X20_Y11_N28
\C1|SQ_Y1[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~8_combout\ = !\C1|Add6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~4_combout\,
	combout => \C1|SQ_Y1[3]~8_combout\);

-- Location: LCFF_X21_Y10_N1
\C1|SQ_Y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y1[3]~8_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X21_Y10_N8
\C1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~1_cout\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datad => VCC,
	cout => \C1|Add1~1_cout\);

-- Location: LCCOMB_X21_Y10_N10
\C1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|SQ_Y1\(2) & (!\C1|Add1~1_cout\)) # (!\C1|SQ_Y1\(2) & (\C1|Add1~1_cout\ & VCC))
-- \C1|Add1~3\ = CARRY((\C1|SQ_Y1\(2) & !\C1|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|Add1~1_cout\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X21_Y10_N16
\C1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|SQ_Y1\(5) & (\C1|Add1~7\ $ (GND))) # (!\C1|SQ_Y1\(5) & (!\C1|Add1~7\ & VCC))
-- \C1|Add1~9\ = CARRY((\C1|SQ_Y1\(5) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X21_Y10_N22
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

-- Location: LCCOMB_X21_Y10_N26
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

-- Location: LCCOMB_X21_Y10_N28
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

-- Location: LCCOMB_X22_Y12_N6
\C1|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_cout\ = CARRY((\C1|SQ_Y1\(1) & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan3~1_cout\);

-- Location: LCCOMB_X22_Y12_N8
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

-- Location: LCCOMB_X22_Y12_N10
\C1|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~5_cout\ = CARRY((\C1|Add1~4_combout\ & ((!\C1|LessThan3~3_cout\) # (!\C1|VPOS\(3)))) # (!\C1|Add1~4_combout\ & (!\C1|VPOS\(3) & !\C1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan3~3_cout\,
	cout => \C1|LessThan3~5_cout\);

-- Location: LCCOMB_X22_Y12_N12
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

-- Location: LCCOMB_X22_Y12_N14
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

-- Location: LCCOMB_X22_Y12_N16
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

-- Location: LCCOMB_X22_Y12_N18
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

-- Location: LCCOMB_X22_Y12_N20
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

-- Location: LCCOMB_X22_Y12_N22
\C1|LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~17_cout\ = CARRY((\C1|Add1~16_combout\ & ((!\C1|LessThan3~15_cout\) # (!\C1|VPOS\(9)))) # (!\C1|Add1~16_combout\ & (!\C1|VPOS\(9) & !\C1|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan3~15_cout\,
	cout => \C1|LessThan3~17_cout\);

-- Location: LCCOMB_X22_Y12_N24
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

-- Location: LCCOMB_X18_Y12_N2
\C1|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add8~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add8~0_combout\,
	cout => \C1|Add8~1\);

-- Location: LCCOMB_X18_Y12_N0
\C1|SQ_X1[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~6_combout\ = !\C1|Add8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~0_combout\,
	combout => \C1|SQ_X1[1]~6_combout\);

-- Location: LCCOMB_X21_Y11_N0
\C1|SQ_X1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~1_combout\ = (\SW~combout\(0) & (\C1|LessThan51~1_combout\ & (!\C1|SQ_X1[7]~0_combout\ & \C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \C1|LessThan51~1_combout\,
	datac => \C1|SQ_X1[7]~0_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|SQ_X1[1]~1_combout\);

-- Location: LCFF_X18_Y12_N1
\C1|SQ_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[1]~6_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(1));

-- Location: LCCOMB_X18_Y12_N6
\C1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~4_combout\ = ((\C1|SQ_X1\(3) $ (\KEY~combout\(1) $ (\C1|Add8~3\)))) # (GND)
-- \C1|Add8~5\ = CARRY((\C1|SQ_X1\(3) & ((!\C1|Add8~3\) # (!\KEY~combout\(1)))) # (!\C1|SQ_X1\(3) & (!\KEY~combout\(1) & !\C1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~3\,
	combout => \C1|Add8~4_combout\,
	cout => \C1|Add8~5\);

-- Location: LCCOMB_X18_Y12_N8
\C1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~6_combout\ = (\C1|SQ_X1\(4) & ((\KEY~combout\(1) & ((\C1|Add8~5\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add8~5\)))) # (!\C1|SQ_X1\(4) & ((\KEY~combout\(1) & (!\C1|Add8~5\)) # (!\KEY~combout\(1) & (\C1|Add8~5\ & VCC))))
-- \C1|Add8~7\ = CARRY((\C1|SQ_X1\(4) & ((\KEY~combout\(1)) # (!\C1|Add8~5\))) # (!\C1|SQ_X1\(4) & (\KEY~combout\(1) & !\C1|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~5\,
	combout => \C1|Add8~6_combout\,
	cout => \C1|Add8~7\);

-- Location: LCCOMB_X18_Y12_N10
\C1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~8_combout\ = ((\C1|SQ_X1\(5) $ (\KEY~combout\(1) $ (!\C1|Add8~7\)))) # (GND)
-- \C1|Add8~9\ = CARRY((\C1|SQ_X1\(5) & (!\KEY~combout\(1) & !\C1|Add8~7\)) # (!\C1|SQ_X1\(5) & ((!\C1|Add8~7\) # (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~7\,
	combout => \C1|Add8~8_combout\,
	cout => \C1|Add8~9\);

-- Location: LCCOMB_X18_Y12_N14
\C1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~12_combout\ = ((\C1|SQ_X1\(7) $ (\KEY~combout\(1) $ (!\C1|Add8~11\)))) # (GND)
-- \C1|Add8~13\ = CARRY((\C1|SQ_X1\(7) & (!\KEY~combout\(1) & !\C1|Add8~11\)) # (!\C1|SQ_X1\(7) & ((!\C1|Add8~11\) # (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~11\,
	combout => \C1|Add8~12_combout\,
	cout => \C1|Add8~13\);

-- Location: LCCOMB_X18_Y12_N16
\C1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~14_combout\ = (\C1|SQ_X1\(8) & ((\KEY~combout\(1) & ((\C1|Add8~13\) # (GND))) # (!\KEY~combout\(1) & (!\C1|Add8~13\)))) # (!\C1|SQ_X1\(8) & ((\KEY~combout\(1) & (!\C1|Add8~13\)) # (!\KEY~combout\(1) & (\C1|Add8~13\ & VCC))))
-- \C1|Add8~15\ = CARRY((\C1|SQ_X1\(8) & ((\KEY~combout\(1)) # (!\C1|Add8~13\))) # (!\C1|SQ_X1\(8) & (\KEY~combout\(1) & !\C1|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \KEY~combout\(1),
	datad => VCC,
	cin => \C1|Add8~13\,
	combout => \C1|Add8~14_combout\,
	cout => \C1|Add8~15\);

-- Location: LCFF_X18_Y12_N19
\C1|SQ_X1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~16_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(9));

-- Location: LCCOMB_X19_Y12_N0
\C1|SQ_X1[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~2_combout\ = !\C1|Add8~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~14_combout\,
	combout => \C1|SQ_X1[8]~2_combout\);

-- Location: LCFF_X19_Y12_N1
\C1|SQ_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[8]~2_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(8));

-- Location: LCCOMB_X19_Y12_N2
\C1|SQ_X1[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~3_combout\ = !\C1|Add8~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~12_combout\,
	combout => \C1|SQ_X1[7]~3_combout\);

-- Location: LCFF_X19_Y12_N3
\C1|SQ_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[7]~3_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(7));

-- Location: LCCOMB_X19_Y12_N28
\C1|SQ_X1[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~4_combout\ = !\C1|Add8~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~8_combout\,
	combout => \C1|SQ_X1[5]~4_combout\);

-- Location: LCFF_X19_Y12_N29
\C1|SQ_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[5]~4_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(5));

-- Location: LCCOMB_X19_Y12_N30
\C1|SQ_X1[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~5_combout\ = !\C1|Add8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~6_combout\,
	combout => \C1|SQ_X1[4]~5_combout\);

-- Location: LCFF_X19_Y12_N31
\C1|SQ_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[4]~5_combout\,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(4));

-- Location: LCFF_X19_Y12_N9
\C1|SQ_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|Add8~4_combout\,
	sload => VCC,
	ena => \C1|SQ_X1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(3));

-- Location: LCCOMB_X19_Y12_N26
\C1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = !\C1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\);

-- Location: LCCOMB_X22_Y12_N28
\C1|DRAW1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|LessThan1~20_combout\ & ((\C1|Add1~20_combout\) # ((\C1|LessThan3~18_combout\)))) # (!\C1|LessThan1~20_combout\ & (\C1|Add0~16_combout\ & ((\C1|Add1~20_combout\) # (\C1|LessThan3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan1~20_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|LessThan3~18_combout\,
	datad => \C1|Add0~16_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X20_Y11_N2
\C1|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y11_N4
\C1|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~3_cout\ = CARRY((\C1|VPOS\(1) & (!\C1|SQ_Y1\(1) & !\C1|LessThan2~1_cout\)) # (!\C1|VPOS\(1) & ((!\C1|LessThan2~1_cout\) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cin => \C1|LessThan2~1_cout\,
	cout => \C1|LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y11_N6
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

-- Location: LCCOMB_X20_Y11_N8
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

-- Location: LCCOMB_X20_Y11_N10
\C1|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan2~7_cout\) # (!\C1|SQ_Y1\(4)))) # (!\C1|VPOS\(4) & (!\C1|SQ_Y1\(4) & !\C1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|LessThan2~7_cout\,
	cout => \C1|LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y11_N12
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

-- Location: LCCOMB_X20_Y11_N14
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

-- Location: LCCOMB_X20_Y11_N16
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

-- Location: LCCOMB_X20_Y11_N18
\C1|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~17_cout\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan2~15_cout\))) # (!\C1|SQ_Y1\(8) & (\C1|VPOS\(8) & !\C1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan2~15_cout\,
	cout => \C1|LessThan2~17_cout\);

-- Location: LCCOMB_X20_Y11_N20
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

-- Location: LCCOMB_X20_Y11_N22
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

-- Location: LCCOMB_X23_Y12_N12
\C1|B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~0_combout\ = (!\C1|DRAW2~1_combout\ & (((!\C1|LessThan2~20_combout\) # (!\C1|DRAW1~0_combout\)) # (!\C1|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan0~18_combout\,
	datab => \C1|DRAW1~0_combout\,
	datac => \C1|LessThan2~20_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|B~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\C1|R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (!\C1|process_0~9_combout\ & ((\C1|DRAWMAP~41_combout\) # (!\C1|B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~9_combout\,
	datac => \C1|DRAWMAP~41_combout\,
	datad => \C1|B~0_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\C1|R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|R~0_combout\ & ((!\SW~combout\(1)) # (!\C1|DRAW2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAW2~1_combout\,
	datac => \SW~combout\(1),
	datad => \C1|R~0_combout\,
	combout => \C1|R~1_combout\);

-- Location: LCFF_X23_Y12_N1
\C1|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(0));

-- Location: LCCOMB_X23_Y12_N16
\C1|B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~1_combout\ = (\C1|B~0_combout\ & ((\C1|DRAWMAP~41_combout\))) # (!\C1|B~0_combout\ & (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datac => \C1|DRAWMAP~41_combout\,
	datad => \C1|B~0_combout\,
	combout => \C1|B~1_combout\);

-- Location: LCCOMB_X23_Y12_N10
\C1|R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (\C1|LessThan0~18_combout\ & (\C1|DRAW1~0_combout\ & (\C1|LessThan2~20_combout\ & !\C1|DRAW2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan0~18_combout\,
	datab => \C1|DRAW1~0_combout\,
	datac => \C1|LessThan2~20_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|R~2_combout\);

-- Location: LCCOMB_X23_Y12_N18
\C1|B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (!\C1|process_0~9_combout\ & ((\C1|R~2_combout\ & (!\SW~combout\(0))) # (!\C1|R~2_combout\ & ((\C1|B~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~9_combout\,
	datab => \SW~combout\(0),
	datac => \C1|B~1_combout\,
	datad => \C1|R~2_combout\,
	combout => \C1|B~2_combout\);

-- Location: LCFF_X23_Y12_N19
\C1|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(0));

-- Location: LCCOMB_X23_Y12_N4
\C1|G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~0_combout\ = (\C1|R~0_combout\ & ((!\SW~combout\(0)) # (!\C1|R~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~2_combout\,
	datab => \SW~combout\(0),
	datad => \C1|R~0_combout\,
	combout => \C1|G~0_combout\);

-- Location: LCFF_X23_Y12_N5
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


