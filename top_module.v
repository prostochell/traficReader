
module top_module (
    input wire clk,
    input wire miso,
    output wire hsync,
    output wire vsync,
    output wire [2:0] rgb,
    output wire mosi,
    output wire sck,
    output wire ss
);

    reg start = 0;
    wire done;
    wire [7:0] spi_data;
    reg new_data;

    always @(posedge clk) begin
        if (done) begin
            start <= 0;
            new_data <= 1;
        end else begin
            start <= 1;
            new_data <= 0;
        end
    end

    spi_master spi_unit (
        .clk(clk),
        .start(start),
        .mosi(mosi),
        .sck(sck),
        .ss(ss),
        .miso(miso),
        .data_received(spi_data),
        .done(done)
    );

    vga_display display_unit (
        .clk(clk),
        .spi_data(spi_data),
        .new_data(new_data),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb)
    );

endmodule
