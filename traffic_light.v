`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2025 10:56:32
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
input clk, rst,
output reg ns_g, ns_y, ns_r, ew_g, ew_y, ew_r
    );
    reg [4:0] counter;
    always@(posedge clk or negedge rst)
    begin
        if (rst)
        begin
            ns_g<=1'b1;
            ns_y<=1'b0;
            ns_r<=1'b0;
            ew_g<=1'b0;
            ew_y<=1'b0;
            ew_r<=1'b1;
            counter<=5'd0;
        end
        else
        begin
            case(counter)
            5'd10:
            begin
                ns_g<=1'b0;
                ns_y<=1'b1;
                ns_r<=1'b0;
                ew_g<=1'b0;
                ew_y<=1'b0;
                ew_r<=1'b1;
                counter<=counter+5'd1;
            end
            5'd12:
            begin
                ns_g<=1'b0;
                ns_y<=1'b0;
                ns_r<=1'b1;
                ew_g<=1'b0;
                ew_y<=1'b1;
                ew_r<=1'b0;
                counter<=counter+5'd1;
            end
            5'd14:
            begin
                ns_g<=1'b0;
                ns_y<=1'b0;
                ns_r<=1'b1;
                ew_g<=1'b1;
                ew_y<=1'b0;
                ew_r<=1'b0;
                counter<=counter+5'd1;
            end
            5'd24:
            begin
                ns_g<=1'b0;
                ns_y<=1'b0;
                ns_r<=1'b1;
                ew_g<=1'b0;
                ew_y<=1'b1;
                ew_r<=1'b0;
                counter<=counter+5'd1;
            end
            5'd26:
            begin
                ns_g<=1'b0;
                ns_y<=1'b1;
                ns_r<=1'b0;
                ew_g<=1'b0;
                ew_y<=1'b0;
                ew_r<=1'b1;
                counter<=counter+5'd1;
            end
            5'd28:
            begin
                ns_g<=1'b1;
                ns_y<=1'b0;
                ns_r<=1'b0;
                ew_g<=1'b0;
                ew_y<=1'b0;
                ew_r<=1'b1;
                counter<=5'b0;
            end
            default:
            begin
                counter<=counter+5'd1;
            end
            endcase
         end
      end    
                
endmodule
