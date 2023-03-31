library verilog;
use verilog.vl_types.all;
entity registradoroitobits_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end registradoroitobits_vlg_check_tst;
