module HW3(input S, output reg[7:0]SEG0, output reg[7:0]SEG1 ,output reg[7:0]SEG2 ,output reg[7:0]SEG3);


always@(S)begin
   case(S)
        1'b1:begin
         
         SEG0=8'b10001000;
         SEG1=8'b10000010;
         SEG2=8'b10001100;
         SEG3=8'b10001110;

        end
        
        1'b0:begin

          SEG0=8'b11111111;
          SEG1=8'b11111111;
          SEG2=8'b11111111;
          SEG3=8'b11111111;
        end
        endcase
end
endmodule
     
        