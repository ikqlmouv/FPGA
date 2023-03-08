module sn(iCLK,sn1,sn2,sn3,sn4);
input iCLK;
output reg[4:0]sn1;
output reg[4:0]sn2;
output reg[4:0]sn3;
output reg[4:0]sn4;
reg [3:0] Counter;

always@(posedge iCLK) begin

Counter <= Counter +1; // 往上加1

end

always@(Counter) begin
case(Counter)
4'b0000: begin
	sn1=5'b00100;
	sn2=5'b00000;
	sn3=5'b00110;
	sn4=5'b00100;
end
4'b0001: begin
	sn1=5'b00000;
	sn2=5'b00110;
	sn3=5'b00100;
	sn4=5'b00100;
end
4'b0010: begin
	sn1=5'b00110;
	sn2=5'b00100;
	sn3=5'b00100;
	sn4=5'b00000;
end
4'b0011: begin
	sn1=5'b00100;
	sn2=5'b00100;
	sn3=5'b00000;
	sn4=5'b00101;
end
4'b0100: begin
	sn1=5'b00100;
	sn2=5'b00000;
	sn3=5'b00101;
	sn4=5'b01001;
end
4'b0101: begin
	sn1=5'b00000;
	sn2=5'b00101;
	sn3=5'b01001;
	sn4=5'b00011;
end
default:begin
	sn1=5'b00000;
	sn2=5'b00000;
	sn3=5'b00000;
	sn4=5'b00000;
end
endcase
end
endmodule
