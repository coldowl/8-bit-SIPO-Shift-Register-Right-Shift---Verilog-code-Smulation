module shift_register (DS, SHCP, MR_bar, STCP, OE_bar, out);
	input DS, SHCP, STCP, MR_bar, OE_bar;
	output [7:0] out;
	
	wire [7:0] u_out;
	wire [7:0] latch_out;
	
	
	d_flipflop U1(.clk(SHCP), .D(DS), .Q(u_out[7]), .reset(~MR_bar));
	d_flipflop U2(.clk(SHCP), .D(u_out[7]), .Q(u_out[6]), .reset(~MR_bar));
	d_flipflop U3(.clk(SHCP), .D(u_out[6]), .Q(u_out[5]), .reset(~MR_bar));
	d_flipflop U4(.clk(SHCP), .D(u_out[5]), .Q(u_out[4]), .reset(~MR_bar));
	d_flipflop U5(.clk(SHCP), .D(u_out[4]), .Q(u_out[3]), .reset(~MR_bar));
	d_flipflop U6(.clk(SHCP), .D(u_out[3]), .Q(u_out[2]), .reset(~MR_bar));
	d_flipflop U7(.clk(SHCP), .D(u_out[2]), .Q(u_out[1]), .reset(~MR_bar));
	d_flipflop U8(.clk(SHCP), .D(u_out[1]), .Q(u_out[0]), .reset(~MR_bar));
	
	d_flipflop U9(.clk(STCP), .D(u_out[7]), .Q(latch_out[7]), .reset());
	d_flipflop U10(.clk(STCP), .D(u_out[6]), .Q(latch_out[6]), .reset());
	d_flipflop U11(.clk(STCP), .D(u_out[5]), .Q(latch_out[5]), .reset());
	d_flipflop U12(.clk(STCP), .D(u_out[4]), .Q(latch_out[4]), .reset());
	d_flipflop U13(.clk(STCP), .D(u_out[3]), .Q(latch_out[3]), .reset());
	d_flipflop U14(.clk(STCP), .D(u_out[2]), .Q(latch_out[2]), .reset());
	d_flipflop U15(.clk(STCP), .D(u_out[1]), .Q(latch_out[1]), .reset());
	d_flipflop U16(.clk(STCP), .D(u_out[0]), .Q(latch_out[0]), .reset());
	
	and(out[7], ~OE_bar, latch_out[7]);
	and(out[6], ~OE_bar, latch_out[6]);
	and(out[5], ~OE_bar, latch_out[5]);
	and(out[4], ~OE_bar, latch_out[4]);
	and(out[3], ~OE_bar, latch_out[3]);
	and(out[2], ~OE_bar, latch_out[2]);
	and(out[1], ~OE_bar, latch_out[1]);
	and(out[0], ~OE_bar, latch_out[0]);
	
endmodule