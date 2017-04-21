# TCL File Generated by Component Editor 16.1
# Tue Feb 28 20:29:26 CET 2017
# DO NOT MODIFY


# 
# MTL_ip "MTL_ip" v1.0
#  2017.02.28.20:29:26
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module MTL_ip
# 
set_module_property DESCRIPTION ""
set_module_property NAME MTL_ip
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME MTL_ip
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL MTL_ip
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file MTL_ip.v VERILOG PATH MTL_ip.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point s0
# 
add_interface s0 avalon end
set_interface_property s0 addressUnits WORDS
set_interface_property s0 associatedClock clock_sink
set_interface_property s0 associatedReset reset_sink
set_interface_property s0 bitsPerSymbol 8
set_interface_property s0 burstOnBurstBoundariesOnly false
set_interface_property s0 burstcountUnits WORDS
set_interface_property s0 explicitAddressSpan 0
set_interface_property s0 holdTime 0
set_interface_property s0 linewrapBursts false
set_interface_property s0 maximumPendingReadTransactions 0
set_interface_property s0 maximumPendingWriteTransactions 0
set_interface_property s0 readLatency 0
set_interface_property s0 readWaitTime 1
set_interface_property s0 setupTime 0
set_interface_property s0 timingUnits Cycles
set_interface_property s0 writeWaitTime 0
set_interface_property s0 ENABLED true
set_interface_property s0 EXPORT_OF ""
set_interface_property s0 PORT_NAME_MAP ""
set_interface_property s0 CMSIS_SVD_VARIABLES ""
set_interface_property s0 SVD_ADDRESS_GROUP ""

add_interface_port s0 avs_s0_address address Input 8
add_interface_port s0 avs_s0_read read Input 1
add_interface_port s0 avs_s0_readdata readdata Output 32
add_interface_port s0 avs_s0_write write Input 1
add_interface_port s0 avs_s0_writedata writedata Input 32
add_interface_port s0 avs_s0_waitrequest waitrequest Output 1
set_interface_assignment s0 embeddedsw.configuration.isFlash 0
set_interface_assignment s0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_reset reset_n Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock_clk clk Input 1


# 
# connection point MTL_DCLK
# 
add_interface MTL_DCLK conduit end
set_interface_property MTL_DCLK associatedClock ""
set_interface_property MTL_DCLK associatedReset ""
set_interface_property MTL_DCLK ENABLED true
set_interface_property MTL_DCLK EXPORT_OF ""
set_interface_property MTL_DCLK PORT_NAME_MAP ""
set_interface_property MTL_DCLK CMSIS_SVD_VARIABLES ""
set_interface_property MTL_DCLK SVD_ADDRESS_GROUP ""

add_interface_port MTL_DCLK MTL_DCLK export Output 1


# 
# connection point MTL_HSD
# 
add_interface MTL_HSD conduit end
set_interface_property MTL_HSD associatedClock ""
set_interface_property MTL_HSD associatedReset ""
set_interface_property MTL_HSD ENABLED true
set_interface_property MTL_HSD EXPORT_OF ""
set_interface_property MTL_HSD PORT_NAME_MAP ""
set_interface_property MTL_HSD CMSIS_SVD_VARIABLES ""
set_interface_property MTL_HSD SVD_ADDRESS_GROUP ""

add_interface_port MTL_HSD MTL_HSD export Output 1


# 
# connection point MTL_VSD
# 
add_interface MTL_VSD conduit end
set_interface_property MTL_VSD associatedClock ""
set_interface_property MTL_VSD associatedReset ""
set_interface_property MTL_VSD ENABLED true
set_interface_property MTL_VSD EXPORT_OF ""
set_interface_property MTL_VSD PORT_NAME_MAP ""
set_interface_property MTL_VSD CMSIS_SVD_VARIABLES ""
set_interface_property MTL_VSD SVD_ADDRESS_GROUP ""

add_interface_port MTL_VSD MTL_VSD export Output 1


# 
# connection point MTL_TOUCH_I2C_SCL
# 
add_interface MTL_TOUCH_I2C_SCL conduit end
set_interface_property MTL_TOUCH_I2C_SCL associatedClock ""
set_interface_property MTL_TOUCH_I2C_SCL associatedReset ""
set_interface_property MTL_TOUCH_I2C_SCL ENABLED true
set_interface_property MTL_TOUCH_I2C_SCL EXPORT_OF ""
set_interface_property MTL_TOUCH_I2C_SCL PORT_NAME_MAP ""
set_interface_property MTL_TOUCH_I2C_SCL CMSIS_SVD_VARIABLES ""
set_interface_property MTL_TOUCH_I2C_SCL SVD_ADDRESS_GROUP ""

