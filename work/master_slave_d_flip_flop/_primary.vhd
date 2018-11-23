library verilog;
use verilog.vl_types.all;
entity master_slave_d_flip_flop is
    port(
        D               : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic;
        Qnot            : out    vl_logic
    );
end master_slave_d_flip_flop;
