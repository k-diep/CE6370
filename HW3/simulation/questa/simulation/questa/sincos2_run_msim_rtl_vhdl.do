transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos2/synthesis/sincos2.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos2/synthesis/submodules/dspba_library_package.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos2/synthesis/submodules/sincos2_CORDIC_0.vhd}
vcom -2008 -work work {C:/Users/domid/OneDrive/Desktop/Quartus/HW3/simulation/questa/sincos2/synthesis/submodules/dspba_library.vhd}

