// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Oct 17 16:59:16 2018
// Host        : mlenehan-HP-ENVY-Notebook running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/mlenehan/prandom/prandom.sim/sim_1/synth/timing/xsim/testprbs_time_synth.v
// Design      : lfsr
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module dff
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_0
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_1
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_10
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_11
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_12
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_13
   (Q_reg_0,
    RSTn_IBUF,
    data_out_OBUF,
    CLK_IBUF_BUFG);
  output [0:0]Q_reg_0;
  input RSTn_IBUF;
  input [0:0]data_out_OBUF;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data_out_OBUF),
        .Q(Q_reg_0),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_14
   (Q_reg_0,
    RSTn_IBUF,
    D,
    CLK_IBUF_BUFG);
  output [0:0]Q_reg_0;
  input RSTn_IBUF;
  input D;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire D;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q_reg_0),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_2
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_3
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_4
   (data_out,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_5
   (data_out_OBUF,
    D,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  output D;
  input RSTn_IBUF;
  input [2:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire D;
  wire [2:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  LUT4 #(
    .INIT(16'h6996)) 
    Q_i_1
       (.I0(data_out_OBUF),
        .I1(Q_reg_0[2]),
        .I2(Q_reg_0[0]),
        .I3(Q_reg_0[1]),
        .O(D));
  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0[0]),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_6
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_7
   (Q_reg_0,
    RSTn_IBUF,
    data_out_OBUF,
    CLK_IBUF_BUFG);
  output [0:0]Q_reg_0;
  input RSTn_IBUF;
  input [0:0]data_out_OBUF;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data_out_OBUF),
        .Q(Q_reg_0),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_8
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_9
   (data_out_OBUF,
    RSTn_IBUF,
    Q_reg_0,
    CLK_IBUF_BUFG);
  output [0:0]data_out_OBUF;
  input RSTn_IBUF;
  input [0:0]Q_reg_0;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]Q_reg_0;
  wire RSTn_IBUF;
  wire [0:0]data_out_OBUF;

  FDSE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(data_out_OBUF),
        .S(RSTn_IBUF));
endmodule

(* NotValidForBitStream *)
module lfsr
   (CLK,
    RSTn,
    data_out);
  input CLK;
  input RSTn;
  output [15:0]data_out;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire D;
  wire RSTn;
  wire RSTn_IBUF;
  wire [15:0]data_out;
  wire [15:0]data_out_OBUF;

initial begin
 $sdf_annotate("testprbs_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF RSTn_IBUF_inst
       (.I(RSTn),
        .O(RSTn_IBUF));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[10]_inst 
       (.I(data_out_OBUF[10]),
        .O(data_out[10]));
  OBUF \data_out_OBUF[11]_inst 
       (.I(data_out_OBUF[11]),
        .O(data_out[11]));
  OBUF \data_out_OBUF[12]_inst 
       (.I(data_out_OBUF[12]),
        .O(data_out[12]));
  OBUF \data_out_OBUF[13]_inst 
       (.I(data_out_OBUF[13]),
        .O(data_out[13]));
  OBUF \data_out_OBUF[14]_inst 
       (.I(data_out_OBUF[14]),
        .O(data_out[14]));
  OBUF \data_out_OBUF[15]_inst 
       (.I(data_out_OBUF[15]),
        .O(data_out[15]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF \data_out_OBUF[8]_inst 
       (.I(data_out_OBUF[8]),
        .O(data_out[8]));
  OBUF \data_out_OBUF[9]_inst 
       (.I(data_out_OBUF[9]),
        .O(data_out[9]));
  dff \g0[0].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[0]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[1]));
  dff_0 \g0[10].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[10]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[11]));
  dff_1 \g0[11].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[11]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[12]));
  dff_2 \g0[12].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[12]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[13]));
  dff_3 \g0[13].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[13]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[14]));
  dff_4 \g0[14].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[14]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out(data_out_OBUF[15]));
  dff_5 \g0[1].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(D),
        .Q_reg_0({data_out_OBUF[15],data_out_OBUF[4],data_out_OBUF[1]}),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[2]));
  dff_6 \g0[2].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[2]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[3]));
  dff_7 \g0[3].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[4]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[3]));
  dff_8 \g0[4].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[4]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[5]));
  dff_9 \g0[5].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[5]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[6]));
  dff_10 \g0[6].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[6]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[7]));
  dff_11 \g0[7].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[7]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[8]));
  dff_12 \g0[8].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[8]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[9]));
  dff_13 \g0[9].stageN 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(data_out_OBUF[10]),
        .RSTn_IBUF(RSTn_IBUF),
        .data_out_OBUF(data_out_OBUF[9]));
  dff_14 stage0
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(D),
        .Q_reg_0(data_out_OBUF[0]),
        .RSTn_IBUF(RSTn_IBUF));
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