add_interface_port MTL_TOUCH_I2C_SCL MTL_TOUCH_I2C_SCL export Output 1


# 
# connection point MTL_TOUCH_I2C_SDA
# 
add_interface MTL_TOUCH_I2C_SDA conduit end
set_interface_property MTL_TOUCH_I2C_SDA associatedClock ""
set_interface_property MTL_TOUCH_I2C_SDA associatedReset ""
set_interface_property MTL_TOUCH_I2C_SDA ENABLED true
set_interface_property MTL_TOUCH_I2C_SDA EXPORT_OF ""
set_interface_property MTL_TOUCH_I2C_SDA PORT_NAME_MAP ""
set_interface_property MTL_TOUCH_I2C_SDA CMSIS_SVD_VARIABLES ""
set_interface_property MTL_TOUCH_I2C_SDA SVD_ADDRESS_GROUP ""

add_interface_port MTL_TOUCH_I2C_SDA MTL_TOUCH_I2C_SDA export Bidir 1


# 
# connection point MTL_TOUCH_INT_n
# 
add_interface MTL_TOUCH_INT_n conduit end
set_interface_property MTL_TOUCH_INT_n associatedClock ""
set_interface_property MTL_TOUCH_INT_n associatedReset ""
set_interface_property MTL_TOUCH_INT_n ENABLED true
set_interface_property MTL_TOUCH_INT_n EXPORT_OF ""
set_interface_property MTL_TOUCH_INT_n PORT_NAME_MAP ""
set_interface_property MTL_TOUCH_INT_n CMSIS_SVD_VARIABLES ""
set_interface_property MTL_TOUCH_INT_n SVD_ADDRESS_GROUP ""

add_interface_port MTL_TOUCH_INT_n MTL_TOUCH_INT_n export Input 1


# 
# connection point MTL_R
# 
add_interface MTL_R conduit end
set_interface_property MTL_R associatedClock ""
set_interface_property MTL_R associatedReset ""
set_interface_property MTL_R ENABLED true
set_interface_property MTL_R EXPORT_OF ""
set_interface_property MTL_R PORT_NAME_MAP ""
set_interface_property MTL_R CMSIS_SVD_VARIABLES ""
set_interface_property MTL_R SVD_ADDRESS_GROUP ""

add_interface_port MTL_R MTL_R export Output 8


# 
# connection point MTL_G
# 
add_interface MTL_G conduit end
set_interface_property MTL_G associatedClock ""
set_interface_property MTL_G associatedReset ""
set_interface_property MTL_G ENABLED true
set_interface_property MTL_G EXPORT_OF ""
set_interface_property MTL_G PORT_NAME_MAP ""
set_interface_property MTL_G CMSIS_SVD_VARIABLES ""
set_interface_property MTL_G SVD_ADDRESS_GROUP ""

add_interface_port MTL_G MTL_G export Output 8


# 
# connection point MTL_B
# 
add_interface MTL_B conduit end
set_interface_property MTL_B associatedClock ""
set_interface_property MTL_B associatedReset ""
set_interface_property MTL_B ENABLED true
set_interface_property MTL_B EXPORT_OF ""
set_interface_property MTL_B PORT_NAME_MAP ""
set_interface_property MTL_B CMSIS_SVD_VARIABLES ""
set_interface_property MTL_B SVD_ADDRESS_GROUP ""

add_interface_port MTL_B MTL_B export Output 8


# 
# connection point RST_DLY
# 
add_interface RST_DLY conduit end
set_interface_property RST_DLY associatedClock clock_sink
set_interface_property RST_DLY associatedReset ""
set_interface_property RST_DLY ENABLED true
set_interface_property RST_DLY EXPORT_OF ""
set_interface_property RST_DLY PORT_NAME_MAP ""
set_interface_property RST_DLY CMSIS_SVD_VARIABLES ""
set_interface_property RST_DLY SVD_ADDRESS_GROUP ""

add_interface_port RST_DLY RST_DLY export Input 1
