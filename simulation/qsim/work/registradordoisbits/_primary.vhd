library verilog;
use verilog.vl_types.all;
entity registradordoisbits is
    port(
        N_out           : out    vl_logic;
        N_in            : in     vl_logic;
        carga_nz        : in     vl_logic;
        clk             : in     vl_logic;
        Z_out           : out    vl_logic;
        Z_in            : in     vl_logic
    );
end registradordoisbits;
