LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fullAdderPackage.all;

ENTITY FullAdder16Bit_BeachWilliam IS 
	PORT (Cin	: IN STD_LOGIC;
		  A, B	: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  s		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  cout	: OUT STD_LOGIC);
END FullAdder16Bit_BeachWilliam;

ARCHITECTURE LogicFunc OF FullAdder16Bit_BeachWilliam IS
SIGNAL C: STD_LOGIC;
BEGIN
	adder1: fullAdder8Bit_BeachWilliam PORT MAP(Cin, A(7 DOWNTO 0), B(7 DOWNTO 0), s(7 DOWNTO 0), C);
	adder2: fullAdder8Bit_BeachWilliam PORT MAP(C, A(15 DOWNTO 8), B(15 DOWNTO 8), s(15 DOWNTO 8), cout);
	
END LogicFunc;