`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SJSU
// Engineer: Daron Chang
// 
// Create Date: 01/28/2020 01:35:44 PM
// Design Name: Quad Seven Segment Display
// Module Name: blkbrd_seven_seg
// Project Name: lab2_chang_daron
// Target Devices: xc7z007s
// Tool Versions: Vivado 2019.2
// Description: Program quad 7 seg based on input.
// 
// Dependencies: None
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module blkbrd_seven_seg( clk, val0, val1, val2, val3, 
    an0, an1, an2, an3, ca, cb, cc, cd, ce, cf, cg, dp);
    input wire clk;
    input wire[3:0] val0, val1, val2, val3;
    //active low 
    output wire an0, an1, an2, an3;
    output reg ca,cb,cc,cd,ce,cf,cg,dp;
    reg[0:1] state;
    reg[3:0] t_mux_out;
    initial begin
        assign dp = 1'b1; 
        state = 2'b00;
        t_mux_out = 4'b0000;
    end
   
    //FSM counter 00, 01, 10, 11
    reg[0:9] counter = 10'b0;
    always @(posedge clk) begin
        if(state==2'b11 && counter == 10'b1111111111) begin
            state <= 2'b00;
            counter <=10'b0;
            end
        else if(counter == 10'b1111111111) begin
            state <= state + 2'b01;
            counter <= 10'b0;
            end
        else begin
            counter <= counter + 1'b1;
            end
        end
//    always @(posedge clk) begin
//        if(state==2'b11) begin
//            state <= 2'b00;
//            end
//        else begin
//            state <= state + 2'b01;
//            end
//        end    
            
    assign an0 = ~(state == 2'b00);
    assign an1 = ~(state ==2'b01);
    assign an2 = ~(state ==2'b10);
    assign an3 = ~(state ==2'b11);
    
    always @(*) begin
        case(state)
            2'b00: begin
                t_mux_out = val0;
                end     
            2'b01: begin
                t_mux_out = val1;
                end
            2'b10: begin
                t_mux_out = val2;
                end
            2'b11: begin
                t_mux_out = val3;
                end
            default: t_mux_out = 4'b0000;
        endcase       
    end
    //always @(*)  begin
        //state[0] is 0 selects state[1]?val1:val0
        //state[1] is 0 selects second val2, or val0 
        //t_mux_out = state[0]?(state[1]? val3:val2):(state[1]?val1:val0);
        //end
    always @(*) begin
        case(t_mux_out)
            4'b0000: begin //0
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b1;
                end
            4'b0001: begin //1
                ca = 1'b1;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b1;
                ce = 1'b1;
                cf = 1'b1;
                cg = 1'b1;
                end
            4'b0010: begin //2
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b1;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b1;
                cg = 1'b0;
                end
            4'b0011: begin //3
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b1;
                cf = 1'b1;
                cg = 1'b0;
                end
            4'b0100: begin //4 f,g,c,b illuminate
                ca = 1'b1;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b1;
                ce = 1'b1;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b0101: begin //5
                ca = 1'b0;
                cb = 1'b1;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b1;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b0110: begin //6 a,c,d,e,f,g illuminate
                ca = 1'b0;
                cb = 1'b1;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b0111: begin //7 f,a,b,c illum
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b1;
                ce = 1'b1;
                cf = 1'b0;
                cg = 1'b1;
                end
            4'b1000: begin //8
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b1001: begin //9 e off
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b1;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b1010: begin //A d off
                ca = 1'b0;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b1;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b1011: begin //B a, b off
                ca = 1'b1;
                cb = 1'b1;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b1100: begin //C g,b,c off
                ca = 1'b0;
                cb = 1'b1;
                cc = 1'b1;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b1;
                end
            4'b1101: begin //D a,f off
                ca = 1'b1;
                cb = 1'b0;
                cc = 1'b0;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b1;
                cg = 1'b0;
                end
            4'b1110: begin //E b,c off
                ca = 1'b0;
                cb = 1'b1;
                cc = 1'b1;
                cd = 1'b0;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            4'b1111: begin //F a,f,g,e illum
                ca = 1'b0;
                cb = 1'b1;
                cc = 1'b1;
                cd = 1'b1;
                ce = 1'b0;
                cf = 1'b0;
                cg = 1'b0;
                end
            default: begin
                ca = 1'b1;
                cb = 1'b1;
                cc = 1'b1;
                cd = 1'b1;
                ce = 1'b1;
                cf = 1'b1;
                cg = 1'b0;
                end   
            endcase
        end       
endmodule
