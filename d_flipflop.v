module d_flipflop (clk, D, Q, reset);
	input clk, D, reset;
	output reg Q;
	
	always @(posedge reset) // to reset the signal if MR_bar goes LOW.
		Q <= 1'b0;
	
	always @(posedge clk)   // Pushing the value of D to Q at every positive edge of clk
		Q <= D;
endmodule
