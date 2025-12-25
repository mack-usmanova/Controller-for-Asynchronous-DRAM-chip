restart 
add_force clk {0 0ns} {1 10ns} -repeat_every 20ns 
 
add_force RESET {0 0ns} 
run 20ns 
add_force RESET {1 0ns} 
run 20ns 
add_force R_cmd {1 0ns}  
add_force W_cmd {1 0ns} 
run 160ns 
add_force R_cmd {0 0ns} 
run 50ns 
add_force W_cmd {0 0ns} 
run 20ns 