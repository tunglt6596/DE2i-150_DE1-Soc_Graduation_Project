set mdldir [file dirname [info script]]

puts "Adding DSP Builder System localedgepreserve to project\n"
set importdir [file join $mdldir "DSPBuilder_localedgepreserve_import" ]
if { [file exist $importdir] == 0 } {
	puts "Warning expected IP Import directory '$importdir' not found.\n"
}

set_global_assignment -name "QIP_FILE" [file join $mdldir "localedgepreserve.qip" ]

if { [file exist [file join $mdldir "localedgepreserve_add_user.tcl" ]] } {
	source [file join $mdldir "localedgepreserve_add_user.tcl" ]
}

source [file join $mdldir "DSPBuilder_localedgepreserve_import/div_add.tcl" ]
source [file join $mdldir "DSPBuilder_localedgepreserve_import/dual_port_ram_sync2_add.tcl" ]
source [file join $mdldir "DSPBuilder_localedgepreserve_import/dual_port_ram_sync_add.tcl" ]
source [file join $mdldir "DSPBuilder_localedgepreserve_import/StateMachineEditor_add.tcl" ]

# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/localedgepreserve/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/localedgepreserve.ipx"
} else {
	set mdlIPX "${mdldir}/localedgepreserve.ipx"
}
set ipxFP [open "$ipDir/localedgepreserve.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

foreach g [glob -nocomplain "[file join $mdldir "DSPBuilder_localedgepreserve_import" ]/*.entityimport"] {
	file copy -force $g $ipDir
}
