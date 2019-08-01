# TCL File Generated by Component Editor 17.1
# Sat Mar 02 22:59:41 ICT 2019
# DO NOT MODIFY


# 
# Image_Fusion "Image Fusion" v1.0
#  2019.03.02.22:59:41
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Image_Fusion
# 
set_module_property DESCRIPTION ""
set_module_property NAME Image_Fusion
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Image Fusion"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL localedgepreserve
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file localedgepreserve.vhd VHDL PATH Fusion/hdl/localedgepreserve.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


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

add_interface_port reset reset reset Input 1


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

add_interface_port clock Clock clk Input 1


# 
# connection point data1_sink
# 
add_interface data1_sink avalon_streaming end
set_interface_property data1_sink associatedClock clock
set_interface_property data1_sink associatedReset reset
set_interface_property data1_sink dataBitsPerSymbol 8
set_interface_property data1_sink errorDescriptor ""
set_interface_property data1_sink firstSymbolInHighOrderBits true
set_interface_property data1_sink maxChannel 0
set_interface_property data1_sink readyLatency 0
set_interface_property data1_sink ENABLED true
set_interface_property data1_sink EXPORT_OF ""
set_interface_property data1_sink PORT_NAME_MAP ""
set_interface_property data1_sink CMSIS_SVD_VARIABLES ""
set_interface_property data1_sink SVD_ADDRESS_GROUP ""

add_interface_port data1_sink sink1_data data Input 8
add_interface_port data1_sink sink1_eop endofpacket Input 1
add_interface_port data1_sink sink1_ready ready Output 1
add_interface_port data1_sink sink1_sop startofpacket Input 1
add_interface_port data1_sink sink1_valid valid Input 1


# 
# connection point data2_sink
# 
add_interface data2_sink avalon_streaming end
set_interface_property data2_sink associatedClock clock
set_interface_property data2_sink associatedReset reset
set_interface_property data2_sink dataBitsPerSymbol 8
set_interface_property data2_sink errorDescriptor ""
set_interface_property data2_sink firstSymbolInHighOrderBits true
set_interface_property data2_sink maxChannel 0
set_interface_property data2_sink readyLatency 0
set_interface_property data2_sink ENABLED true
set_interface_property data2_sink EXPORT_OF ""
set_interface_property data2_sink PORT_NAME_MAP ""
set_interface_property data2_sink CMSIS_SVD_VARIABLES ""
set_interface_property data2_sink SVD_ADDRESS_GROUP ""

add_interface_port data2_sink sink2_data data Input 8
add_interface_port data2_sink sink2_eop endofpacket Input 1
add_interface_port data2_sink sink2_ready ready Output 1
add_interface_port data2_sink sink2_sop startofpacket Input 1
add_interface_port data2_sink sink2_valid valid Input 1


# 
# connection point data_sink
# 
add_interface data_sink avalon_streaming end
set_interface_property data_sink associatedClock clock
set_interface_property data_sink associatedReset reset
set_interface_property data_sink dataBitsPerSymbol 8
set_interface_property data_sink errorDescriptor ""
set_interface_property data_sink firstSymbolInHighOrderBits true
set_interface_property data_sink maxChannel 0
set_interface_property data_sink readyLatency 0
set_interface_property data_sink ENABLED true
set_interface_property data_sink EXPORT_OF ""
set_interface_property data_sink PORT_NAME_MAP ""
set_interface_property data_sink CMSIS_SVD_VARIABLES ""
set_interface_property data_sink SVD_ADDRESS_GROUP ""

add_interface_port data_sink sink_data data Input 8
add_interface_port data_sink sink_eop endofpacket Input 1
add_interface_port data_sink sink_ready ready Output 1
add_interface_port data_sink sink_sop startofpacket Input 1
add_interface_port data_sink sink_valid valid Input 1


# 
# connection point data_source
# 
add_interface data_source avalon_streaming start
set_interface_property data_source associatedClock clock
set_interface_property data_source associatedReset reset
set_interface_property data_source dataBitsPerSymbol 8
set_interface_property data_source errorDescriptor ""
set_interface_property data_source firstSymbolInHighOrderBits true
set_interface_property data_source maxChannel 0
set_interface_property data_source readyLatency 0
set_interface_property data_source ENABLED true
set_interface_property data_source EXPORT_OF ""
set_interface_property data_source PORT_NAME_MAP ""
set_interface_property data_source CMSIS_SVD_VARIABLES ""
set_interface_property data_source SVD_ADDRESS_GROUP ""

add_interface_port data_source source_data data Output 8
add_interface_port data_source source_eop endofpacket Output 1
add_interface_port data_source source_ready ready Input 1
add_interface_port data_source source_sop startofpacket Output 1
add_interface_port data_source source_valid valid Output 1
