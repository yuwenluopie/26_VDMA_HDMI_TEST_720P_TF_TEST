connect -url tcp:127.0.0.1:3121
source E:/Tiny_ZYNQ/24_VDMA_HDMI_TEST_720P/VDMA_HDMI_TEST/VDMA_HDMI_TEST.sdk/ZYNQ_CORE_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA" && level==0} -index 1
fpga -file E:/Tiny_ZYNQ/24_VDMA_HDMI_TEST_720P/VDMA_HDMI_TEST/VDMA_HDMI_TEST.sdk/ZYNQ_CORE_wrapper_hw_platform_0/ZYNQ_CORE_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA"} -index 0
loadhw -hw E:/Tiny_ZYNQ/24_VDMA_HDMI_TEST_720P/VDMA_HDMI_TEST/VDMA_HDMI_TEST.sdk/ZYNQ_CORE_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA"} -index 0
dow E:/Tiny_ZYNQ/24_VDMA_HDMI_TEST_720P/VDMA_HDMI_TEST/VDMA_HDMI_TEST.sdk/VDMA_HDMI_TEST/Debug/VDMA_HDMI_TEST.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA"} -index 0
con
