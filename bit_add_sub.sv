`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:14:33 PM
// Design Name: 
// Module Name: bit_add_sub
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


module bit_add_sub(
    input m,
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output cout
    );
    logic [3:0] x;
    xor G1(x[0],b[0],m);
    xor G2(x[1],b[1],m);
    xor G3(x[2],b[2],m);
    xor G4(x[3],b[3],m);

    bit_adder a1(m,a,x,s,cout);    
    
endmodule
