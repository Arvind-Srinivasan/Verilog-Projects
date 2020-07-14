`timescale 10ns / 10ps
`default_nettype none

module decimal_counter_tb();

reg clock;
wire [23:0] io_leds;

initial begin
  $dumpfile("decimal_counter_tb.vcd");
  $dumpvars(0, io_leds);
  clock = 0;
  #20000000 $finish;
end

always @(posedge clock) begin
  $display("%g,%b", $time, io_leds);
end

always begin
  #1 clock = ~clock;
end

decimal_counter decimal_counter_inst(
  .clock(clock),
  .io_led(io_leds)
);

endmodule
