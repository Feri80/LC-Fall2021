`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:49:03 01/01/2022
// Design Name:   exit_park
// Module Name:   C:/Users/farhad/Desktop/Final/final/exit_park_tv.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: exit_park
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exit_park_tv;

	// Inputs
	reg exit;
	reg [2:0] token;
	reg [2:0] pattern;

	// Outputs
	wire [7:0] park_location;

	// Instantiate the Unit Under Test (UUT)
	exit_park uut (
		.exit(exit), 
		.token(token), 
		.pattern(pattern), 
		.park_location(park_location)
	);

	initial begin
		exit = 0;
		token = 3'b101;
		pattern = 3'b111;

		#100;
       
		exit = 1;
		
		#100;
		
		token = 3'b110;
		pattern = 3'b011;
		
		#100;
		
		token = 3'b100;
		pattern = 3'b010;
		
		#100;
		
		exit = 0;
		
		#100;
		$finish;

	end
      
endmodule

