library verilog;
use verilog.vl_types.all;
entity acumuladorumbit_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end acumuladorumbit_vlg_sample_tst;
