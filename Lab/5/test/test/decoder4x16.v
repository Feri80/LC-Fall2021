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
---  Module Name: Decoder 4 to 16
---  Description: Lab 05 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder4x16 (
	input [3:0] in ,
	input 		en ,
	output  [15:0] dout
);
    	//input [3:0] in ,
	//input 		en ,
	//wire  [15:0] dout;
	//-------------------------------
   wire a,b,c,d;
  wire D0,D1,D2,D3,D4,D5,D6,D7;
  not g1(a,in[0]);
  not g2(b,in[1]);
  and g3(D0,a,b,en);
  and g4(D1,a,in[1],en);
  and g5(D2,b,in[0],en);
  and g6(D3,in[0],in[1],en);
 
	//--------------------------------
  not g7(c,in[2]);
  not g8(d,in[3]);
  and g9(D4,c,d,en);
  and g10(D5,c,in[3],en);
  and g11(D6,d,in[2],en);
  and g12(D7,in[2],in[3],en);
  //------------------------------------
  and f1(dout[0],D0,D4);
  and f2(dout[1],D0,D5);
  and f3(dout[2],D0,D6);
  and f4(dout[3],D0,D7);
  and f5(dout[4],D1,D4);
  and f6(dout[5],D1,D5);
  and f7(dout[6],D1,D6);
  and f8(dout[7],D1,D7);
  and f9(dout[8],D2,D4);
  and f10(dout[9],D2,D5);
  and f11(dout[10],D2,D6);
  and f12(dout[11],D2,D7);
  and f13(dout[12],D3,D4);
  and f14(dout[13],D3,D5);
  and f15(dout[14],D3,D6);
  and f16(dout[15],D3,D7);
  //--------------------------------------------
endmodule