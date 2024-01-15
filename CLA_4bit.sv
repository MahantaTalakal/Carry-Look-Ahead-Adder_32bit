`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 18:53:34
// Design Name: 
// Module Name: CLA_4bit
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


module CLA_4bit(
  input logic[3:0] a, b,
  input logic cin,
  output logic[3:0] sum,
  output logic carry
);

  logic[3:0] p, g;
  logic[2:0] c;

  always_comb
    begin
      p[0] = a[0] ^ b[0];
      p[1] = a[1] ^ b[1];
      p[2] = a[2] ^ b[2];
      p[3] = a[3] ^ b[3];
    end

  always_comb
    begin
      g[0] = a[0] & b[0];
      g[1] = a[1] & b[1];
      g[2] = a[2] & b[2];
      g[3] = a[3] & b[3];
    end

  always_comb
    begin
      c[0] = g[0] | (p[0] & cin);
      c[1] = g[1] | (p[1] & c[0]);
      c[2] = g[2] | (p[2] & c[1]);
      carry = g[3] | (p[3] & c[2]);
    end

  always_comb  
    begin
      sum[0] = cin ^ p[0];
      sum[1] = c[0] ^ p[1];
      sum[2] = c[1] ^ p[2];
      sum[3] = c[2] ^ p[3];
    end

endmodule
