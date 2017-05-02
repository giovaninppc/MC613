LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.mux4to1_package.all;

ENTITY barrelShifter4 IS
	PORT(
		W: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		S: IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		F: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END barrelShifter4;

ARCHITECTURE Structure OF barrelShifter4 IS
BEGIN

	mux1: mux4to1
		PORT MAP((W(3), W(2), W(1), W(0)), S, F(0));

	mux2: mux4to1
		PORT MAP((W(2), W(1), W(0), W(3)), S, F(1));
	
	mux3: mux4to1
		PORT MAP((W(1), W(0), W(3), W(2)), S, F(2));
		
	mux4: mux4to1
		PORT MAP((W(0), W(3), W(2), W(1)), S, F(3));
		
END Structure;