-- Simulador de Relogio

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.conv_7seg_package.all;
use work.BCDN_package.all;
use work.clockDivisor_package.all;

entity Relogio is
	port (En: in std_logic;
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			HEX2 : out std_logic_vector(6 downto 0);
			HEX3 : out std_logic_vector(6 downto 0);
			CLOCK_50 : in std_logic);
end Relogio;

architecture Comportamento of Relogio is

    -- Counters
	SIGNAL seg1, seg2, min1, min2, hr1, hr2: std_logic_vector (3 DOWNTO 0);

	 -- Enable
	SIGNAL En2, En3, En4, En5, En6: std_logic;
	
	 -- Clear
	SIGNAL Cl1, Cl2, Cl3, Cl4, Cl5, Cl6: std_logic;
	
	-- ?
	SIGNAL timeLimit: std_logic;
	
	 -- System clock
	SIGNAL SysClock: std_logic;
	
begin

		-- Conversores de 7 Seg
	conv0: conv_7seg PORT MAP(seg1, HEX0);
	conv1: conv_7seg PORT MAP(seg2, HEX1);
	conv2: conv_7seg PORT MAP(min1, HEX2);
	conv3: conv_7seg PORT MAP(min2, HEX3);
	
	-- Divisor de Clock
	cd: clockDivisor PORT MAP(CLOCK_50, SysClock);
	
	-- Contadores de tempo
	segundo1: BCDN PORT MAP(SysClock, Cl1, En, seg1);
			
	segundo2: BCDN PORT MAP(SysClock, Cl2, En2, seg2);
	
	minuto1: BCDN  PORT MAP(SysClock, Cl3, En3, min1);
						
	minuto2: BCDN  PORT MAP(SysClock, Cl4, En4, min2);
				
	hora1: BCDN	PORT MAP(SysClock, Cl5, En5, hr1);
						
	hora2: BCDN PORT MAP(SysClock, Cl6, En6, hr2);
	
	
	PROCESS (SysClock)
		BEGIN
			IF (SysClock'EVENT AND SYSClock = '1') THEN
				
				CASE seg1 IS
					WHEN "1000" =>
						En2 <= '1';
						Cl1 <= '1';
					WHEN OTHERS =>
						En2 <= '0';
						Cl1 <= '0';
				END CASE;
				
				IF seg2 = "0101" AND seg1 = "1000" THEN
					En3 <= '1';
					Cl2 <= '1';
				ELSE
					En3 <= '0';
					Cl2 <= '0';
				END IF;
				
				
				IF min1 = "1001" AND
				  seg2 = "0101" AND seg1 = "1000" THEN
					En4 <= '1';
					Cl3 <= '1';
				ELSE
					En4 <= '0';
					Cl3 <= '0';
				END IF;
				
				
				IF min2 = "0101" AND min1 = "1001" AND
				  seg2 = "0101" AND seg1 = "1000" THEN
					En5 <= '1';
					Cl4 <= '1';
				ELSE
					En5 <= '0';
					Cl4 <= '0';
				END IF;
				
				IF hr1 = "1001" AND min2 = "0101" AND min1 = "1001" AND
				  seg2 = "0101" AND seg1 = "1000" THEN
					En6 <= '1';
					Cl5 <= '1';
				ELSE
					En6 <= '0';
					Cl5 <= '0';
				END IF;
				
				IF hr2 = "0010" AND hr1 = "0011" AND
					min2 = "0101" AND min1 = "1001" AND 
					seg2 = "0101" AND seg1 = "1000" THEN
					Cl5 <= '1';
					Cl6 <= '1';
				ELSE
					Cl6 <= '0';
				END IF;
				
			END IF;
	END PROCESS;

	
		
end Comportamento;