`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2021 11:57:52 AM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg [3:0] X, Y;
    reg cin;
    wire [3:0] sum;
    wire cout;
    RippleCarry UUT( .X(X), .Y(Y), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
        X = 0;
        Y = 0;
        cin = 0;
        
        #10;
        for (cin=0; cin < 2; cin = cin + 1) begin
            for (X=0; X<4; X = X + 1) begin
                for (Y=0; Y<4; Y = Y + 1) begin 
                    #5;
                end
            end
        end
     end
endmodule

