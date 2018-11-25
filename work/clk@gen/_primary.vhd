library verilog;
use verilog.vl_types.all;
entity clkGen is
    generic(
        period          : integer := 2
    );
    port(
        clk             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of period : constant is 1;
end clkGen;
