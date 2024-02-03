transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sincos.vho}

vcom -93 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos_tb2.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L lpm -L sgate -L cyclonev_hssi -L gate_work -L work -voptargs="+acc"  sincos_tb2

add wave *
view structure
view signals
run -all
