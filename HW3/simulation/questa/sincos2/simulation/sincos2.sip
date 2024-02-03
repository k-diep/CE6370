set_global_assignment -entity "sincos2" -library "lib_sincos2" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sincos2" -library "lib_sincos2" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "sincos2" -library "lib_sincos2" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sincos2" -name SPD_FILE [file join $::quartus(sip_path) "../sincos2.spd"]
set_global_assignment -library "lib_sincos2" -name MISC_FILE [file join $::quartus(sip_path) "../../sincos2.qsys"]

set_global_assignment -library "lib_sincos2" -name MISC_FILE [file join $::quartus(sip_path) "sincos2.vhd"]
set_global_assignment -library "lib_sincos2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library_package.vhd"]
set_global_assignment -library "lib_sincos2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library.vhd"]
set_global_assignment -library "lib_sincos2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sincos2_CORDIC_0.vhd"]
