// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Dec  9 10:22:31 2022
// Host        : LAPTOP-IBQPOVJO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_Pixclock_divider_0_0/ZYNQ_CORE_Pixclock_divider_0_0_sim_netlist.v
// Design      : ZYNQ_CORE_Pixclock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ZYNQ_CORE_Pixclock_divider_0_0,Pixclock_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Pixclock_divider,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ZYNQ_CORE_Pixclock_divider_0_0
   (PIX_CLK_1X,
    PIX_CLK_5X);
  output PIX_CLK_1X;
  input PIX_CLK_5X;

  wire PIX_CLK_1X;
  wire PIX_CLK_5X;

  ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider inst
       (.PIX_CLK_1X(PIX_CLK_1X),
        .PIX_CLK_5X(PIX_CLK_5X));
endmodule

(* ORIG_REF_NAME = "Pixclock_divider" *) 
module ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider
   (PIX_CLK_1X,
    PIX_CLK_5X);
  output PIX_CLK_1X;
  input PIX_CLK_5X;

  wire PIX_CLK_1X;
  wire PIX_CLK_5X;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire p_0_in;

  FDRE PIX_CLK_1X_reg
       (.C(PIX_CLK_5X),
        .CE(1'b1),
        .D(p_0_in),
        .Q(PIX_CLK_1X),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[2]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(PIX_CLK_5X),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(PIX_CLK_5X),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(PIX_CLK_5X),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
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
