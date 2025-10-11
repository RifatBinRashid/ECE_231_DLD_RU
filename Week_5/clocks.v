`timescale 1ns/1ns
module clocks;
  logic a = 0, b = 0, c = 0;

  initial begin
    // dump waveforms
    $dumpfile("clocks.vcd");   // create a file named clocks.vcd
    $dumpvars(0, clocks);      // record all signals in module 'clocks'
  end

  always begin
    #1 a = ~a;
  end

  always begin
    #2 b = ~b;
    #1 b = ~b;
  end

  always begin
    #5 c = ~c;
  end
endmodule

