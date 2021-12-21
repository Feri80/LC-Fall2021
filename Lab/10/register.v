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
---  Module Name: Register 4 bit
---  Description: Lab 10 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register (

	input        rst ,
	input        clk ,
	input        en ,
	input  [3:0] din ,
	output [3:0] qout
);

	dff df0(din[0], rst, clk & en, qout[0]);
	dff df1(din[1], rst, clk & en, qout[1]);
	dff df2(din[2], rst, clk & en, qout[2]);
	dff df3(din[3], rst, clk & en, qout[3]);


endmodule





