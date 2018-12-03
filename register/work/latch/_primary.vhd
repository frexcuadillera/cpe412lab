library verilog;
use verilog.vl_types.all;
entity latch is
    port(
        bitIn           : in     vl_logic;
        clk             : in     vl_logic;
        bitOut          : out    vl_logic
    );
end latch;
