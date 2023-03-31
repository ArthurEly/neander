library verilog;
use verilog.vl_types.all;
entity pcumbit is
    port(
        out_ff          : out    vl_logic;
        clk             : in     vl_logic;
        write           : in     vl_logic;
        inc_pc          : in     vl_logic;
        \in\            : in     vl_logic;
        out_q           : out    vl_logic
    );
end pcumbit;
