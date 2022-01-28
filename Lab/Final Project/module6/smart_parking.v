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
---  Module Name: smart_parking
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module smart_parking(
input entry,
input [7:0] parking_capacity,
input exit,
input [2:0] pattern,
input [7:0] time_out,
input [7:0] time_in,
output [7:0] new_capacity,
output [7:0] time_total,
output [3:0] parked,
output [3:0] empty
);
  wire [2:0] park_number;
  wire [2:0] token;
  wire [7:0] park_location;
  wire [7:0] parking_capacity_new;
  wire [7:0] cap;
  //-----------------------------
  entry_park f1(entry,parking_capacity,park_number);
  token_production f2(park_number,pattern,token);
  exit_park f3(exit,token,pattern,park_location);
  calculate_new_capacity f4(park_location,parking_capacity_new,new_capacity);
  update_capacity f5(entry,parking_capacity,parking_capacity_new,cap);
  parking_capacity_counter f6(new_capacity,empty,parked);
  time_calculate f7(time_out,time_in,time_total);
endmodule
