`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:35:30 01/02/2022
// Design Name:   calculate_new_capacity
// Module Name:   C:/Users/farhad/Desktop/Final/final/calculate_new_capacity_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calculate_new_capacity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module calculate_new_capacity_tb;

	// Inputs
	reg [7:0] park_location;
	reg [7:0] parking_capacity;

	// Outputs
	wire [7:0] new_capacity;

	// Instantiate the Unit Under Test (UUT)
	calculate_new_capacity uut (
		.park_location(park_location), 
		.parking_capacity(parking_capacity), 
		.new_capacity(new_capacity)
	);

	initial begin
		park_location = 8'b10101100;
		parking_capacity = 8'b01000000;
		#100;
      park_location = 8'b11101100;
		parking_capacity = 8'b00000001;
		#100;
		park_location = 8'b10111101;
		parking_capacity = 8'b00000010;
		#100;
		$finish;

	end
      
endmodule

