LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FullAdder_1BitBeachWilliam IS
	PORT (A, B, Cin		:	IN STD_LOGIC;
		  s, cout		:	OUT STD_LOGIC);
END FullAdder_1BitBeachWilliam;


ARCHITECTURE LogicFunc OF FullAdder_1BitBeachWilliam IS
BEGIN
	
	PROCESS (A, B, Cin)
		VARIABLE input1, input2, input3, input4, input5, input6, input7, input8 : STD_LOGIC;
		
	BEGIN
		input1 := (((A NAND A) NAND (B NAND B)) NAND ((A NAND A) NAND (B NAND B))) NAND Cin;
		input2 := (((A NAND A) NAND B) NAND ((A NAND A) NAND B)) NAND (Cin NAND Cin);
		input3 := ((A NAND (B NAND B)) NAND (A NAND (B NAND B))) NAND (Cin NAND Cin);
		input4 := ((A NAND B) NAND (A NAND B)) NAND Cin;
		input5 := (input1 NAND input2) NAND (input1 NAND input2);
		input6 := (input3 NAND input4) NAND (input3 NAND input4);
		s <= input5 NAND input6;
		input7 := ((B NAND Cin) NAND (A NAND B)) NAND ((B NAND Cin) NAND (A NAND B)) ;
		input8 := (A NAND Cin);
		cout <= input7 NAND input8;
	END PROCESS;
		
	
END LogicFunc;

