LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Creating package for later use
PACKAGE fullAdder_package IS
	COMPONENT fullAdder IS
		PORT(
			A: IN STD_LOGIC;
			B: IN STD_LOGIC;
			Cin: IN STD_LOGIC;
			Cout: OUT STD_LOGIC;
			S: OUT STD_LOGIC);
	END COMPONENT;
END fullAdder_package;


-- Defining Component
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder IS
	PORT(
		A: IN STD_LOGIC;
		B: IN STD_LOGIC;
		Cin: IN STD_LOGIC;
		Cout: OUT STD_LOGIC;
		S: OUT STD_LOGIC );
END fullAdder;

ARCHITECTURE Behaviour OF fullAdder IS
BEGIN
	
	-- Simple full adder logic here
	S    <= ((A XOR B) XOR Cin);
	Cout <= (((A XOR B) AND Cin) OR (A AND B));

END Behaviour;