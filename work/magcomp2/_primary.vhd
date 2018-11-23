library verilog;
use verilog.vl_types.all;
entity magcomp2 is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        agtb            : out    vl_logic;
        aeqb            : out    vl_logic;
        altb            : out    vl_logic
    );
end magcomp2;
