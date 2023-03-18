VLOG=/tool/mentor/questa-10.7c/questasim/bin/vlog
VSIM=/tool/mentor/questa-10.7c/questasim/bin/vsim
VCOVER=/tool/mentor/questa-10.7c/questasim/bin/cover
VOPT=/tool/mentor/questa-10.7c/questasim/bin/vopt

TEST = test

QUESTA_SIM_PATH = '/tool/mentor/questa-10.7c/questasim/bin'

compile:
        $(VLOG) /home/perumal/Documents/data_flip_flop/rtl/rtl.sv /home/perumal/Documents/data_flip_flop/ut/Top.sv -l compile.log

run: compile
        $(VSIM) Top "+UVM_TESTNAME=test" +UVM_VERBOSITY+UVM_HIGH  -wlf waveform.wlf -do "log -r /*" -do "run -all" -c

run_wave :run
        $(VSIM) waveform.wlf
