`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:28:01 01/03/2022
// Design Name:   parking_capacity_counter
// Module Name:   C:/Users/farhad/Desktop/Final/final/parking_capacity_counter_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parking_capacity_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parking_capacity_counter_tb;

	// Inputs
	reg [7:0] new_capacity;

	// Outputs
	wire [3:0] parked;
	wire [3:0] empty;

	// Instantiate the Unit Under Test (UUT)
	parking_capacity_counter uut (
		.new_capacity(new_capacity), 
		.parked(parked), 
		.empty(empty)
	);

	initial begin
		
		new_capacity = 8'b00000000;
		#100;
		new_capacity = 8'b00100000;
		#100;
		new_capacity = 8'b10010000;
		#100;
		new_capacity = 8'b00010110;
		#100;
		new_capacity = 8'b11100010;
		#100;
		new_capacity = 8'b10101011;
		#100;
		new_capacity = 8'b11111100;
		#100;
		new_capacity = 8'b11101111;
		#100;
		new_capacity = 8'b11111111;
		#100;
		$finish;
        

	end
      
endmodule

