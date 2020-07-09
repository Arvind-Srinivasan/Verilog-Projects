`timescale 10ns / 10ps

module binary_counter_tb();

reg clock;
wire [7:0] leds;

initial begin
  $dumpfile("binary_counter_tb.vcd");
  $dumpvars(0, leds);
  clock = 0;
  #10000000 $finish;
end

always @(posedge clock) begin
  $display("%g,%b", $time, leds);
end

always begin
  #1 clock = ~clock;
end

binary_counter binary_counter_inst(
  .clk(clock),
  .led(leds)
);

endmodule
