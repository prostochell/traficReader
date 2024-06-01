module vga_sync (
    input wire clk,
    output wire hsync,
    output wire vsync,
    output wire video_on,
    output wire [9:0] x,
    output wire [9:0] y
);

    // VGA 640x480 sync parameters
    localparam H_DISPLAY = 640;
    localparam H_FRONT_PORCH = 16;
    localparam H_SYNC_PULSE = 96;
    localparam H_BACK_PORCH = 48;
    localparam H_TOTAL = H_DISPLAY + H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH;

    localparam V_DISPLAY = 480;
    localparam V_FRONT_PORCH = 10;
    localparam V_SYNC_PULSE = 2;
    localparam V_BACK_PORCH = 33;
    localparam V_TOTAL = V_DISPLAY + V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH;

    reg [9:0] h_count = 0;
    reg [9:0] v_count = 0;

    always @(posedge clk) begin
        if (h_count < H_TOTAL - 1)
            h_count <= h_count + 1'b1;
        else begin
            h_count <= 10'b0;
            if (v_count < V_TOTAL - 1)
                v_count <= v_count + 1'b1;
            else
                v_count <= 10'b0;
        end
    end

    assign hsync = (h_count >= H_DISPLAY + H_FRONT_PORCH) && (h_count < H_DISPLAY + H_FRONT_PORCH + H_SYNC_PULSE);
    assign vsync = (v_count >= V_DISPLAY + V_FRONT_PORCH) && (v_count < V_DISPLAY + V_FRONT_PORCH + V_SYNC_PULSE);
    assign video_on = (h_count < H_DISPLAY) && (v_count < V_DISPLAY);
    assign x = h_count;
    assign y = v_count;

endmodule
