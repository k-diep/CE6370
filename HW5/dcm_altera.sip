set_global_assignment -entity "dcm_altera" -library "lib_dcm_altera" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "dcm_altera" -library "lib_dcm_altera" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "dcm_altera" -library "lib_dcm_altera" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_dcm_altera" -name SPD_FILE [file join $::quartus(sip_path) "dcm_altera.spd"]

set_global_assignment -library "lib_dcm_altera" -name MISC_FILE [file join $::quartus(sip_path) "dcm_altera_sim/dcm_altera.vho"]
