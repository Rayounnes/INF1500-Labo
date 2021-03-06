vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/code_Gray/ipshared/778c/xup_and2.srcs/sources_1/new/xup_and2.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_0_0/sim/code_Gray_xup_and2_0_0.v" \
"../../../bd/code_Gray/ipshared/1ec9/xup_or2.srcs/sources_1/new/xup_or2.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_or2_0_0/sim/code_Gray_xup_or2_0_0.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_or2_0_3/sim/code_Gray_xup_or2_0_3.v" \
"../../../bd/code_Gray/ipshared/e3e7/xup_inv.srcs/sources_1/new/xup_inv.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_inv_0_0/sim/code_Gray_xup_inv_0_0.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_0_1/sim/code_Gray_xup_and2_0_1.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_inv_0_1/sim/code_Gray_xup_inv_0_1.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_0_2/sim/code_Gray_xup_and2_0_2.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_inv_1_0/sim/code_Gray_xup_inv_1_0.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_2_0/sim/code_Gray_xup_and2_2_0.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_or2_3_0/sim/code_Gray_xup_or2_3_0.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_3_0/sim/code_Gray_xup_and2_3_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../project_3.srcs/sources_1/bd/code_Gray/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/code_Gray/ip/code_Gray_xlconcat_0_0/sim/code_Gray_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/code_Gray/sim/code_Gray.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_0_3/sim/code_Gray_xup_and2_0_3.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_or2_0_2/sim/code_Gray_xup_or2_0_2.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_inv_0_2/sim/code_Gray_xup_inv_0_2.v" \
"../../../bd/code_Gray/ip/code_Gray_xup_and2_5_0/sim/code_Gray_xup_and2_5_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

