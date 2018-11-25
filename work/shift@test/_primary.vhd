library verilog;
use verilog.vl_types.all;
entity shiftTest is
    port(
        dataBit         : out    vl_logic;
        delayedBit      : in     vl_logic;
        clk             : in     vl_logic
    );
end shiftTest;
