`timescale 2ns/20ps
module ALU_8bit_tb;
  // inputs/regs
  reg  [7:0] a;
  reg  [7:0] b;
  reg        clk = 0;

  // results declared at module scope (NOT inside initial)
  reg  [7:0] c, d, e, f, g, h;

  initial begin
    a = 8'd15;               // 0000_1111
    b = 8'd23;               // 0001_0111

    c = a & b;               // 0000_0111
    d = a | b;               // 0001_1111
    e = a ^ b;               // 0001_1000
    f = a << 2;              // 0011_1100
    g = b >> 1;              // 0000_1011
    h = {a[0], a[7:1]};      // 1000_0111

    // (optional) print to verify
    $display("c=%b d=%b e=%b f=%b g=%b h=%b", c, d, e, f, g, h);

    #500;                    // 500 * 2ns = 1000ns = 1us
    $finish;
  end

  // 4ns clock (toggle every 2ns => #1 with 2ns timeunit)
  always begin
    #1; clk = ~clk;
  end
endmodule

