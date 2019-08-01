//lpm_mult CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEDICATED_MULTIPLIER_CIRCUITRY="NO" DEVICE_FAMILY="Cyclone V" DSP_BLOCK_BALANCING="Auto" LPM_PIPELINE=8 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=8 LPM_WIDTHB=26 LPM_WIDTHP=34 LPM_WIDTHS=1 aclr clken clock dataa datab result CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48
//VERSION_BEGIN 17.1 cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_lpm_mult 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_padd 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2017  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details.




//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=33 dataa datab datac result
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END


//adder CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" WIDTH=25 dataa datab datac result
//VERSION_BEGIN 17.1 cbx_mgl 2017:10:25:18:08:29:SJ cbx_stratixii 2017:10:25:18:06:53:SJ cbx_util_mgl 2017:10:25:18:06:53:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=27 dataa datab result
//VERSION_BEGIN 17.1 cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=27 dataa datab result
//VERSION_BEGIN 17.1 cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=27 dataa datab result
//VERSION_BEGIN 17.1 cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ  VERSION_END


//lpm_add_sub CARRY_CHAIN="MANUAL" CARRY_CHAIN_LENGTH=48 CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=27 dataa datab result
//VERSION_BEGIN 17.1 cbx_cycloneii 2017:10:25:18:06:53:SJ cbx_lpm_add_sub 2017:10:25:18:06:53:SJ cbx_mgl 2017:10:25:18:08:29:SJ cbx_nadder 2017:10:25:18:06:53:SJ cbx_stratix 2017:10:25:18:06:53:SJ cbx_stratixii 2017:10:25:18:06:53:SJ  VERSION_END

