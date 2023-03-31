library verilog;
use verilog.vl_types.all;
entity lab041_vlg_sample_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        v               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab041_vlg_sample_tst;
