module array_0_4 (
	RW0_addr,
	RW0_en,
	RW0_clk,
	RW0_wmode,
	RW0_wdata,
	RW0_rdata
);
	input [11:0] RW0_addr;
	input RW0_en;
	input RW0_clk;
	input RW0_wmode;
	input [511:0] RW0_wdata;
	output wire [511:0] RW0_rdata;
	sram_512x4096_1rw array_0_4_ext(
		.addr_in(RW0_addr),
		.ce_in(RW0_en),
		.clk(RW0_clk),
		.wd_in(RW0_wdata),
		.rd_out(RW0_rdata),
		.we_in(RW0_wmode),
		.w_mask_in({512{RW0_wmode}})
	);
endmodule
