library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        inc_pc          : in     vl_logic;
        write           : in     vl_logic;
        clk             : in     vl_logic
    );
end pc;
