transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/sincos/synthesis/submodules/dspba_library_package.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/sincos/synthesis/sincos.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/sincos/synthesis/submodules/sincos_CORDIC_0.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/sincos/synthesis/submodules/dspba_library.vhd}

vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos_tb2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  sincos_tb2

add wave *
view structure
view signals
run -all