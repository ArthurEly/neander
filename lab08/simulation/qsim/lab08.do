onerror {exit -code 1}
vlib work
vlog -work work lab08.vo
vlog -work work simuone.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ulaoitobits_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab08.msim.vcd
vcd add -internal ulaoitobits_vlg_vec_tst/*
vcd add -internal ulaoitobits_vlg_vec_tst/i1/*
run -all
quit -f
