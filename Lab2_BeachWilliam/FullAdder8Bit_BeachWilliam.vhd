LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fullAdderPackage.all;

ENTITY fullAdder8Bit_BeachWilliam IS
	PORT(Cin	: IN STD_LOGIC;
		 A, B	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 s		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 cout	: OUT STD_LOGIC);
END fullAdder8Bit_BeachWilliam;

ARCHITECTURE LogicFunc OF fullAdder8Bit_BeachWilliam IS
SIGNAL C: STD_LOGIC;
BEGIN
	adder1:FullAdder4Bit_BeachWilliam PORT MAP(Cin, A(3 DOWNTO 0), B(3 DOWNTO 0), s(3 DOWNTO 0), C);
	adder2:FullAdder4Bit_BeachWilliam PORT MAP(C, A(7 DOWNTO 4), B(7 DOWNTO 4), s(7 DOWNTO 4), cout);
END LogicFunc;