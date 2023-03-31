onerror {exit -code 1}
vlib work
vlog -work work parteoperativa.vo
vlog -work work simuone.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parteoperativa_vlg_vec_tst -voptargs="+acc"
vcd file -direction parteoperativa.msim.vcd
vcd add -internal parteoperativa_vlg_vec_tst/*
vcd add -internal parteoperativa_vlg_vec_tst/i1/*
run -all
quit -f
