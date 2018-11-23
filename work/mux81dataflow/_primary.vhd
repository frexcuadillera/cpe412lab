library verilog;
use verilog.vl_types.all;
entity mux81dataflow is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        c               : out    vl_logic
    );
end mux81dataflow;
