# Generating a template project
(tested on Vivado 2023.3 with verilog and xc7s15ftgb196)

1. ``source //Xilinx/Vivado/2023.x/settings64.sh`` - replace this path with your actual Vivado installation path

2. Edit generate.sh and edit those variables:

```bash
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
```
2. Run ``./generate.sh``.

3. Check if running ``make``, ``make synth`` and ``make impl``
work and everything is tuned for your needs.
Rerun ``generate.sh`` if needed.

4. Delete ``generate.sh`` and ``in`` directory.
