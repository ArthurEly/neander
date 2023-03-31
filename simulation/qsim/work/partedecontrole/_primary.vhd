library verilog;
use verilog.vl_types.all;
entity partedecontrole is
    port(
        carga_pc        : out    vl_logic;
        op3             : in     vl_logic;
        op2             : in     vl_logic;
        op1             : in     vl_logic;
        op0             : in     vl_logic;
        N               : in     vl_logic;
        Z               : in     vl_logic;
        clk             : in     vl_logic;
        count           : in     vl_logic;
        carga_nz        : out    vl_logic;
        carga_ac        : out    vl_logic;
        ULA_not         : out    vl_logic;
        ULA_and         : out    vl_logic;
        ULA_or          : out    vl_logic;
        ULA_add         : out    vl_logic;
        ULA_y           : out    vl_logic;
        write           : out    vl_logic;
        read            : out    vl_logic;
        carga_rdm       : out    vl_logic;
        sel             : out    vl_logic;
        carga_ri        : out    vl_logic;
        inc_pc          : out    vl_logic;
        carga_rem       : out    vl_logic;
        goto            : out    vl_logic;
        counter         : out    vl_logic_vector(2 downto 0)
    );
end partedecontrole;
