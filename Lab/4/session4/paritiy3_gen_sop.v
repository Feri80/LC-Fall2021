/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : masoud
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Paritiy Generator Sum of Products
---  Description: Lab 04 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module paritiy3_gen_sop (
	input a,
	input b,
	input c,
	output f	
);
	wire w1, w2, w3, w4, a_bar, b_bar, c_bar;
	
	not n1(a_bar, a);
	not n2(b_bar, b);
	not n3(c_bar, c);
	
	and a1(w1, a_bar, b_bar, c_bar);
	and a2(w2, a_bar, b, c);
	and a3(w3, a, b_bar, c);
	and a4(w4, a, b, c_bar);
	
	or o(f, w1, w2, w3, w4);

endmodule