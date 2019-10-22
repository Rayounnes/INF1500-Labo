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
set_msg_config  -id {IP_Flow 19-3664}  -suppress 
set_msg_config  -id {Synth 8-3331}  -suppress 
set_msg_config  -id {filemgmt 20-645}  -suppress 
set_msg_config  -id {Project 1-498}  -string {{WARNING: [Project 1-498] One or more constraints failed evaluation while reading constraint file [D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/constrs_1/new/lab2.xdc] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [.Xil/MIROIR_5B_wrapper_propImpl.xdc] and check the run log file to verify that these constraints were correctly applied.}}  -suppress 
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.cache/wt [current_project]
set_property parent.project_path D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/Users/Nathan/Documents/INF1500/Labo/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo d:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top mini_UAL_MUX_5B_1_0 -part xc7a100tcsg324-1 -mode out_of_context

rename_ref -prefix_all mini_UAL_MUX_5B_1_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef mini_UAL_MUX_5B_1_0.dcp
create_report "mini_UAL_MUX_5B_1_0_synth_1_synth_report_utilization_0" "report_utilization -file mini_UAL_MUX_5B_1_0_utilization_synth.rpt -pb mini_UAL_MUX_5B_1_0_utilization_synth.pb"

if { [catch {
  file copy -force D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.runs/mini_UAL_MUX_5B_1_0_synth_1/mini_UAL_MUX_5B_1_0.dcp D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.ip_user_files/ip/mini_UAL_MUX_5B_1_0]} {
  catch { 
    file copy -force D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_stub.v D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.ip_user_files/ip/mini_UAL_MUX_5B_1_0
  }
}

if {[file isdir D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.ip_user_files/ip/mini_UAL_MUX_5B_1_0]} {
  catch { 
    file copy -force D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.srcs/sources_1/bd/mini_UAL/ip/mini_UAL_MUX_5B_1_0/mini_UAL_MUX_5B_1_0_stub.vhdl D:/Users/Nathan/Documents/INF1500/Labo/project_2/project_2.ip_user_files/ip/mini_UAL_MUX_5B_1_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
