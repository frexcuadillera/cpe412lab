library verilog;
use verilog.vl_types.all;
entity samp_vec is
    port(
        o               : out    vl_logic;
        a               : in     vl_logic_vector(3 downto 0)
    );
end samp_vec;
