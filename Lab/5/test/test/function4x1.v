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
---  Module Name: Function Implementation usin Mux 4 to 16
---  Description: Lab 05 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module function4x1 (
	input a ,
	input b ,
	input c ,
	input d ,
	output f
);
    	//input [3:0] in ,
	//input 		en ,
	wire  [15:0] dout;
	//-------------------------------
   wire wa,wb,wc,wd;
  wire D0,D1,D2,D3,D4,D5,D6,D7;
  not g1(wa,a);
  not g2(wb,b);
  and g3(D0,wa,wb);
  and g4(D1,wa,b);
  and g5(D2,wb,a);
  and g6(D3,a,b);
 
	//--------------------------------
  not g7(wc,c);
  not g8(wd,d);
  and g9(D4,wc,wd);
  and g10(D5,wc,d);
  and g11(D6,wd,c);
  and g12(D7,c,d);
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
  or res(f,dout[2],dout[3],dout[5],dout[7],dout[11],dout[13]);

endmodule
