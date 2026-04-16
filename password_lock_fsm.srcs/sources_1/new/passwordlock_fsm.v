`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2026 
// Design Name: 
// Module Name: passwordlock_fsm
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


module passwordlock_fsm(
     input clk,
     input reset,
     input [1:0] key,
     output reg unlock,
     output reg [2:0] current_state
    );
    
parameter  s0 = 3'd0, 
           s1 = 3'd1,      //A 
           s2 = 3'd2,      //B 
           s3 = 3'd3,      //C 
           UNLOCK = 3'd4;  //A 
           
    reg [2:0] next_state;
    
    always @(posedge clk or posedge reset) begin
      if (reset)
         current_state <= s0;
      else
       current_state <= next_state;
    end
    
    always @(*) begin
      unlock = 0;
      case(current_state)
         s0:  next_state = (key == 2'b00) ? s1 :s0;
         s1:  next_state = (key == 2'b01) ? s2 :s0;
         s2:  next_state = (key == 2'b10) ? s3 :s0;
         s3:  next_state = (key == 2'b00) ? UNLOCK:s0;
         UNLOCK: begin
             next_state = s0;
             unlock = 1;
         end
         default: next_state = s0;
     endcase
   end
         

         
endmodule
