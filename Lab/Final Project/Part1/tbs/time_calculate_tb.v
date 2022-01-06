`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:47 01/02/2022
// Design Name:   time_calculate
// Module Name:   C:/Users/farhad/Desktop/Final/final/time_calculate_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: time_calculate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module time_calculate_tb;

	// Inputs
	reg [7:0] time_out;
	reg [7:0] time_in;

	// Outputs
	wire [7:0] time_total;

	// Instantiate the Unit Under Test (UUT)
	time_calculate uut (
		.time_out(time_out), 
		.time_in(time_in), 
		.time_total(time_total)
	);

	initial begin
		time_out = 8'b11000101;
		time_in = 8'b00110001;
		#100;
      time_out = 8'b00110110;
		time_in = 8'b00110101;
		#100;
		time_out = 8'b11110100;
		time_in = 8'b10010000;
		#100;
		$finish;

	end
      
endmodule

