library verilog;
use verilog.vl_types.all;
entity asynccnt3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        count           : out    vl_logic_vector(2 downto 0)
    );
end asynccnt3;
