library verilog;
use verilog.vl_types.all;
entity parteoperativa_vlg_check_tst is
    port(
        ac_value        : in     vl_logic_vector(7 downto 0);
        ADD             : in     vl_logic;
        \AND\           : in     vl_logic;
        carga_ac        : in     vl_logic;
        carga_nz        : in     vl_logic;
        carga_pc        : in     vl_logic;
        carga_rdm       : in     vl_logic;
        carga_rem       : in     vl_logic;
        carga_ri        : in     vl_logic;
        cout            : in     vl_logic;
        data_out        : in     vl_logic_vector(7 downto 0);
        inc_pc          : in     vl_logic;
        mem_in          : in     vl_logic_vector(7 downto 0);
        \NOT\           : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        \OR\            : in     vl_logic;
        pc_out          : in     vl_logic_vector(7 downto 0);
        rdm_out         : in     vl_logic_vector(7 downto 0);
        read            : in     vl_logic;
        sel             : in     vl_logic;
        write           : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end parteoperativa_vlg_check_tst;
