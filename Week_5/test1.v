module my_tb;
  logic [3:0] a = 4'b0101;
  logic [3:0] b;
  initial begin
    logic [3:0] result;

    result = a & b;  // a AND b
    $display("%b", result);

    result = a | b;  // a OR b
    $display("%b", result);

    result = a ^ b;  // a XOR b
    $display("%b", result);

    b = 4'b1100;
    result = ~(a & b); // a NAND b
    $display("%b", result);
  end
endmodule

