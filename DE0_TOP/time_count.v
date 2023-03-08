module time_count(iCLK,sn1,sn2,sn3,sn4);
input iCLK;
output reg[3:0]sn1;
output reg[3:0]sn2;
output reg[3:0]sn3;
output reg[3:0]sn4;
reg[6:0]sec1;
reg[6:0]sec2;
reg [31:0] Counter;

always@(posedge iCLK) begin

Counter <= Counter +1; // 往上加1

sec1<=Counter/100;
sec2<=Counter%100;

sn1<=sec1/10;
sn2<=sec1%10;
sn3<=sec2/10;
sn4<=sec2%10;

end

endmodule