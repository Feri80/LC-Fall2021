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
		en <= 1'b0;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 20 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 20 ;
		in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 20 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;

		en <= 1'b1;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 20 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 20 ;
		in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 20 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;

	end
      
endmodule

