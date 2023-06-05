`timescale 1ns / 1ps

module L293D(
input in1, in2, in3, in4,
input enA, enB,clk,
output reg out1, out2, out3, out4 
    );
always@(posedge clk)
begin
  if(enA == 1)
    begin
      out1<=in1;
      out2<=in2;
    end 
  else 
    begin
      out1<= 0;
      out2<= 0;
    end
  
  if(enB == 1)
    begin
      out3<=in3;
      out4<=in4;  
    end
  else
    begin
      out3<= 0;
      out4<= 0;
    end
end
endmodule
