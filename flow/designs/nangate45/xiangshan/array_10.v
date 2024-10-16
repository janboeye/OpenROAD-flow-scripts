module array_10 (
	RW0_addr,
	RW0_en,
	RW0_clk,
	RW0_wmode,
	RW0_wdata,
	RW0_rdata,
	RW0_wmask
);
	input [4:0] RW0_addr;
	input RW0_en;
	input RW0_clk;
	input RW0_wmode;
	input [2847:0] RW0_wdata;
	output wire [2847:0] RW0_rdata;
	input [7:0] RW0_wmask;

	wire [2847:0] expanded_wmask;
	genvar i;
	generate
	for (i = 0; i < 8; i = i + 1) begin : wmask_expansion
	assign expanded_wmask[i*356 +: 356] = {356{RW0_wmask[i]}};
end
	endgenerate
	sram_2848x32_1rw array_22_ext(
			.addr_in(RW0_addr),
			.ce_in(RW0_en),
			.clk(RW0_clk),
			.we_in(RW0_wmode),
			.wd_in(RW0_wdata),
			.rd_out(RW0_rdata),
			.w_mask_in(expanded_wmask)
			);
endmodule
