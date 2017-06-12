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
		HEX0 <=  "1000000" WHEN "0000", -- 0
					"1111001" WHEN "0001", -- 1
					"0100100" WHEN "0010", -- 2
					"0110000" WHEN "0011", -- 3
					"0011001" WHEN "0100", -- 4
					"0010010" WHEN "0101", -- 5
					"0000010" WHEN "0110", -- 6
					"1111000" WHEN "0111", -- 7
					"0000000" WHEN "1000", -- 8
					"0010000" WHEN "1001", -- 9
					"0000110" WHEN OTHERS; -- E
END Behaviour;