library verilog;
use verilog.vl_types.all;
entity ulaoitobits_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ulaoitobits_vlg_sample_tst;
