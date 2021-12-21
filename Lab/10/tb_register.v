`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:03 12/21/2021
// Design Name:   register
// Module Name:   C:/Users/farhad/Desktop/ISE/session10/tb_register.v
// Project Name:  session10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_register;

	// Inputs
	reg rst;
	reg clk;
	reg en;
	reg [3:0] din;

	// Outputs
	wire [3:0] qout;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.rst(rst), 
		.clk(clk), 
		.en(en), 
		.din(din), 
		.qout(qout)
	);

	initial begin
		rst = 0;
		clk = 0;
		en = 1;

		repeat(20)
			#10 clk = ~clk;
		$finish;
	end
	
	initial begin
		din = 4'b0101;
		#57;
		din = 4'b1000;
		#32
		din = 4'b0001;
	end
      
endmodule

