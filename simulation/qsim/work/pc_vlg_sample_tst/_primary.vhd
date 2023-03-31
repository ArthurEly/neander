library verilog;
use verilog.vl_types.all;
entity pc_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(7 downto 0);
        inc_pc          : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pc_vlg_sample_tst;
