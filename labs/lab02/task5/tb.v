module tb;

  reg  [3:0] t_a, t_b;
  reg        t_op;
  wire [3:0] t_result;

  alu U1 (
    .a(t_a),
    .b(t_b),
    .op(t_op),
    .result(t_result)
  );

  initial begin

    // Addition
    t_op = 0;
    t_a = 4'd3;
    t_b = 4'd2;
    #5;
    $display("ADD: %d + %d = %d", t_a, t_b, t_result);

    // Subtraction
    t_op = 1;
    t_a = 4'd7;
    t_b = 4'd3;
    #5;
    $display("SUB: %d - %d = %d", t_a, t_b, t_result);

    // Change only op
    t_op = 0;
    #5;
    $display("ADD again: %d + %d = %d", t_a, t_b, t_result);

    $finish;
  end

endmodule