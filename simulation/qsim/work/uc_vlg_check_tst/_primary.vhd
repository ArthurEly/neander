library verilog;
use verilog.vl_types.all;
entity uc_vlg_check_tst is
    port(
        carga_ac        : in     vl_logic;
        carga_nz        : in     vl_logic;
        carga_pc        : in     vl_logic;
        carga_rdm       : in     vl_logic;
        carga_rem       : in     vl_logic;
        carga_ri        : in     vl_logic;
        goto_t0         : in     vl_logic;
        inc_pc          : in     vl_logic;
        read            : in     vl_logic;
        sel             : in     vl_logic;
        ULA_add         : in     vl_logic;
        ULA_and         : in     vl_logic;
        ULA_not         : in     vl_logic;
        ULA_or          : in     vl_logic;
        ULA_y           : in     vl_logic;
        write           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end uc_vlg_check_tst;
