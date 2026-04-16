`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2026 
// Design Name: 
// Module Name: passwordlock_fsm_tb
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


module passwordlock_fsm_tb;
    reg clk;
    reg reset;
    reg [1:0] key;
    wire unlock;
    wire [2:0] current_state;
    
    passwordlock_fsm dut(
      .clk(clk),
      .reset(reset),
      .key(key),
      .unlock(unlock),
      .current_state(current_state)
    );
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
    $display("Starting FSM test...");
    reset = 1;
    key = 2'b00; 
    #10;
    reset = 0;
    
    key = 2'b00;  #10;
    key = 2'b01;  #10;
    key = 2'b10;  #10;
    key = 2'b00;  #10;
    
    if(unlock)
      $display("password unlock succesfull!");
      
    else
      $display("password failed.");
      
      $stop;
      end
endmodule
