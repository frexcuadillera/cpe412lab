library verilog;
use verilog.vl_types.all;
entity synccntr3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        cnt_en          : in     vl_logic;
        load            : in     vl_logic;
        load_val        : in     vl_logic_vector(2 downto 0);
        count           : out    vl_logic_vector(2 downto 0)
    );
end synccntr3;
