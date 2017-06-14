library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.sync_package.all;
use work.all;
-- Unidade de conex~ao VGA

ENTITY VGA IS
	PORT(
	------------------------	Clock Input	 	------------------------
		CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
		CLOCK_27	:	in	STD_LOGIC_VECTOR (1 downto 0);	--	27 MHz
		CLOCK_50	: 	in	STD_LOGIC;								--	50 MHz
		
	------------------------	PS2		--------------------------------
		PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
		PS2_CLK	:		inout	STD_LOGIC;		--	PS2 Clock
			
	------------------------	VGA		--------------------------------
		VGA_HS,VGA_VS: OUT STD_LOGIC;
		VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0);
		
	--------------------	KEYS AND SWITCHES  ----------------------------
		SW: STD_LOGIC_VECTOR(9 downto 0);
		KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
		
	------------------------	LEDS		--------------------------------
		LEDG : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);

	---------------------	7SEG DISPLAY		--------------------------
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0)
	);
END VGA;


ARCHITECTURE MAIN OF VGA IS
SIGNAL VGACLK,RESET,OVER:STD_LOGIC;
SIGNAL right_arrow, left_arrow, up_arrow, space: std_logic;
SIGNAL directions: STD_LOGIC_VECTOR(2 DOWNTO 0);
    component pll is
        port (
            clkout_clk : out std_logic;        -- clk
            clkin_clk  : in  std_logic := 'X'; -- clk
            rst_reset  : in  std_logic := 'X'  -- reset
        );
	 END COMPONENT pll;
 BEGIN

 keyboard: ps2_kbd PORT MAP (CLOCK_24, CLOCK_27, CLOCK_50, KEY(3 DOWNTO 2), PS2_DAT, PS2_CLK, right_arrow, left_arrow, up_arrow, space);
 directions(0) <= right_arrow;
 directions(1) <= left_arrow;
 directions(2) <= up_arrow;

 C: pll PORT MAP (VGACLK,CLOCK_24(0),RESET);
 C1: SYNC PORT MAP(VGACLK,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B,directions,SW(1 DOWNTO 0), SW(9 DOWNTO 8), OVER); --PRECISA PASSAR OS CONTROLES PRAQUI
 clock: Relogio PORT MAP (NOT(OVER), HEX0, HEX1, HEX2, HEX3, CLOCK_50);
 LEDG <= (others => OVER);
 
 END MAIN;
 