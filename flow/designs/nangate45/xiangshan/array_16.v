module array_16 (
	RW0_addr,
	RW0_en,
	RW0_clk,
	RW0_wmode,
	RW0_wdata,
	RW0_rdata,
	RW0_wmask
);
	input [9:0] RW0_addr;
	input RW0_en;
	input RW0_clk;
	input RW0_wmode;
	input [7775:0] RW0_wdata;
	output wire [7775:0] RW0_rdata;
	input [15:0] RW0_wmask;
    wire [7775:0] expanded_wmask;

    // 扩展 RW0_wmask 到 7776 位
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : wmask_expansion
            assign expanded_wmask[i*486 +: 486] = {486{RW0_wmask[i]}};
        end
    endgenerate

    sram_7776x1024_1rw array_16_ext(
        .addr_in(RW0_addr),
        .ce_in(RW0_en),
        .clk(RW0_clk),
        .we_in(RW0_wmode),
        .wd_in(RW0_wdata),
        .rd_out(RW0_rdata),
        .w_mask_in(expanded_wmask)
    );
endmodule
