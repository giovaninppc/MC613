LIBRARY ieee ;
USE ieee.std_logic_1164.all;

PACKAGE Zbuffer_package IS
	COMPONENT Zbuffer
		GENERIC ( N : INTEGER := 8 ) ;
		PORT ( X  : IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
		E  : IN   STD_LOGIC ;
		F  : OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
	END COMPONENT;
END Zbuffer_package;

LIBRARY ieee ;
USE ieee.std_logic_1164.all;

-- tri state
ENTITY zbuffer IS
	GENERIC ( N : INTEGER := 8 ) ;
	PORT ( X  : IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
	E  : IN   STD_LOGIC ;
	F  : OUT  STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END zbuffer ;

ARCHITECTURE Behaviour OF Zbuffer IS
BEGIN
	F <= (OTHERS=> 'Z') WHEN E = '0' ELSE X ;
END Behaviour ;