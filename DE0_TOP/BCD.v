module BCD(iA[3:0],iB[3:0],oLED,oCO,oS);
input [3:0]iA;
input [3:0]iB;
output[7:0]oLED;
output[3:0]oCO;
output[3:0]oS;
reg[7:0]oLED;
reg[6:0]T;

always @(iA or iB)begin
	oLED[7:4]=iA;
	oLED[3:0]=iB;
	T=iA+iB;
end

assign oCO=T/10;
assign oS=T%10;
endmodule