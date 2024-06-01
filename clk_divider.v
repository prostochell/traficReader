module clk_divider (
    input wire clk_in,
    output reg clk_out
);

    reg toggle = 0;

    always @(posedge clk_in) begin
        toggle <= ~toggle;
        clk_out <= toggle;
    end

endmodule
