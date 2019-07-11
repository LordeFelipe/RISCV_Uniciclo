onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /risc_uni_tb/clock
add wave -noupdate -radix hexadecimal /risc_uni_tb/PC2
add wave -noupdate -radix hexadecimal /risc_uni_tb/instr2
add wave -noupdate /risc_uni_tb/i1/breg/clk
add wave -noupdate /risc_uni_tb/i1/breg/wren
add wave -noupdate /risc_uni_tb/i1/breg/rst
add wave -noupdate /risc_uni_tb/i1/breg/rs1
add wave -noupdate /risc_uni_tb/i1/breg/rs2
add wave -noupdate /risc_uni_tb/i1/breg/rd
add wave -noupdate /risc_uni_tb/i1/breg/data
add wave -noupdate /risc_uni_tb/i1/breg/ro1
add wave -noupdate /risc_uni_tb/i1/breg/ro2
add wave -noupdate /risc_uni_tb/i1/breg/XREGS
add wave -noupdate /risc_uni_tb/i1/ula/OPCODE
add wave -noupdate /risc_uni_tb/i1/ula/A
add wave -noupdate /risc_uni_tb/i1/ula/B
add wave -noupdate /risc_uni_tb/i1/ula/Z
add wave -noupdate /risc_uni_tb/i1/ula/ZERO
add wave -noupdate /risc_uni_tb/i1/ula/A32
add wave -noupdate /risc_uni_tb/i1/gerador_imm/instr
add wave -noupdate /risc_uni_tb/i1/gerador_imm/imm32
add wave -noupdate /risc_uni_tb/i1/gerador_imm/opcode
add wave -noupdate /risc_uni_tb/i1/gerador_imm/zeros
add wave -noupdate /risc_uni_tb/i1/mem_i/address
add wave -noupdate /risc_uni_tb/i1/mem_i/clock
add wave -noupdate /risc_uni_tb/i1/mem_i/data
add wave -noupdate /risc_uni_tb/i1/mem_i/wren
add wave -noupdate /risc_uni_tb/i1/mem_i/q
add wave -noupdate /risc_uni_tb/i1/mem_i/sub_wire0
add wave -noupdate /risc_uni_tb/i1/mem_d/address
add wave -noupdate /risc_uni_tb/i1/mem_d/clock
add wave -noupdate /risc_uni_tb/i1/mem_d/data
add wave -noupdate /risc_uni_tb/i1/mem_d/wren
add wave -noupdate /risc_uni_tb/i1/mem_d/q
add wave -noupdate /risc_uni_tb/i1/mem_d/sub_wire0
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 150
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
WaveRestoreZoom {135550 ps} {263550 ps}