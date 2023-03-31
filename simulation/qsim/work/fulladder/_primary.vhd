library verilog;
use verilog.vl_types.all;
entity fulladder is
    port(
        s               : out    vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        cin             : in     vl_logic;
        cout            : out    vl_logic
    );
end fulladder;
