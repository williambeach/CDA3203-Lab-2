LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE fullAdderPackage IS 
	COMPONENT FullAdder_1BitBeachWilliam
		PORT (A, B, Cin		:	IN STD_LOGIC;
			  s, cout		:	OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT FullAdder4Bit_BeachWilliam
		PORT 	(Cin	:	IN STD_LOGIC;
				A, B	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				s		:	OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				cout	:	OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT fullAdder8Bit_BeachWilliam IS
		PORT(Cin	: IN STD_LOGIC;
			A, B	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			s		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			cout	: OUT STD_LOGIC);
	END COMPONENT;
END fullAdderPackage;