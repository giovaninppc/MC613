LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.fullAdder_package.all;

PACKAGE ripple4_package IS
	COMPONENT ripple4 
		GENERIC(N: INTEGER := 4);  --Coloquei isso aqui pq deixava mais facil implementar o de 8, ..., 32 bits
	PORT(
		x: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		y: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		Cin:  IN STD_LOGIC;
		Cout: OUT STD_LOGIC;
		V: OUT STD_LOGIC; --Overflow
		S: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
	END COMPONENT;
END PACKAGE;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.fullAdder_package.all;

ENTITY ripple4 IS
	GENERIC(N: INTEGER := 4);  --Coloquei isso aqui pq deixava mais facil implementar o de 8, ..., 32 bits
	PORT(
		x: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		y: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		Cin:  IN STD_LOGIC;
		Cout: OUT STD_LOGIC;
		V: OUT STD_LOGIC; --Overflow
		S: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
END ripple4;


ARCHITECTURE Structure OF ripple4 IS
Signal carries: STD_LOGIC_VECTOR (N DOWNTO 1);
BEGIN
	
	fulladder0: fullAdder PORT MAP(
		x(0), y(0), Cin, carries(1), S(0)
	);

	G1: FOR i IN 1 TO N-2 GENERATE
		fulladders: fullAdder PORT MAP(
			x(i), y(i), carries(i), carries(i+1), S(i)
		);
	
	END GENERATE;
	
	fulladderN: fullAdder PORT MAP
	( x(N-1), y(N-1), carries(N-1), carries(N), S(N-1));
	
	V    <= carries(N) XOR carries(N-1); --??? Representacao com ou sem sinal???
	Cout <= carries(N);

END Structure;