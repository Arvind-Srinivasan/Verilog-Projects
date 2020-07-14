`default_nettype none

module decimal_counter(
    input clock,
    output reg [23:0] io_led = 0
    );

    reg[22:0] counter = 0;

    always @(posedge clock) begin
        counter <= counter + 1;
        if(&counter == 1) begin
            if(&io_led == 1) begin
                io_led <= 0;
            end
            else begin
                io_led <= io_led * 2 + 1;
            end
        end
    end

endmodule
