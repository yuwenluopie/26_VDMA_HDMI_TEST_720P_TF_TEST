# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.cache/wt [current_project]
set_property parent.project_path E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/DVI_Transmitter [current_project]
update_ip_catalog
set_property ip_output_repo e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/hdl/ZYNQ_CORE_wrapper.v
add_files E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ZYNQ_CORE.bd
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_processing_system7_0_0/ZYNQ_CORE_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_vdma_0_1/ZYNQ_CORE_axi_vdma_0_1.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_vdma_0_1/ZYNQ_CORE_axi_vdma_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_vdma_0_1/ZYNQ_CORE_axi_vdma_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_v_tc_0_0/ZYNQ_CORE_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_v_tc_0_0/ZYNQ_CORE_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_clk_wiz_0_0/ZYNQ_CORE_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_clk_wiz_0_0/ZYNQ_CORE_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_clk_wiz_0_0/ZYNQ_CORE_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_v_axi4s_vid_out_0_0/ZYNQ_CORE_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_v_axi4s_vid_out_0_0/ZYNQ_CORE_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_100M_0/ZYNQ_CORE_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_100M_0/ZYNQ_CORE_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_100M_0/ZYNQ_CORE_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_50M_0/ZYNQ_CORE_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_50M_0/ZYNQ_CORE_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_rst_ps7_0_50M_0/ZYNQ_CORE_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_1/bd_aa9e_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_1/bd_aa9e_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_2/bd_aa9e_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_3/bd_aa9e_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_4/bd_aa9e_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_5/bd_aa9e_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_6/bd_aa9e_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_10/bd_aa9e_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_11/bd_aa9e_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_12/bd_aa9e_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_16/bd_aa9e_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_17/bd_aa9e_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_18/bd_aa9e_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_19/bd_aa9e_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_20/bd_aa9e_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_21/bd_aa9e_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_22/bd_aa9e_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_23/bd_aa9e_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_24/bd_aa9e_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_axi_smc_1/bd_0/ip/ip_25/bd_aa9e_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_auto_pc_0/ZYNQ_CORE_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ZYNQ_CORE_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/constrs_1/new/HDMI.xdc
set_property used_in_implementation false [get_files E:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/constrs_1/new/HDMI.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top ZYNQ_CORE_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ZYNQ_CORE_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ZYNQ_CORE_wrapper_utilization_synth.rpt -pb ZYNQ_CORE_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
