LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

— Decod 3x8 Comportamental

PACKAGE decod3x8_package IS
	COMPONENT decod3x8
		PORT(
		S:  IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		D: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	END COMPONENT;
END decod3x8_package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY decod3x8 IS
	PORT(
		S:  IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		D: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END decod3x8;

ARCHITECTURE Comportamental OF decod3x8 IS
BEGIN

	PROCESS (S)
	VARIABLE temp: STD_LOGIC_VECTOR (7 DOWNTO 0);
	BEGIN
		CASE (S) IS
			WHEN "000" => temp := "00000001";
			WHEN "001" => temp := "00000010";
			WHEN "010" => temp := "00000100";
			WHEN "011" => temp := "00001000";
			WHEN "100" => temp := "00010000";
			WHEN "101" => temp := "00100000";
			WHEN "110" => temp := "01000000";
			WHEN "111" => temp := "10000000";
		END CASE;
		D <= temp;
	END PROCESS;

END Comportamental;