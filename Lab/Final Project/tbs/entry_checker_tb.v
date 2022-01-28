`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:29:39 01/02/2022
// Design Name:   entry_checker
// Module Name:   C:/Users/farhad/Desktop/Final/final/entry_checker_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: entry_checker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module entry_checker_tb;

	// Inputs
	reg entry;
	reg [7:0] parking_capacity;

	// Outputs
	wire enable;

	// Instantiate the Unit Under Test (UUT)
	entry_checker uut (
		.entry(entry), 
		.parking_capacity(parking_capacity), 
		.enable(enable)
	);

	initial begin
		entry = 0;
		parking_capacity = 8'b10110001;
		#100;
      entry = 1;
		parking_capacity = 8'b10111001;
		#100;
		entry = 1;
		parking_capacity = 8'b00000000;
		#100;
		entry = 0;
		parking_capacity = 8'b00000000;
		#100;
		$finish;
	end
      
endmodule

