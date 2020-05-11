`timescale 10ns/1ns
module shift_register_test;
	reg DS, SHCP, STCP, MR_bar, OE_bar;
	wire [7:0] out;
	
	shift_register S1(.DS(DS), .SHCP(SHCP), .STCP(STCP), .out(out), .MR_bar(MR_bar), .OE_bar(OE_bar));
	
	initial
		begin
			//DS = 1'b0;
			//SHCP = 1'b0;
			STCP = 1'b0;
			MR_bar = 1'b1;
			OE_bar = 1'b1;
			$monitor ($time, " %b %b %b %b %b %b", DS, SHCP, STCP, MR_bar, OE_bar, out);
			$dumpfile ("shift_register_test.vcd");
			$dumpvars (0, shift_register_test);
			#350 $finish;
		end
		
	initial
		begin
			#10 DS = 1'b1;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b0;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b1;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 MR_bar = 1'b0;
			#5 MR_bar = 1'b1;
			#5 DS = 1'b1;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b0;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b0;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b1;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b1;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b0;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b0;
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 DS = 1'b1; //10011001
			#5 SHCP = 1'b1;
			#5 SHCP = 1'b0;
			#5 STCP = 1'b1;
			#5 STCP = 1'b0;
			#5 OE_bar = 1'b0;
			#30 OE_bar = 1'b1;
			#30 OE_bar = 1'b0;
			#5 MR_bar = 1'b0;
			#5 MR_bar = 1'b1;
			#20 OE_bar = 1'b1;
		end
endmodule
			