//synthesis_resources = lut 224 reg 413 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_77t
	( 
	aclr,
	clken,
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clken;
	input   clock;
	input   [7:0]  dataa;
	input   [25:0]  datab;
	output   [33:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[32:0]	wire_add415_result;
	wire	[24:0]	wire_add420_result;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe10;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe100;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe101;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe102;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe103;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe104;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe105;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe106;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe107;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe108;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe109;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe11;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe110;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe111;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe112;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe113;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe114;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe115;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe116;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe117;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe118;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe119;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe12;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe120;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe121;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe122;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe123;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe124;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe125;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe126;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe127;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe128;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe129;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe13;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe130;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe131;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe132;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe133;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe134;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe135;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe136;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe137;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe138;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe139;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe14;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe140;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe141;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe142;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe143;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe144;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe145;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe146;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe147;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe148;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe149;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe15;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe150;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe151;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe152;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe153;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe154;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe155;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe156;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe157;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe158;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe159;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe16;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe160;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe161;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe162;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe163;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe164;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe165;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe166;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe167;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe168;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe169;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe17;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe170;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe171;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe172;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe173;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe174;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe175;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe176;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe177;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe178;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe179;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe18;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe180;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe181;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe182;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe183;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe184;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe185;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe186;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe187;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe188;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe189;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe19;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe190;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe191;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe192;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe193;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe194;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe195;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe196;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe197;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe198;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe199;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe2;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe20;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe200;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe201;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe202;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe203;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe204;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe205;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe206;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe207;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe208;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe209;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe21;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe210;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe211;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe212;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe213;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe214;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe215;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe216;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe217;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe218;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe219;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe22;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe220;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe221;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe222;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe223;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe224;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe225;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe226;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe227;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe228;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe229;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe23;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe230;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe231;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe232;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe233;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe234;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe235;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe236;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe237;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe238;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe239;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe24;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe240;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe241;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe242;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe243;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe244;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe245;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe246;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe247;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe248;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe249;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe25;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe250;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe251;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe252;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe253;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe254;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe255;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe256;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe257;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe258;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe259;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe26;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe260;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe261;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe262;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe263;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe264;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe265;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe266;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe267;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe268;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe269;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe27;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe270;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe271;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe272;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe273;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe274;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe275;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe276;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe277;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe278;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe279;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe28;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe280;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe281;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe282;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe283;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe284;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe285;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe286;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe287;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe288;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe289;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe29;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe290;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe291;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe292;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe293;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe294;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe295;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe296;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe297;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe298;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe299;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe3;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe30;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe300;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe301;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe302;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe303;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe304;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe305;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe306;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe307;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe308;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe309;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe31;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe310;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe311;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe312;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe313;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe314;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe315;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe316;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe317;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe318;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe319;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe32;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe320;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe321;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe322;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe323;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe324;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe325;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe326;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe327;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe328;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe329;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe33;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe330;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe331;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe332;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe333;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe334;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe335;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe336;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe337;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe338;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe339;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe34;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe340;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe341;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe342;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe343;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe344;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe345;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe346;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe347;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe348;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe349;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe35;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe350;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe351;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe352;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe353;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe354;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe355;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe356;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe357;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe358;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe359;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe36;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe360;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe361;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe362;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe363;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe364;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe365;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe366;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe367;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe368;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe369;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe37;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe370;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe371;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe372;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe373;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe374;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe375;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe376;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe377;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe378;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe379;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe38;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe380;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe381;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe382;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe383;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe384;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe385;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe386;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe387;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe388;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe389;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe39;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe390;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe391;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe392;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe393;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe394;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe395;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe396;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe397;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe398;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe399;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe4;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe40;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe400;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe401;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe402;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe403;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe404;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe405;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe406;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe407;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe408;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe409;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe41;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe410;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe411;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe412;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe413;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe414;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe42;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe43;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe44;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe45;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe46;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe47;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe48;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe49;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe5;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe50;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe51;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe52;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe53;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe54;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe55;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe56;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe57;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe58;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe59;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe6;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe60;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe61;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe62;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe63;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe64;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe65;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe66;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe67;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe68;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe69;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe7;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe70;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe71;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe72;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe73;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe74;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe75;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe76;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe77;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe78;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe79;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe8;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe80;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe81;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe82;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe83;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe84;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe85;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe86;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe87;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe88;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe89;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe9;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe90;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe91;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe92;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe93;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe94;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe95;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe96;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe97;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe98;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe99;
	wire	[26:0]	wire_sum_adder1aa_0dataa;
	wire	[26:0]	wire_sum_adder1aa_0datab;
	wire	[26:0]	wire_sum_adder1aa_0result;
	wire	[26:0]	wire_sum_adder1aa_1dataa;
	wire	[26:0]	wire_sum_adder1aa_1datab;
	wire	[26:0]	wire_sum_adder1aa_1result;
	wire	[26:0]	wire_sum_adder1aa_2dataa;
	wire	[26:0]	wire_sum_adder1aa_2datab;
	wire	[26:0]	wire_sum_adder1aa_2result;
	wire	[26:0]	wire_sum_adder1aa_3dataa;
	wire	[26:0]	wire_sum_adder1aa_3datab;
	wire	[26:0]	wire_sum_adder1aa_3result;
	wire  [32:0]   wire_sft416a_in;
	wire  [32:0]   wire_sft416a_out;
	wire  [32:0]   wire_sft417a_in;
	wire  [32:0]   wire_sft417a_out;
	wire  [32:0]   wire_sft418a_in;
	wire  [32:0]   wire_sft418a_out;
	wire  [32:0]   wire_sft419a_in;
	wire  [32:0]   wire_sft419a_out;
	wire  [24:0]   wire_sft421a_in;
	wire  [24:0]   wire_sft421a_out;
	wire  [24:0]   wire_sft422a_in;
	wire  [24:0]   wire_sft422a_out;
	wire  [24:0]   wire_sft423a_in;
	wire  [24:0]   wire_sft423a_out;
	wire  [24:0]   wire_sft424a_in;
	wire  [24:0]   wire_sft424a_out;
	wire  [25:0]  dataa_node;
	wire  [7:0]  datab_node;
	wire  [33:0]  final_result_node;
	wire  w274w;
	wire  [34:0]  w501w;
	wire  [207:0]  w_decoder_node9w;
	wire  [7:0]  w_le_datab_node8w;
	wire  [111:0]  w_sum_node10w;

	assign
		wire_add415_result = wire_sft416a_out + wire_sft417a_out + wire_sft418a_out;
	assign
		wire_add420_result = wire_sft421a_out + wire_sft422a_out + wire_sft423a_out;
	// synopsys translate_off
	initial
		dffe10 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe10 <= 1'b0;
		else if  (clken == 1'b1)   dffe10 <= w_sum_node10w[56];
	// synopsys translate_off
	initial
		dffe100 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe100 <= 1'b0;
		else if  (clken == 1'b1)   dffe100 <= w_sum_node10w[105];
	// synopsys translate_off
	initial
		dffe101 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe101 <= 1'b0;
		else if  (clken == 1'b1)   dffe101 <= w_sum_node10w[79];
	// synopsys translate_off
	initial
		dffe102 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe102 <= 1'b0;
		else if  (clken == 1'b1)   dffe102 <= w_sum_node10w[54];
	// synopsys translate_off
	initial
		dffe103 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe103 <= 1'b0;
		else if  (clken == 1'b1)   dffe103 <= w_sum_node10w[80];
	// synopsys translate_off
	initial
		dffe104 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe104 <= 1'b0;
		else if  (clken == 1'b1)   dffe104 <= w_sum_node10w[106];
	// synopsys translate_off
	initial
		dffe105 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe105 <= 1'b0;
		else if  (clken == 1'b1)   dffe105 <= w_sum_node10w[55];
	// synopsys translate_off
	initial
		dffe106 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe106 <= 1'b0;
		else if  (clken == 1'b1)   dffe106 <= w_sum_node10w[81];
	// synopsys translate_off
	initial
		dffe107 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe107 <= 1'b0;
		else if  (clken == 1'b1)   dffe107 <= w_sum_node10w[107];
	// synopsys translate_off
	initial
		dffe108 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe108 <= 1'b0;
		else if  (clken == 1'b1)   dffe108 <= w_sum_node10w[82];
	// synopsys translate_off
	initial
		dffe109 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe109 <= 1'b0;
		else if  (clken == 1'b1)   dffe109 <= w_sum_node10w[108];
	// synopsys translate_off
	initial
		dffe11 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe11 <= 1'b0;
		else if  (clken == 1'b1)   dffe11 <= w_sum_node10w[5];
	// synopsys translate_off
	initial
		dffe110 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe110 <= 1'b0;
		else if  (clken == 1'b1)   dffe110 <= w_sum_node10w[83];
	// synopsys translate_off
	initial
		dffe111 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe111 <= 1'b0;
		else if  (clken == 1'b1)   dffe111 <= w_sum_node10w[109];
	// synopsys translate_off
	initial
		dffe112 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe112 <= 1'b0;
		else if  (clken == 1'b1)   dffe112 <= w_sum_node10w[110];
	// synopsys translate_off
	initial
		dffe113 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe113 <= 1'b0;
		else if  (clken == 1'b1)   dffe113 <= w_sum_node10w[111];
	// synopsys translate_off
	initial
		dffe114 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe114 <= 1'b0;
		else if  (clken == 1'b1)   dffe114 <= dffe120;
	// synopsys translate_off
	initial
		dffe115 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe115 <= 1'b0;
		else if  (clken == 1'b1)   dffe115 <= dffe114;
	// synopsys translate_off
	initial
		dffe116 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe116 <= 1'b0;
		else if  (clken == 1'b1)   dffe116 <= dffe115;
	// synopsys translate_off
	initial
		dffe117 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe117 <= 1'b0;
		else if  (clken == 1'b1)   dffe117 <= dffe116;
	// synopsys translate_off
	initial
		dffe118 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe118 <= 1'b0;
		else if  (clken == 1'b1)   dffe118 <= dffe117;
	// synopsys translate_off
	initial
		dffe119 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe119 <= 1'b0;
		else if  (clken == 1'b1)   dffe119 <= dffe118;
	// synopsys translate_off
	initial
		dffe12 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe12 <= 1'b0;
		else if  (clken == 1'b1)   dffe12 <= w_sum_node10w[31];
	// synopsys translate_off
	initial
		dffe120 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe120 <= 1'b0;
		else if  (clken == 1'b1)   dffe120 <= dffe2;
	// synopsys translate_off
	initial
		dffe121 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe121 <= 1'b0;
		else if  (clken == 1'b1)   dffe121 <= dffe127;
	// synopsys translate_off
	initial
		dffe122 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe122 <= 1'b0;
		else if  (clken == 1'b1)   dffe122 <= dffe121;
	// synopsys translate_off
	initial
		dffe123 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe123 <= 1'b0;
		else if  (clken == 1'b1)   dffe123 <= dffe122;
	// synopsys translate_off
	initial
		dffe124 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe124 <= 1'b0;
		else if  (clken == 1'b1)   dffe124 <= dffe123;
	// synopsys translate_off
	initial
		dffe125 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe125 <= 1'b0;
		else if  (clken == 1'b1)   dffe125 <= dffe124;
	// synopsys translate_off
	initial
		dffe126 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe126 <= 1'b0;
		else if  (clken == 1'b1)   dffe126 <= dffe125;
	// synopsys translate_off
	initial
		dffe127 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe127 <= 1'b0;
		else if  (clken == 1'b1)   dffe127 <= dffe3;
	// synopsys translate_off
	initial
		dffe128 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe128 <= 1'b0;
		else if  (clken == 1'b1)   dffe128 <= wire_sft419a_out[0];
	// synopsys translate_off
	initial
		dffe129 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe129 <= 1'b0;
		else if  (clken == 1'b1)   dffe129 <= dffe128;
	// synopsys translate_off
	initial
		dffe13 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe13 <= 1'b0;
		else if  (clken == 1'b1)   dffe13 <= w_sum_node10w[57];
	// synopsys translate_off
	initial
		dffe130 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe130 <= 1'b0;
		else if  (clken == 1'b1)   dffe130 <= dffe129;
	// synopsys translate_off
	initial
		dffe131 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe131 <= 1'b0;
		else if  (clken == 1'b1)   dffe131 <= dffe130;
	// synopsys translate_off
	initial
		dffe132 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe132 <= 1'b0;
		else if  (clken == 1'b1)   dffe132 <= dffe131;
	// synopsys translate_off
	initial
		dffe133 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe133 <= 1'b0;
		else if  (clken == 1'b1)   dffe133 <= dffe132;
	// synopsys translate_off
	initial
		dffe134 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe134 <= 1'b0;
		else if  (clken == 1'b1)   dffe134 <= dffe4;
	// synopsys translate_off
	initial
		dffe135 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe135 <= 1'b0;
		else if  (clken == 1'b1)   dffe135 <= dffe5;
	// synopsys translate_off
	initial
		dffe136 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe136 <= 1'b0;
		else if  (clken == 1'b1)   dffe136 <= wire_sft419a_out[1];
	// synopsys translate_off
	initial
		dffe137 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe137 <= 1'b0;
		else if  (clken == 1'b1)   dffe137 <= dffe136;
	// synopsys translate_off
	initial
		dffe138 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe138 <= 1'b0;
		else if  (clken == 1'b1)   dffe138 <= dffe137;
	// synopsys translate_off
	initial
		dffe139 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe139 <= 1'b0;
		else if  (clken == 1'b1)   dffe139 <= dffe138;
	// synopsys translate_off
	initial
		dffe14 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe14 <= 1'b0;
		else if  (clken == 1'b1)   dffe14 <= w_sum_node10w[6];
	// synopsys translate_off
	initial
		dffe140 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe140 <= 1'b0;
		else if  (clken == 1'b1)   dffe140 <= dffe139;
	// synopsys translate_off
	initial
		dffe141 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe141 <= 1'b0;
		else if  (clken == 1'b1)   dffe141 <= dffe140;
	// synopsys translate_off
	initial
		dffe142 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe142 <= 1'b0;
		else if  (clken == 1'b1)   dffe142 <= dffe6;
	// synopsys translate_off
	initial
		dffe143 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe143 <= 1'b0;
		else if  (clken == 1'b1)   dffe143 <= dffe7;
	// synopsys translate_off
	initial
		dffe144 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe144 <= 1'b0;
		else if  (clken == 1'b1)   dffe144 <= wire_sft419a_out[2];
	// synopsys translate_off
	initial
		dffe145 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe145 <= 1'b0;
		else if  (clken == 1'b1)   dffe145 <= dffe144;
	// synopsys translate_off
	initial
		dffe146 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe146 <= 1'b0;
		else if  (clken == 1'b1)   dffe146 <= dffe145;
	// synopsys translate_off
	initial
		dffe147 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe147 <= 1'b0;
		else if  (clken == 1'b1)   dffe147 <= dffe146;
	// synopsys translate_off
	initial
		dffe148 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe148 <= 1'b0;
		else if  (clken == 1'b1)   dffe148 <= dffe147;
	// synopsys translate_off
	initial
		dffe149 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe149 <= 1'b0;
		else if  (clken == 1'b1)   dffe149 <= dffe148;
	// synopsys translate_off
	initial
		dffe15 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe15 <= 1'b0;
		else if  (clken == 1'b1)   dffe15 <= w_sum_node10w[32];
	// synopsys translate_off
	initial
		dffe150 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe150 <= 1'b0;
		else if  (clken == 1'b1)   dffe150 <= dffe8;
	// synopsys translate_off
	initial
		dffe151 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe151 <= 1'b0;
		else if  (clken == 1'b1)   dffe151 <= dffe9;
	// synopsys translate_off
	initial
		dffe152 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe152 <= 1'b0;
		else if  (clken == 1'b1)   dffe152 <= dffe10;
	// synopsys translate_off
	initial
		dffe153 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe153 <= 1'b0;
		else if  (clken == 1'b1)   dffe153 <= wire_sft419a_out[3];
	// synopsys translate_off
	initial
		dffe154 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe154 <= 1'b0;
		else if  (clken == 1'b1)   dffe154 <= dffe153;
	// synopsys translate_off
	initial
		dffe155 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe155 <= 1'b0;
		else if  (clken == 1'b1)   dffe155 <= dffe154;
	// synopsys translate_off
	initial
		dffe156 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe156 <= 1'b0;
		else if  (clken == 1'b1)   dffe156 <= dffe155;
	// synopsys translate_off
	initial
		dffe157 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe157 <= 1'b0;
		else if  (clken == 1'b1)   dffe157 <= dffe156;
	// synopsys translate_off
	initial
		dffe158 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe158 <= 1'b0;
		else if  (clken == 1'b1)   dffe158 <= dffe157;
	// synopsys translate_off
	initial
		dffe159 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe159 <= 1'b0;
		else if  (clken == 1'b1)   dffe159 <= dffe11;
	// synopsys translate_off
	initial
		dffe16 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe16 <= 1'b0;
		else if  (clken == 1'b1)   dffe16 <= w_sum_node10w[84];
	// synopsys translate_off
	initial
		dffe160 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe160 <= 1'b0;
		else if  (clken == 1'b1)   dffe160 <= dffe12;
	// synopsys translate_off
	initial
		dffe161 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe161 <= 1'b0;
		else if  (clken == 1'b1)   dffe161 <= dffe13;
	// synopsys translate_off
	initial
		dffe162 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe162 <= 1'b0;
		else if  (clken == 1'b1)   dffe162 <= wire_sft419a_out[4];
	// synopsys translate_off
	initial
		dffe163 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe163 <= 1'b0;
		else if  (clken == 1'b1)   dffe163 <= dffe162;
	// synopsys translate_off
	initial
		dffe164 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe164 <= 1'b0;
		else if  (clken == 1'b1)   dffe164 <= dffe163;
	// synopsys translate_off
	initial
		dffe165 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe165 <= 1'b0;
		else if  (clken == 1'b1)   dffe165 <= dffe164;
	// synopsys translate_off
	initial
		dffe166 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe166 <= 1'b0;
		else if  (clken == 1'b1)   dffe166 <= dffe165;
	// synopsys translate_off
	initial
		dffe167 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe167 <= 1'b0;
		else if  (clken == 1'b1)   dffe167 <= dffe166;
	// synopsys translate_off
	initial
		dffe168 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe168 <= 1'b0;
		else if  (clken == 1'b1)   dffe168 <= dffe14;
	// synopsys translate_off
	initial
		dffe169 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe169 <= 1'b0;
		else if  (clken == 1'b1)   dffe169 <= dffe15;
	// synopsys translate_off
	initial
		dffe17 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe17 <= 1'b0;
		else if  (clken == 1'b1)   dffe17 <= w_sum_node10w[58];
	// synopsys translate_off
	initial
		dffe170 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe170 <= 1'b0;
		else if  (clken == 1'b1)   dffe170 <= wire_sft424a_out[0];
	// synopsys translate_off
	initial
		dffe171 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe171 <= 1'b0;
		else if  (clken == 1'b1)   dffe171 <= wire_sft419a_out[5];
	// synopsys translate_off
	initial
		dffe172 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe172 <= 1'b0;
		else if  (clken == 1'b1)   dffe172 <= dffe171;
	// synopsys translate_off
	initial
		dffe173 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe173 <= 1'b0;
		else if  (clken == 1'b1)   dffe173 <= dffe172;
	// synopsys translate_off
	initial
		dffe174 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe174 <= 1'b0;
		else if  (clken == 1'b1)   dffe174 <= dffe173;
	// synopsys translate_off
	initial
		dffe175 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe175 <= 1'b0;
		else if  (clken == 1'b1)   dffe175 <= dffe174;
	// synopsys translate_off
	initial
		dffe176 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe176 <= 1'b0;
		else if  (clken == 1'b1)   dffe176 <= dffe175;
	// synopsys translate_off
	initial
		dffe177 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe177 <= 1'b0;
		else if  (clken == 1'b1)   dffe177 <= dffe18;
	// synopsys translate_off
	initial
		dffe178 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe178 <= 1'b0;
		else if  (clken == 1'b1)   dffe178 <= dffe19;
	// synopsys translate_off
	initial
		dffe179 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe179 <= 1'b0;
		else if  (clken == 1'b1)   dffe179 <= wire_sft424a_out[1];
	// synopsys translate_off
	initial
		dffe18 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe18 <= 1'b0;
		else if  (clken == 1'b1)   dffe18 <= w_sum_node10w[7];
	// synopsys translate_off
	initial
		dffe180 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe180 <= 1'b0;
		else if  (clken == 1'b1)   dffe180 <= wire_sft419a_out[6];
	// synopsys translate_off
	initial
		dffe181 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe181 <= 1'b0;
		else if  (clken == 1'b1)   dffe181 <= dffe180;
	// synopsys translate_off
	initial
		dffe182 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe182 <= 1'b0;
		else if  (clken == 1'b1)   dffe182 <= dffe181;
	// synopsys translate_off
	initial
		dffe183 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe183 <= 1'b0;
		else if  (clken == 1'b1)   dffe183 <= dffe182;
	// synopsys translate_off
	initial
		dffe184 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe184 <= 1'b0;
		else if  (clken == 1'b1)   dffe184 <= dffe183;
	// synopsys translate_off
	initial
		dffe185 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe185 <= 1'b0;
		else if  (clken == 1'b1)   dffe185 <= dffe184;
	// synopsys translate_off
	initial
		dffe186 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe186 <= 1'b0;
		else if  (clken == 1'b1)   dffe186 <= dffe22;
	// synopsys translate_off
	initial
		dffe187 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe187 <= 1'b0;
		else if  (clken == 1'b1)   dffe187 <= dffe23;
	// synopsys translate_off
	initial
		dffe188 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe188 <= 1'b0;
		else if  (clken == 1'b1)   dffe188 <= wire_sft424a_out[2];
	// synopsys translate_off
	initial
		dffe189 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe189 <= 1'b0;
		else if  (clken == 1'b1)   dffe189 <= wire_sft419a_out[7];
	// synopsys translate_off
	initial
		dffe19 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe19 <= 1'b0;
		else if  (clken == 1'b1)   dffe19 <= w_sum_node10w[33];
	// synopsys translate_off
	initial
		dffe190 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe190 <= 1'b0;
		else if  (clken == 1'b1)   dffe190 <= dffe189;
	// synopsys translate_off
	initial
		dffe191 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe191 <= 1'b0;
		else if  (clken == 1'b1)   dffe191 <= dffe190;
	// synopsys translate_off
	initial
		dffe192 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe192 <= 1'b0;
		else if  (clken == 1'b1)   dffe192 <= dffe191;
	// synopsys translate_off
	initial
		dffe193 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe193 <= 1'b0;
		else if  (clken == 1'b1)   dffe193 <= dffe192;
	// synopsys translate_off
	initial
		dffe194 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe194 <= 1'b0;
		else if  (clken == 1'b1)   dffe194 <= dffe193;
	// synopsys translate_off
	initial
		dffe195 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe195 <= 1'b0;
		else if  (clken == 1'b1)   dffe195 <= dffe26;
	// synopsys translate_off
	initial
		dffe196 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe196 <= 1'b0;
		else if  (clken == 1'b1)   dffe196 <= dffe27;
	// synopsys translate_off
	initial
		dffe197 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe197 <= 1'b0;
		else if  (clken == 1'b1)   dffe197 <= wire_sft424a_out[3];
	// synopsys translate_off
	initial
		dffe198 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe198 <= 1'b0;
		else if  (clken == 1'b1)   dffe198 <= wire_sft419a_out[8];
	// synopsys translate_off
	initial
		dffe199 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe199 <= 1'b0;
		else if  (clken == 1'b1)   dffe199 <= dffe198;
	// synopsys translate_off
	initial
		dffe2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe2 <= 1'b0;
		else if  (clken == 1'b1)   dffe2 <= w_sum_node10w[0];
	// synopsys translate_off
	initial
		dffe20 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe20 <= 1'b0;
		else if  (clken == 1'b1)   dffe20 <= w_sum_node10w[85];
	// synopsys translate_off
	initial
		dffe200 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe200 <= 1'b0;
		else if  (clken == 1'b1)   dffe200 <= dffe199;
	// synopsys translate_off
	initial
		dffe201 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe201 <= 1'b0;
		else if  (clken == 1'b1)   dffe201 <= dffe200;
	// synopsys translate_off
	initial
		dffe202 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe202 <= 1'b0;
		else if  (clken == 1'b1)   dffe202 <= dffe201;
	// synopsys translate_off
	initial
		dffe203 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe203 <= 1'b0;
		else if  (clken == 1'b1)   dffe203 <= dffe202;
	// synopsys translate_off
	initial
		dffe204 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe204 <= 1'b0;
		else if  (clken == 1'b1)   dffe204 <= dffe30;
	// synopsys translate_off
	initial
		dffe205 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe205 <= 1'b0;
		else if  (clken == 1'b1)   dffe205 <= dffe31;
	// synopsys translate_off
	initial
		dffe206 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe206 <= 1'b0;
		else if  (clken == 1'b1)   dffe206 <= wire_sft424a_out[4];
	// synopsys translate_off
	initial
		dffe207 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe207 <= 1'b0;
		else if  (clken == 1'b1)   dffe207 <= wire_sft419a_out[9];
	// synopsys translate_off
	initial
		dffe208 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe208 <= 1'b0;
		else if  (clken == 1'b1)   dffe208 <= dffe207;
	// synopsys translate_off
	initial
		dffe209 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe209 <= 1'b0;
		else if  (clken == 1'b1)   dffe209 <= dffe208;
	// synopsys translate_off
	initial
		dffe21 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe21 <= 1'b0;
		else if  (clken == 1'b1)   dffe21 <= w_sum_node10w[59];
	// synopsys translate_off
	initial
		dffe210 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe210 <= 1'b0;
		else if  (clken == 1'b1)   dffe210 <= dffe209;
	// synopsys translate_off
	initial
		dffe211 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe211 <= 1'b0;
		else if  (clken == 1'b1)   dffe211 <= dffe210;
	// synopsys translate_off
	initial
		dffe212 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe212 <= 1'b0;
		else if  (clken == 1'b1)   dffe212 <= dffe211;
	// synopsys translate_off
	initial
		dffe213 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe213 <= 1'b0;
		else if  (clken == 1'b1)   dffe213 <= dffe34;
	// synopsys translate_off
	initial
		dffe214 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe214 <= 1'b0;
		else if  (clken == 1'b1)   dffe214 <= dffe35;
	// synopsys translate_off
	initial
		dffe215 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe215 <= 1'b0;
		else if  (clken == 1'b1)   dffe215 <= wire_sft424a_out[5];
	// synopsys translate_off
	initial
		dffe216 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe216 <= 1'b0;
		else if  (clken == 1'b1)   dffe216 <= wire_sft419a_out[10];
	// synopsys translate_off
	initial
		dffe217 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe217 <= 1'b0;
		else if  (clken == 1'b1)   dffe217 <= dffe216;
	// synopsys translate_off
	initial
		dffe218 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe218 <= 1'b0;
		else if  (clken == 1'b1)   dffe218 <= dffe217;
	// synopsys translate_off
	initial
		dffe219 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe219 <= 1'b0;
		else if  (clken == 1'b1)   dffe219 <= dffe218;
	// synopsys translate_off
	initial
		dffe22 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe22 <= 1'b0;
		else if  (clken == 1'b1)   dffe22 <= w_sum_node10w[8];
	// synopsys translate_off
	initial
		dffe220 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe220 <= 1'b0;
		else if  (clken == 1'b1)   dffe220 <= dffe219;
	// synopsys translate_off
	initial
		dffe221 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe221 <= 1'b0;
		else if  (clken == 1'b1)   dffe221 <= dffe220;
	// synopsys translate_off
	initial
		dffe222 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe222 <= 1'b0;
		else if  (clken == 1'b1)   dffe222 <= dffe38;
	// synopsys translate_off
	initial
		dffe223 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe223 <= 1'b0;
		else if  (clken == 1'b1)   dffe223 <= dffe39;
	// synopsys translate_off
	initial
		dffe224 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe224 <= 1'b0;
		else if  (clken == 1'b1)   dffe224 <= wire_sft424a_out[6];
	// synopsys translate_off
	initial
		dffe225 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe225 <= 1'b0;
		else if  (clken == 1'b1)   dffe225 <= wire_sft419a_out[11];
	// synopsys translate_off
	initial
		dffe226 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe226 <= 1'b0;
		else if  (clken == 1'b1)   dffe226 <= dffe225;
	// synopsys translate_off
	initial
		dffe227 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe227 <= 1'b0;
		else if  (clken == 1'b1)   dffe227 <= dffe226;
	// synopsys translate_off
	initial
		dffe228 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe228 <= 1'b0;
		else if  (clken == 1'b1)   dffe228 <= dffe227;
	// synopsys translate_off
	initial
		dffe229 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe229 <= 1'b0;
		else if  (clken == 1'b1)   dffe229 <= dffe228;
	// synopsys translate_off
	initial
		dffe23 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe23 <= 1'b0;
		else if  (clken == 1'b1)   dffe23 <= w_sum_node10w[34];
	// synopsys translate_off
	initial
		dffe230 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe230 <= 1'b0;
		else if  (clken == 1'b1)   dffe230 <= dffe229;
	// synopsys translate_off
	initial
		dffe231 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe231 <= 1'b0;
		else if  (clken == 1'b1)   dffe231 <= dffe42;
	// synopsys translate_off
	initial
		dffe232 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe232 <= 1'b0;
		else if  (clken == 1'b1)   dffe232 <= dffe43;
	// synopsys translate_off
	initial
		dffe233 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe233 <= 1'b0;
		else if  (clken == 1'b1)   dffe233 <= wire_sft424a_out[7];
	// synopsys translate_off
	initial
		dffe234 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe234 <= 1'b0;
		else if  (clken == 1'b1)   dffe234 <= wire_sft419a_out[12];
	// synopsys translate_off
	initial
		dffe235 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe235 <= 1'b0;
		else if  (clken == 1'b1)   dffe235 <= dffe234;
	// synopsys translate_off
	initial
		dffe236 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe236 <= 1'b0;
		else if  (clken == 1'b1)   dffe236 <= dffe235;
	// synopsys translate_off
	initial
		dffe237 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe237 <= 1'b0;
		else if  (clken == 1'b1)   dffe237 <= dffe236;
	// synopsys translate_off
	initial
		dffe238 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe238 <= 1'b0;
		else if  (clken == 1'b1)   dffe238 <= dffe237;
	// synopsys translate_off
	initial
		dffe239 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe239 <= 1'b0;
		else if  (clken == 1'b1)   dffe239 <= dffe238;
	// synopsys translate_off
	initial
		dffe24 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe24 <= 1'b0;
		else if  (clken == 1'b1)   dffe24 <= w_sum_node10w[86];
	// synopsys translate_off
	initial
		dffe240 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe240 <= 1'b0;
		else if  (clken == 1'b1)   dffe240 <= dffe46;
	// synopsys translate_off
	initial
		dffe241 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe241 <= 1'b0;
		else if  (clken == 1'b1)   dffe241 <= dffe47;
	// synopsys translate_off
	initial
		dffe242 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe242 <= 1'b0;
		else if  (clken == 1'b1)   dffe242 <= wire_sft424a_out[8];
	// synopsys translate_off
	initial
		dffe243 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe243 <= 1'b0;
		else if  (clken == 1'b1)   dffe243 <= wire_sft419a_out[13];
	// synopsys translate_off
	initial
		dffe244 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe244 <= 1'b0;
		else if  (clken == 1'b1)   dffe244 <= dffe243;
	// synopsys translate_off
	initial
		dffe245 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe245 <= 1'b0;
		else if  (clken == 1'b1)   dffe245 <= dffe244;
	// synopsys translate_off
	initial
		dffe246 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe246 <= 1'b0;
		else if  (clken == 1'b1)   dffe246 <= dffe245;
	// synopsys translate_off
	initial
		dffe247 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe247 <= 1'b0;
		else if  (clken == 1'b1)   dffe247 <= dffe246;
	// synopsys translate_off
	initial
		dffe248 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe248 <= 1'b0;
		else if  (clken == 1'b1)   dffe248 <= dffe247;
	// synopsys translate_off
	initial
		dffe249 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe249 <= 1'b0;
		else if  (clken == 1'b1)   dffe249 <= dffe50;
	// synopsys translate_off
	initial
		dffe25 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe25 <= 1'b0;
		else if  (clken == 1'b1)   dffe25 <= w_sum_node10w[60];
	// synopsys translate_off
	initial
		dffe250 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe250 <= 1'b0;
		else if  (clken == 1'b1)   dffe250 <= dffe51;
	// synopsys translate_off
	initial
		dffe251 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe251 <= 1'b0;
		else if  (clken == 1'b1)   dffe251 <= wire_sft424a_out[9];
	// synopsys translate_off
	initial
		dffe252 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe252 <= 1'b0;
		else if  (clken == 1'b1)   dffe252 <= wire_sft419a_out[14];
	// synopsys translate_off
	initial
		dffe253 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe253 <= 1'b0;
		else if  (clken == 1'b1)   dffe253 <= dffe252;
	// synopsys translate_off
	initial
		dffe254 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe254 <= 1'b0;
		else if  (clken == 1'b1)   dffe254 <= dffe253;
	// synopsys translate_off
	initial
		dffe255 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe255 <= 1'b0;
		else if  (clken == 1'b1)   dffe255 <= dffe254;
	// synopsys translate_off
	initial
		dffe256 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe256 <= 1'b0;
		else if  (clken == 1'b1)   dffe256 <= dffe255;
	// synopsys translate_off
	initial
		dffe257 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe257 <= 1'b0;
		else if  (clken == 1'b1)   dffe257 <= dffe256;
	// synopsys translate_off
	initial
		dffe258 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe258 <= 1'b0;
		else if  (clken == 1'b1)   dffe258 <= dffe54;
	// synopsys translate_off
	initial
		dffe259 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe259 <= 1'b0;
		else if  (clken == 1'b1)   dffe259 <= dffe55;
	// synopsys translate_off
	initial
		dffe26 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe26 <= 1'b0;
		else if  (clken == 1'b1)   dffe26 <= w_sum_node10w[9];
	// synopsys translate_off
	initial
		dffe260 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe260 <= 1'b0;
		else if  (clken == 1'b1)   dffe260 <= wire_sft424a_out[10];
	// synopsys translate_off
	initial
		dffe261 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe261 <= 1'b0;
		else if  (clken == 1'b1)   dffe261 <= wire_sft419a_out[15];
	// synopsys translate_off
	initial
		dffe262 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe262 <= 1'b0;
		else if  (clken == 1'b1)   dffe262 <= dffe261;
	// synopsys translate_off
	initial
		dffe263 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe263 <= 1'b0;
		else if  (clken == 1'b1)   dffe263 <= dffe262;
	// synopsys translate_off
	initial
		dffe264 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe264 <= 1'b0;
		else if  (clken == 1'b1)   dffe264 <= dffe263;
	// synopsys translate_off
	initial
		dffe265 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe265 <= 1'b0;
		else if  (clken == 1'b1)   dffe265 <= dffe264;
	// synopsys translate_off
	initial
		dffe266 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe266 <= 1'b0;
		else if  (clken == 1'b1)   dffe266 <= dffe265;
	// synopsys translate_off
	initial
		dffe267 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe267 <= 1'b0;
		else if  (clken == 1'b1)   dffe267 <= dffe58;
	// synopsys translate_off
	initial
		dffe268 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe268 <= 1'b0;
		else if  (clken == 1'b1)   dffe268 <= dffe59;
	// synopsys translate_off
	initial
		dffe269 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe269 <= 1'b0;
		else if  (clken == 1'b1)   dffe269 <= wire_sft424a_out[11];
	// synopsys translate_off
	initial
		dffe27 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe27 <= 1'b0;
		else if  (clken == 1'b1)   dffe27 <= w_sum_node10w[35];
	// synopsys translate_off
	initial
		dffe270 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe270 <= 1'b0;
		else if  (clken == 1'b1)   dffe270 <= wire_sft419a_out[16];
	// synopsys translate_off
	initial
		dffe271 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe271 <= 1'b0;
		else if  (clken == 1'b1)   dffe271 <= dffe270;
	// synopsys translate_off
	initial
		dffe272 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe272 <= 1'b0;
		else if  (clken == 1'b1)   dffe272 <= dffe271;
	// synopsys translate_off
	initial
		dffe273 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe273 <= 1'b0;
		else if  (clken == 1'b1)   dffe273 <= dffe272;
	// synopsys translate_off
	initial
		dffe274 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe274 <= 1'b0;
		else if  (clken == 1'b1)   dffe274 <= dffe273;
	// synopsys translate_off
	initial
		dffe275 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe275 <= 1'b0;
		else if  (clken == 1'b1)   dffe275 <= dffe274;
	// synopsys translate_off
	initial
		dffe276 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe276 <= 1'b0;
		else if  (clken == 1'b1)   dffe276 <= dffe62;
	// synopsys translate_off
	initial
		dffe277 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe277 <= 1'b0;
		else if  (clken == 1'b1)   dffe277 <= dffe63;
	// synopsys translate_off
	initial
		dffe278 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe278 <= 1'b0;
		else if  (clken == 1'b1)   dffe278 <= wire_sft424a_out[12];
	// synopsys translate_off
	initial
		dffe279 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe279 <= 1'b0;
		else if  (clken == 1'b1)   dffe279 <= wire_sft419a_out[17];
	// synopsys translate_off
	initial
		dffe28 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe28 <= 1'b0;
		else if  (clken == 1'b1)   dffe28 <= w_sum_node10w[87];
	// synopsys translate_off
	initial
		dffe280 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe280 <= 1'b0;
		else if  (clken == 1'b1)   dffe280 <= dffe279;
	// synopsys translate_off
	initial
		dffe281 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe281 <= 1'b0;
		else if  (clken == 1'b1)   dffe281 <= dffe280;
	// synopsys translate_off
	initial
		dffe282 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe282 <= 1'b0;
		else if  (clken == 1'b1)   dffe282 <= dffe281;
	// synopsys translate_off
	initial
		dffe283 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe283 <= 1'b0;
		else if  (clken == 1'b1)   dffe283 <= dffe282;
	// synopsys translate_off
	initial
		dffe284 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe284 <= 1'b0;
		else if  (clken == 1'b1)   dffe284 <= dffe283;
	// synopsys translate_off
	initial
		dffe285 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe285 <= 1'b0;
		else if  (clken == 1'b1)   dffe285 <= dffe66;
	// synopsys translate_off
	initial
		dffe286 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe286 <= 1'b0;
		else if  (clken == 1'b1)   dffe286 <= dffe67;
	// synopsys translate_off
	initial
		dffe287 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe287 <= 1'b0;
		else if  (clken == 1'b1)   dffe287 <= wire_sft424a_out[13];
	// synopsys translate_off
	initial
		dffe288 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe288 <= 1'b0;
		else if  (clken == 1'b1)   dffe288 <= wire_sft419a_out[18];
	// synopsys translate_off
	initial
		dffe289 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe289 <= 1'b0;
		else if  (clken == 1'b1)   dffe289 <= dffe288;
	// synopsys translate_off
	initial
		dffe29 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe29 <= 1'b0;
		else if  (clken == 1'b1)   dffe29 <= w_sum_node10w[61];
	// synopsys translate_off
	initial
		dffe290 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe290 <= 1'b0;
		else if  (clken == 1'b1)   dffe290 <= dffe289;
	// synopsys translate_off
	initial
		dffe291 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe291 <= 1'b0;
		else if  (clken == 1'b1)   dffe291 <= dffe290;
	// synopsys translate_off
	initial
		dffe292 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe292 <= 1'b0;
		else if  (clken == 1'b1)   dffe292 <= dffe291;
	// synopsys translate_off
	initial
		dffe293 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe293 <= 1'b0;
		else if  (clken == 1'b1)   dffe293 <= dffe292;
	// synopsys translate_off
	initial
		dffe294 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe294 <= 1'b0;
		else if  (clken == 1'b1)   dffe294 <= dffe70;
	// synopsys translate_off
	initial
		dffe295 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe295 <= 1'b0;
		else if  (clken == 1'b1)   dffe295 <= dffe71;
	// synopsys translate_off
	initial
		dffe296 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe296 <= 1'b0;
		else if  (clken == 1'b1)   dffe296 <= wire_sft424a_out[14];
	// synopsys translate_off
	initial
		dffe297 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe297 <= 1'b0;
		else if  (clken == 1'b1)   dffe297 <= wire_sft419a_out[19];
	// synopsys translate_off
	initial
		dffe298 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe298 <= 1'b0;
		else if  (clken == 1'b1)   dffe298 <= dffe297;
	// synopsys translate_off
	initial
		dffe299 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe299 <= 1'b0;
		else if  (clken == 1'b1)   dffe299 <= dffe298;
	// synopsys translate_off
	initial
		dffe3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe3 <= 1'b0;
		else if  (clken == 1'b1)   dffe3 <= w_sum_node10w[1];
	// synopsys translate_off
	initial
		dffe30 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe30 <= 1'b0;
		else if  (clken == 1'b1)   dffe30 <= w_sum_node10w[10];
	// synopsys translate_off
	initial
		dffe300 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe300 <= 1'b0;
		else if  (clken == 1'b1)   dffe300 <= dffe299;
	// synopsys translate_off
	initial
		dffe301 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe301 <= 1'b0;
		else if  (clken == 1'b1)   dffe301 <= dffe300;
	// synopsys translate_off
	initial
		dffe302 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe302 <= 1'b0;
		else if  (clken == 1'b1)   dffe302 <= dffe301;
	// synopsys translate_off
	initial
		dffe303 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe303 <= 1'b0;
		else if  (clken == 1'b1)   dffe303 <= dffe74;
	// synopsys translate_off
	initial
		dffe304 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe304 <= 1'b0;
		else if  (clken == 1'b1)   dffe304 <= dffe75;
	// synopsys translate_off
	initial
		dffe305 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe305 <= 1'b0;
		else if  (clken == 1'b1)   dffe305 <= wire_sft424a_out[15];
	// synopsys translate_off
	initial
		dffe306 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe306 <= 1'b0;
		else if  (clken == 1'b1)   dffe306 <= wire_sft419a_out[20];
	// synopsys translate_off
	initial
		dffe307 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe307 <= 1'b0;
		else if  (clken == 1'b1)   dffe307 <= dffe306;
	// synopsys translate_off
	initial
		dffe308 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe308 <= 1'b0;
		else if  (clken == 1'b1)   dffe308 <= dffe307;
	// synopsys translate_off
	initial
		dffe309 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe309 <= 1'b0;
		else if  (clken == 1'b1)   dffe309 <= dffe308;
	// synopsys translate_off
	initial
		dffe31 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe31 <= 1'b0;
		else if  (clken == 1'b1)   dffe31 <= w_sum_node10w[36];
	// synopsys translate_off
	initial
		dffe310 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe310 <= 1'b0;
		else if  (clken == 1'b1)   dffe310 <= dffe309;
	// synopsys translate_off
	initial
		dffe311 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe311 <= 1'b0;
		else if  (clken == 1'b1)   dffe311 <= dffe310;
	// synopsys translate_off
	initial
		dffe312 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe312 <= 1'b0;
		else if  (clken == 1'b1)   dffe312 <= dffe78;
	// synopsys translate_off
	initial
		dffe313 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe313 <= 1'b0;
		else if  (clken == 1'b1)   dffe313 <= dffe79;
	// synopsys translate_off
	initial
		dffe314 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe314 <= 1'b0;
		else if  (clken == 1'b1)   dffe314 <= wire_sft424a_out[16];
	// synopsys translate_off
	initial
		dffe315 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe315 <= 1'b0;
		else if  (clken == 1'b1)   dffe315 <= wire_sft419a_out[21];
	// synopsys translate_off
	initial
		dffe316 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe316 <= 1'b0;
		else if  (clken == 1'b1)   dffe316 <= dffe315;
	// synopsys translate_off
	initial
		dffe317 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe317 <= 1'b0;
		else if  (clken == 1'b1)   dffe317 <= dffe316;
	// synopsys translate_off
	initial
		dffe318 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe318 <= 1'b0;
		else if  (clken == 1'b1)   dffe318 <= dffe317;
	// synopsys translate_off
	initial
		dffe319 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe319 <= 1'b0;
		else if  (clken == 1'b1)   dffe319 <= dffe318;
	// synopsys translate_off
	initial
		dffe32 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe32 <= 1'b0;
		else if  (clken == 1'b1)   dffe32 <= w_sum_node10w[88];
	// synopsys translate_off
	initial
		dffe320 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe320 <= 1'b0;
		else if  (clken == 1'b1)   dffe320 <= dffe319;
	// synopsys translate_off
	initial
		dffe321 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe321 <= 1'b0;
		else if  (clken == 1'b1)   dffe321 <= dffe82;
	// synopsys translate_off
	initial
		dffe322 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe322 <= 1'b0;
		else if  (clken == 1'b1)   dffe322 <= dffe83;
	// synopsys translate_off
	initial
		dffe323 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe323 <= 1'b0;
		else if  (clken == 1'b1)   dffe323 <= wire_sft424a_out[17];
	// synopsys translate_off
	initial
		dffe324 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe324 <= 1'b0;
		else if  (clken == 1'b1)   dffe324 <= wire_sft419a_out[22];
	// synopsys translate_off
	initial
		dffe325 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe325 <= 1'b0;
		else if  (clken == 1'b1)   dffe325 <= dffe324;
	// synopsys translate_off
	initial
		dffe326 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe326 <= 1'b0;
		else if  (clken == 1'b1)   dffe326 <= dffe325;
	// synopsys translate_off
	initial
		dffe327 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe327 <= 1'b0;
		else if  (clken == 1'b1)   dffe327 <= dffe326;
	// synopsys translate_off
	initial
		dffe328 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe328 <= 1'b0;
		else if  (clken == 1'b1)   dffe328 <= dffe327;
	// synopsys translate_off
	initial
		dffe329 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe329 <= 1'b0;
		else if  (clken == 1'b1)   dffe329 <= dffe328;
	// synopsys translate_off
	initial
		dffe33 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe33 <= 1'b0;
		else if  (clken == 1'b1)   dffe33 <= w_sum_node10w[62];
	// synopsys translate_off
	initial
		dffe330 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe330 <= 1'b0;
		else if  (clken == 1'b1)   dffe330 <= dffe86;
	// synopsys translate_off
	initial
		dffe331 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe331 <= 1'b0;
		else if  (clken == 1'b1)   dffe331 <= dffe87;
	// synopsys translate_off
	initial
		dffe332 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe332 <= 1'b0;
		else if  (clken == 1'b1)   dffe332 <= wire_sft424a_out[18];
	// synopsys translate_off
	initial
		dffe333 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe333 <= 1'b0;
		else if  (clken == 1'b1)   dffe333 <= wire_sft419a_out[23];
	// synopsys translate_off
	initial
		dffe334 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe334 <= 1'b0;
		else if  (clken == 1'b1)   dffe334 <= dffe333;
	// synopsys translate_off
	initial
		dffe335 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe335 <= 1'b0;
		else if  (clken == 1'b1)   dffe335 <= dffe334;
	// synopsys translate_off
	initial
		dffe336 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe336 <= 1'b0;
		else if  (clken == 1'b1)   dffe336 <= dffe335;
	// synopsys translate_off
	initial
		dffe337 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe337 <= 1'b0;
		else if  (clken == 1'b1)   dffe337 <= dffe336;
	// synopsys translate_off
	initial
		dffe338 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe338 <= 1'b0;
		else if  (clken == 1'b1)   dffe338 <= dffe337;
	// synopsys translate_off
	initial
		dffe339 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe339 <= 1'b0;
		else if  (clken == 1'b1)   dffe339 <= dffe90;
	// synopsys translate_off
	initial
		dffe34 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe34 <= 1'b0;
		else if  (clken == 1'b1)   dffe34 <= w_sum_node10w[11];
	// synopsys translate_off
	initial
		dffe340 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe340 <= 1'b0;
		else if  (clken == 1'b1)   dffe340 <= dffe91;
	// synopsys translate_off
	initial
		dffe341 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe341 <= 1'b0;
		else if  (clken == 1'b1)   dffe341 <= wire_sft424a_out[19];
	// synopsys translate_off
	initial
		dffe342 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe342 <= 1'b0;
		else if  (clken == 1'b1)   dffe342 <= wire_sft419a_out[24];
	// synopsys translate_off
	initial
		dffe343 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe343 <= 1'b0;
		else if  (clken == 1'b1)   dffe343 <= dffe342;
	// synopsys translate_off
	initial
		dffe344 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe344 <= 1'b0;
		else if  (clken == 1'b1)   dffe344 <= dffe343;
	// synopsys translate_off
	initial
		dffe345 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe345 <= 1'b0;
		else if  (clken == 1'b1)   dffe345 <= dffe344;
	// synopsys translate_off
	initial
		dffe346 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe346 <= 1'b0;
		else if  (clken == 1'b1)   dffe346 <= dffe345;
	// synopsys translate_off
	initial
		dffe347 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe347 <= 1'b0;
		else if  (clken == 1'b1)   dffe347 <= dffe346;
	// synopsys translate_off
	initial
		dffe348 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe348 <= 1'b0;
		else if  (clken == 1'b1)   dffe348 <= dffe94;
	// synopsys translate_off
	initial
		dffe349 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe349 <= 1'b0;
		else if  (clken == 1'b1)   dffe349 <= dffe95;
	// synopsys translate_off
	initial
		dffe35 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe35 <= 1'b0;
		else if  (clken == 1'b1)   dffe35 <= w_sum_node10w[37];
	// synopsys translate_off
	initial
		dffe350 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe350 <= 1'b0;
		else if  (clken == 1'b1)   dffe350 <= wire_sft424a_out[20];
	// synopsys translate_off
	initial
		dffe351 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe351 <= 1'b0;
		else if  (clken == 1'b1)   dffe351 <= wire_sft419a_out[25];
	// synopsys translate_off
	initial
		dffe352 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe352 <= 1'b0;
		else if  (clken == 1'b1)   dffe352 <= dffe351;
	// synopsys translate_off
	initial
		dffe353 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe353 <= 1'b0;
		else if  (clken == 1'b1)   dffe353 <= dffe352;
	// synopsys translate_off
	initial
		dffe354 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe354 <= 1'b0;
		else if  (clken == 1'b1)   dffe354 <= dffe353;
	// synopsys translate_off
	initial
		dffe355 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe355 <= 1'b0;
		else if  (clken == 1'b1)   dffe355 <= dffe354;
	// synopsys translate_off
	initial
		dffe356 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe356 <= 1'b0;
		else if  (clken == 1'b1)   dffe356 <= dffe355;
	// synopsys translate_off
	initial
		dffe357 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe357 <= 1'b0;
		else if  (clken == 1'b1)   dffe357 <= dffe98;
	// synopsys translate_off
	initial
		dffe358 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe358 <= 1'b0;
		else if  (clken == 1'b1)   dffe358 <= dffe99;
	// synopsys translate_off
	initial
		dffe359 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe359 <= 1'b0;
		else if  (clken == 1'b1)   dffe359 <= wire_sft424a_out[21];
	// synopsys translate_off
	initial
		dffe36 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe36 <= 1'b0;
		else if  (clken == 1'b1)   dffe36 <= w_sum_node10w[89];
	// synopsys translate_off
	initial
		dffe360 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe360 <= 1'b0;
		else if  (clken == 1'b1)   dffe360 <= wire_sft419a_out[26];
	// synopsys translate_off
	initial
		dffe361 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe361 <= 1'b0;
		else if  (clken == 1'b1)   dffe361 <= dffe360;
	// synopsys translate_off
	initial
		dffe362 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe362 <= 1'b0;
		else if  (clken == 1'b1)   dffe362 <= dffe361;
	// synopsys translate_off
	initial
		dffe363 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe363 <= 1'b0;
		else if  (clken == 1'b1)   dffe363 <= dffe362;
	// synopsys translate_off
	initial
		dffe364 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe364 <= 1'b0;
		else if  (clken == 1'b1)   dffe364 <= dffe363;
	// synopsys translate_off
	initial
		dffe365 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe365 <= 1'b0;
		else if  (clken == 1'b1)   dffe365 <= dffe364;
	// synopsys translate_off
	initial
		dffe366 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe366 <= 1'b0;
		else if  (clken == 1'b1)   dffe366 <= dffe104;
	// synopsys translate_off
	initial
		dffe367 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe367 <= 1'b0;
		else if  (clken == 1'b1)   dffe367 <= dffe103;
	// synopsys translate_off
	initial
		dffe368 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe368 <= 1'b0;
		else if  (clken == 1'b1)   dffe368 <= wire_sft424a_out[22];
	// synopsys translate_off
	initial
		dffe369 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe369 <= 1'b0;
		else if  (clken == 1'b1)   dffe369 <= wire_sft419a_out[27];
	// synopsys translate_off
	initial
		dffe37 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe37 <= 1'b0;
		else if  (clken == 1'b1)   dffe37 <= w_sum_node10w[63];
	// synopsys translate_off
	initial
		dffe370 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe370 <= 1'b0;
		else if  (clken == 1'b1)   dffe370 <= dffe369;
	// synopsys translate_off
	initial
		dffe371 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe371 <= 1'b0;
		else if  (clken == 1'b1)   dffe371 <= dffe370;
	// synopsys translate_off
	initial
		dffe372 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe372 <= 1'b0;
		else if  (clken == 1'b1)   dffe372 <= dffe371;
	// synopsys translate_off
	initial
		dffe373 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe373 <= 1'b0;
		else if  (clken == 1'b1)   dffe373 <= dffe372;
	// synopsys translate_off
	initial
		dffe374 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe374 <= 1'b0;
		else if  (clken == 1'b1)   dffe374 <= dffe373;
	// synopsys translate_off
	initial
		dffe375 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe375 <= 1'b0;
		else if  (clken == 1'b1)   dffe375 <= dffe107;
	// synopsys translate_off
	initial
		dffe376 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe376 <= 1'b0;
		else if  (clken == 1'b1)   dffe376 <= dffe106;
	// synopsys translate_off
	initial
		dffe377 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe377 <= 1'b0;
		else if  (clken == 1'b1)   dffe377 <= wire_sft424a_out[23];
	// synopsys translate_off
	initial
		dffe378 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe378 <= 1'b0;
		else if  (clken == 1'b1)   dffe378 <= wire_sft419a_out[28];
	// synopsys translate_off
	initial
		dffe379 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe379 <= 1'b0;
		else if  (clken == 1'b1)   dffe379 <= dffe378;
	// synopsys translate_off
	initial
		dffe38 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe38 <= 1'b0;
		else if  (clken == 1'b1)   dffe38 <= w_sum_node10w[12];
	// synopsys translate_off
	initial
		dffe380 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe380 <= 1'b0;
		else if  (clken == 1'b1)   dffe380 <= dffe379;
	// synopsys translate_off
	initial
		dffe381 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe381 <= 1'b0;
		else if  (clken == 1'b1)   dffe381 <= dffe380;
	// synopsys translate_off
	initial
		dffe382 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe382 <= 1'b0;
		else if  (clken == 1'b1)   dffe382 <= dffe381;
	// synopsys translate_off
	initial
		dffe383 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe383 <= 1'b0;
		else if  (clken == 1'b1)   dffe383 <= dffe382;
	// synopsys translate_off
	initial
		dffe384 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe384 <= 1'b0;
		else if  (clken == 1'b1)   dffe384 <= dffe108;
	// synopsys translate_off
	initial
		dffe385 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe385 <= 1'b0;
		else if  (clken == 1'b1)   dffe385 <= dffe109;
	// synopsys translate_off
	initial
		dffe386 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe386 <= 1'b0;
		else if  (clken == 1'b1)   dffe386 <= wire_sft424a_out[24];
	// synopsys translate_off
	initial
		dffe387 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe387 <= 1'b0;
		else if  (clken == 1'b1)   dffe387 <= wire_sft419a_out[29];
	// synopsys translate_off
	initial
		dffe388 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe388 <= 1'b0;
		else if  (clken == 1'b1)   dffe388 <= dffe387;
	// synopsys translate_off
	initial
		dffe389 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe389 <= 1'b0;
		else if  (clken == 1'b1)   dffe389 <= dffe388;
	// synopsys translate_off
	initial
		dffe39 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe39 <= 1'b0;
		else if  (clken == 1'b1)   dffe39 <= w_sum_node10w[38];
	// synopsys translate_off
	initial
		dffe390 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe390 <= 1'b0;
		else if  (clken == 1'b1)   dffe390 <= dffe389;
	// synopsys translate_off
	initial
		dffe391 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe391 <= 1'b0;
		else if  (clken == 1'b1)   dffe391 <= dffe390;
	// synopsys translate_off
	initial
		dffe392 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe392 <= 1'b0;
		else if  (clken == 1'b1)   dffe392 <= dffe391;
	// synopsys translate_off
	initial
		dffe393 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe393 <= 1'b0;
		else if  (clken == 1'b1)   dffe393 <= dffe110;
	// synopsys translate_off
	initial
		dffe394 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe394 <= 1'b0;
		else if  (clken == 1'b1)   dffe394 <= dffe111;
	// synopsys translate_off
	initial
		dffe395 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe395 <= 1'b0;
		else if  (clken == 1'b1)   dffe395 <= wire_sft419a_out[30];
	// synopsys translate_off
	initial
		dffe396 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe396 <= 1'b0;
		else if  (clken == 1'b1)   dffe396 <= dffe395;
	// synopsys translate_off
	initial
		dffe397 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe397 <= 1'b0;
		else if  (clken == 1'b1)   dffe397 <= dffe396;
	// synopsys translate_off
	initial
		dffe398 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe398 <= 1'b0;
		else if  (clken == 1'b1)   dffe398 <= dffe397;
	// synopsys translate_off
	initial
		dffe399 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe399 <= 1'b0;
		else if  (clken == 1'b1)   dffe399 <= dffe398;
	// synopsys translate_off
	initial
		dffe4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe4 <= 1'b0;
		else if  (clken == 1'b1)   dffe4 <= w_sum_node10w[2];
	// synopsys translate_off
	initial
		dffe40 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe40 <= 1'b0;
		else if  (clken == 1'b1)   dffe40 <= w_sum_node10w[90];
	// synopsys translate_off
	initial
		dffe400 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe400 <= 1'b0;
		else if  (clken == 1'b1)   dffe400 <= dffe399;
	// synopsys translate_off
	initial
		dffe401 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe401 <= 1'b0;
		else if  (clken == 1'b1)   dffe401 <= dffe112;
	// synopsys translate_off
	initial
		dffe402 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe402 <= 1'b0;
		else if  (clken == 1'b1)   dffe402 <= wire_sft419a_out[31];
	// synopsys translate_off
	initial
		dffe403 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe403 <= 1'b0;
		else if  (clken == 1'b1)   dffe403 <= dffe402;
	// synopsys translate_off
	initial
		dffe404 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe404 <= 1'b0;
		else if  (clken == 1'b1)   dffe404 <= dffe403;
	// synopsys translate_off
	initial
		dffe405 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe405 <= 1'b0;
		else if  (clken == 1'b1)   dffe405 <= dffe404;
	// synopsys translate_off
	initial
		dffe406 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe406 <= 1'b0;
		else if  (clken == 1'b1)   dffe406 <= dffe405;
	// synopsys translate_off
	initial
		dffe407 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe407 <= 1'b0;
		else if  (clken == 1'b1)   dffe407 <= dffe406;
	// synopsys translate_off
	initial
		dffe408 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe408 <= 1'b0;
		else if  (clken == 1'b1)   dffe408 <= dffe113;
	// synopsys translate_off
	initial
		dffe409 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe409 <= 1'b0;
		else if  (clken == 1'b1)   dffe409 <= wire_sft419a_out[32];
	// synopsys translate_off
	initial
		dffe41 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe41 <= 1'b0;
		else if  (clken == 1'b1)   dffe41 <= w_sum_node10w[64];
	// synopsys translate_off
	initial
		dffe410 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe410 <= 1'b0;
		else if  (clken == 1'b1)   dffe410 <= dffe409;
	// synopsys translate_off
	initial
		dffe411 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe411 <= 1'b0;
		else if  (clken == 1'b1)   dffe411 <= dffe410;
	// synopsys translate_off
	initial
		dffe412 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe412 <= 1'b0;
		else if  (clken == 1'b1)   dffe412 <= dffe411;
	// synopsys translate_off
	initial
		dffe413 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe413 <= 1'b0;
		else if  (clken == 1'b1)   dffe413 <= dffe412;
	// synopsys translate_off
	initial
		dffe414 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe414 <= 1'b0;
		else if  (clken == 1'b1)   dffe414 <= dffe413;
	// synopsys translate_off
	initial
		dffe42 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe42 <= 1'b0;
		else if  (clken == 1'b1)   dffe42 <= w_sum_node10w[13];
	// synopsys translate_off
	initial
		dffe43 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe43 <= 1'b0;
		else if  (clken == 1'b1)   dffe43 <= w_sum_node10w[39];
	// synopsys translate_off
	initial
		dffe44 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe44 <= 1'b0;
		else if  (clken == 1'b1)   dffe44 <= w_sum_node10w[91];
	// synopsys translate_off
	initial
		dffe45 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe45 <= 1'b0;
		else if  (clken == 1'b1)   dffe45 <= w_sum_node10w[65];
	// synopsys translate_off
	initial
		dffe46 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe46 <= 1'b0;
		else if  (clken == 1'b1)   dffe46 <= w_sum_node10w[14];
	// synopsys translate_off
	initial
		dffe47 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe47 <= 1'b0;
		else if  (clken == 1'b1)   dffe47 <= w_sum_node10w[40];
	// synopsys translate_off
	initial
		dffe48 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe48 <= 1'b0;
		else if  (clken == 1'b1)   dffe48 <= w_sum_node10w[92];
	// synopsys translate_off
	initial
		dffe49 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe49 <= 1'b0;
		else if  (clken == 1'b1)   dffe49 <= w_sum_node10w[66];
	// synopsys translate_off
	initial
		dffe5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe5 <= 1'b0;
		else if  (clken == 1'b1)   dffe5 <= w_sum_node10w[28];
	// synopsys translate_off
	initial
		dffe50 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe50 <= 1'b0;
		else if  (clken == 1'b1)   dffe50 <= w_sum_node10w[15];
	// synopsys translate_off
	initial
		dffe51 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe51 <= 1'b0;
		else if  (clken == 1'b1)   dffe51 <= w_sum_node10w[41];
	// synopsys translate_off
	initial
		dffe52 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe52 <= 1'b0;
		else if  (clken == 1'b1)   dffe52 <= w_sum_node10w[93];
	// synopsys translate_off
	initial
		dffe53 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe53 <= 1'b0;
		else if  (clken == 1'b1)   dffe53 <= w_sum_node10w[67];
	// synopsys translate_off
	initial
		dffe54 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe54 <= 1'b0;
		else if  (clken == 1'b1)   dffe54 <= w_sum_node10w[16];
	// synopsys translate_off
	initial
		dffe55 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe55 <= 1'b0;
		else if  (clken == 1'b1)   dffe55 <= w_sum_node10w[42];
	// synopsys translate_off
	initial
		dffe56 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe56 <= 1'b0;
		else if  (clken == 1'b1)   dffe56 <= w_sum_node10w[94];
	// synopsys translate_off
	initial
		dffe57 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe57 <= 1'b0;
		else if  (clken == 1'b1)   dffe57 <= w_sum_node10w[68];
	// synopsys translate_off
	initial
		dffe58 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe58 <= 1'b0;
		else if  (clken == 1'b1)   dffe58 <= w_sum_node10w[17];
	// synopsys translate_off
	initial
		dffe59 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe59 <= 1'b0;
		else if  (clken == 1'b1)   dffe59 <= w_sum_node10w[43];
	// synopsys translate_off
	initial
		dffe6 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe6 <= 1'b0;
		else if  (clken == 1'b1)   dffe6 <= w_sum_node10w[3];
	// synopsys translate_off
	initial
		dffe60 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe60 <= 1'b0;
		else if  (clken == 1'b1)   dffe60 <= w_sum_node10w[95];
	// synopsys translate_off
	initial
		dffe61 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe61 <= 1'b0;
		else if  (clken == 1'b1)   dffe61 <= w_sum_node10w[69];
	// synopsys translate_off
	initial
		dffe62 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe62 <= 1'b0;
		else if  (clken == 1'b1)   dffe62 <= w_sum_node10w[18];
	// synopsys translate_off
	initial
		dffe63 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe63 <= 1'b0;
		else if  (clken == 1'b1)   dffe63 <= w_sum_node10w[44];
	// synopsys translate_off
	initial
		dffe64 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe64 <= 1'b0;
		else if  (clken == 1'b1)   dffe64 <= w_sum_node10w[96];
	// synopsys translate_off
	initial
		dffe65 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe65 <= 1'b0;
		else if  (clken == 1'b1)   dffe65 <= w_sum_node10w[70];
	// synopsys translate_off
	initial
		dffe66 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe66 <= 1'b0;
		else if  (clken == 1'b1)   dffe66 <= w_sum_node10w[19];
	// synopsys translate_off
	initial
		dffe67 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe67 <= 1'b0;
		else if  (clken == 1'b1)   dffe67 <= w_sum_node10w[45];
	// synopsys translate_off
	initial
		dffe68 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe68 <= 1'b0;
		else if  (clken == 1'b1)   dffe68 <= w_sum_node10w[97];
	// synopsys translate_off
	initial
		dffe69 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe69 <= 1'b0;
		else if  (clken == 1'b1)   dffe69 <= w_sum_node10w[71];
	// synopsys translate_off
	initial
		dffe7 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe7 <= 1'b0;
		else if  (clken == 1'b1)   dffe7 <= w_sum_node10w[29];
	// synopsys translate_off
	initial
		dffe70 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe70 <= 1'b0;
		else if  (clken == 1'b1)   dffe70 <= w_sum_node10w[20];
	// synopsys translate_off
	initial
		dffe71 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe71 <= 1'b0;
		else if  (clken == 1'b1)   dffe71 <= w_sum_node10w[46];
	// synopsys translate_off
	initial
		dffe72 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe72 <= 1'b0;
		else if  (clken == 1'b1)   dffe72 <= w_sum_node10w[98];
	// synopsys translate_off
	initial
		dffe73 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe73 <= 1'b0;
		else if  (clken == 1'b1)   dffe73 <= w_sum_node10w[72];
	// synopsys translate_off
	initial
		dffe74 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe74 <= 1'b0;
		else if  (clken == 1'b1)   dffe74 <= w_sum_node10w[21];
	// synopsys translate_off
	initial
		dffe75 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe75 <= 1'b0;
		else if  (clken == 1'b1)   dffe75 <= w_sum_node10w[47];
	// synopsys translate_off
	initial
		dffe76 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe76 <= 1'b0;
		else if  (clken == 1'b1)   dffe76 <= w_sum_node10w[99];
	// synopsys translate_off
	initial
		dffe77 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe77 <= 1'b0;
		else if  (clken == 1'b1)   dffe77 <= w_sum_node10w[73];
	// synopsys translate_off
	initial
		dffe78 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe78 <= 1'b0;
		else if  (clken == 1'b1)   dffe78 <= w_sum_node10w[22];
	// synopsys translate_off
	initial
		dffe79 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe79 <= 1'b0;
		else if  (clken == 1'b1)   dffe79 <= w_sum_node10w[48];
	// synopsys translate_off
	initial
		dffe8 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe8 <= 1'b0;
		else if  (clken == 1'b1)   dffe8 <= w_sum_node10w[4];
	// synopsys translate_off
	initial
		dffe80 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe80 <= 1'b0;
		else if  (clken == 1'b1)   dffe80 <= w_sum_node10w[100];
	// synopsys translate_off
	initial
		dffe81 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe81 <= 1'b0;
		else if  (clken == 1'b1)   dffe81 <= w_sum_node10w[74];
	// synopsys translate_off
	initial
		dffe82 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe82 <= 1'b0;
		else if  (clken == 1'b1)   dffe82 <= w_sum_node10w[23];
	// synopsys translate_off
	initial
		dffe83 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe83 <= 1'b0;
		else if  (clken == 1'b1)   dffe83 <= w_sum_node10w[49];
	// synopsys translate_off
	initial
		dffe84 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe84 <= 1'b0;
		else if  (clken == 1'b1)   dffe84 <= w_sum_node10w[101];
	// synopsys translate_off
	initial
		dffe85 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe85 <= 1'b0;
		else if  (clken == 1'b1)   dffe85 <= w_sum_node10w[75];
	// synopsys translate_off
	initial
		dffe86 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe86 <= 1'b0;
		else if  (clken == 1'b1)   dffe86 <= w_sum_node10w[24];
	// synopsys translate_off
	initial
		dffe87 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe87 <= 1'b0;
		else if  (clken == 1'b1)   dffe87 <= w_sum_node10w[50];
	// synopsys translate_off
	initial
		dffe88 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe88 <= 1'b0;
		else if  (clken == 1'b1)   dffe88 <= w_sum_node10w[102];
	// synopsys translate_off
	initial
		dffe89 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe89 <= 1'b0;
		else if  (clken == 1'b1)   dffe89 <= w_sum_node10w[76];
	// synopsys translate_off
	initial
		dffe9 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe9 <= 1'b0;
		else if  (clken == 1'b1)   dffe9 <= w_sum_node10w[30];
	// synopsys translate_off
	initial
		dffe90 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe90 <= 1'b0;
		else if  (clken == 1'b1)   dffe90 <= w_sum_node10w[25];
	// synopsys translate_off
	initial
		dffe91 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe91 <= 1'b0;
		else if  (clken == 1'b1)   dffe91 <= w_sum_node10w[51];
	// synopsys translate_off
	initial
		dffe92 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe92 <= 1'b0;
		else if  (clken == 1'b1)   dffe92 <= w_sum_node10w[103];
	// synopsys translate_off
	initial
		dffe93 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe93 <= 1'b0;
		else if  (clken == 1'b1)   dffe93 <= w_sum_node10w[77];
	// synopsys translate_off
	initial
		dffe94 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe94 <= 1'b0;
		else if  (clken == 1'b1)   dffe94 <= w_sum_node10w[26];
	// synopsys translate_off
	initial
		dffe95 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe95 <= 1'b0;
		else if  (clken == 1'b1)   dffe95 <= w_sum_node10w[52];
	// synopsys translate_off
	initial
		dffe96 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe96 <= 1'b0;
		else if  (clken == 1'b1)   dffe96 <= w_sum_node10w[104];
	// synopsys translate_off
	initial
		dffe97 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe97 <= 1'b0;
		else if  (clken == 1'b1)   dffe97 <= w_sum_node10w[78];
	// synopsys translate_off
	initial
		dffe98 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe98 <= 1'b0;
		else if  (clken == 1'b1)   dffe98 <= w_sum_node10w[27];
	// synopsys translate_off
	initial
		dffe99 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe99 <= 1'b0;
		else if  (clken == 1'b1)   dffe99 <= w_sum_node10w[53];
	assign
		wire_sum_adder1aa_0result = wire_sum_adder1aa_0dataa + wire_sum_adder1aa_0datab;
	assign
		wire_sum_adder1aa_0dataa = {1'b0, w_decoder_node9w[51:26]},
		wire_sum_adder1aa_0datab = {{2{1'b0}}, w_decoder_node9w[25:1]};
	assign
		wire_sum_adder1aa_1result = wire_sum_adder1aa_1dataa + wire_sum_adder1aa_1datab;
	assign
		wire_sum_adder1aa_1dataa = {1'b0, w_decoder_node9w[103:78]},
		wire_sum_adder1aa_1datab = {{2{1'b0}}, w_decoder_node9w[77:53]};
	assign
		wire_sum_adder1aa_2result = wire_sum_adder1aa_2dataa + wire_sum_adder1aa_2datab;
	assign
		wire_sum_adder1aa_2dataa = {1'b0, w_decoder_node9w[155:130]},
		wire_sum_adder1aa_2datab = {{2{1'b0}}, w_decoder_node9w[129:105]};
	assign
		wire_sum_adder1aa_3result = wire_sum_adder1aa_3dataa + wire_sum_adder1aa_3datab;
	assign
		wire_sum_adder1aa_3dataa = {1'b0, w_decoder_node9w[207:182]},
		wire_sum_adder1aa_3datab = {{2{1'b0}}, w_decoder_node9w[181:157]};
	soft   sft416a_0
	( 
	.in(wire_sft416a_in[0:0]),
	.out(wire_sft416a_out[0:0]));
	soft   sft416a_1
	( 
	.in(wire_sft416a_in[1:1]),
	.out(wire_sft416a_out[1:1]));
	soft   sft416a_2
	( 
	.in(wire_sft416a_in[2:2]),
	.out(wire_sft416a_out[2:2]));
	soft   sft416a_3
	( 
	.in(wire_sft416a_in[3:3]),
	.out(wire_sft416a_out[3:3]));
	soft   sft416a_4
	( 
	.in(wire_sft416a_in[4:4]),
	.out(wire_sft416a_out[4:4]));
	soft   sft416a_5
	( 
	.in(wire_sft416a_in[5:5]),
	.out(wire_sft416a_out[5:5]));
	soft   sft416a_6
	( 
	.in(wire_sft416a_in[6:6]),
	.out(wire_sft416a_out[6:6]));
	soft   sft416a_7
	( 
	.in(wire_sft416a_in[7:7]),
	.out(wire_sft416a_out[7:7]));
	soft   sft416a_8
	( 
	.in(wire_sft416a_in[8:8]),
	.out(wire_sft416a_out[8:8]));
	soft   sft416a_9
	( 
	.in(wire_sft416a_in[9:9]),
	.out(wire_sft416a_out[9:9]));
	soft   sft416a_10
	( 
	.in(wire_sft416a_in[10:10]),
	.out(wire_sft416a_out[10:10]));
	soft   sft416a_11
	( 
	.in(wire_sft416a_in[11:11]),
	.out(wire_sft416a_out[11:11]));
	soft   sft416a_12
	( 
	.in(wire_sft416a_in[12:12]),
	.out(wire_sft416a_out[12:12]));
	soft   sft416a_13
	( 
	.in(wire_sft416a_in[13:13]),
	.out(wire_sft416a_out[13:13]));
	soft   sft416a_14
	( 
	.in(wire_sft416a_in[14:14]),
	.out(wire_sft416a_out[14:14]));
	soft   sft416a_15
	( 
	.in(wire_sft416a_in[15:15]),
	.out(wire_sft416a_out[15:15]));
	soft   sft416a_16
	( 
	.in(wire_sft416a_in[16:16]),
	.out(wire_sft416a_out[16:16]));
	soft   sft416a_17
	( 
	.in(wire_sft416a_in[17:17]),
	.out(wire_sft416a_out[17:17]));
	soft   sft416a_18
	( 
	.in(wire_sft416a_in[18:18]),
	.out(wire_sft416a_out[18:18]));
	soft   sft416a_19
	( 
	.in(wire_sft416a_in[19:19]),
	.out(wire_sft416a_out[19:19]));
	soft   sft416a_20
	( 
	.in(wire_sft416a_in[20:20]),
	.out(wire_sft416a_out[20:20]));
	soft   sft416a_21
	( 
	.in(wire_sft416a_in[21:21]),
	.out(wire_sft416a_out[21:21]));
	soft   sft416a_22
	( 
	.in(wire_sft416a_in[22:22]),
	.out(wire_sft416a_out[22:22]));
	soft   sft416a_23
	( 
	.in(wire_sft416a_in[23:23]),
	.out(wire_sft416a_out[23:23]));
	soft   sft416a_24
	( 
	.in(wire_sft416a_in[24:24]),
	.out(wire_sft416a_out[24:24]));
	soft   sft416a_25
	( 
	.in(wire_sft416a_in[25:25]),
	.out(wire_sft416a_out[25:25]));
	soft   sft416a_26
	( 
	.in(wire_sft416a_in[26:26]),
	.out(wire_sft416a_out[26:26]));
	soft   sft416a_27
	( 
	.in(wire_sft416a_in[27:27]),
	.out(wire_sft416a_out[27:27]));
	soft   sft416a_28
	( 
	.in(wire_sft416a_in[28:28]),
	.out(wire_sft416a_out[28:28]));
	soft   sft416a_29
	( 
	.in(wire_sft416a_in[29:29]),
	.out(wire_sft416a_out[29:29]));
	soft   sft416a_30
	( 
	.in(wire_sft416a_in[30:30]),
	.out(wire_sft416a_out[30:30]));
	soft   sft416a_31
	( 
	.in(wire_sft416a_in[31:31]),
	.out(wire_sft416a_out[31:31]));
	soft   sft416a_32
	( 
	.in(wire_sft416a_in[32:32]),
	.out(wire_sft416a_out[32:32]));
	assign
		wire_sft416a_in = {w274w, {dffe408, {dffe401, {dffe393, {dffe384, {dffe375, {dffe366, {dffe357, {dffe348, {dffe339, {dffe330, {dffe321, {dffe312, {dffe303, {dffe294, {dffe285, {dffe276, {dffe267, {dffe258, {dffe249, {dffe240, {dffe231, {dffe222, {dffe213, {dffe204, {dffe195, {dffe186, {dffe177, {dffe168, {dffe159, {dffe150, {dffe142, dffe134}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft417a_0
	( 
	.in(wire_sft417a_in[0:0]),
	.out(wire_sft417a_out[0:0]));
	soft   sft417a_1
	( 
	.in(wire_sft417a_in[1:1]),
	.out(wire_sft417a_out[1:1]));
	soft   sft417a_2
	( 
	.in(wire_sft417a_in[2:2]),
	.out(wire_sft417a_out[2:2]));
	soft   sft417a_3
	( 
	.in(wire_sft417a_in[3:3]),
	.out(wire_sft417a_out[3:3]));
	soft   sft417a_4
	( 
	.in(wire_sft417a_in[4:4]),
	.out(wire_sft417a_out[4:4]));
	soft   sft417a_5
	( 
	.in(wire_sft417a_in[5:5]),
	.out(wire_sft417a_out[5:5]));
	soft   sft417a_6
	( 
	.in(wire_sft417a_in[6:6]),
	.out(wire_sft417a_out[6:6]));
	soft   sft417a_7
	( 
	.in(wire_sft417a_in[7:7]),
	.out(wire_sft417a_out[7:7]));
	soft   sft417a_8
	( 
	.in(wire_sft417a_in[8:8]),
	.out(wire_sft417a_out[8:8]));
	soft   sft417a_9
	( 
	.in(wire_sft417a_in[9:9]),
	.out(wire_sft417a_out[9:9]));
	soft   sft417a_10
	( 
	.in(wire_sft417a_in[10:10]),
	.out(wire_sft417a_out[10:10]));
	soft   sft417a_11
	( 
	.in(wire_sft417a_in[11:11]),
	.out(wire_sft417a_out[11:11]));
	soft   sft417a_12
	( 
	.in(wire_sft417a_in[12:12]),
	.out(wire_sft417a_out[12:12]));
	soft   sft417a_13
	( 
	.in(wire_sft417a_in[13:13]),
	.out(wire_sft417a_out[13:13]));
	soft   sft417a_14
	( 
	.in(wire_sft417a_in[14:14]),
	.out(wire_sft417a_out[14:14]));
	soft   sft417a_15
	( 
	.in(wire_sft417a_in[15:15]),
	.out(wire_sft417a_out[15:15]));
	soft   sft417a_16
	( 
	.in(wire_sft417a_in[16:16]),
	.out(wire_sft417a_out[16:16]));
	soft   sft417a_17
	( 
	.in(wire_sft417a_in[17:17]),
	.out(wire_sft417a_out[17:17]));
	soft   sft417a_18
	( 
	.in(wire_sft417a_in[18:18]),
	.out(wire_sft417a_out[18:18]));
	soft   sft417a_19
	( 
	.in(wire_sft417a_in[19:19]),
	.out(wire_sft417a_out[19:19]));
	soft   sft417a_20
	( 
	.in(wire_sft417a_in[20:20]),
	.out(wire_sft417a_out[20:20]));
	soft   sft417a_21
	( 
	.in(wire_sft417a_in[21:21]),
	.out(wire_sft417a_out[21:21]));
	soft   sft417a_22
	( 
	.in(wire_sft417a_in[22:22]),
	.out(wire_sft417a_out[22:22]));
	soft   sft417a_23
	( 
	.in(wire_sft417a_in[23:23]),
	.out(wire_sft417a_out[23:23]));
	soft   sft417a_24
	( 
	.in(wire_sft417a_in[24:24]),
	.out(wire_sft417a_out[24:24]));
	soft   sft417a_25
	( 
	.in(wire_sft417a_in[25:25]),
	.out(wire_sft417a_out[25:25]));
	soft   sft417a_26
	( 
	.in(wire_sft417a_in[26:26]),
	.out(wire_sft417a_out[26:26]));
	soft   sft417a_27
	( 
	.in(wire_sft417a_in[27:27]),
	.out(wire_sft417a_out[27:27]));
	soft   sft417a_28
	( 
	.in(wire_sft417a_in[28:28]),
	.out(wire_sft417a_out[28:28]));
	soft   sft417a_29
	( 
	.in(wire_sft417a_in[29:29]),
	.out(wire_sft417a_out[29:29]));
	soft   sft417a_30
	( 
	.in(wire_sft417a_in[30:30]),
	.out(wire_sft417a_out[30:30]));
	soft   sft417a_31
	( 
	.in(wire_sft417a_in[31:31]),
	.out(wire_sft417a_out[31:31]));
	soft   sft417a_32
	( 
	.in(wire_sft417a_in[32:32]),
	.out(wire_sft417a_out[32:32]));
	assign
		wire_sft417a_in = {w274w, {w274w, {w274w, {dffe394, {dffe385, {dffe376, {dffe367, {dffe358, {dffe349, {dffe340, {dffe331, {dffe322, {dffe313, {dffe304, {dffe295, {dffe286, {dffe277, {dffe268, {dffe259, {dffe250, {dffe241, {dffe232, {dffe223, {dffe214, {dffe205, {dffe196, {dffe187, {dffe178, {dffe169, {dffe160, {dffe151, {dffe143, dffe135}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft418a_0
	( 
	.in(wire_sft418a_in[0:0]),
	.out(wire_sft418a_out[0:0]));
	soft   sft418a_1
	( 
	.in(wire_sft418a_in[1:1]),
	.out(wire_sft418a_out[1:1]));
	soft   sft418a_2
	( 
	.in(wire_sft418a_in[2:2]),
	.out(wire_sft418a_out[2:2]));
	soft   sft418a_3
	( 
	.in(wire_sft418a_in[3:3]),
	.out(wire_sft418a_out[3:3]));
	soft   sft418a_4
	( 
	.in(wire_sft418a_in[4:4]),
	.out(wire_sft418a_out[4:4]));
	soft   sft418a_5
	( 
	.in(wire_sft418a_in[5:5]),
	.out(wire_sft418a_out[5:5]));
	soft   sft418a_6
	( 
	.in(wire_sft418a_in[6:6]),
	.out(wire_sft418a_out[6:6]));
	soft   sft418a_7
	( 
	.in(wire_sft418a_in[7:7]),
	.out(wire_sft418a_out[7:7]));
	soft   sft418a_8
	( 
	.in(wire_sft418a_in[8:8]),
	.out(wire_sft418a_out[8:8]));
	soft   sft418a_9
	( 
	.in(wire_sft418a_in[9:9]),
	.out(wire_sft418a_out[9:9]));
	soft   sft418a_10
	( 
	.in(wire_sft418a_in[10:10]),
	.out(wire_sft418a_out[10:10]));
	soft   sft418a_11
	( 
	.in(wire_sft418a_in[11:11]),
	.out(wire_sft418a_out[11:11]));
	soft   sft418a_12
	( 
	.in(wire_sft418a_in[12:12]),
	.out(wire_sft418a_out[12:12]));
	soft   sft418a_13
	( 
	.in(wire_sft418a_in[13:13]),
	.out(wire_sft418a_out[13:13]));
	soft   sft418a_14
	( 
	.in(wire_sft418a_in[14:14]),
	.out(wire_sft418a_out[14:14]));
	soft   sft418a_15
	( 
	.in(wire_sft418a_in[15:15]),
	.out(wire_sft418a_out[15:15]));
	soft   sft418a_16
	( 
	.in(wire_sft418a_in[16:16]),
	.out(wire_sft418a_out[16:16]));
	soft   sft418a_17
	( 
	.in(wire_sft418a_in[17:17]),
	.out(wire_sft418a_out[17:17]));
	soft   sft418a_18
	( 
	.in(wire_sft418a_in[18:18]),
	.out(wire_sft418a_out[18:18]));
	soft   sft418a_19
	( 
	.in(wire_sft418a_in[19:19]),
	.out(wire_sft418a_out[19:19]));
	soft   sft418a_20
	( 
	.in(wire_sft418a_in[20:20]),
	.out(wire_sft418a_out[20:20]));
	soft   sft418a_21
	( 
	.in(wire_sft418a_in[21:21]),
	.out(wire_sft418a_out[21:21]));
	soft   sft418a_22
	( 
	.in(wire_sft418a_in[22:22]),
	.out(wire_sft418a_out[22:22]));
	soft   sft418a_23
	( 
	.in(wire_sft418a_in[23:23]),
	.out(wire_sft418a_out[23:23]));
	soft   sft418a_24
	( 
	.in(wire_sft418a_in[24:24]),
	.out(wire_sft418a_out[24:24]));
	soft   sft418a_25
	( 
	.in(wire_sft418a_in[25:25]),
	.out(wire_sft418a_out[25:25]));
	soft   sft418a_26
	( 
	.in(wire_sft418a_in[26:26]),
	.out(wire_sft418a_out[26:26]));
	soft   sft418a_27
	( 
	.in(wire_sft418a_in[27:27]),
	.out(wire_sft418a_out[27:27]));
	soft   sft418a_28
	( 
	.in(wire_sft418a_in[28:28]),
	.out(wire_sft418a_out[28:28]));
	soft   sft418a_29
	( 
	.in(wire_sft418a_in[29:29]),
	.out(wire_sft418a_out[29:29]));
	soft   sft418a_30
	( 
	.in(wire_sft418a_in[30:30]),
	.out(wire_sft418a_out[30:30]));
	soft   sft418a_31
	( 
	.in(wire_sft418a_in[31:31]),
	.out(wire_sft418a_out[31:31]));
	soft   sft418a_32
	( 
	.in(wire_sft418a_in[32:32]),
	.out(wire_sft418a_out[32:32]));
	assign
		wire_sft418a_in = {w274w, {w274w, {w274w, {w274w, {dffe386, {dffe377, {dffe368, {dffe359, {dffe350, {dffe341, {dffe332, {dffe323, {dffe314, {dffe305, {dffe296, {dffe287, {dffe278, {dffe269, {dffe260, {dffe251, {dffe242, {dffe233, {dffe224, {dffe215, {dffe206, {dffe197, {dffe188, {dffe179, {dffe170, {dffe161, {dffe152, {2{w274w}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft419a_0
	( 
	.in(wire_sft419a_in[0:0]),
	.out(wire_sft419a_out[0:0]));
	soft   sft419a_1
	( 
	.in(wire_sft419a_in[1:1]),
	.out(wire_sft419a_out[1:1]));
	soft   sft419a_2
	( 
	.in(wire_sft419a_in[2:2]),
	.out(wire_sft419a_out[2:2]));
	soft   sft419a_3
	( 
	.in(wire_sft419a_in[3:3]),
	.out(wire_sft419a_out[3:3]));
	soft   sft419a_4
	( 
	.in(wire_sft419a_in[4:4]),
	.out(wire_sft419a_out[4:4]));
	soft   sft419a_5
	( 
	.in(wire_sft419a_in[5:5]),
	.out(wire_sft419a_out[5:5]));
	soft   sft419a_6
	( 
	.in(wire_sft419a_in[6:6]),
	.out(wire_sft419a_out[6:6]));
	soft   sft419a_7
	( 
	.in(wire_sft419a_in[7:7]),
	.out(wire_sft419a_out[7:7]));
	soft   sft419a_8
	( 
	.in(wire_sft419a_in[8:8]),
	.out(wire_sft419a_out[8:8]));
	soft   sft419a_9
	( 
	.in(wire_sft419a_in[9:9]),
	.out(wire_sft419a_out[9:9]));
	soft   sft419a_10
	( 
	.in(wire_sft419a_in[10:10]),
	.out(wire_sft419a_out[10:10]));
	soft   sft419a_11
	( 
	.in(wire_sft419a_in[11:11]),
	.out(wire_sft419a_out[11:11]));
	soft   sft419a_12
	( 
	.in(wire_sft419a_in[12:12]),
	.out(wire_sft419a_out[12:12]));
	soft   sft419a_13
	( 
	.in(wire_sft419a_in[13:13]),
	.out(wire_sft419a_out[13:13]));
	soft   sft419a_14
	( 
	.in(wire_sft419a_in[14:14]),
	.out(wire_sft419a_out[14:14]));
	soft   sft419a_15
	( 
	.in(wire_sft419a_in[15:15]),
	.out(wire_sft419a_out[15:15]));
	soft   sft419a_16
	( 
	.in(wire_sft419a_in[16:16]),
	.out(wire_sft419a_out[16:16]));
	soft   sft419a_17
	( 
	.in(wire_sft419a_in[17:17]),
	.out(wire_sft419a_out[17:17]));
	soft   sft419a_18
	( 
	.in(wire_sft419a_in[18:18]),
	.out(wire_sft419a_out[18:18]));
	soft   sft419a_19
	( 
	.in(wire_sft419a_in[19:19]),
	.out(wire_sft419a_out[19:19]));
	soft   sft419a_20
	( 
	.in(wire_sft419a_in[20:20]),
	.out(wire_sft419a_out[20:20]));
	soft   sft419a_21
	( 
	.in(wire_sft419a_in[21:21]),
	.out(wire_sft419a_out[21:21]));
	soft   sft419a_22
	( 
	.in(wire_sft419a_in[22:22]),
	.out(wire_sft419a_out[22:22]));
	soft   sft419a_23
	( 
	.in(wire_sft419a_in[23:23]),
	.out(wire_sft419a_out[23:23]));
	soft   sft419a_24
	( 
	.in(wire_sft419a_in[24:24]),
	.out(wire_sft419a_out[24:24]));
	soft   sft419a_25
	( 
	.in(wire_sft419a_in[25:25]),
	.out(wire_sft419a_out[25:25]));
	soft   sft419a_26
	( 
	.in(wire_sft419a_in[26:26]),
	.out(wire_sft419a_out[26:26]));
	soft   sft419a_27
	( 
	.in(wire_sft419a_in[27:27]),
	.out(wire_sft419a_out[27:27]));
	soft   sft419a_28
	( 
	.in(wire_sft419a_in[28:28]),
	.out(wire_sft419a_out[28:28]));
	soft   sft419a_29
	( 
	.in(wire_sft419a_in[29:29]),
	.out(wire_sft419a_out[29:29]));
	soft   sft419a_30
	( 
	.in(wire_sft419a_in[30:30]),
	.out(wire_sft419a_out[30:30]));
	soft   sft419a_31
	( 
	.in(wire_sft419a_in[31:31]),
	.out(wire_sft419a_out[31:31]));
	soft   sft419a_32
	( 
	.in(wire_sft419a_in[32:32]),
	.out(wire_sft419a_out[32:32]));
	assign
		wire_sft419a_in = wire_add415_result;
	soft   sft421a_0
	( 
	.in(wire_sft421a_in[0:0]),
	.out(wire_sft421a_out[0:0]));
	soft   sft421a_1
	( 
	.in(wire_sft421a_in[1:1]),
	.out(wire_sft421a_out[1:1]));
	soft   sft421a_2
	( 
	.in(wire_sft421a_in[2:2]),
	.out(wire_sft421a_out[2:2]));
	soft   sft421a_3
	( 
	.in(wire_sft421a_in[3:3]),
	.out(wire_sft421a_out[3:3]));
	soft   sft421a_4
	( 
	.in(wire_sft421a_in[4:4]),
	.out(wire_sft421a_out[4:4]));
	soft   sft421a_5
	( 
	.in(wire_sft421a_in[5:5]),
	.out(wire_sft421a_out[5:5]));
	soft   sft421a_6
	( 
	.in(wire_sft421a_in[6:6]),
	.out(wire_sft421a_out[6:6]));
	soft   sft421a_7
	( 
	.in(wire_sft421a_in[7:7]),
	.out(wire_sft421a_out[7:7]));
	soft   sft421a_8
	( 
	.in(wire_sft421a_in[8:8]),
	.out(wire_sft421a_out[8:8]));
	soft   sft421a_9
	( 
	.in(wire_sft421a_in[9:9]),
	.out(wire_sft421a_out[9:9]));
	soft   sft421a_10
	( 
	.in(wire_sft421a_in[10:10]),
	.out(wire_sft421a_out[10:10]));
	soft   sft421a_11
	( 
	.in(wire_sft421a_in[11:11]),
	.out(wire_sft421a_out[11:11]));
	soft   sft421a_12
	( 
	.in(wire_sft421a_in[12:12]),
	.out(wire_sft421a_out[12:12]));
	soft   sft421a_13
	( 
	.in(wire_sft421a_in[13:13]),
	.out(wire_sft421a_out[13:13]));
	soft   sft421a_14
	( 
	.in(wire_sft421a_in[14:14]),
	.out(wire_sft421a_out[14:14]));
	soft   sft421a_15
	( 
	.in(wire_sft421a_in[15:15]),
	.out(wire_sft421a_out[15:15]));
	soft   sft421a_16
	( 
	.in(wire_sft421a_in[16:16]),
	.out(wire_sft421a_out[16:16]));
	soft   sft421a_17
	( 
	.in(wire_sft421a_in[17:17]),
	.out(wire_sft421a_out[17:17]));
	soft   sft421a_18
	( 
	.in(wire_sft421a_in[18:18]),
	.out(wire_sft421a_out[18:18]));
	soft   sft421a_19
	( 
	.in(wire_sft421a_in[19:19]),
	.out(wire_sft421a_out[19:19]));
	soft   sft421a_20
	( 
	.in(wire_sft421a_in[20:20]),
	.out(wire_sft421a_out[20:20]));
	soft   sft421a_21
	( 
	.in(wire_sft421a_in[21:21]),
	.out(wire_sft421a_out[21:21]));
	soft   sft421a_22
	( 
	.in(wire_sft421a_in[22:22]),
	.out(wire_sft421a_out[22:22]));
	soft   sft421a_23
	( 
	.in(wire_sft421a_in[23:23]),
	.out(wire_sft421a_out[23:23]));
	soft   sft421a_24
	( 
	.in(wire_sft421a_in[24:24]),
	.out(wire_sft421a_out[24:24]));
	assign
		wire_sft421a_in = {w274w, {dffe105, {dffe102, {dffe100, {dffe96, {dffe92, {dffe88, {dffe84, {dffe80, {dffe76, {dffe72, {dffe68, {dffe64, {dffe60, {dffe56, {dffe52, {dffe48, {dffe44, {dffe40, {dffe36, {dffe32, {dffe28, {dffe24, {dffe20, dffe16}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft422a_0
	( 
	.in(wire_sft422a_in[0:0]),
	.out(wire_sft422a_out[0:0]));
	soft   sft422a_1
	( 
	.in(wire_sft422a_in[1:1]),
	.out(wire_sft422a_out[1:1]));
	soft   sft422a_2
	( 
	.in(wire_sft422a_in[2:2]),
	.out(wire_sft422a_out[2:2]));
	soft   sft422a_3
	( 
	.in(wire_sft422a_in[3:3]),
	.out(wire_sft422a_out[3:3]));
	soft   sft422a_4
	( 
	.in(wire_sft422a_in[4:4]),
	.out(wire_sft422a_out[4:4]));
	soft   sft422a_5
	( 
	.in(wire_sft422a_in[5:5]),
	.out(wire_sft422a_out[5:5]));
	soft   sft422a_6
	( 
	.in(wire_sft422a_in[6:6]),
	.out(wire_sft422a_out[6:6]));
	soft   sft422a_7
	( 
	.in(wire_sft422a_in[7:7]),
	.out(wire_sft422a_out[7:7]));
	soft   sft422a_8
	( 
	.in(wire_sft422a_in[8:8]),
	.out(wire_sft422a_out[8:8]));
	soft   sft422a_9
	( 
	.in(wire_sft422a_in[9:9]),
	.out(wire_sft422a_out[9:9]));
	soft   sft422a_10
	( 
	.in(wire_sft422a_in[10:10]),
	.out(wire_sft422a_out[10:10]));
	soft   sft422a_11
	( 
	.in(wire_sft422a_in[11:11]),
	.out(wire_sft422a_out[11:11]));
	soft   sft422a_12
	( 
	.in(wire_sft422a_in[12:12]),
	.out(wire_sft422a_out[12:12]));
	soft   sft422a_13
	( 
	.in(wire_sft422a_in[13:13]),
	.out(wire_sft422a_out[13:13]));
	soft   sft422a_14
	( 
	.in(wire_sft422a_in[14:14]),
	.out(wire_sft422a_out[14:14]));
	soft   sft422a_15
	( 
	.in(wire_sft422a_in[15:15]),
	.out(wire_sft422a_out[15:15]));
	soft   sft422a_16
	( 
	.in(wire_sft422a_in[16:16]),
	.out(wire_sft422a_out[16:16]));
	soft   sft422a_17
	( 
	.in(wire_sft422a_in[17:17]),
	.out(wire_sft422a_out[17:17]));
	soft   sft422a_18
	( 
	.in(wire_sft422a_in[18:18]),
	.out(wire_sft422a_out[18:18]));
	soft   sft422a_19
	( 
	.in(wire_sft422a_in[19:19]),
	.out(wire_sft422a_out[19:19]));
	soft   sft422a_20
	( 
	.in(wire_sft422a_in[20:20]),
	.out(wire_sft422a_out[20:20]));
	soft   sft422a_21
	( 
	.in(wire_sft422a_in[21:21]),
	.out(wire_sft422a_out[21:21]));
	soft   sft422a_22
	( 
	.in(wire_sft422a_in[22:22]),
	.out(wire_sft422a_out[22:22]));
	soft   sft422a_23
	( 
	.in(wire_sft422a_in[23:23]),
	.out(wire_sft422a_out[23:23]));
	soft   sft422a_24
	( 
	.in(wire_sft422a_in[24:24]),
	.out(wire_sft422a_out[24:24]));
	assign
		wire_sft422a_in = {w274w, {w274w, {w274w, {dffe101, {dffe97, {dffe93, {dffe89, {dffe85, {dffe81, {dffe77, {dffe73, {dffe69, {dffe65, {dffe61, {dffe57, {dffe53, {dffe49, {dffe45, {dffe41, {dffe37, {dffe33, {dffe29, {dffe25, {dffe21, dffe17}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft423a_0
	( 
	.in(wire_sft423a_in[0:0]),
	.out(wire_sft423a_out[0:0]));
	soft   sft423a_1
	( 
	.in(wire_sft423a_in[1:1]),
	.out(wire_sft423a_out[1:1]));
	soft   sft423a_2
	( 
	.in(wire_sft423a_in[2:2]),
	.out(wire_sft423a_out[2:2]));
	soft   sft423a_3
	( 
	.in(wire_sft423a_in[3:3]),
	.out(wire_sft423a_out[3:3]));
	soft   sft423a_4
	( 
	.in(wire_sft423a_in[4:4]),
	.out(wire_sft423a_out[4:4]));
	soft   sft423a_5
	( 
	.in(wire_sft423a_in[5:5]),
	.out(wire_sft423a_out[5:5]));
	soft   sft423a_6
	( 
	.in(wire_sft423a_in[6:6]),
	.out(wire_sft423a_out[6:6]));
	soft   sft423a_7
	( 
	.in(wire_sft423a_in[7:7]),
	.out(wire_sft423a_out[7:7]));
	soft   sft423a_8
	( 
	.in(wire_sft423a_in[8:8]),
	.out(wire_sft423a_out[8:8]));
	soft   sft423a_9
	( 
	.in(wire_sft423a_in[9:9]),
	.out(wire_sft423a_out[9:9]));
	soft   sft423a_10
	( 
	.in(wire_sft423a_in[10:10]),
	.out(wire_sft423a_out[10:10]));
	soft   sft423a_11
	( 
	.in(wire_sft423a_in[11:11]),
	.out(wire_sft423a_out[11:11]));
	soft   sft423a_12
	( 
	.in(wire_sft423a_in[12:12]),
	.out(wire_sft423a_out[12:12]));
	soft   sft423a_13
	( 
	.in(wire_sft423a_in[13:13]),
	.out(wire_sft423a_out[13:13]));
	soft   sft423a_14
	( 
	.in(wire_sft423a_in[14:14]),
	.out(wire_sft423a_out[14:14]));
	soft   sft423a_15
	( 
	.in(wire_sft423a_in[15:15]),
	.out(wire_sft423a_out[15:15]));
	soft   sft423a_16
	( 
	.in(wire_sft423a_in[16:16]),
	.out(wire_sft423a_out[16:16]));
	soft   sft423a_17
	( 
	.in(wire_sft423a_in[17:17]),
	.out(wire_sft423a_out[17:17]));
	soft   sft423a_18
	( 
	.in(wire_sft423a_in[18:18]),
	.out(wire_sft423a_out[18:18]));
	soft   sft423a_19
	( 
	.in(wire_sft423a_in[19:19]),
	.out(wire_sft423a_out[19:19]));
	soft   sft423a_20
	( 
	.in(wire_sft423a_in[20:20]),
	.out(wire_sft423a_out[20:20]));
	soft   sft423a_21
	( 
	.in(wire_sft423a_in[21:21]),
	.out(wire_sft423a_out[21:21]));
	soft   sft423a_22
	( 
	.in(wire_sft423a_in[22:22]),
	.out(wire_sft423a_out[22:22]));
	soft   sft423a_23
	( 
	.in(wire_sft423a_in[23:23]),
	.out(wire_sft423a_out[23:23]));
	soft   sft423a_24
	( 
	.in(wire_sft423a_in[24:24]),
	.out(wire_sft423a_out[24:24]));
	assign
		wire_sft423a_in = {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {w274w, {2{w274w}}}}}}}}}}}}}}}}}}}}}}}}};
	soft   sft424a_0
	( 
	.in(wire_sft424a_in[0:0]),
	.out(wire_sft424a_out[0:0]));
	soft   sft424a_1
	( 
	.in(wire_sft424a_in[1:1]),
	.out(wire_sft424a_out[1:1]));
	soft   sft424a_2
	( 
	.in(wire_sft424a_in[2:2]),
	.out(wire_sft424a_out[2:2]));
	soft   sft424a_3
	( 
	.in(wire_sft424a_in[3:3]),
	.out(wire_sft424a_out[3:3]));
	soft   sft424a_4
	( 
	.in(wire_sft424a_in[4:4]),
	.out(wire_sft424a_out[4:4]));
	soft   sft424a_5
	( 
	.in(wire_sft424a_in[5:5]),
	.out(wire_sft424a_out[5:5]));
	soft   sft424a_6
	( 
	.in(wire_sft424a_in[6:6]),
	.out(wire_sft424a_out[6:6]));
	soft   sft424a_7
	( 
	.in(wire_sft424a_in[7:7]),
	.out(wire_sft424a_out[7:7]));
	soft   sft424a_8
	( 
	.in(wire_sft424a_in[8:8]),
	.out(wire_sft424a_out[8:8]));
	soft   sft424a_9
	( 
	.in(wire_sft424a_in[9:9]),
	.out(wire_sft424a_out[9:9]));
	soft   sft424a_10
	( 
	.in(wire_sft424a_in[10:10]),
	.out(wire_sft424a_out[10:10]));
	soft   sft424a_11
	( 
	.in(wire_sft424a_in[11:11]),
	.out(wire_sft424a_out[11:11]));
	soft   sft424a_12
	( 
	.in(wire_sft424a_in[12:12]),
	.out(wire_sft424a_out[12:12]));
	soft   sft424a_13
	( 
	.in(wire_sft424a_in[13:13]),
	.out(wire_sft424a_out[13:13]));
	soft   sft424a_14
	( 
	.in(wire_sft424a_in[14:14]),
	.out(wire_sft424a_out[14:14]));
	soft   sft424a_15
	( 
	.in(wire_sft424a_in[15:15]),
	.out(wire_sft424a_out[15:15]));
	soft   sft424a_16
	( 
	.in(wire_sft424a_in[16:16]),
	.out(wire_sft424a_out[16:16]));
	soft   sft424a_17
	( 
	.in(wire_sft424a_in[17:17]),
	.out(wire_sft424a_out[17:17]));
	soft   sft424a_18
	( 
	.in(wire_sft424a_in[18:18]),
	.out(wire_sft424a_out[18:18]));
	soft   sft424a_19
	( 
	.in(wire_sft424a_in[19:19]),
	.out(wire_sft424a_out[19:19]));
	soft   sft424a_20
	( 
	.in(wire_sft424a_in[20:20]),
	.out(wire_sft424a_out[20:20]));
	soft   sft424a_21
	( 
	.in(wire_sft424a_in[21:21]),
	.out(wire_sft424a_out[21:21]));
	soft   sft424a_22
	( 
	.in(wire_sft424a_in[22:22]),
	.out(wire_sft424a_out[22:22]));
	soft   sft424a_23
	( 
	.in(wire_sft424a_in[23:23]),
	.out(wire_sft424a_out[23:23]));
	soft   sft424a_24
	( 
	.in(wire_sft424a_in[24:24]),
	.out(wire_sft424a_out[24:24]));
	assign
		wire_sft424a_in = wire_add420_result;
	assign
		dataa_node = {datab[25:0]},
		datab_node = {dataa[7:0]},
		final_result_node = {w501w[33:0]},
		result = {final_result_node[33:0]},
		w274w = 1'b0,
		w501w = {dffe414, dffe407, dffe400, dffe392, dffe383, dffe374, dffe365, dffe356, dffe347, dffe338, dffe329, dffe320, dffe311, dffe302, dffe293, dffe284, dffe275, dffe266, dffe257, dffe248, dffe239, dffe230, dffe221, dffe212, dffe203, dffe194, dffe185, dffe176, dffe167, dffe158, dffe149, dffe141, dffe133, dffe126, dffe119},
		w_decoder_node9w = {({dataa_node[25:0]} & {26{w_le_datab_node8w[7]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[6]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[5]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[4]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[3]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[2]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[1]}}), ({dataa_node[25:0]} & {26{w_le_datab_node8w[0]}})},
		w_le_datab_node8w = {datab_node[7:0]},
		w_sum_node10w = {wire_sum_adder1aa_3result[26:0], w_decoder_node9w[156], wire_sum_adder1aa_2result[26:0], w_decoder_node9w[104], wire_sum_adder1aa_1result[26:0], w_decoder_node9w[52], wire_sum_adder1aa_0result[26:0], w_decoder_node9w[0]};
endmodule //mult_77t
//VALID FILE
