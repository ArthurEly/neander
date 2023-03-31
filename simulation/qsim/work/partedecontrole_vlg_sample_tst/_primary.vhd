library verilog;
use verilog.vl_types.all;
entity partedecontrole_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        count           : in     vl_logic;
        N               : in     vl_logic;
        op0             : in     vl_logic;
        op1             : in     vl_logic;
        op2             : in     vl_logic;
        op3             : in     vl_logic;
        Z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end partedecontrole_vlg_sample_tst;
