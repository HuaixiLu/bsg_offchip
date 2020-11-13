/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_clk,
__ILA_I_core_data_in,
__ILA_I_core_valid_in,
__ILA_I_io_token,
__ISSUE__,
__VLG_I_token_clk_i,
__data0_init__,
__finish_cnt_holder_init__,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_data_cycle_0,
__ILA_SO_data_cycle_1,
__ILA_SO_finish_cnt,
__ILA_SO_io_data_out_ch0,
__ILA_SO_io_data_out_ch1,
__ILA_SO_io_valid_out,
__ILA_SO_sent_cnt,
__VLG_O_core_ready_o,
__VLG_O_io_clk_r_o,
__m0__,
__m1__,
__m2__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
io_data_r_o,
io_valid_r_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
data0,
finish_cnt_holder,
sent_counter,
finish_counter,
valid_i,
data_i,
io_token,
token_clk_i
);
input            __ILA_I_core_clk;
input     [63:0] __ILA_I_core_data_in;
input            __ILA_I_core_valid_in;
input            __ILA_I_io_token;
input            __ISSUE__;
input      [1:0] __VLG_I_token_clk_i;
input     [31:0] __data0_init__;
input      [6:0] __finish_cnt_holder_init__;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output     [31:0] __ILA_SO_data_cycle_0;
output     [31:0] __ILA_SO_data_cycle_1;
output      [6:0] __ILA_SO_finish_cnt;
output      [7:0] __ILA_SO_io_data_out_ch0;
output      [7:0] __ILA_SO_io_data_out_ch1;
output            __ILA_SO_io_valid_out;
output      [6:0] __ILA_SO_sent_cnt;
output            __VLG_O_core_ready_o;
output      [1:0] __VLG_O_io_clk_r_o;
output            __m0__;
output            __m1__;
output            __m2__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output     [15:0] io_data_r_o;
output      [1:0] io_valid_r_o;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg     [31:0] data0;
output reg      [6:0] finish_cnt_holder;
output reg      [6:0] sent_counter;
output reg      [6:0] finish_counter;
output reg            valid_i;
output reg     [63:0] data_i;
output reg            io_token;
output reg            token_clk_i;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
(* keep *) wire            __ILA_BSG_UPSTREAM_valid__;
(* keep *) wire            __ILA_I_core_clk;
(* keep *) wire     [63:0] __ILA_I_core_data_in;
(* keep *) wire            __ILA_I_core_valid_in;
(* keep *) wire            __ILA_I_io_token;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_0;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_1;
(* keep *) wire      [6:0] __ILA_SO_finish_cnt;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch0;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch1;
(* keep *) wire            __ILA_SO_io_valid_out;
(* keep *) wire      [6:0] __ILA_SO_sent_cnt;
(* keep *) wire            __ISSUE__;
(* keep *) wire      [1:0] __VLG_I_token_clk_i;
(* keep *) wire            __VLG_O_core_ready_o;
(* keep *) wire      [1:0] __VLG_O_io_clk_r_o;
wire     [31:0] __data0_init__;
wire      [6:0] __finish_cnt_holder_init__;
(* keep *) wire            __m0__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire     [15:0] io_data_r_o;
(* keep *) wire      [1:0] io_valid_r_o;
(* keep *) wire     [63:0] random_data;
(* keep *) wire            random_token;
(* keep *) wire            random_valid;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 6) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = ~m1.out_piso.ready_and_o == __ILA_SO_child_valid ;
assign __m1__ = data0 == __ILA_SO_data_cycle_0 ;
assign __m2__ = m1.out_piso.data_o == __ILA_SO_data_cycle_1 ;
assign __m3__ = finish_counter == __ILA_SO_finish_cnt ;
assign __m4__ = finish_cnt_holder == __ILA_SO_finish_cnt ;
assign __m5__ = sent_counter == __ILA_SO_sent_cnt ;
assign __m6__ = finish_counter == __ILA_SO_finish_cnt ;
assign __m7__ = finish_cnt_holder == __ILA_SO_finish_cnt ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign sent_counter = m1.ch_0_sso.pos_credit_ctr.r_counter_r[5:0] + m1.ch_0_sso.neg_credit_ctr.r_counter_r[5:0];
assign finish_counter = {(m1.ch_0_sso.pos_credit_ctr.w_counter_binary_r_rsync[3:0] + m1.ch_0_sso.neg_credit_ctr.w_counter_binary_r_rsync[3:0]),3'b000};

always @(posedge __ILA_I_core_clk) begin
    if(rst) begin valid_i <= 0; data_i <=0; end
    else
       if(valid_i == 0 || (valid_i == 1 && m1.core_ready_o) ) begin 
          valid_i <= random_valid; data_i <= random_data; end
end

always @(posedge __ILA_I_core_clk) begin
   if(rst) begin io_token <= 0; token_clk_i <= 0; end
   else if (random_token) begin
       io_token <= 1;
       token_clk_i <= ~token_clk_i;
   end
   else io_token <= 0;
end


BSG_UPSTREAM__DOT__TOKEN_IN m0 (
   .__START__(__START__),
   .clk(clk),
   .core_clk(__ILA_I_core_clk),
   .core_data_in(__ILA_I_core_data_in),
   .core_valid_in(__ILA_I_core_valid_in),
   .io_token(__ILA_I_io_token),
   .rst(rst),
   .__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__(__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__),
   .__ILA_BSG_UPSTREAM_valid__(__ILA_BSG_UPSTREAM_valid__),
   .io_valid_out(__ILA_SO_io_valid_out),
   .data_cycle_0(__ILA_SO_data_cycle_0),
   .data_cycle_1(__ILA_SO_data_cycle_1),
   .child_valid(__ILA_SO_child_valid),
   .sent_cnt(__ILA_SO_sent_cnt),
   .finish_cnt(__ILA_SO_finish_cnt),
   .io_data_out_ch0(__ILA_SO_io_data_out_ch0),
   .io_data_out_ch1(__ILA_SO_io_data_out_ch1),
   .__COUNTER_start__n7()
);
bsg_link_ddr_upstream m1(
    .async_token_reset_i(rst),
    .core_clk_i(__ILA_I_core_clk),
    .core_data_i(__ILA_I_core_data_in),
    .core_link_reset_i(rst),
    .core_ready_o(__VLG_O_core_ready_o),
    .core_valid_i(__ILA_I_core_valid_in),
    .io_clk_i(clk),
    .io_clk_r_o(__VLG_O_io_clk_r_o),
    .io_data_r_o(io_data_r_o),
    .io_link_reset_i(rst),
    .io_valid_r_o(io_valid_r_o),
    .token_clk_i(__VLG_I_token_clk_i)
);
always @(posedge clk) begin
   if(rst) begin
       data0 <= __data0_init__;
       finish_cnt_holder <= __finish_cnt_holder_init__;
   end
   else if(1) begin
       data0 <= data0;
       finish_cnt_holder <= finish_cnt_holder;
   end
end
endmodule