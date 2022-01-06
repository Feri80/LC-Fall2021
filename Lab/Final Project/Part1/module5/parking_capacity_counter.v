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
---  Module Name: parking_capacity_counter
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parking_capacity_counter(
 new_capacity,
 parked,
 empty);
input [7:0] new_capacity;
output [3:0] parked;
output [3:0] empty;
	wire [16:0] w;
	add_sub f1(new_capacity[0], new_capacity[1], new_capacity[2], 1'b0, w[0], w[1]);
	add_sub f2(new_capacity[3], new_capacity[4], new_capacity[5], 1'b0, w[2], w[3]);
	add_sub f3(new_capacity[6], new_capacity[7], 1'b0, 1'b0, w[4], w[5]);
	add_sub f4(w[0], w[2], 1'b0, 1'b0, w[7], w[8]);
	add_sub f5(w[1], w[3], w[8], 1'b0, w[9], w[10]);
	add_sub f6(w[7], w[4], 1'b0, 1'b0, parked[0], w[11]);
	add_sub f7(w[9], w[5], w[11], 1'b0, parked[1], w[12]);
	add_sub f8(w[10], 1'b0, w[12], 1'b0, parked[2], parked[3]);
	
	add_sub f9(1'b0, parked[0],1'b1,1'b1,empty[0],w[13]);
	add_sub f10(1'b0,parked[1],w[13],1'b1,empty[1],w[14]);
	add_sub f11(1'b0,parked[2],w[14],1'b1,empty[2],w[15]);
	add_sub f12(1'b1,parked[3],w[15],1'b1,empty[3],w[16]);
endmodule


















