set_global_assignment -entity "sincos" -library "lib_sincos" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sincos" -library "lib_sincos" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "sincos" -library "lib_sincos" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sincos" -name SPD_FILE [file join $::quartus(sip_path) "../sincos.spd"]
set_global_assignment -library "lib_sincos" -name MISC_FILE [file join $::quartus(sip_path) "../../sincos.qsys"]

set_global_assignment -library "lib_sincos" -name MISC_FILE [file join $::quartus(sip_path) "sincos.vhd"]
set_global_assignment -library "lib_sincos" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library_package.vhd"]
set_global_assignment -library "lib_sincos" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library.vhd"]
set_global_assignment -library "lib_sincos" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sincos_CORDIC_0.vhd"]
