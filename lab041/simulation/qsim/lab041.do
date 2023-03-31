onerror {exit -code 1}
vlib work
vlog -work work lab041.vo
vlog -work work simutwo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab0412_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab041.msim.vcd
vcd add -internal lab0412_vlg_vec_tst/*
vcd add -internal lab0412_vlg_vec_tst/i1/*
run -all
quit -f
