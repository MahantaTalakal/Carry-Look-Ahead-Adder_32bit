`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 19:47:14
// Design Name: 
// Module Name: CLA_32bit
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


module CLA_32bit(
  input logic[31:0] a, b,
  input logic cin,
  output logic[31:0] sum,
  output logic carry
    );
    logic[6:0]c;
    
    CLA_4bit C1(a[3:0],b[3:0],cin,sum[3:0],c[0]);
    CLA_4bit C2(a[7:4],b[7:4],c[0],sum[7:4],c[1]);
    CLA_4bit C3(a[11:8],b[11:8],c[1],sum[11:8],c[2]);
    CLA_4bit C4(a[15:12],b[15:12],c[2],sum[15:12],c[3]);
    CLA_4bit C5(a[19:16],b[19:16],c[3],sum[19:16],c[4]);
    CLA_4bit C6(a[23:20],b[23:20],c[4],sum[23:20],c[5]);
    CLA_4bit C7(a[27:24],b[27:24],c[5],sum[27:24],c[6]);
    CLA_4bit C8(a[31:28],b[31:28],c[6],sum[31:28],carry);
endmodule
