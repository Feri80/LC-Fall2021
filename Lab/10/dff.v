`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:09 12/21/2021 
// Design Name: 
// Module Name:    dff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff(
	input d,
	input rst,
	input c,
	output reg q
    );
	always @(posedge c or posedge rst)
		begin
			if(rst == 1)
				q = 0;
			else 
				q = d;
		end

endmodule
