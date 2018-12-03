library verilog;
use verilog.vl_types.all;
entity VendingMoore is
    generic(
        COKE            : vl_logic_vector(4 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        MOUNTAIN_DEW    : vl_logic_vector(4 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        SPRITE          : vl_logic_vector(4 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        GATORADE        : vl_logic_vector(4 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        LIPTON          : vl_logic_vector(4 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        coin            : in     vl_logic;
        clk             : in     vl_logic;
        choice          : in     vl_logic_vector(4 downto 0);
        confirm         : in     vl_logic;
        drink           : out    vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of COKE : constant is 2;
    attribute mti_svvh_generic_type of MOUNTAIN_DEW : constant is 2;
    attribute mti_svvh_generic_type of SPRITE : constant is 2;
    attribute mti_svvh_generic_type of GATORADE : constant is 2;
    attribute mti_svvh_generic_type of LIPTON : constant is 2;
end VendingMoore;
