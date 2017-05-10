LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.fullAdder_package.all;

PACKAGE CLA4_package IS
	COMPONENT CLA4
		PORT(
		X, Y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cin:  IN STD_LOGIC;
		Cout: OUT STD_LOGIC;
		S:   OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
	END COMPONENT;
END CLA4_package;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.fullAdder_package.all;

ENTITY CLA4 IS 

	PORT(
		X, Y: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Cin:  IN STD_LOGIC;
		V, Cout: OUT STD_LOGIC;
		S:   OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);

END CLA4;


ARCHITECTURE Structure OF CLA4 IS

	SIGNAL G, P : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL C    : STD_LOGIC_VECTOR (4 DOWNTO 0);
	SIGNAL deadC: STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	
	C(0) <= Cin;
	G1: FOR i IN 0 to 3 GENERATE
		G(i) <= X(i) AND Y(i);
		P(i) <= X(i) OR  Y(i);
		C(i+1) <= G(i) OR (P(i) AND C(i));
		END GENERATE;
		
	--Perguntar depois
	--C(1) <= G(0) OR (P(0) AND Cin);
	--C(2) <= G(1) OR (P(1) AND (G(0) OR (P(0) AND Cin)));
	--C(3) <= G(2) OR (P(2) AND (G(1) OR (P(1) AND (G(0) OR (P(0) AND Cin)))));
	--C(4) <= G(3) OR (P(3) AND (G(2) OR (P(2) AND (G(1) OR (P(1) AND (G(0) OR (P(0) AND Cin)))))));
	
	-- RIPPLE CARRY
	fulladder0: fullAdder PORT MAP(
		x(0), y(0), Cin, deadC(0), S(0)
	);

	fulladder1: fullAdder PORT MAP(
		x(1), y(1), C(1), deadC(1), S(1)
	);
	
	fulladder2: fullAdder PORT MAP(
		x(2), y(2), C(2), deadC(2), S(2)
	);
	
	fulladder3: fullAdder PORT MAP( 
	   x(3), y(3), C(3), deadC(3), S(3)
	 );
	
	V    <= C(3) XOR C(4); --??? Representacao com ou sem sinal???
	Cout <= C(4);

END Structure;
