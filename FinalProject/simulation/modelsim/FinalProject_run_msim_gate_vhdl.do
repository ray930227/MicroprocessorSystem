transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FinalProject.vho}

vcom -93 -work work {C:/Users/ray93/Downloads/FinalProject/FinalProject.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=FinalProject_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  FinalProject

add wave *
view structure
view signals
run -all
