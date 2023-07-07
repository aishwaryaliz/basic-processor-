`timescale 1ns/1ps

//IR fields

`define oper_type   IR[31:27]
`define rdst        IR[26:22]
`define rsrc1       IR[21:17]
`define imm_mode    IR[16]
`define rsrc2       IR[15:11]
`define isrc        IR[15:0]

//arithmetic operation

`define movsgpr 5'b00000
`define mov     5'b00001
`define add     5'b00010
`define sub     5'b00011
`define mul     5'b00100

//logical operation

`define ror     5'b00101
`define rand    5'b00110
`define rxor    5'b00111
`define rxnor   5'b01000
`define rnand   5'b01001
`define rnor    5'b01010
`define rnot    5'b01011

//load and store instruction

`define storereg    5'b01101 //store content of register in data memory
`define storedin    5'b01101 //store content of din bus(external) in data memory
`define senddout    5'b01111 //send data from data memory to dout bus (external)
`define sendreg     5'b10001 //send data from data memory to register

`define jump        5'b10010
`define jcarry      5'b10011
`define jnocarry    5'b10100
`define jsign       5'b10101
`define jnosign     5'b10110
`define jzero       5'b10111
`define jnozero     5'b11000
`define joverflow   5'b11001
`define jnooverflow 5'b11010

`include "top.v"

module top_tb;

integer i = 0; //to count elements

reg clk = 0, sys_rst = 0;
reg [15:0] din = 0;
wire [15:0] dout;

top dut (clk, sys_rst, din, dout); //dut is the instance name

always #5 clk = ~clk;

initial 
begin

    $dumpfile("top_tb.vcd");
    $dumpvars(0,top_tb);

    sys_rst = 1'b1;
    repeat (5) @(posedge clk);
    sys_rst = 1'b0;
    #800;
    $stop;


end

endmodule