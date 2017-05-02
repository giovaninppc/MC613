LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY display_7seg IS
	PORT( SW  :  IN  STD_LOGIC_VECTOR  (3 DOWNTO 0);
			HEX0 :  OUT STD_LOGIC_VECTOR (0 to 6));
END display_7seg;

ARCHITECTURE Behaviour OF display_7seg IS
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
					"0110000" WHEN OTHERS;
END Behaviour;