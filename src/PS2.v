module PS2(
    input clk,
    input PS2_clk,
    input PS2_dat,
    output [7:0] out,
    output reg R_O,
    output reg ERROR
);
parameter WAIT_START_BIT = 0,
          IDLE = 1,
          WRITE = 2,
          PARITY_BIT = 3,
          STOP_BIT = 4;

reg [2:0] state_reg;
reg [3:0] cnt_reg;
reg [7:0] PS2_buf_reg;
reg [1:0] PS2_clk_sync_reg, PS2_dat_sync_reg;
assign out = PS2_buf_reg;
initial begin
    cnt_reg = 0;
    R_O = 0;
    ERROR = 0;
    state_reg = WAIT_START_BIT;
    PS2_buf_reg = 0;
    PS2_clk_sync_reg = 2'b11;
    PS2_dat_sync_reg = 2'b11;
end
always@(posedge clk) begin
    PS2_clk_sync_reg <= {PS2_clk_sync_reg[0], PS2_clk};
    PS2_dat_sync_reg <= {PS2_dat_sync_reg[0], PS2_dat};
end
always@(negedge PS2_clk_sync_reg[1]) begin
    case(state_reg)
    WAIT_START_BIT:
    begin
        R_O <= 0;
        ERROR <= 0;
        state_reg <= ~PS2_dat ? WRITE : IDLE;
    end
    IDLE:
        if (cnt_reg == 4'd10) begin
            ERROR <= 1;
            R_O <= 1;
            state_reg <= WAIT_START_BIT;
        end
    WRITE: 
    begin
    if (cnt_reg == 4'd8)
        state_reg <= PARITY_BIT;
    PS2_buf_reg <= {PS2_dat_sync_reg[1], PS2_buf_reg[7:1]};
    end
    PARITY_BIT: 
    begin
        if ((~^PS2_buf_reg) == PS2_dat_sync_reg[1])
            state_reg <= STOP_BIT;
        else
            state_reg <= IDLE;
    end
    STOP_BIT: 
    begin
        if (!PS2_dat)
            ERROR <= 1;
        R_O <= 1;
        state_reg <= WAIT_START_BIT;
    end
    endcase
end

always@(negedge PS2_clk_sync_reg[1]) begin
    cnt_reg <= cnt_reg + 1;
    if (cnt_reg == 4'd10)
        cnt_reg <= 0;
end
endmodule
