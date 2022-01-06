`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:32:21 01/02/2022
// Design Name:   park_space_number
// Module Name:   C:/Users/farhad/Desktop/Final/final/park_space_number_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: park_space_number
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module park_space_number_tb;

	// Inputs
	reg enable;
	reg [7:0] parking_capacity;

	// Outputs
	wire [2:0] park_number;

	// Instantiate the Unit Under Test (UUT)
	park_space_number uut (
		.enable(enable), 
		.parking_capacity(parking_capacity), 
		.park_number(park_number)
	);

	initial begin
		enable = 0;
		parking_capacity = 8'b10110100;
		#100;
      enable = 1;
		parking_capacity = 8'b00100000;
		#100;
		enable = 0;
		parking_capacity = 8'b00000000;
		#100;
		enable = 1;
		parking_capacity = 8'b10110100;
		#100;
		enable = 0;
		parking_capacity = 8'b10110100;
		#100;

	end
      
endmodule

