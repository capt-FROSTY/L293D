`timescale 1ns / 1ps

module L293D(
input in1, in2, in3, in4,
input enA, enB,
output reg out1, out2, out3, out4 
    );
bufif1 (out1,in1,enA);
bufif1 (out2,in2,enA);
bufif1 (out3,in3,enB);
bufif1 (out4,in4,enB);
endmodule
