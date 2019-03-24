#!/bin/sh
# TODO: Add SOURCE check
iverilog -f "$AHB_MASTER_HOME/sources/ahb_master.v" -f "$AHB_MASTER_HOME/bench/ahb_master_test.sv" -f "$AHB_MASTER_HOME/bench/components/ahb_slave_sim.sv" -s ahb_master -g2012 -Wall -Winfloop -o "$AHB_MASTER_SCRATCH_DIR/a.out" -DSIM && cd "$AHB_MASTER_SCRATCH_DIR" && vvp a.out
