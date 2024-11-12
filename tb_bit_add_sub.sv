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


module tb_bit_add_sub;
 
    logic m, cout;
    logic [3:0] a,b,s;
    bit_add_sub G1(
    .m(m),
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
    m=1'b1;
    #5
    a=4'b0001;
    b=4'b1000;
    m=1'b0;
    #5
    a=4'b1111;
    b=4'b0110;
    m=1'b1;
    #5
    a=4'b1011;
    b=4'b1110;
    m=1'b1;

    #5
    a=4'b0111;
    b=4'b0000;
    m=1'b1;

    #5
    a=4'b0001;
    b=4'b0000;
    m=1'b0;  
    end

endmodule
