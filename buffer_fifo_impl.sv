// megafunction wizard: %FIFO%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: scfifo

// ============================================================
// File Name: buffer_fifo_impl.v
// Megafunction Name(s):
// 			scfifo
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.4 Build 182 03/12/2014 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2014 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions
//and other software and tools, and its AMPP partner logic
//functions, and any output files from any of the foregoing
//(including device programming or simulation files), and any
//associated documentation or information are expressly subject
//to the terms and conditions of the Altera Program License
//Subscription Agreement, Altera MegaCore Function License
//Agreement, or other applicable license agreement, including,
//without limitation, that your use is for the sole purpose of
//programming logic devices manufactured by Altera and sold by
//Altera or its authorized distributors.  Please refer to the
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module buffer_fifo_impl#(
    parameter int WIDTH,
    parameter int DEPTH,
    parameter int AF_THR,
    parameter int AE_THR,
    parameter int BLOCK_RAM
  )(
    clock,
    data,
    rdreq,
    sclr,
    wrreq,
    almost_empty,
    almost_full,
    empty,
    full,
    q,
    usedw);

  input	  clock;
  input	[WIDTH-1:0]  data;
  input	  rdreq;
  input	  sclr;
  input	  wrreq;
  output	  almost_empty;
  output	  almost_full;
  output	  empty;
  output	  full;
  output	[WIDTH-1:0]  q;
  output	[DEPTH-1:0]  usedw;

  wire [DEPTH-1:0] sub_wire0;
  wire  sub_wire1;
  wire  sub_wire2;
  wire [WIDTH-1:0] sub_wire3;
  wire  sub_wire4;
  wire  sub_wire5;
  wire [DEPTH-1:0] usedw = sub_wire0[DEPTH-1:0];
  wire  empty = sub_wire1;
  wire  full = sub_wire2;
  wire [WIDTH-1:0] q = sub_wire3[WIDTH-1:0];
  wire  almost_empty = sub_wire4;
  wire  almost_full = sub_wire5;

  scfifo	scfifo_component (
    .clock (clock),
    .sclr (sclr),
    .wrreq (wrreq),
    .data (data),
    .rdreq (rdreq),
    .usedw (sub_wire0),
    .empty (sub_wire1),
    .full (sub_wire2),
    .q (sub_wire3),
    .almost_empty (sub_wire4),
    .almost_full (sub_wire5),
    .aclr (),
    .eccstatus ());
  defparam
    scfifo_component.add_ram_output_register = "ON",
    scfifo_component.almost_empty_value = AE_THR,
    scfifo_component.almost_full_value = AF_THR,
    scfifo_component.intended_device_family = "Cyclone V",
    scfifo_component.lpm_numwords = 2**DEPTH,
    scfifo_component.lpm_showahead = "ON",
    scfifo_component.lpm_type = "scfifo",
    scfifo_component.lpm_width = WIDTH,
    scfifo_component.lpm_widthu = DEPTH,
    scfifo_component.overflow_checking = "ON",
    scfifo_component.underflow_checking = "ON",
    scfifo_component.use_eab = BLOCK_RAM ? "ON" : "OFF";


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "1"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "256"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "1"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "768"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: Depth NUMERIC "1024"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: Full NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "0"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: Optimize NUMERIC "1"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: UsedW NUMERIC "1"
// Retrieval info: PRIVATE: Width NUMERIC "32"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: diff_widths NUMERIC "0"
// Retrieval info: PRIVATE: msb_usedw NUMERIC "0"
// Retrieval info: PRIVATE: output_width NUMERIC "32"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsFull NUMERIC "0"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "0"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "1"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "0"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "ON"
// Retrieval info: CONSTANT: ALMOST_EMPTY_VALUE NUMERIC "256"
// Retrieval info: CONSTANT: ALMOST_FULL_VALUE NUMERIC "768"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "1024"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "ON"
// Retrieval info: CONSTANT: LPM_TYPE STRING "scfifo"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "10"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: USED_PORT: almost_empty 0 0 0 0 OUTPUT NODEFVAL "almost_empty"
// Retrieval info: USED_PORT: almost_full 0 0 0 0 OUTPUT NODEFVAL "almost_full"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: USED_PORT: empty 0 0 0 0 OUTPUT NODEFVAL "empty"
// Retrieval info: USED_PORT: full 0 0 0 0 OUTPUT NODEFVAL "full"
// Retrieval info: USED_PORT: q 0 0 32 0 OUTPUT NODEFVAL "q[31..0]"
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL "rdreq"
// Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL "sclr"
// Retrieval info: USED_PORT: usedw 0 0 10 0 OUTPUT NODEFVAL "usedw[9..0]"
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL "wrreq"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: almost_empty 0 0 0 0 @almost_empty 0 0 0 0
// Retrieval info: CONNECT: almost_full 0 0 0 0 @almost_full 0 0 0 0
// Retrieval info: CONNECT: empty 0 0 0 0 @empty 0 0 0 0
// Retrieval info: CONNECT: full 0 0 0 0 @full 0 0 0 0
// Retrieval info: CONNECT: q 0 0 32 0 @q 0 0 32 0
// Retrieval info: CONNECT: usedw 0 0 10 0 @usedw 0 0 10 0
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL buffer_fifo_impl_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
