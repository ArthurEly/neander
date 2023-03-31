library verilog;
use verilog.vl_types.all;
entity parteoperativa_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        clk             : in     vl_logic;
        mem_reset       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end parteoperativa_vlg_sample_tst;
