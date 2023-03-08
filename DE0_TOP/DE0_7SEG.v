module DE0_7SEG(iHex_dight,oHEX);
input [3:0]iHex_dight;
output [6:0]oHEX;
reg [6:0]segment_data;
always@(iHex_dight)
case(iHex_dight)
	4'b0000:segment_data=7'b0111111;
	4'b0001:segment_data=7'b0000110;
	4'b0010:segment_data=7'b1011011;
	4'b0011:segment_data=7'b1001111;
	4'b0100:segment_data=7'b1100110;
	4'b0101:segment_data=7'b1101101;
	4'b0110:segment_data=7'b1111101;
	4'b0111:segment_data=7'b0000111;
	4'b1000:segment_data=7'b1111111;
	4'b1001:segment_data=7'b1101111;
	4'b1010:segment_data=7'b1110111;
	4'b1011:segment_data=7'b1111100;
	4'b1100:segment_data=7'b0111001;
	4'b1101:segment_data=7'b1011110;
	4'b1110:segment_data=7'b1111001;
	4'b1111:segment_data=7'b1110001;
	default:segment_data=7'b0111110;
	endcase
	assign oHEX=~segment_data;
	endmodule