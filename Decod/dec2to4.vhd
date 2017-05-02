LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Definindo Pacote do decod2to4
PACKAGE decod2to4_package IS
	COMPONENT decod2to4
		PORT (s: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			En: IN STD_LOGIC;
	      y: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
END decod2to4_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Montando Decod2to4	
ENTITY decod2to4 IS
	PORT (s: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			En: IN STD_LOGIC;
	      y: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END decod2to4;

ARCHITECTURE Behaviour OF decod2to4 IS
BEGIN
	WITH s SELECT
		y <=  "0001" WHEN "00",
				"0010" WHEN "01",
				"0100" WHEN "10",
				"1000" WHEN "11";
END Behaviour;