// CS-215 Lab 02 Task 4: SR Flip-Flop Testbench
`timescale 1ns/1ps

module tb;
  reg clk;
  reg rst;
  reg s;
  reg r;
  wire q;
  wire q_bar;

  // Instantiate Design Under Test
  dut uut (
    .clk(clk),
    .rst(rst),
    .s(s),
    .r(r),
    .q(q),
    .q_bar(q_bar)
  );

  // Clock generation: 10ns period (50MHz)
  always begin
    #5 clk = ~clk;
  end

  // Waveform dump configuration
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, uut);
    end
  end

  initial begin
    $display("Starting SR Flip-Flop testbench...");
    
    // Initialize clock and reset
    clk = 0;
    rst = 1;
    s = 0;
    r = 0;
    
    // Release reset
    #10 rst = 0;

    // TODO: Write your test cases here to verify your design
    // Hint: Apply stimulus signals (s, r) and observe outputs (q, q_bar) on clock edges
    
    $finish;
  end

endmodule
