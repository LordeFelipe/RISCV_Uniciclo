transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/RV_PKG.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/XREGS.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/CNTRL.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/MEM_INST.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/MEM_DATA.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/RISC_UNI.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/ULA_RV.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/GEN_IMM32.vhd}
vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/CNTRL_ULA.vhd}

vcom -93 -work work {C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/RISC_UNI_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  RISC_UNI_tb

do C:/Users/felip/Downloads/RISCV_Uniciclo/RISCV_UNI/RISCV_UNI/simulation/modelsim/script.do
