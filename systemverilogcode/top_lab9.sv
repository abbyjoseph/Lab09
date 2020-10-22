`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:43:36 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input [11:0] sw,
    input clk,
    input btnC,
    output [15:0] led
    );
    
    wire [7:0] Q_i1, out_i1;
    
register #(.N(8)) my_register0(
    .D(sw[7:0]),
    .clk(clk),
    .en(btnD),
    .rst(btnC),
    .Q(Q_i1)
    );  
    
assign led[7:0] = Q_i1;

alu #(.N(8)) my_alu(
    .in0(sw[7:0]),
    .in1(Q_i1),
    .op(sw[11:8]),
    .out(out_i1)
    );
    
register #(.N(8)) my_register1(
    .D(out_i1),
    .clk(clk),
    .en(btnU),
    .rst(btnC),
    .Q(led[15:8])
    ); 
      
endmodule
