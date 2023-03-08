module clkdiv1s(iClk50M, oClk1s);
parameter CntValue = 50000000;
input         iClk50M;
output reg oClk1s;
reg [31:0] cnt;
always@(posedge iClk50M) begin
    if( cnt >= ((CntValue/(100*2))-1) ) begin
        oClk1s <= ~ oClk1s;
              cnt <= 0;
    end
    else begin
        oClk1s <= oClk1s;  
              cnt <= cnt +1;
    end
end
endmodule