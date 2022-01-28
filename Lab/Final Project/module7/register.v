/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: register
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module register(
input [7:0] D,
input CLK, 
input RST,
input en,
output [7:0] Q
);
	dff df0(D[0], RST, CLK & en, Q[0]);
	dff df1(D[1], RST, CLK & en, Q[1]);
	dff df2(D[2], RST, CLK & en, Q[2]);
	dff df3(D[3], RST, CLK & en, Q[3]);
	dff df4(D[4], RST, CLK & en, Q[4]);
	dff df5(D[5], RST, CLK & en, Q[5]);
	dff df6(D[6], RST, CLK & en, Q[6]);
	dff df7(D[7], RST, CLK & en, Q[7]);
endmodule