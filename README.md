# FreeAHB (Experimental)
Original author: Revanth Kamaraj (revanth91kamaraj@gmail.com)
Somewhat extended by: Kris Monsen

Modifications:
- Adds bash script for running simulator.
- Adds HLOCK and HPROT signals, which were missing in the original design.
- Renames some variables in order to clarify what they do. o_dav is instead o_ready (the outputted data is ready) to follow the standard valid-ready memory request cycle.
- Else... very little so far. We hope to add wrapping burst functionality sometime early summer, then add a sample slave and arbiter as well (currently the TBs only mimic the two). Right now this is just used as part of a thesis design which is prioritized over a fully functional AHB master (most masters can make do with single transfers). 


END OF FORK README
START OF ORIGINAL README

This repository currently provides an AHB 2.0 Master.
Icarus Verilog 10.0 or higher is required to simulate the design.


## Features of the AHB master:

- Bursts are done using a combination of INCR16/INCR8/INCR4 and INCR.
- Supports slaves with SPLIT/RETRY capability.

## To run simulations:

- Source the source\_it.csh file in scripts. Set the paths in the script correctly.
- Execute the run\_sim.csh file in scripts. A VVP file will be generated in the scratch folder. Execute it using vvp.

NOTE: If you define X\_INJECTION, the bench will run with data being made x when invalid (dav=0) to ensure 
a more robust design test (x-injection). If you do not define X\_INJECTION, the bench will make data = 0 
when data valid = 0. It is recommended that you use x injection when testing the design for a more robust
test.

## NOTE: While the master design is complete, it should be treated as very experimental in its current form.
