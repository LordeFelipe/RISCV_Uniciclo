onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /risc_uni_tb/clock
add wave -noupdate -radix hexadecimal /risc_uni_tb/PC2
add wave -noupdate -radix hexadecimal /risc_uni_tb/instr2
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/ula/Z
add wave -noupdate -radix hexadecimal /risc_uni_tb/i1/mem_d/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1402257 ps} 0}
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
WaveRestoreZoom {816050 ps} {1049841 ps}
