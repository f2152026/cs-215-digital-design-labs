// CS-215 Lab 02 Task 1: D Flip-Flop Template
`timescale 1ns/1ps

module dut (
  input  wire clk,
  input  wire rst, // Synchronous active-high reset
  input  wire d,
  output reg  q,
  output wire q_bar
);

  // Assign q_bar as the negation of q
  assign q_bar = ~q;

  // TODO: Implement D Flip-Flop logic with synchronous reset
  // Hint: Use an always block sensitive to the rising edge of clk

endmodule
