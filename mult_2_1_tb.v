`timescale 1ns/1ps  // time-unit = 1 ns, precision = 10 ps

module mult_2_1_tb();

	 reg [15:0] in1;
    reg [15:0] in2;
    reg sel;
    reg clk;
    wire [15:0] out;

    always
        begin
            #5 clk = 0;
            #5 clk = 1;
        end
    localparam period = 10; 

    mult_2_1 dut_mult(
        .clk(clk), 
        .in1(in1),
        .in2(in2),
        .sel(sel),
        .out(out)
    );

    initial 
        begin
           #10;
            
            in1 = 16'd10;
            in2 = 16'd1;
            sel = 0;
            #period;

            in1 = 16'd10;
            in2 = 16'd1;
            sel = 1;
            #period;

            in1 = 16'd0;
            in2 = 16'd231;
            sel = 0;
            #period;

            in1 = 16'd10;
            in2 = 16'd1;
            sel = 1;
            #period;

            $stop;

            

        end

        
endmodule