LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE conv_gray_package IS
	COMPONENT conv_gray
		PORT( g  :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			   b  :  OUT STD_LOGIC_VECTOR  (3 DOWNTO 0));
	END COMPONENT;
END conv_gray_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY conv_gray IS
	PORT( g  :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			b  :  OUT STD_LOGIC_VECTOR  (3 DOWNTO 0));
END conv_gray;

ARCHITECTURE Behaviour OF conv_gray IS
BEGIN
		b(3) <= g(3);
		b(2) <= g(3) XOR g(2);
		b(1) <= g(3) XOR g(2) XOR g(1);
		b(0) <= g(3) XOR g(2) XOR g(1) XOR g(0);
END Behaviour;