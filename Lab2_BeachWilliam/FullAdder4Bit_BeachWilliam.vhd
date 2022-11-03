LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.fullAdderPackage.all;

ENTITY fullAdder4bit_BeachWilliam IS
	PORT(Cin	:	IN STD_LOGIC;
		 A, B	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 s		:	OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 cout	:	OUT STD_LOGIC);
END fullAdder4bit_BeachWilliam;

ARCHITECTURE LogicFunc OF fullAdder4bit_BeachWilliam IS 
SIGNAL C: STD_LOGIC_VECTOR(1 TO 3);
BEGIN
	adder1:FullAdder_1BitBeachWilliam PORT MAP(A(0), B(0), Cin, s(0), C(1));
	adder2:FullAdder_1BitBeachWilliam PORT MAP(A(1), B(1), C(1), s(1), C(2));
	adder3:FullAdder_1BitBeachWilliam PORT MAP(A(2), B(2), C(2), s(2), C(3));
	adder4:FullAdder_1BitBeachWilliam PORT MAP(A(3), B(3), C(3), s(3), cout);
END LogicFunc;
