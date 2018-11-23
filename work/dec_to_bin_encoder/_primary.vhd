library verilog;
use verilog.vl_types.all;
entity dec_to_bin_encoder is
    port(
        I               : in     vl_logic_vector(9 downto 0);
        Y               : out    vl_logic_vector(3 downto 0)
    );
end dec_to_bin_encoder;
