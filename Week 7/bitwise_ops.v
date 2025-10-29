module bitwise_ops;
  logic [7:0] a = 8'b1010_1101;  // 0xAD
  logic [7:0] b = 8'b1101_1010;  // 0xDA
  logic [7:0] result;
  
  initial begin
    $display("a = %b (0x%h)", a, a);
    $display("b = %b (0x%h)", b, b);
    $display("----------------------------");
    
    // Bitwise AND
    result = a & b;
    $display("AND:  a & b  = %b", result);
    
    // Bitwise OR  
    result = a | b;
    $display("OR:   a | b  = %b", result);
    
    // Bitwise XOR
    result = a ^ b;
    $display("XOR:  a ^ b  = %b", result);
    
    // Bitwise NOT
    result = ~a;
    $display("NOT:  ~a     = %b", result);
    
    // Logical left shift
    result = a << 2;
    $display("LSL:  a << 2 = %b", result);
    
    // Arithmetic left shift
    result = $signed(a) <<< 2;
    $display("ASL:  a <<< 2 = %b", result);
    
    // Logical right shift
    result = a >> 2;
    $display("LSR:  a >> 2 = %b", result);
    
    // Arithmetic right shift
    result = $signed(a) >>> 2;
    $display("ASR:  a >>> 2 = %b", result);
    
    // Rotate left
    result = {a[5:0], a[7:6]};
    $display("ROL:  {a[5:0], a[7:6]} = %b", result);
    
    // Rotate right
    result = {a[1:0], a[7:2]};
    $display("ROR:  {a[1:0], a[7:2]} = %b", result);
  end
endmodule
