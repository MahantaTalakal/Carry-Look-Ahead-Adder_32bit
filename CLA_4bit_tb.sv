`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 19:24:54
// Design Name: 
// Module Name: CLA_4bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CLA_4bit_tb();
logic[3:0]a,b,sum;
logic cin,carry;

CLA_4bit dut(a,b,cin,sum,carry);

initial begin
a=4'b1010;
b=4'b1100;
cin=0;

#10 a=4'b1110;
b=4'b1101;
cin=1;

#10 a=4'b0011;
b=4'b1100;
cin=1;

#100;
$stop;
end

endmodule
