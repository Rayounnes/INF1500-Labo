// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct  8 21:54:16 2019
// Host        : DESKTOP-8B1C8TT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mini_UAL_full_add_4B_1_0_stub.v
// Design      : mini_UAL_full_add_4B_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "full_add_4B,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S, Zero, a, b, cin, cout)
/* synthesis syn_black_box black_box_pad_pin="S[3:0],Zero,a[3:0],b[3:0],cin,cout" */;
  output [3:0]S;
  output Zero;
  input [3:0]a;
  input [3:0]b;
  input cin;
  output cout;
endmodule
