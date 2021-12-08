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
---  Module Name: Decoder 2 to 4 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder2x4 (
	input [1:0] in ,
	input en ,
	output [3:0] dout
);

  wire a,b;
  not g1(a,in[0]);
  not g2(b,in[1]);
  and g3(dout[0],a,b,en);
  and g4(dout[1],a,in[1],en);
  and g5(dout[2],b,in[0],en);
  and g6(dout[3],in[0],in[1],en);

endmodule
