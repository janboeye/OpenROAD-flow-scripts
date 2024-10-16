module sram_512x4096_1rw
(
   rd_out,
   addr_in,
   we_in,
   wd_in,
   w_mask_in,
   clk,
   ce_in
);
   parameter BITS = 512;
   parameter WORD_DEPTH = 4096;
   parameter ADDR_WIDTH = 12;
   parameter corrupt_mem_on_X_p = 1;

   output reg [BITS-1:0]    rd_out;
   input  [ADDR_WIDTH-1:0]  addr_in;
   input                    we_in;
   input  [BITS-1:0]        wd_in;
   input  [BITS-1:0]        w_mask_in;
   input                    clk;
   input                    ce_in;

endmodule
