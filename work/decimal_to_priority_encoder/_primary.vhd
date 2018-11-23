library verilog;
use verilog.vl_types.all;
entity decimal_to_priority_encoder is
    port(
        d               : in     vl_logic_vector(9 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end decimal_to_priority_encoder;
