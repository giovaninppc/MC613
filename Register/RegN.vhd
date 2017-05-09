LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE regn_package IS
	COMPONENT regn
		GENERIC ( N : INTEGER := 8 ) ;
		PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		L, Clear, Clock: IN STD_LOGIC ;
		Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	END COMPONENT;
END regn_package;


LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

-- Registrador de tamanho N
-- com Clear ASSINCRONO
-- com Set SINCRONO
ENTITY regn IS
	GENERIC ( N : INTEGER := 8 ) ;
	PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
	L, Clear, Clock: IN STD_LOGIC ;
	Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END regn ;


ARCHITECTURE Behavior OF regn IS
BEGIN
	PROCESS (Clock, Clear)
	BEGIN
	IF Clear = '0' THEN     -- Executando o Clear
		Q <= (OTHERS => '0');
	ELSE IF Clock'EVENT AND Clock = '1' AND L = '1' THEN
		Q <= R ;             -- Executando o Set
		END IF ;
	END IF;
	END PROCESS ;
END Behavior ;