`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 20:10:02
// Design Name: 
// Module Name: CLA_32bit_tb
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


module CLA_32bit_tb();
logic[31:0]a,b,sum;
logic cin,carry;

CLA_32bit dut(a,b,cin,sum,carry);

initial begin
a=32'b11010101011100110010001101011010;
b=32'b00111001101001001011111000000101;
cin=0;
#100;
$stop;
end
endmodule
