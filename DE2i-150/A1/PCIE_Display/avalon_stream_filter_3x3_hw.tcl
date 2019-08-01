# TCL File Generated by Component Editor 17.1
# Mon Oct 22 22:06:12 ICT 2018
# DO NOT MODIFY


# 
# avalon_stream_filter_3x3 "Avalon Stream Filter 3x3" v1.0
#  2018.10.22.22:06:12
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avalon_stream_filter_3x3
# 
set_module_property DESCRIPTION ""
set_module_property NAME avalon_stream_filter_3x3
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Avalon Stream Filter 3x3"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avalon_filter_3x3
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_filter_3x3.v VERILOG PATH ip_repo/avalon_filter_3x3/avalon_filter_3x3.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter IMAGE_HEIGHT INTEGER 480
set_parameter_property IMAGE_HEIGHT DEFAULT_VALUE 480
set_parameter_property IMAGE_HEIGHT DISPLAY_NAME IMAGE_HEIGHT
set_parameter_property IMAGE_HEIGHT TYPE INTEGER
set_parameter_property IMAGE_HEIGHT UNITS None
set_parameter_property IMAGE_HEIGHT ALLOWED_RANGES -2147483648:2147483647
set_parameter_property IMAGE_HEIGHT HDL_PARAMETER true
add_parameter IMAGE_WIDTH INTEGER 640
set_parameter_property IMAGE_WIDTH DEFAULT_VALUE 640
set_parameter_property IMAGE_WIDTH DISPLAY_NAME IMAGE_WIDTH
set_parameter_property IMAGE_WIDTH TYPE INTEGER
set_parameter_property IMAGE_WIDTH UNITS None
set_parameter_property IMAGE_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property IMAGE_WIDTH HDL_PARAMETER true
add_parameter KERNEL_SIZE INTEGER 3
set_parameter_property KERNEL_SIZE DEFAULT_VALUE 3
set_parameter_property KERNEL_SIZE DISPLAY_NAME KERNEL_SIZE
set_parameter_property KERNEL_SIZE TYPE INTEGER
set_parameter_property KERNEL_SIZE UNITS None
set_parameter_property KERNEL_SIZE ALLOWED_RANGES -2147483648:2147483647
set_parameter_property KERNEL_SIZE HDL_PARAMETER true
add_parameter FP_WORD_LENGTH INTEGER 32 ""
set_parameter_property FP_WORD_LENGTH DEFAULT_VALUE 32
set_parameter_property FP_WORD_LENGTH DISPLAY_NAME FP_WORD_LENGTH
set_parameter_property FP_WORD_LENGTH TYPE INTEGER
set_parameter_property FP_WORD_LENGTH UNITS None
set_parameter_property FP_WORD_LENGTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FP_WORD_LENGTH DESCRIPTION ""
set_parameter_property FP_WORD_LENGTH HDL_PARAMETER true
add_parameter FP_FRAC_LENGTH INTEGER 15 ""
set_parameter_property FP_FRAC_LENGTH DEFAULT_VALUE 15
set_parameter_property FP_FRAC_LENGTH DISPLAY_NAME FP_FRAC_LENGTH
set_parameter_property FP_FRAC_LENGTH TYPE INTEGER
set_parameter_property FP_FRAC_LENGTH UNITS None
set_parameter_property FP_FRAC_LENGTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property FP_FRAC_LENGTH DESCRIPTION ""
set_parameter_property FP_FRAC_LENGTH HDL_PARAMETER true
add_parameter SINK_DATA_WIDTH INTEGER 24
set_parameter_property SINK_DATA_WIDTH DEFAULT_VALUE 24
set_parameter_property SINK_DATA_WIDTH DISPLAY_NAME SINK_DATA_WIDTH
set_parameter_property SINK_DATA_WIDTH TYPE INTEGER
set_parameter_property SINK_DATA_WIDTH UNITS None
set_parameter_property SINK_DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SINK_DATA_WIDTH HDL_PARAMETER true
add_parameter SOURCE_DATA_WIDTH INTEGER 24
set_parameter_property SOURCE_DATA_WIDTH DEFAULT_VALUE 24
set_parameter_property SOURCE_DATA_WIDTH DISPLAY_NAME SOURCE_DATA_WIDTH
set_parameter_property SOURCE_DATA_WIDTH TYPE INTEGER
set_parameter_property SOURCE_DATA_WIDTH UNITS None
set_parameter_property SOURCE_DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SOURCE_DATA_WIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock Clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset Reset reset Input 1


# 
# connection point pixel_sink
# 
add_interface pixel_sink avalon_streaming end
set_interface_property pixel_sink associatedClock clock
set_interface_property pixel_sink associatedReset reset
set_interface_property pixel_sink dataBitsPerSymbol 8
set_interface_property pixel_sink errorDescriptor ""
set_interface_property pixel_sink firstSymbolInHighOrderBits true
set_interface_property pixel_sink maxChannel 0
set_interface_property pixel_sink readyLatency 0
set_interface_property pixel_sink ENABLED true
set_interface_property pixel_sink EXPORT_OF ""
set_interface_property pixel_sink PORT_NAME_MAP ""
set_interface_property pixel_sink CMSIS_SVD_VARIABLES ""
set_interface_property pixel_sink SVD_ADDRESS_GROUP ""

add_interface_port pixel_sink Sink_ready ready Output 1
add_interface_port pixel_sink Sink_valid valid Input 1
add_interface_port pixel_sink Sink_sop startofpacket Input 1
add_interface_port pixel_sink Sink_eop endofpacket Input 1
add_interface_port pixel_sink Sink_data data Input SINK_DATA_WIDTH


# 
# connection point pixel_source
# 
add_interface pixel_source avalon_streaming start
set_interface_property pixel_source associatedClock clock
set_interface_property pixel_source associatedReset reset
set_interface_property pixel_source dataBitsPerSymbol 8
set_interface_property pixel_source errorDescriptor ""
set_interface_property pixel_source firstSymbolInHighOrderBits true
set_interface_property pixel_source maxChannel 0
set_interface_property pixel_source readyLatency 0
set_interface_property pixel_source ENABLED true
set_interface_property pixel_source EXPORT_OF ""
set_interface_property pixel_source PORT_NAME_MAP ""
set_interface_property pixel_source CMSIS_SVD_VARIABLES ""
set_interface_property pixel_source SVD_ADDRESS_GROUP ""

add_interface_port pixel_source Source_ready ready Input 1
add_interface_port pixel_source Source_valid valid Output 1
add_interface_port pixel_source Source_sop startofpacket Output 1
add_interface_port pixel_source Source_eop endofpacket Output 1
add_interface_port pixel_source Source_data data Output SOURCE_DATA_WIDTH


# 
# connection point display_mode
# 
add_interface display_mode conduit end
set_interface_property display_mode associatedClock ""
set_interface_property display_mode associatedReset ""
set_interface_property display_mode ENABLED true
set_interface_property display_mode EXPORT_OF ""
set_interface_property display_mode PORT_NAME_MAP ""
set_interface_property display_mode CMSIS_SVD_VARIABLES ""
set_interface_property display_mode SVD_ADDRESS_GROUP ""

add_interface_port display_mode Display_mode name Input 7
