library verilog;
use verilog.vl_types.all;
entity ulaumbit is
    port(
        cout            : out    vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        cin             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic
    );
end ulaumbit;
