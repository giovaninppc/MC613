LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.conv_7seg_package.all;
USE work.conv_gray_package.all;

ENTITY demo_setup IS
	PORT( SW    :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			HEX3  :  OUT STD_LOGIC_VECTOR  (0 to 6));
END demo_setup;

ARCHITECTURE Structure OF demo_setup IS
	SIGNAL m : STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	Gray: conv_gray PORT MAP
		(SW, m);
		
	Led:  conv_7seg PORT MAP
		(m, HEX3);
END Structure;