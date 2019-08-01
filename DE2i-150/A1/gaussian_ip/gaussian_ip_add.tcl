set mdldir [file dirname [info script]]

puts "Adding DSP Builder System gaussian_ip to project\n"

set_global_assignment -name "QIP_FILE" [file join $mdldir "gaussian_ip.qip" ]

if { [file exist [file join $mdldir "gaussian_ip_add_user.tcl" ]] } {
	source [file join $mdldir "gaussian_ip_add_user.tcl" ]
}


# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/gaussian_ip/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/gaussian_ip.ipx"
} else {
	set mdlIPX "${mdldir}/gaussian_ip.ipx"
}
set ipxFP [open "$ipDir/gaussian_ip.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

