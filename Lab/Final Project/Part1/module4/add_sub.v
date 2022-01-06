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
---  Module Name: Single Bit Adder/Subtractor
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module add_sub (
	input a ,
	input b ,
	input cin ,
	input sel ,
	output sum ,
	output cout
);
 wire w[4:0];
 xor g1(w[0],b,sel);
 xor g2(w[1],w[0],a);
 xor g3(sum,cin,w[1]);
 or g4(w[2],a,w[0]);
 and g5(w[3],w[2],cin);
 and g6(w[4],a,w[0]);
 or g7(cout,w[3],w[4]);

endmodule

