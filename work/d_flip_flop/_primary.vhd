library verilog;
use verilog.vl_types.all;
entity d_flip_flop is
    port(
        D               : in     vl_logic;
        Clk             : in     vl_logic;
        Q               : out    vl_logic;
        Qnot            : out    vl_logic
    );
end d_flip_flop;
