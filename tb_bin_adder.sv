`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:42:48 PM
// Design Name: 
// Module Name: tb_bin_adder
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


module tb_bit_adder;
    
    logic cin, cout;
    logic [3:0] a,b,s;
    bit_adder G1(
    .cin(cin),
    .a(a), 
    .b(b), 
    .s(s), 
    .cout(cout)
    );

    initial begin
    $display("Time\t a\t b\t cin\t s\t cout");
    $display("-------------------");
    
    a=4'b0011;
    b=4'b0110;
    cin=1'b1;
    #5
    a=4'b0001;
    b=4'b1000;
    cin=1'b0;
    #5
    a=4'b1111;
    b=4'b0110;
    cin=1'b1;
    #5
    a=4'b1011;
    b=4'b1110;
    cin=1'b1;

    #5
    a=4'b0111;
    b=4'b0000;
    cin=1'b1;

    #5
    a=4'b0001;
    b=4'b0000;
    cin=1'b0;  
    end

endmodule
