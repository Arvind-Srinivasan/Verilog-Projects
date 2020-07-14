`default_nettype none

module binary_counter(
    input clock,
    output reg [7:0] led = 0
    );

    reg[21:0] counter = 0;

    always @(posedge clock) begin
        counter <= counter + 1;
        if(&counter == 1) begin
            led <= led + 1;
        end
    end

endmodule
