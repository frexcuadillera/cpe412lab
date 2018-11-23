library verilog;
use verilog.vl_types.all;
entity sample is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        o               : out    vl_logic
    );
end sample;
