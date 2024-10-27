source $::env(SCRIPTS_DIR)/load.tcl
load_design 2_floorplan.odb 2_floorplan.sdc
proc report_module_sizes {} {
    puts "Module Size Report"
    puts "=================="
    puts "Name\tWidth\tHeight\tArea"
    set block [ord::get_db_block] 
    #foreach inst [get_cells -hierarchical] 
    foreach inst [$block getInsts] {
	#puts "module $inst"
        set bbox [$inst getBBox]
	#puts "bbox"
        #set width [expr [lindex $bbox 2] - [lindex $bbox 0]]
	set width [$bbox getWidth]
        #set height [expr [lindex $bbox 3] - [lindex $bbox 1]]
	set height [$bbox getLength]
        set area [expr $width * $height]
        puts "[$inst getName]\t$width\t$height\t$area"
    }
}

# 执行报告
report_module_sizes
