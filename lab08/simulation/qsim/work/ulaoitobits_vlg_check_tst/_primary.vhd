library verilog;
use verilog.vl_types.all;
entity ulaoitobits_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        \out\           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ulaoitobits_vlg_check_tst;
