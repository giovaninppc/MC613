LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.caixaPontilhada_package.all;
USE work.decod2to4_package.all;

PACKAGE mux4to1_package IS
	COMPONENT mux4to1
		PORT (s: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			w: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			En: IN STD_LOGIC;
			f: OUT STD_LOGIC);
	END COMPONENT;
END mux4to1_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.caixaPontilhada_package.all;
USE work.decod2to4_package.all;

ENTITY mux4to1 IS
	PORT (s: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			w: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			En: IN STD_LOGIC;
			f: OUT STD_LOGIC);
END mux4to1;

ARCHITECTURE Structure OF mux4to1 IS
	SIGNAL a: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL b: STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	decod: decod2to4
		PORT MAP(s, En, a);

	cp: caixaPontilhada
		PORT MAP(w, a, b);
		
	f <= (b(0) OR b(1) OR b(2) OR b(3));

END Structure;