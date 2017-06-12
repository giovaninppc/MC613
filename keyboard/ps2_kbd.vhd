LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.all;

entity ps2_kbd is
	port
	(
		------------------------	Clock Input	 	------------------------
		CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
		CLOCK_27	:		in	STD_LOGIC_VECTOR (1 downto 0);	--	27 MHz
		CLOCK_50	: 	in	STD_LOGIC;											--	50 MHz	
		
		------------------------	Push Button		------------------------
		KEY 	:		in	STD_LOGIC_VECTOR (1 downto 0);		--	Pushbutton[1:0]

		------------------------	PS2		--------------------------------
		PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
		PS2_CLK		:		inout	STD_LOGIC;		--	PS2 Clock
		
		------------------------  Detection outputs ------------------------
		right_arrow, left_arrow, up_arrow, space: out STD_LOGIC
	);
end;

architecture struct of ps2_kbd is
	signal CLOCKHZ, resetn 		: std_logic;
	signal key_aux					: std_logic_vector(47 downto 0);
	signal key0, key1, key2 	: std_logic_vector(15 downto 0);
	signal lights, key_on		: std_logic_vector( 2 downto 0);
begin 
	resetn <= KEY(0);

	kbd_ctrl : kbdex_ctrl generic map(24000) port map(
		PS2_DAT, PS2_CLK, CLOCK_24(0), KEY(1), resetn, lights(1) & lights(2) & lights(0), key_aux
	);
	
	key0 <= key_aux(15 downto 0);
	key1 <= key_aux(31 downto 16);
	key2 <= key_aux(47 downto 32);

	up_arrow <= '1' WHEN (key0 = "1110000001110101" OR key1 = "1110000001110101" OR key2 = "1110000001110101") ELSE '0';
	left_arrow <='1' WHEN (key0 = "1110000001101011" OR key1 = "1110000001101011" OR key2 = "1110000001101011") ELSE '0';
	right_arrow <= '1' WHEN (key0 = "1110000001110100" OR key1 = "1110000001110100" OR key2 = "1110000001110100") ELSE '0';
	space <= '1' WHEN (key0 = "0000000000101001" OR key1 = "0000000000101001" OR key2 = "0000000000101001") ELSE '0';
end struct;