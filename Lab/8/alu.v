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
---  Module Name: Arithmetic and Logic Unit
---  Description: Lab 08
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module alu (
	input [1:0] A ,
	input [1:0] B ,
	input [1:0]	sel ,
	output [3:0] Y
);

	wire [3:0] Mul; 
	wire [3:0] Add;
	wire [3:0] Nand; 
	wire [3:0] Not;
	assign Mul = {A[1] & A[0] & B[1] & B[0], (A[1] & B[1] & ~B[0]) | (A[1] & B[1] & ~A[0]), (~A[1] & A[0] & B[1]) | (A[0] & B[1] & ~B[0]) | (A[1] & ~B[1] & B[0]) | (A[1] & ~A[0] & B[0]), A[0] & B[0]};
	assign Add = A + B;
	assign Not = {0, 0, ~A[1], ~A[0]};
	assign Nand = {0, 0, ~(A[1] & B[1]), ~(A[0] & B[0])};
	multiplexer4x4 m1(Mul, Add, Nand, Not, sel, Y);
	
endmodule