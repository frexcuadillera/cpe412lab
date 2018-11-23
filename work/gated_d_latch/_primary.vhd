library verilog;
use verilog.vl_types.all;
entity gated_d_latch is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        qa              : out    vl_logic;
        qb              : out    vl_logic
    );
end gated_d_latch;
