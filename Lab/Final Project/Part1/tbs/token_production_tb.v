`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:12:07 01/02/2022
// Design Name:   token_production
// Module Name:   C:/Users/farhad/Desktop/Final/final/token_production_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: token_production
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module token_production_tb;

	// Inputs
	reg [2:0] park_number;
	reg [2:0] pattern;

	// Outputs
	wire [2:0] token;

	// Instantiate the Unit Under Test (UUT)
	token_production uut (
		.park_number(park_number), 
		.pattern(pattern), 
		.token(token)
	);

	initial begin
		park_number = 3'b101;
		pattern = 3'b101;
		#100;
      park_number = 3'b111;
		pattern = 3'b000;
		#100;
		park_number = 3'b100;
		pattern = 3'b110;
		#100;
		$finish;

	end
      
endmodule

