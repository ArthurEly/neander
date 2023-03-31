library verilog;
use verilog.vl_types.all;
entity pcumbit_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        inc_pc          : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pcumbit_vlg_sample_tst;
