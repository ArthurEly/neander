library verilog;
use verilog.vl_types.all;
entity decodula_vlg_sample_tst is
    port(
        ADD             : in     vl_logic;
        \AND\           : in     vl_logic;
        \NOT\           : in     vl_logic;
        \OR\            : in     vl_logic;
        Y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decodula_vlg_sample_tst;
