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
---  Module Name: FSM
---  Description: Lab 10 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fsm (
	input            rst ,
	input 		     rqst,
	input            clk ,
	input            confirm ,
	input  [3:0]     pass_data ,
	output reg       en_left ,
	output reg       en_right ,
	output reg [3:0] dout,
	output reg [2:0] state
);

	always @(posedge clk or posedge rst)
	begin
		if(rst == 1)
			begin
				en_left = 0;
				en_right = 0;
				dout = 4'b0000;
				state = 3'b000;
			end
		else
			case(state)
				3'b000:  //Inactive
					if(rqst == 1)
						begin
							state = 3'b001;
							en_left = 0;
							en_right = 0;	
						end
						
				3'b001:  // Active
					if(rqst == 0)
						begin
							state = 3'b000;
							en_left = 0;
							en_right = 0;
						end
					else if(confirm == 1)
						begin
							if(pass_data == 4'b1111)
								state = 3'b101;
							else
								state = 3'b111;
						end
						
				3'b101:  // Request
					begin
						if(rqst == 0)
							state = 3'b000;
						else if(confirm == 1)
							state = 3'b110;
					end
					
				3'b111:  // Trap
					if(rqst == 0)
						state = 3'b000;
						
				3'b110:	// Save
					if(rqst == 0)
						state = 3'b000;
					else
						begin
							dout = pass_data;
							en_left = pass_data[0]; //Odd
							en_right = ~pass_data[0]; //Even
						end
			endcase
	end
endmodule


















