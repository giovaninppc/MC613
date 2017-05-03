-- Regisrador de deslocamento Universal
-- 01 - shift left
-- 10 - shift right
-- 11 - carga paralela s´incrona
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Shifter_package IS
	COMPONENT Shifter
		GENERIC (N : INTEGER := 6);
		PORT(
			ParIn: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			Modo:  IN STD_LOGIC_VECTOR  (1 DOWNTO 0);
			SerIn: IN STD_LOGIC;
			clock: IN STD_LOGIC;
			ParOut: BUFFER STD_LOGIC_VECTOR (N-1 DOWNTO 0)
		);
	END COMPONENT;
END shifter_package;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Shifter IS
	GENERIC (N : INTEGER := 6);
	PORT(
		ParIn: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		Modo:  IN STD_LOGIC_VECTOR  (1 DOWNTO 0);
		SerIn: IN STD_LOGIC;
		clock: IN STD_LOGIC;
		ParOut: BUFFER STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
END Shifter;

ARCHITECTURE Behaviour OF Shifter IS
BEGIN

	PROCESS (Clock)
	BEGIN
		IF (clock'Event AND clock = '1') THEN
			IF Modo = "00" THEN       -- Mantem o mesmo valor
				ParOut <= ParOut;
			
			ELSIF Modo = "10" THEN     -- Shift Left
				SL: FOR i in 0 TO N-2 LOOP
								ParOut(i) <= ParOut(i+1);
				        END LOOP;
				ParOut(N-1) <= SerIn;
						  
			ELSIF Modo = "01" THEN     -- Shift Right
				SR: FOR i in 0 TO N-2 LOOP
								ParOut(N-i-1) <= ParOut(N-i-2);
				        END LOOP;
				ParOut(0) <= SerIn;
				
			ELSIF Modo = "11" THEN     -- Carrega o valor de ParIn na saida
				ParOut <= ParIn;
				
			END IF;
		END IF;
	END PROCESS;

END Behaviour;