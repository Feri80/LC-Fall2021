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
---  Module Name: Multiplexer 4 to 1
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x1 (
	input [3:0] w ,
	input [1:0]	sel ,
	output  y
);
  wire a,b,c,d,e,f;
  not g1(a,sel[0]);
  not g2(b,sel[1]);
  and g3(c,w[0],a,b);
  and g4(d,w[1],a,sel[0]);
  and g5(e,w[2],sel[1],b);
  and g6(f,w[3],sel[1],sel[0]);
  or  g7(y,c,d,e,f);
endmodule