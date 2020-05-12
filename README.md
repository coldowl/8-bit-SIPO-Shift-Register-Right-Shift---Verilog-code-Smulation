# 8-bit-SIPO-Shift-Register-Right-Shift---Verilog-code-Smulation
This project uses verilog to model and deisgn a SIPO right shift 8-bit shift register. It uses the exact sturcture and blocks that is used in the very popular 74HC595 IC. There are in total 8 D-flipflops, out of which four gets used as latches and four to shift the data. All the input and outputs are named exactly same as the IC - DS, SHCP, STCP, OE_bar, MR_bar, Q(7 to 0). 
</br>
DS - Data Input  
SHCP - Clock for shiting data  
STCP - Clock for latches  
OE_bar - Enable outputs (active low)  
MR_bar - Reset Flipflops (active low)  
Q (7 to 0) - Outputs  

The design is simulated using iverilog and plotted using Gtkwave.'a' is the simulated output. 'shift_register_test.vcd' is the variable change dumpfile.
