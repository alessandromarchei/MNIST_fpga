# Parse command-line arguments for difficulty
set difficulty "--high" ;# Default difficulty
foreach {arg} $argv {
    if {[string match "--difficulty*" $arg]} {
        set difficulty [string range $arg 12 end]
    }
}

# Set the working directory
set work_dir "work"
set src_dir "../src"
set tb_dir "../tb"

# Create the work library if it does not exist
if {[file exists $work_dir]} {
    vdel -lib $work_dir -all
}
vlib $work_dir

# Compile the design files
vmap work $work_dir

# List of RTL files to compile
set rtl_files {
    t_ff.vhd
    mux2to1.vhd
    mux_3b_10to1.vhd
    n_counter.vhd
    shiftn.vhd
    mux_39b_2to1.vhd
    mux_30b_4to1.vhd
    add_sub_39.vhd         
    mux_9b_2to1.vhd
    full_adder.vhd  
    mux_39b_4to1.vhd
    RAM512x30.vhd
    RAM10x30.vhd
    neural_network.vhd
}

# Compile each RTL file
foreach file $rtl_files {
    vcom -work work "$src_dir/$file"
}

# Determine the testbench based on difficulty
set testbench ""
if {$difficulty == "--low"} {
    set testbench "tb_low"
} elseif {$difficulty == "--high"} {
    set testbench "tb_high"
} else {
    puts "Invalid difficulty level. Choose --low, or --high."
    exit 1
}

# Compile the selected testbench
vcom -work work "$tb_dir/$testbench.vhd"

# Load the testbench
vsim -voptargs="+acc" work.$testbench

# Adding waves
add wave *

set runTime ""

if {$difficulty == "--low"} {
    set runTime 100ns
} elseif {$difficulty == "--high"} {
    set runTime 10000ns
} else {
    puts "Invalid difficulty level. Choose --low, or --high."
    exit 1
}

# Run simulation
run $runTime

