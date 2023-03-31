library verilog;
use verilog.vl_types.all;
entity decodula_vlg_check_tst is
    port(
        opcode          : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end decodula_vlg_check_tst;
