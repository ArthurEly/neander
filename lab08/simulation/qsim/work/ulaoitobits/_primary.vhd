library verilog;
use verilog.vl_types.all;
entity ulaoitobits is
    port(
        cout            : out    vl_logic;
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end ulaoitobits;
