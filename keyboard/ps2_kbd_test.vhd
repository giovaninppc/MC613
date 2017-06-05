LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.all;

entity ps2_kbd_test is
	port
	(
		------------------------	Clock Input	 	------------------------
		CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
		CLOCK_27	:		in	STD_LOGIC_VECTOR (1 downto 0);	--	27 MHz
		CLOCK_50	: 	in	STD_LOGIC;											--	50 MHz
		-- CLOCKTAP	: 	out	STD_LOGIC;											
		
		------------------------	Push Button		------------------------
		KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);		--	Pushbutton[3:0]

		------------------------	DPDT Switch		------------------------
		SW 	:		in	STD_LOGIC_VECTOR (9 downto 0);			--	Toggle Switch[9:0]
		
		------------------------	7-SEG Dispaly	------------------------
		HEX0 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 0
		HEX1 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 1
		HEX2 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 2
		HEX3 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 3
		
		----------------------------	LED		----------------------------
		LEDG 	:		out	STD_LOGIC_VECTOR (7 downto 0);		--	LED Green[7:0]
		LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0);		--	LED Red[9:0]
					
		------------------------	PS2		--------------------------------
		PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
		PS2_CLK		:		inout	STD_LOGIC		--	PS2 Clock
		
		------------------------ Arrow output ------------------------------
		--right_arrow: out STD_LOGIC;
		--left_arrow: out STD_LOGIC;
		--up_arrow: out STD_LOGIC;
	);
end;

architecture struct of ps2_kbd_test is
	signal CLOCKHZ, resetn 	: std_logic;
	signal key0 						: std_logic_vector(15 downto 0);
	signal lights, key_on		: std_logic_vector( 2 downto 0);
	signal right_arrow, left_arrow, up_arrow: STD_LOGIC;
begin 
	resetn <= KEY(0);

	hexseg0: conv_7seg port map(key0(3 downto 0), HEX0);
	hexseg1: conv_7seg port map(key0(7 downto 4), HEX1);
	hexseg2: conv_7seg port map(key0(11 downto 8), HEX2);
	hexseg3: conv_7seg port map(key0(15 downto 12), HEX3);

	kbd_ctrl : kbdex_ctrl generic map(24000) port map(
		PS2_DAT, PS2_CLK, CLOCK_24(0), KEY(1), resetn, lights(1) & lights(2) & lights(0),
		key_on, key_code(15 downto 0) => key0
	);
	
	LEDG(7 downto 5) <= key_on;
	
	up_arrow <= '1' WHEN key0 = "1110000001110101" ELSE '0';
	left_arrow <='1' WHEN key0 = "1110000001101011" ELSE '0';
	right_arrow <= '1' WHEN key0 = "1110000001110100" ELSE '0';
	-- lights <= SW(2 downto 0);
	
	-- CLOCKTAP <= CLOCKHZ;
	
	LEDR(9) <= left_arrow;
	LEDR(5) <= up_arrow;
	LEDR(1) <= right_arrow;
		
end struct;
