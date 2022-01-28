`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:31 12/31/2021
// Design Name:   decrypt
// Module Name:   C:/Users/farhad/Desktop/Final/final/decrypt_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decrypt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decrypt_tb;

	// Inputs
	reg exit;
	reg [2:0] token;
	reg [2:0] pattern;

	// Outputs
	wire [2:0] park_number;

	// Instantiate the Unit Under Test (UUT)
	decrypt uut (
		.exit(exit), 
		.token(token), 
		.pattern(pattern), 
		.park_number(park_number)
	);

	initial begin
		// Initialize Inputs
		exit = 0;
		token = 3'b110;
		pattern = 3'b011;

		// Wait 100 ns for global reset to finish
		#100;
		
		exit = 1;
		
		#100;
		
		pattern = 3'b011;
		token = 3'b111;
		
		#100;
		
		exit = 0;
		
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

