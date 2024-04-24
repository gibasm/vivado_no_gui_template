#!/bin/bash
###
# part name e.g.: xc7s15ftgb196-1
part=
# bitstream file name
bitstream_name=
# constraint file(s)
constraint_file=
# default max simulation time
sim_time=800ns
# top module name for synthesis and implementation
top=test
# verilog sources
vsrcs=
# simulation top module
sim_top=
###

mkdir tcl &> /dev/null
mkdir reports &> /dev/null

eval "cat <<EOF
$(<./in/impl.tcl.in)
EOF
" > tcl/impl.tcl 2> /dev/null

eval "cat <<EOF
$(<./in/synth.tcl.in)
EOF
" > tcl/synth.tcl 2> /dev/null

eval "cat <<EOF
$(<./in/sim.tcl.in)
EOF
" > tcl/sim.tcl 2> /dev/null

eval "cat <<EOF
$(<./in/Makefile.in)
EOF
" > Makefile 2> /dev/null
