library verilog;
use verilog.vl_types.all;
entity comparator2bit is
    port(
        x               : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(1 downto 0);
        z               : out    vl_logic
    );
end comparator2bit;
