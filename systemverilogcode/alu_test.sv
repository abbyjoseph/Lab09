`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:31:21 PM
// Design Name: 
// Module Name: alu_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_test();

reg [1:0] in0_t, in1_t;
reg [3:0] op_t;
wire [1:0] out_t;


alu #(.N(8)) dut(
    .in0(in0_t),
    .in1(in1_t),
    .op(op_t),
    .out(out_t)
    );
    
initial begin
    in0_t= 8'b10010100; in1_t=8'b00011000; op_t=4'b0000; #10
    in0_t= 8'b10000000; in1_t=8'b00000001; op_t=4'b0001; #10
    in0_t= 8'b00111010; in1_t=8'b01011100; op_t=4'b0010; #10
    in0_t= 8'b11000011; in1_t=8'b10110100; op_t=4'b0011; #10
    in0_t= 8'b10100101; in1_t=8'b11001110; op_t=4'b0100; #10
    in0_t= 8'b00000100; in1_t=8'b00000000; op_t=4'b1000; #10
$finish;
end    
endmodule
