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
    reg [7:0] r1;
    reg [7:0] r2;
    reg [7:0] ri;
    reg [7:0] rj;
    reg [7:0] rk;
    wire [15:0] busout;

    always
        begin
            #10 clk = 1'd1;
            #10 clk = 1'd0;
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
        .im(im),
        .r1(r1),
        .r2(r2),
        .ri(ri),
        .rj(rj),
        .rk(rk)
    );

    initial 
        begin
        
            #20;
            read_en = 3'd0;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd1;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd2;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd3;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd4;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd5;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd6;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd7;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd8;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd9;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd10;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;

            read_en = 3'd11;
            r  = 7'd10;
            dr = 7'd12;
            tr = 7'd14;
            pc = 7'd16;
            ac = 7'd18;
            ac = 7'd20;
            dm = 7'd22;
            im = 7'd24;
            r1 = 7'd26;
            r2 = 7'd28;
            ri = 7'd30;
            rj = 7'd32;
            rk = 7'd34;
            #period;
       
            $stop;
        end

endmodule