module array_0_6 (
	RW0_addr,
	RW0_en,
	RW0_clk,
	RW0_wmode,
	RW0_wdata,
	RW0_rdata
);
	input [13:0] RW0_addr;
	input RW0_en;
	input RW0_clk;
	input RW0_wmode;
	input [31:0] RW0_wdata;
	output wire [31:0] RW0_rdata;
	sram_32x16384_1rw array_0_6_ext(
		.addr_in(RW0_addr),
		.ce_in(RW0_en),
		.clk(RW0_clk),
		.we_in(RW0_wmode),
		.wd_in(RW0_wdata),
		.rd_out(RW0_rdata),
		.w_mask_in({32{RW0_wmode}})
	);

endmodule
