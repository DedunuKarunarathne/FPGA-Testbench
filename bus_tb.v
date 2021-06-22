`timescale 1ns/1ps  // time-unit = 1 ns, precision = 10 ps

module bus_tb ();
    reg clk;
    reg [2:0] read_en;
    reg [7:0] r;
    reg [7:0] dr;
    reg [15:0] tr;
    reg [7:0] pc;
    reg [15:0] ac;
    reg [7:0] dm;
    reg [7:0] im;
    wire [15:0] busout;

    always
        begin
            #10 clk = 1;
            #10 clk = 0;
        end
    localparam period = 20; 

    bus dut(
        .read_en(read_en),
        .r(r),
        .dr(dr),
        .tr(tr),
        .pc(pc),
        .ac(ac),
        .dm(dm),
        .im(im)
    );

    initial 
        begin
        
            #20;
            read_en = 2'd1;
            r = 1;
            dr = 1;
            tr = 1;
            pc = 1;
            ac = 1;
            ac = 1;
            dm = 1;
            im = 1;
            #period;


            $stop;
        end

endmodule