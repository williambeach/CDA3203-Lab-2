LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HalfAdder_BeachWilliam IS 
	PORT (A, B		: IN STD_LOGIC;
		  s, cout 	: OUT STD_LOGIC);	
END HalfAdder_BeachWilliam;

ARCHITECTURE LogicFunc OF HalfAdder_BeachWilliam IS
BEGIN
	s <= (A NAND (B NAND B)) NAND ((A NAND A) NAND B);
	cout <= (A NAND B) NAND (A NAND B);
END LogicFunc;