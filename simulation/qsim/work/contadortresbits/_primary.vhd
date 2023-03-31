library verilog;
use verilog.vl_types.all;
entity contadortresbits is
    port(
        a0              : out    vl_logic;
        clk             : in     vl_logic;
        goto_t0         : in     vl_logic;
        count           : in     vl_logic;
        a1              : out    vl_logic;
        a2              : out    vl_logic
    );
end contadortresbits;
