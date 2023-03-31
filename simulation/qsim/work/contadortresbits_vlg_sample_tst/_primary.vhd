library verilog;
use verilog.vl_types.all;
entity contadortresbits_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        count           : in     vl_logic;
        goto_t0         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contadortresbits_vlg_sample_tst;
