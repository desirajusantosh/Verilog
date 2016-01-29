module half_adder_tb;
wire r_a = 1'b0;
wire r_b = 1'b0;
reg w_s;
reg w_c;


half_add half_add_inst (
  .a(r_a),
  .b(r_b),
  .s(w_S),
  .c(w_c)
);

initial
  begin
    r_a = 1'b0;
    r_b = 1'b0;
    #10;
    r_a = 1'b0;
    r_b = 1'b1;
    #10;
    r_a = 1'b1;
    r_b = 1'b0;
    #10
    r_a = 1'b1;
    r_b = 1'b1;
    
  end
endmodule
  
