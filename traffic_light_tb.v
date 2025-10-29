`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2025 22:02:06
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb( );
reg clk,rst;
wire ns_g, ns_y, ns_r, ew_g, ew_y, ew_r;
traffic_light tl1(.clk(clk),.rst(rst),.ns_g(ns_g),.ns_y(ns_y),.ns_r(ns_r),.ew_g(ew_g),.ew_y(ew_y),.ew_r(ew_r));
initial begin
rst=1'b1;
#10 rst=1'b0;
#500 $finish;
end
always begin
clk=1'b0;
forever #5 clk=~clk;
end
endmodule
