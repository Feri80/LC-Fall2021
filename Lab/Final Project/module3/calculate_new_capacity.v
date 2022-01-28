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
---  Module Name: calculate_new_capacity
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module calculate_new_capacity(
 park_location,
 parking_capacity,
 new_capacity);
input [7:0] park_location;
input [7:0] parking_capacity;
output [7:0] new_capacity;
	wire [7:0] w;
	add_sub f1(park_location[0],parking_capacity[0],1'b0,1'b0,new_capacity[0],w[0]);
	add_sub f2(park_location[1],parking_capacity[1],w[0],1'b0,new_capacity[1],w[1]);
	add_sub f3(park_location[2],parking_capacity[2],w[1],1'b0,new_capacity[2],w[2]);
	add_sub f4(park_location[3],parking_capacity[3],w[2],1'b0,new_capacity[3],w[3]);
	add_sub f5(park_location[4],parking_capacity[4],w[3],1'b0,new_capacity[4],w[4]);
	add_sub f6(park_location[5],parking_capacity[5],w[4],1'b0,new_capacity[5],w[5]);
	add_sub f7(park_location[6],parking_capacity[6],w[5],1'b0,new_capacity[6],w[6]);
	add_sub f8(park_location[7],parking_capacity[7],w[6],1'b0,new_capacity[7],w[7]);
endmodule