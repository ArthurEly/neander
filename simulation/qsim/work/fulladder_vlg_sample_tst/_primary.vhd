library verilog;
use verilog.vl_types.all;
entity fulladder_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fulladder_vlg_sample_tst;
