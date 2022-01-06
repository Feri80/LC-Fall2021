`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:43:13 01/02/2022
// Design Name:   entry_park
// Module Name:   C:/Users/farhad/Desktop/Final/final/entry_park_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: entry_park
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module entry_park_tb;

	// Inputs
	reg entry;
	reg [7:0] parking_capacity;

	// Outputs
	wire [2:0] park_number;

	// Instantiate the Unit Under Test (UUT)
	entry_park uut (
		.entry(entry), 
		.parking_capacity(parking_capacity), 
		.park_number(park_number)
	);

	initial begin
		entry = 0;
		parking_capacity = 8'b10101101;
		#100;
      entry = 1;
		parking_capacity = 8'b10101101;
		#100;
		entry = 1;
		parking_capacity = 8'b00000001;
		#100;
		entry = 1;
		parking_capacity = 8'b00000000;
		#100;
		entry = 1;
		parking_capacity = 8'b00001101;
		#100;
		entry = 0;
		parking_capacity = 8'b00000000;
		#100;
		$finish;

	end
      
endmodule

