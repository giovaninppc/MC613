LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.ripple4_package.all;

—- Logic and Arithmetic Unity with
—- Sum
-— Sub
—- Orr
—- And

ENTITY ALU IS 
	PORT (
		A:  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		B:  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		S:  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		F: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Z, C, V, N: OUT STD_LOGIC);
END ALU;

ARCHITECTURE Structure OF ALU IS
	SIGNAL Sum: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Sub: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Orr: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Andd: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Fa: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	BEGIN
		-- Addition operation
		rip1: ripple4
				PORT MAP(A, B, '0', C, V, Sum);
		
		-- Subtraction operation
		Sub(0) <= B(0) XOR '1';
		Sub(1) <= B(1) XOR '1';
		Sub(2) <= B(2) XOR '1';
		Sub(3) <= B(3) XOR '1';
		rip2: ripple4
				PORT MAP(Sub, "0001", '0', C, V, Sub);
				
		rip3: ripple4
				PORT MAP(A, Sub, '0', C, V, Sub);
				
		-- And operation		
		Andd(0) <= A(0) AND B(0);
		Andd(1) <= A(1) AND B(1);
		Andd(2) <= A(2) AND B(2);
		Andd(3) <= A(3) AND B(3);
		
		-- Orr operation
		Orr(0) <= A(0) OR B(0);
		Orr(1) <= A(1) OR B(1);
		Orr(2) <= A(2) OR B(2);
		Orr(3) <= A(3) OR B(3);
			
		WITH S SELECT
			Fa <= Sum WHEN "00",
				Sub WHEN "01",
				Andd WHEN "10",
				Orr WHEN OTHERS;
		F <= Fa;	
		Z <= '1' WHEN Fa = "0000" ELSE '0';
		N <= '1' WHEN Fa(3) = '1' ELSE '0';

END Structure;