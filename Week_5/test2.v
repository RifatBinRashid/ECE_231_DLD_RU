`timescale 1ns/1ns
module my_tb;
  logic [3:0] a = 4'b1001;
  logic [3:0] b;

  initial begin
    logic [3:0] result = a & b;   // a AND b
    $display("%b", result);

    result = a | b;               // a OR b
    $display("%b", result);

    result = a ^ b;               // a XOR b
    $display("%b", result);

    b = { ~a[3:2], a[1:0] };      // b = 01_01 when a=1001
    result = ~(a & b);            // a NAND b
    $display("%b", result);
  end
endmodule

