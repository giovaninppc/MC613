LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux4to1_package.all;
USE work.decod2to4_package.all;

ENTITY mux16to1 IS
	PORT( w: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			s: IN STD_LOGIC_VECTOR(3  DOWNTO 0);
			En: IN STD_LOGIC;
			f: OUT STD_LOGIC);
END mux16to1;


ARCHITECTURE Structure OF mux16to1 IS
	SIGNAL a: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN 

	forGenerate: FOR i IN 0 TO 3 GENERATE
		muxes: mux4to1
			PORT MAP(s(1 DOWNTO 0),
						w((4*i + 3) DOWNTO (4*i)),
						En,
						a(i));
	END GENERATE;
	
	endMux: mux4to1
		PORT MAP(s(3 DOWNTO 2),
					a,
					En,
					f);

END Structure;