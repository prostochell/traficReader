module top (
    input wire clk,
    input wire rst,
    input wire spi_mosi,
    input wire spi_miso,
    input wire spi_sck,
    input wire spi_cs,
    output wire hsync,
    output wire vsync,
    output wire [3:0] red,
    output wire [3:0] green,
    output wire [3:0] blue
);
    wire [7:0] spi_data;
    wire spi_data_valid;
    wire [7:0] fifo_data;
    wire fifo_empty;
    wire fifo_full;
    wire fifo_rd_en;

    spi_receiver spi_inst (
        .clk(clk),
        .rst(rst),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        .spi_sck(spi_sck),
        .spi_cs(spi_cs),
        .data_out(spi_data),
        .data_valid(spi_data_valid)
    );

    fifo_memory #(1024) fifo_memory_inst (
        .clk(clk),
        .rst(rst),
        .wr_en(spi_data_valid),
        .wr_data(spi_data),
        .rd_en(fifo_rd_en),
        .rd_data(fifo_data),
        .fifo_empty(fifo_empty),
        .fifo_full(fifo_full)
    );

    vga_display vga_display_inst (
        .clk(clk),
        .rst(rst),
        .hsync(hsync),
        .vsync(vsync),
        .red(red),
        .green(green),
        .blue(blue),
        .char_data(fifo_data),
        .data_valid(!fifo_empty)
    );

    assign fifo_rd_en = !fifo_empty;
endmodule
