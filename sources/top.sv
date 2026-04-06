`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 20:47:49
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input signed [15:0] noisy_sig,
    output signed [15:0] fil_sig
    );
    reg signed [15:0] coeff [0:8] = { 16'h 04F6,
                                        16'h 0AE4,
                                        16'h 1089,
                                        16'h 1496,
                                        16'h 160F,
                                        16'h 1496,
                                        16'h 1089,
                                        16'h 0AE4,
                                        16'h 04F6 };
    
                                            
    reg signed [15:0] delayed_sig [0:8];
    reg signed [31:0] prod [0:8];
    integer k;
    always @(posedge clk) begin
        delayed_sig[0] <= noisy_sig;
        for(k=1;k<9;k=k+1) begin
            delayed_sig[k] <= delayed_sig[k-1];
        end
    end
    integer i,j;
    always @(posedge clk) begin
        for(i=0; i<9;i=i+1) begin
            prod[i] <= delayed_sig[i] * coeff[i];
        end
    end
    reg signed [35:0] sum;
    always @(posedge clk) begin
        sum = 36'b00;
        for(j=0;j<9;j=j+1)begin
            sum = sum + prod[j];
        end
    end
    assign fil_sig = $signed(sum[35:14]);
endmodule
