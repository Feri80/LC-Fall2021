/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: controller
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module controller(
input [2:0] system_token,
input request,
input [7:0] TimeData,
input reset,
input clock,
input confirm,
input [2:0] user_token,
output [7:0] data_Q,
output [7:0] data_P
);
	reg [2:0] state;
	reg RegP;
	reg RegQ;
	parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
	register register_p(TimeData, clock, reset, RegP, data_P);
	register register_q(TimeData, clock, reset, RegQ, data_Q);
	always @(posedge clock or negedge reset)
	begin
		if(reset == 0)
			begin
				RegP = 0;
				RegQ = 0;
				state = 3'b000;
			end
		else
			case(state)
				A:  //Inactive
					begin	
						if(request == 1)
							begin
								state = B;
								RegP = 0;
								RegQ = 0;	
							end
					end

				B:  // Active
					begin	
						if(request == 0)
							begin
								state = A;
								RegP = 0;
								RegQ = 0;
							end
						else if(confirm == 1)
							begin
								if(system_token == user_token)
									state = C;
								else
									state = E;
							end
					end

				C:  // Request
					begin
						if(request == 0)
							begin
								state = A;
								RegP = 0;
								RegQ = 0;
							end
						else if(confirm == 1)
							state = D;
					end

				D:  // Save
					if(request == 0)
						begin
							state = A;
							RegP = 0;
							RegQ = 0;
						end	
					else
						begin
							if(TimeData[7] & TimeData[6] & TimeData[5] & TimeData[4])
								begin
									RegP = 1;
									RegQ = 0;
								end
							else
								begin
									RegP = 0;
									RegQ = 1;
								end
						end

				E:	// Trap
					if(request == 0)
						begin
							state = A;
							RegP = 0;
							RegQ = 0;
						end	
			endcase	
	end
endmodule