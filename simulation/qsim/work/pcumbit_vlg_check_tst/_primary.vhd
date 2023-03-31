library verilog;
use verilog.vl_types.all;
entity pcumbit_vlg_check_tst is
    port(
        out_ff          : in     vl_logic;
        out_q           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pcumbit_vlg_check_tst;
