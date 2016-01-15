#assigning data_out inside always block:

module ram(output reg [7:0] data_out, input [7:0] address, input [7:0] data_in, input write_enable, input clk);
reg [7:0] memory [0:255]

always @(posedge clk) begin
  if (write_enable) begin
    memory[address] <= data_in;
  end
  data_out <= memory[address];
end

endmodule


#assigning data_out using assign statement:

module ram(output [7:0] data_out, input [7:0] address, input [7:0] data_in, input write_enable, input clk);
reg [7:0] memory [0:255]l;

always@(posedge clk) begin
  if (write_enable) begin
    memory[address] <= data_in;
  end
end

assign data_out <= memory[address]




















  
