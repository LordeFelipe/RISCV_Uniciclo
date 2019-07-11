onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /risc_uni_tb/clock
add wave -noupdate -radix hexadecimal /risc_uni_tb/PC2
add wave -noupdate -radix hexadecimal /risc_uni_tb/instr2
add wave -noupdate /risc_uni_tb/i1/contr/branch
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/pcNew
add wave -noupdate /risc_uni_tb/i1/branchCond
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/clk
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/wren
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/rst
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/rs1
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/rs2
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/rd
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/data
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/ro1
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/breg/ro2
add wave -noupdate -radix hexadecimal -childformat {{/risc_uni_tb/i1/breg/XREGS(0) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(1) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(2) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(3) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(4) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(5) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(6) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(7) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(8) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(9) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(10) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(11) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(12) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(13) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(14) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(15) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(16) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(17) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(18) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(19) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(20) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(21) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(22) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(23) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(24) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(25) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(26) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(27) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(28) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(29) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(30) -radix hexadecimal} {/risc_uni_tb/i1/breg/XREGS(31) -radix hexadecimal}} -subitemconfig {/risc_uni_tb/i1/breg/XREGS(0) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(1) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(2) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(3) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(4) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(5) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(6) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(7) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(8) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(9) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(10) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(11) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(12) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(13) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(14) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(15) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(16) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(17) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(18) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(19) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(20) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(21) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(22) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(23) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(24) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(25) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(26) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(27) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(28) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(29) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(30) {-height 15 -radix hexadecimal} /risc_uni_tb/i1/breg/XREGS(31) {-height 15 -radix hexadecimal}} /risc_uni_tb/i1/breg/XREGS
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/OPCODE
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/A
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/B
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/Z
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/ZERO
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/A32
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/gerador_imm/instr
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/gerador_imm/imm32
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/gerador_imm/opcode
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/address
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/clock
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/data
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/wren
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/q
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_i/sub_wire0
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/address
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/clock
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/data
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/wren
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/q
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/sub_wire0
add wave -noupdate /risc_uni_tb/i1/contr/opcode
add wave -noupdate /risc_uni_tb/i1/contr/unconditional
add wave -noupdate /risc_uni_tb/i1/contr/jalr
add wave -noupdate /risc_uni_tb/i1/contr/memRead
add wave -noupdate /risc_uni_tb/i1/contr/mem2Reg
add wave -noupdate /risc_uni_tb/i1/contr/memWrite
add wave -noupdate /risc_uni_tb/i1/contr/ulaSrc
add wave -noupdate /risc_uni_tb/i1/contr/ulaOp
add wave -noupdate /risc_uni_tb/i1/contr/regWrite
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/pcBranch
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {125134 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 243
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {233791 ps}
