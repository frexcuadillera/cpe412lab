library verilog;
use verilog.vl_types.all;
entity shift4 is
    port(
        dataIn          : in     vl_logic;
        clk             : in     vl_logic;
        dataOut         : out    vl_logic
    );
end shift4;
