library verilog;
use verilog.vl_types.all;
entity mux41structural is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        c               : out    vl_logic
    );
end mux41structural;
