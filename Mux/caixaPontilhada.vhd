LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Definindo package da caixa pontilhada
PACKAGE caixaPontilhada_package IS
	COMPONENT caixaPontilhada
		PORT( w, a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
END caixaPontilhada_package;
	
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Definindo o componente da caixa pontilhada
ENTITY caixaPontilhada IS
	PORT( w, a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END caixaPontilhada;

ARCHITECTURE Behaviour OF caixaPontilhada IS
BEGIN
	f(0) <= (w(0) AND a(0));
	f(1) <= (w(1) AND a(1));
	f(2) <= (w(2) AND a(2));
	f(3) <= (w(3) AND a(3));
END Behaviour;