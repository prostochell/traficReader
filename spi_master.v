module spi_master (
    input wire clk,
    input wire start,
    output wire mosi,
    output wire sck,
    output reg ss,
    input wire miso,
    output reg [7:0] data_received,
    output reg done
);

    reg [2:0] bit_count;
    reg [7:0] shift_reg;
    reg [1:0] state;

    localparam IDLE = 2'b00,
               TRANSFER = 2'b01,
               DONE = 2'b10;

    assign sck = clk;
    assign mosi = 1'b0; // Обычно мастер передает какие-то данные, но в данном случае мы только читаем

    always @(posedge clk) begin
        case (state)
            IDLE: begin
                done <= 1'b0;
                ss <= 1'b1;
                if (start) begin
                    state <= TRANSFER;
                    bit_count <= 3'b111;
                    shift_reg <= 8'b0; // Начинаем с нуля
                    ss <= 1'b0;
                end
            end
            
            TRANSFER: begin
                shift_reg[bit_count] <= miso; // Чтение данных от Slave
                if (bit_count == 3'b000) begin
                    state <= DONE;
                end else begin
                    bit_count <= bit_count - 1;
                end
            end
            
            DONE: begin
                data_received <= shift_reg;
                done <= 1'b1;
                ss <= 1'b1;
                state <= IDLE;
            end
        endcase
    end

endmodule
