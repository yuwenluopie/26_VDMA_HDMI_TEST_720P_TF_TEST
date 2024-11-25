`timescale 1ns / 1ps


module Pixclock_divider(
    output reg PIX_CLK_1X,
    input PIX_CLK_5X
);
    
    
    reg [2:0]count;
    always@(posedge PIX_CLK_5X)begin
       if(count>=3'd4)begin PIX_CLK_1X<=1'b1;count<=3'd0;end
       else begin  PIX_CLK_1X<=1'b0; count<=count+1'b1;end
    end
endmodule
