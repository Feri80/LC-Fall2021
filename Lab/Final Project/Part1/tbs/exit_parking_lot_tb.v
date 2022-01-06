`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:40 12/31/2021
// Design Name:   exit_parking_lot
// Module Name:   C:/Users/farhad/Desktop/Final/final/exit_parking_lot_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: exit_parking_lot
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exit_parking_lot_tb;

	// Inputs
	reg [2:0] park_number;

	// Outputs
	wire [7:0] park_location;

	// Instantiate the Unit Under Test (UUT)
	exit_parking_lot uut (
		.park_number(park_number), 
		.park_location(park_location)
	);

	initial begin
		park_number = 0;
		#100;
        
		park_number = 3'b001;
		#100;
		
		park_number = 3'b010;
		#100;
		
		park_number = 3'b011;
		#100;
		
		park_number = 3'b100;
		#100;
		
		park_number = 3'b101;
		#100;
		
		park_number = 3'b110;
		#100;
		
		park_number = 3'b111;
		#100;
		
		park_number = 3'b011;
		#100;
		
		$finish;

	end
      
endmodule

