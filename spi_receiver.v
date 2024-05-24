module spi_receiver (
    input wire clk,
    input wire rst,
    input wire spi_mosi,
    input wire spi_miso,
    input wire spi_sck,
    input wire spi_cs,
    output reg [7:0] data_out,
    output reg data_valid
);
    reg [2:0] bit_cnt;
    reg [7:0] shift_reg;
    reg [1:0] state;

    localparam IDLE = 2'b00, RECEIVE = 2'b01, DONE = 2'b10;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            bit_cnt <= 3'b0;
            shift_reg <= 8'b0;
            state <= IDLE;
            data_valid <= 0;
        end else begin
            case (state)
                IDLE: begin
                    data_valid <= 0;
                    if (!spi_cs) state <= RECEIVE;
                end
                RECEIVE: begin
                    if (spi_sck) begin
                        shift_reg <= {shift_reg[6:0], spi_miso};
                        bit_cnt <= bit_cnt + 1;
                        if (bit_cnt == 3'b111) begin
                            data_out <= {shift_reg[6:0], spi_miso};
                            state <= DONE;
                        end
                    end
                end
                DONE: begin
                    data_valid <= 1;
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule
