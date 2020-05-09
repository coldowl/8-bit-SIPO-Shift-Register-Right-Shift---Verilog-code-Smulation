module d_flipflop (clk, D, Q, reset);
	input clk, D, reset;
	output reg Q;
	
	always @(posedge reset) // to reset the signal if MR_bar goes LOW.
		Q <= 1'b0;
	
	always @(posedge clk)
		Q <= D;
endmodule
