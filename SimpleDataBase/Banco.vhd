LIBRARY ieee ;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.decod3x8_package.all;
USE work.regn_package.all;
USE work.Zbuffer_package.all;


ENTITY Banco IS
	PORT(
		SW: IN STD_LOGIC_VECTOR (9 DOWNTO 0);  -- 2-0 Decod 1(Escrita)
															-- 5-3 Decod 2(Leitura)
															-- 9-6 Entrada dos registradores(DATA_IN)
		Clock: IN STD_LOGIC;
		LEDS: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END Banco;


ARCHITECTURE Behaviour OF Banco IS
SIGNAL D2R: STD_LOGIC_VECTOR  (7 DOWNTO 0);
SIGNAL R2D: STD_LOGIC_VECTOR  (7 DOWNTO 0);
SIGNAL posRegister: STD_LOGIC_VECTOR (31 DOWNTO 0);
BEGIN
	
	-- Selecionando qual registrador pegar
	RegisterSelection: decod3x8 PORT MAP(SW(2 DOWNTO 0), D2R);
	
	-- Selecioanndo qual registrador vai por na memoria
	RegisterMemory:    decod3x8 PORT MAP(SW(5 DOWNTO 3), R2D);
	
	-- Colocando informacao nos registradores 
	FOR1: FOR i IN 0 TO 7 GENERATE
		Registers: RegN 
			GENERIC MAP(N => 4)
			PORT MAP(SW(9 DOWNTO 6), D2R(i), '1', Clock, posRegister(i*4+3 DOWNTO i*4));
		TriStates: Zbuffer 
			GENERIC MAP(N => 4)
			PORT MAP(posRegister(i*4+3 DOWNTO i*4), R2D(i), LEDS);
	END GENERATE;
	
END Behaviour;