module vga_display (
    input wire clk,
    input wire rst,
    output wire hsync,
    output wire vsync,
    output wire [3:0] red,
    output wire [3:0] green,
    output wire [3:0] blue,
    input wire [7:0] char_data,
    input wire data_valid
);
    reg [9:0] h_cnt;
    reg [9:0] v_cnt;
    reg [7:0] char;
    reg [3:0] row;
    reg [3:0] col;

    localparam H_SYNC_PULSE = 96;
    localparam H_BACK_PORCH = 48;
    localparam H_ACTIVE = 640;
    localparam H_FRONT_PORCH = 16;
    localparam H_TOTAL = 800;
    localparam V_SYNC_PULSE = 2;
    localparam V_BACK_PORCH = 33;
    localparam V_ACTIVE = 480;
    localparam V_FRONT_PORCH = 10;
    localparam V_TOTAL = 525;

    assign hsync = (h_cnt < H_SYNC_PULSE) ? 0 : 1;
    assign vsync = (v_cnt < V_SYNC_PULSE) ? 0 : 1;
    assign red = (char != 8'h20) ? 4'b1111 : 4'b0000;
    assign green = (char != 8'h20) ? 4'b1111 : 4'b0000;
    assign blue = (char != 8'h20) ? 4'b1111 : 4'b0000;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            h_cnt <= 0;
            v_cnt <= 0;
            row <= 0;
            col <= 0;
            char <= 8'h20;
        end else begin
            if (h_cnt < H_TOTAL - 1)
                h_cnt <= h_cnt + 1;
            else begin
                h_cnt <= 0;
                if (v_cnt < V_TOTAL - 1)
                    v_cnt <= v_cnt + 1;
                else
                    v_cnt <= 0;
            end

            if (data_valid) begin
                if (char_data == 8'h0A) begin
                    col <= 0;
                    row <= row + 1;
                end else begin
                    char <= char_data;
                    col <= col + 1;
                    if (col == 79) begin
                        col <= 0;
                        row <= row + 1;
                    end
                end
            end
        end
    end
endmodule
