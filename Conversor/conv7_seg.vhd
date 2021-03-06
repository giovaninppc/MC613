LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE conv_7seg_package IS
	COMPONENT conv_7seg
		PORT( SW  :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			HEX0 :  OUT STD_LOGIC_VECTOR (0 to 6));
	END COMPONENT;
END conv_7seg_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY conv_7seg IS
	PORT( SW  :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			HEX0 :  OUT STD_LOGIC_VECTOR (0 to 6));
END conv_7seg;

ARCHITECTURE Behaviour OF conv_7seg IS
BEGIN
	WITH SW SELECT
		HEX0 <=  "0000001" WHEN "0000",
					"1001111" WHEN "0001",
					"0010010" WHEN "0010",
					"0000110" WHEN "0011",
					"1001100" WHEN "0100",
					"0100100" WHEN "0101",
					"0100000" WHEN "0110",
					"0001111" WHEN "0111",
					"0000000" WHEN "1000",
					"0000100" WHEN "1001",
					
					"0001000" WHEN "1010",
					"1100000" WHEN "1011",
					"0110001" WHEN "1100",
					"1000010" WHEN "1101",
					"0110000" WHEN "1110",
					"0111000" WHEN "1111";
END Behaviour;