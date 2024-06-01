module vga_display (
    input wire clk,
    input wire [7:0] spi_data,
    input wire new_data,
    output wire hsync,
    output wire vsync,
    output wire [2:0] rgb
);

    wire clk_25mhz;
    clk_divider divider(
        .clk_in(clk),
        .clk_out(clk_25mhz)
    );

    wire video_on;
    wire [9:0] x, y;

    vga_sync sync_unit (
        .clk(clk_25mhz),
        .hsync(hsync),
        .vsync(vsync),
        .video_on(video_on),
        .x(x),
        .y(y)
    );

    reg [3:0] row;
    wire [7:0] pixels;

    font_rom font_unit (
        .char({4'b0000, char}),
        .row(row),
        .pixels(pixels)
    );

    reg [7:0] text_buffer [0:79]; // Буфер для одной строки, длина 80 символов
    reg [6:0] write_pointer; // Указатель записи в буфер
    reg [7:0] prev_spi_data; // Предыдущие данные
    reg [3:0] char;

    always @(posedge clk_25mhz) begin
        if (new_data && (spi_data != prev_spi_data)) begin
            text_buffer[write_pointer] <= spi_data;
            write_pointer <= (write_pointer + 1) % 80; // Инкремент указателя
            prev_spi_data <= spi_data; // Обновляем предыдущие данные
        end

        if (video_on) begin
            char <= text_buffer[x[6:3]]; // Получаем символ из буфера
            row <= y[3:0];
        end
    end

    assign rgb = (video_on && pixels[7 - x[2:0]]) ? 3'b111 : 3'b000;

endmodule
