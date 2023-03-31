library verilog;
use verilog.vl_types.all;
entity registradoroitobits is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        write           : in     vl_logic;
        clk             : in     vl_logic
    );
end registradoroitobits;
