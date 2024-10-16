module array_21 (
	RW0_addr,
	RW0_en,
	RW0_clk,
	RW0_wmode,
	RW0_wdata,
	RW0_rdata,
	RW0_wmask
);
	input [11:0] RW0_addr;
	input RW0_en;
	input RW0_clk;
	input RW0_wmode;
	input [255:0] RW0_wdata;
	output wire [255:0] RW0_rdata;
	input [15:0] RW0_wmask;

	wire [255:0] expanded_wmask;
	genvar i;
	generate
	for (i = 0; i < 16; i = i + 1) begin : wmask_expansion
	assign expanded_wmask[i*16 +: 16] = {16{RW0_wmask[i]}};
end
	endgenerate
	sram_256x4096_1rw array_21_ext(
			.addr_in(RW0_addr),
			.ce_in(RW0_en),
			.clk(RW0_clk),
			.we_in(RW0_wmode),
			.wd_in(RW0_wdata),
			.rd_out(RW0_rdata),
			.w_mask_in(expanded_wmask)
			);
endmodule
