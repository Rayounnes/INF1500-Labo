// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct  8 15:58:40 2019
// Host        : DESKTOP-8B1C8TT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mini_UAL_DIV_4_5B_0_0_sim_netlist.v
// Design      : mini_UAL_DIV_4_5B_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "DIV_4_5B.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B
   (A,
    S);
  input [4:0]A;
  output [4:0]S;

  wire [4:0]A;
  wire ATAD_SPLIT_5_0_VOUT0;
  wire ATAD_SPLIT_5_0_VOUT2;
  wire ATAD_SPLIT_5_0_VOUT3;
  wire ATAD_SPLIT_5_0_VOUT4;
  wire [4:0]S;
  wire xup_xor2_0_y;
  wire NLW_ATAD_SPLIT_5_0_VOUT1_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "DIV_4_5B_ATAD_SPLIT_5_0_0,ATAD_SPLIT_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "package_project" *) 
  (* x_core_info = "ATAD_SPLIT_5,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_ATAD_SPLIT_5_0_0 ATAD_SPLIT_5_0
       (.VIN(A),
        .VOUT0(ATAD_SPLIT_5_0_VOUT0),
        .VOUT1(NLW_ATAD_SPLIT_5_0_VOUT1_UNCONNECTED),
        .VOUT2(ATAD_SPLIT_5_0_VOUT2),
        .VOUT3(ATAD_SPLIT_5_0_VOUT3),
        .VOUT4(ATAD_SPLIT_5_0_VOUT4));
  (* CHECK_LICENSE_TYPE = "DIV_4_5B_xlconcat_0_0,xlconcat_v2_1_3_xlconcat,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlconcat_v2_1_3_xlconcat,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_xlconcat_0_0 xlconcat_0
       (.In0(ATAD_SPLIT_5_0_VOUT2),
        .In1(ATAD_SPLIT_5_0_VOUT3),
        .In2(ATAD_SPLIT_5_0_VOUT4),
        .In3(xup_xor2_0_y),
        .In4(xup_xor2_0_y),
        .dout(S));
  (* CHECK_LICENSE_TYPE = "DIV_4_5B_xup_xor2_0_0,xup_xor2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xup_xor2,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_xup_xor2_0_0 xup_xor2_0
       (.a(ATAD_SPLIT_5_0_VOUT0),
        .b(ATAD_SPLIT_5_0_VOUT0),
        .y(xup_xor2_0_y));
endmodule

(* CHECK_LICENSE_TYPE = "DIV_4_5B_ATAD_SPLIT_5_0_0,ATAD_SPLIT_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ATAD_SPLIT_5,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_ATAD_SPLIT_5_0_0
   (VIN,
    VOUT0,
    VOUT1,
    VOUT2,
    VOUT3,
    VOUT4);
  input [4:0]VIN;
  output VOUT0;
  output VOUT1;
  output VOUT2;
  output VOUT3;
  output VOUT4;

  wire [4:0]VIN;

  assign VOUT0 = VIN[0];
  assign VOUT1 = VIN[1];
  assign VOUT2 = VIN[2];
  assign VOUT3 = VIN[3];
  assign VOUT4 = VIN[4];
endmodule

(* CHECK_LICENSE_TYPE = "DIV_4_5B_xlconcat_0_0,xlconcat_v2_1_3_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_3_xlconcat,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_xlconcat_0_0
   (In0,
    In1,
    In2,
    In3,
    In4,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  output [4:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;
  wire [0:0]In3;
  wire [0:0]In4;

  assign dout[4] = In4;
  assign dout[3] = In3;
  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "DIV_4_5B_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B_xup_xor2_0_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h6)) 
    y_INST_0
       (.I0(b),
        .I1(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "mini_UAL_DIV_4_5B_0_0,DIV_4_5B,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "IPI" *) 
(* X_CORE_INFO = "DIV_4_5B,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    S);
  input [4:0]A;
  output [4:0]S;

  wire [4:0]A;
  wire [4:0]S;

  (* HW_HANDOFF = "DIV_4_5B.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DIV_4_5B inst
       (.A(A),
        .S(S));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
