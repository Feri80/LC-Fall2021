`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:16:45 11/09/2021
// Design Name:   decoder4x16
// Module Name:   C:/Users/ASUS/Desktop/LC-Lab/lab5/lab5-2/lab5-2/decoder4x16Test.v
// Project Name:  lab5-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder4x16Test;

	// Inputs
	reg [3:0] in;
	reg en;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.in(in), 
		.en(en), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

