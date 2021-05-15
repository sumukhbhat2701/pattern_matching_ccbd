#### Logic for matching the regex (1|0)* . 1 . (1|0){20}
![final_circuit](https://github.com/sumukhbhat2701/pattern_matching_ccbd/blob/master/circuit.png)

#### Installation:
<br/>
$ sudo apt install iverilog gtkwave
<br/>

#### Execution: 
<br/>
(Change the target filename in tb_regex.v if necessary) 
<br/>
● $ make 
<br/>
● Execute the binary files to simulate and record the waveforms. Eg:
<br/>
○ $ ./regex
<br/>
● Open “regex.vcd” file using GTKWave 
<br/>
○ $ gtkwave regex.vcd
<br/>
