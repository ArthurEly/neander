library verilog;
use verilog.vl_types.all;
entity decodula is
    port(
        opcode          : out    vl_logic_vector(2 downto 0);
        \NOT\           : in     vl_logic;
        \AND\           : in     vl_logic;
        \OR\            : in     vl_logic;
        Y               : in     vl_logic;
        ADD             : in     vl_logic
    );
end decodula;
