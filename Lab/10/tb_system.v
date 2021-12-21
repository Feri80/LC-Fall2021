/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: System Testbench
---  Description: Lab 10 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module tb_system;

	reg rst;
	reg rqst;
	reg clk;
	reg confirm;
	reg [3:0] din;
	wire en_left;
	wire en_right;
	wire [3:0] fsmdout;
	wire [3:0] dout_left;
	wire [3:0] dout_right;
	wire [2:0] state;

	system uut (
		.rst(rst), 
		.rqst(rqst), 
		.clk(clk), 
		.confirm(confirm), 
		.din(din),
		.en_left(en_left),
		.en_right(en_right),
		.fsmdout(fsmdout),
		.dout_left(dout_left), 
		.dout_right(dout_right),
		.state(state)
	);

	initial 
		begin
	
		clk = 1'b0;
	
		rst = 1'b1; #20
		rst = 1'b0; 
		
		rqst = 1'b0; din = 4'b0000; confirm = 1'b0; #20;
		rqst = 1'b1; din = 4'b0000; confirm = 1'b0; #20;
		rqst = 1'b1; din = 4'b1111; confirm = 1'b0; #20;
		rqst = 1'b1; din = 4'b1111; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b0101; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b1001; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b1101; confirm = 1'b1; #20; 
		rqst = 1'b0; din = 4'b0000; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b0000; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b1110; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b1010; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20;
		rqst = 1'b1; din = 4'b0110; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b1101; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b1011; confirm = 1'b1; #20;
		rqst = 1'b0; din = 4'b0000; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b0000; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b1110; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b1111; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b0011; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b0110; confirm = 1'b1; #20; 
		rqst = 1'b1; din = 4'b1101; confirm = 1'b0; #20; 
		rqst = 1'b1; din = 4'b1110; confirm = 1'b1; #50; 
		rqst = 1'b0; din = 4'b0101; confirm = 1'b1; #20;
		
		
		$finish;

		end
	
	always 
			#10 clk = ~clk;
      
endmodule










