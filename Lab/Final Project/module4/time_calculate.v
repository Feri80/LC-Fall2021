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
---  Module Name: time_calculate
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module time_calculate(
 time_out,
 time_in,
 time_total);
input [7:0] time_out;
input [7:0] time_in;
output [7:0] time_total;
 wire [7:0] w;
	add_sub f1(time_out[0],time_in[0],1'b1,1'b1,time_total[0],w[0]);
	add_sub f2(time_out[1],time_in[1],w[0],1'b1,time_total[1],w[1]);
	add_sub f3(time_out[2],time_in[2],w[1],1'b1,time_total[2],w[2]);
	add_sub f4(time_out[3],time_in[3],w[2],1'b1,time_total[3],w[3]);
	add_sub f5(time_out[4],time_in[4],w[3],1'b1,time_total[4],w[4]);
	add_sub f6(time_out[5],time_in[5],w[4],1'b1,time_total[5],w[5]);
	add_sub f7(time_out[6],time_in[6],w[5],1'b1,time_total[6],w[6]);
	add_sub f8(time_out[7],time_in[7],w[6],1'b1,time_total[7],w[7]);
endmodule