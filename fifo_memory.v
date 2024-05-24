module fifo_memory (
    input wire clk,
    input wire rst,
    input wire wr_en,
    input wire [7:0] wr_data,
    output reg rd_en,
    output reg [7:0] rd_data,
    output reg fifo_empty,
    output reg fifo_full
);
    parameter FIFO_SIZE = 1024;

    reg [7:0] memory [0:FIFO_SIZE-1];
    reg [9:0] wr_ptr;  
    reg [9:0] rd_ptr;
    reg [9:0] count;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= 10'b0;
            rd_ptr <= 10'b0;
            count <= 10'b0;
        end else begin
            if (wr_en && !fifo_full) begin
                memory[wr_ptr] <= wr_data;
                wr_ptr <= wr_ptr + 1;
                count <= count + 1;
            end
            if (rd_en && !fifo_empty) begin
                rd_data <= memory[rd_ptr];
                rd_ptr <= rd_ptr + 1;
                count <= count - 1;
            end
        end
        fifo_empty <= (count == 10'b0);
        fifo_full <= (count == FIFO_SIZE);
    end
endmodule
