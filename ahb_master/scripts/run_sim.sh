#!/bin/sh
# TODO: Add SOURCE check
iverilog -g2012 -Wall -Winfloop -o $AHB_MASTER_SCRATCH_DIR/a.out -DSIM $AHB_MASTER_HOME/sources/ahb_master.v $AHB_MASTER_HOME/bench/ahb_master_test.sv $AHB_MASTER_HOME/bench/components/ahb_slave_sim.sv && cd $AHB_MASTER_SCRATCH_DIR && vvp a.out
