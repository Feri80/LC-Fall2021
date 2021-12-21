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
---  Module Name: Sequential System
---  Description: Lab 10 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module system (
	input        rst ,
	input        rqst,
	input        clk,
	input  		 confirm,
	input  [3:0] din ,
	output en_left,
	output en_right,
	output [3:0] fsmdout,
	output [3:0] dout_left ,
	output [3:0] dout_right,
	output [2:0] state
);

	fsm fsm1(rst , rqst, clk, confirm, din, en_left, en_right, fsmdout, state);
	
	register left(rst, clk, en_left, fsmdout, dout_left);
	register right(rst, clk, en_right, fsmdout, dout_right);


endmodule












