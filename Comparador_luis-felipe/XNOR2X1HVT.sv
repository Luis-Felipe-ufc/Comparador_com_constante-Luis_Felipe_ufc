// type:  
`timescale 1ns/10ps
module XNOR2X1HVT (Y, A, B);
	output Y;
	input A, B;

	// Function
	wire int_fwire_0;

	xor (int_fwire_0, A, B);
	not (Y, int_fwire_0);

	// Timing
	specify
		(posedge A => (Y:A)) = 0;
		(negedge A => (Y:A)) = 0;
		(posedge B => (Y:B)) = 0;
		(negedge B => (Y:B)) = 0;
	endspecify
endmodule

