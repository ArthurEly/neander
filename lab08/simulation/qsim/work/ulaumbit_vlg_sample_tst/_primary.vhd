library verilog;
use verilog.vl_types.all;
entity ulaumbit_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic;
        y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ulaumbit_vlg_sample_tst;
