library verilog;
use verilog.vl_types.all;
entity registradordoisbits_vlg_sample_tst is
    port(
        carga_nz        : in     vl_logic;
        clk             : in     vl_logic;
        N_in            : in     vl_logic;
        Z_in            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end registradordoisbits_vlg_sample_tst;
