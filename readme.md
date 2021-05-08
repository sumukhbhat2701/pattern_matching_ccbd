#### Installation:
$ sudo apt install iverilog gtkwave

#### Execution:
(Change the target filename in tb_regex.v if necessary)
● $ make
● Execute any of the binary files to simulate and record the waveforms. Eg:
○ $ ./zero_dot_one
● Open “regex.vcd” file using GTKWave
○ $ gtkwave regex.vcd