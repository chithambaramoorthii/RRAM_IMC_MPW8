`timescale 1ns/1ps
//`define USE_POWER_PINS 

module top_wrapper (
//`ifdef USE_POWER_PINS
    vccd1,	// User area 1 1.8V supply
    vssd1,	// User area 1 digital ground
//`endif
wishbone_data_in,
wishbone_data_out,
wishbone_address_bus,
wbs_we_i,
clk, 
rst, 
V1_WL,
V2_WL,
V3_WL,
V4_WL,
V1_SL,
V2_SL,
V1_BL,
V2_BL,
V3_BL,
V4_BL,
V0_REF_ADC,
V1_REF_ADC,
V2_REF_ADC,
V3_REF_ADC,
REF_CSA,
VDD_PRE,
WL0,
BL0,
SL0,
WL1,
BL1,
SL1,
ADC_OUT_OBS
); 

//`ifdef USE_POWER_PINS
    inout vccd1;	// User area 1 1.8V supply
    inout vssd1;	// User area 1 digital ground
//`endif

input clk , rst ;

input [31:0]wishbone_data_in;
output  [31:0]wishbone_data_out;
input [31:0]wishbone_address_bus;
input wbs_we_i;

output wire   [3:0]ADC_OUT_OBS;


inout VDD_PRE;
inout V1_WL;
inout V2_WL;
inout V3_WL;
inout V4_WL;
inout V1_SL;
inout V2_SL;
inout V1_BL;
inout V2_BL;
inout V3_BL;
inout V4_BL;
inout V0_REF_ADC;
inout V1_REF_ADC;
inout V2_REF_ADC;
inout V3_REF_ADC;
inout REF_CSA;
inout WL0,BL0,SL0, WL1,BL1,SL1;



endmodule
