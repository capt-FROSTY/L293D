`timescale 1ns / 1ps

module L293D_TB();
reg in1, in2, in3, in4,enA, enB,clk;
wire out1, out2, out3, out4;

L293D ic0 (in1, in2, in3, in4,enA, enB, clk, out1, out2, out3, out4);
always #20 clk = ~clk;
initial
begin
clk = 1;
#10 in1 = 0; in2=0; in3=0; in4=0;enA=0; enB =0;
#20 in1=1; enA = 1;
#50 in2=1;enB =1;
#70 in4 =0; in1= 0;
#90 in3=1; in2=0; in1=1;
#100 in4=1; 
#200 $finish;
end
endmodule
