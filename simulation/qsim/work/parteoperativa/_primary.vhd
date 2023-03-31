library verilog;
use verilog.vl_types.all;
entity parteoperativa is
    port(
        cout            : out    vl_logic;
        cin             : in     vl_logic;
        clk             : in     vl_logic;
        mem_reset       : in     vl_logic;
        carga_rem       : out    vl_logic;
        inc_pc          : out    vl_logic;
        carga_ri        : out    vl_logic;
        sel             : out    vl_logic;
        carga_rdm       : out    vl_logic;
        write           : out    vl_logic;
        carga_ac        : out    vl_logic;
        carga_nz        : out    vl_logic;
        carga_pc        : out    vl_logic;
        \NOT\           : out    vl_logic;
        \AND\           : out    vl_logic;
        \OR\            : out    vl_logic;
        ADD             : out    vl_logic;
        Y               : out    vl_logic;
        read            : out    vl_logic;
        ac_value        : out    vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        mem_in          : out    vl_logic_vector(7 downto 0);
        opcode          : out    vl_logic_vector(2 downto 0);
        pc_out          : out    vl_logic_vector(7 downto 0);
        rdm_out         : out    vl_logic_vector(7 downto 0)
    );
end parteoperativa;
