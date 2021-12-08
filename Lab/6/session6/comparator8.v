/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 8 Bits Comparator
---  Description: Lab 06 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator8 (
	input [7:0] A ,
	input [7:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	wire w1l, w1e, w1g;
	wire w2l, w2e, w2g;
	comparator3 c1(A[2:0], B[2:0], l, e, g, w1l, w1e, w1g);
	comparator3 c2(A[5:3], B[5:3], w1l, w1e, w1g, w2l, w2e, w2g);
	comparator3 c3({1'b0, A[7:5]}, {1'b0, B[7:5]}, w2l, w2e, w2g, lt, et, gt);
	

endmodule
