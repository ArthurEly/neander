library verilog;
use verilog.vl_types.all;
entity decodneanderinstructions is
    port(
        HLT             : out    vl_logic;
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        a0              : in     vl_logic;
        JZ              : out    vl_logic;
        JN              : out    vl_logic;
        JMP             : out    vl_logic;
        \NOT\           : out    vl_logic;
        \AND\           : out    vl_logic;
        \OR\            : out    vl_logic;
        ADD             : out    vl_logic;
        LDA             : out    vl_logic;
        STA             : out    vl_logic;
        NOP             : out    vl_logic
    );
end decodneanderinstructions;
