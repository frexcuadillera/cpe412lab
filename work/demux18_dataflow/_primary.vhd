library verilog;
use verilog.vl_types.all;
entity demux18_dataflow is
    port(
        \in\            : in     vl_logic;
        en              : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        o               : out    vl_logic_vector(7 downto 0)
    );
end demux18_dataflow;
