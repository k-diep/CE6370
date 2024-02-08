  module dec_7seg(
	input [3:0] dec,
	output reg [6:0] out);
	
	always @* begin
		case (dec)			
			0: out = 7'b1000000;
			1: out = 7'b1111001;
			2: out = 7'b0100100;
			3: out = 7'b0110000;
			4: out = 7'b0011001;
			5: out = 7'b0010010;
			6: out = 7'b0000011;
			7: out = 7'b1111000;
			8: out = 7'b0000000;
			9: out = 7'b0011000;
			default: out = 7'b1111111;
		endcase
	end
endmodule