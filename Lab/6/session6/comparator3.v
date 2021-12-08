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
---  Module Name: 3 Bits Comparator Gate Level
---  Description: Lab 06 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	wire a2not, a1not, a0not, b2not, b1not, b0not, c2, c1, c0, ct;
	wire lc, gc;
	wire gt1, gt2, gt3, gt4;
	wire lt1, lt2, lt3, lt4;
	
	not g1(a2not, A[2]);
	not g2(a1not, A[1]);
	not g3(a0not, A[0]);
	not g4(b2not, B[2]);
	not g5(b1not, B[1]);
	not g6(b0not, B[0]);
	
	//***************************
	xnor g7(c2, A[2], B[2]);
	xnor g8(c1, A[1], B[1]);
	xnor g9(c0, A[0], B[0]);
	and g10(ct, c2, c1, c0);
	and g11(lc, ct, l);
	and g12(et, ct, e);
	and g13(gc, ct, g);
	//***************************
	
	//***************************
	and g14(gt1, A[2], b2not);
	and g15(gt2, A[1], b1not, c2);
	and g16(gt3, A[0], b0not, c2, c1);
	or g17(gt4, gt1, gt2, gt3);
	or g18(gt, gt4, gc);
	//***************************
	
	//***************************
	and g19(lt1, a2not, B[2]);
	and g20(lt2, a1not, B[1], c2);
	and g21(lt3, a0not, B[0], c2, c1);
	or g22(lt4, lt1, lt2, lt3);
	or g23(lt, lt4, lc);
	//***************************
	
	

endmodule









