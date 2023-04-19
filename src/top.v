`timescale 1ns / 1ps

module top(
    input PS2_dat,
    input PS2_clk,
    input clk100mhz,
    input reset,
    output [7:0] anodes,
    output [7:0] cathodes
);

wire clk100khz;
wire enter_emul;

wire [31:0] numb; 
wire [3:0] ps2_out;
reg [31:0] numb_reg;
wire R_O;

wire [7:0] mask;
reg [7:0] mask_reg;

wire [1:0] flags;

initial begin
    numb_reg <= 0;
    mask_reg <= 0;
end

always@(posedge clk100mhz) begin
    if (flags[1]) begin
        numb_reg <= numb;
        mask_reg <= mask;
    end
    else begin
        numb_reg <= numb_reg;
        mask_reg <= mask;
    end
end

assign enter_emul = R_O && flags[0];

clk_divider #(
    .DIV(1000) // change to 1000
)
clk_divider_100khz(
    
    .divided_clk (clk100khz),

    .clk         (clk100mhz),
    .rst         (1'b0     )
);

segment_controller display(

    .NUMB     (numb_reg ),
    .MASK     (mask_reg ),
    .anodes   (anodes   ),
    .cathodes (cathodes ),

    .clk      (clk100khz)
);

shift_reg shift_register(
    
    .enter    (enter_emul),
    .switches (ps2_out   ),
    .MASK     (mask      ),
    .NUMB     (numb      ),

    .clk      (clk100mhz ),
    .reset    (reset     )
);

PS2_Manager ps2(
    
    .PS2_dat (PS2_dat  ),
    .PS2_clk (PS2_clk  ),
    .R_O     (R_O      ),
    .out     (ps2_out  ),
    .flags   (flags    ),

    .clk     (clk100mhz)
);

endmodule
