----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2025 11:21:39 PM
-- Design Name: 
-- Module Name: readrcmd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity readrcmd is 
  Port (  
  clk, R_cmd, RESET: in std_logic; 
  Mux_sel, CAS, RAS, W: out std_logic 
  ); 
end readrcmd; 
 
architecture Behavioral of readrcmd is 
type state is (idle,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14); 
signal present_state, next_state: state:= idle; 
begin 
process(R_cmd, present_state) 
begin 
case present_state is 
    when idle => 
        CAS <= '0'; 
        RAS <= '1'; 
        W <= '0'; 
        Mux_sel <= '0'; 
        if R_cmd = '1' then  
            next_state <= s1; 
        else  
            next_state <= idle; 
        end if; 
         
    when s1 => 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '0'; 
        Mux_sel <= '0'; 
        next_state <= s2; 
     
    when s2 => 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '0'; 
        Mux_sel <= '0'; 
        next_state <= s3; 
     
    when s3 => 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '0'; 
        Mux_sel <= '0'; 
        next_state <= s4; 
     
    when s4 =>   
        Mux_sel <= '0'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '0'; 
        next_state <= s5; 
     
    when s5 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s6; 
     
    when s6 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s7; 
         
    when s7 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s8; 
         
    when s8 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s9; 
         
    when s9 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s10; 
     
    when s10 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '1'; 
        next_state <= s11; 
     
    when s11 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        next_state <= s12; 
      
    when s12 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        next_state <= s13; 
        
    when s13 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        next_state <= s14; 
     
    when s14 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
    if R_cmd = '1' then  
        next_state <= s1; 
    else  
        next_state <= idle; 
    end if; 
     
    when others => 
        next_state <= idle;     
         
end case; 
end process; 
     
process 
begin 
wait until clk'event and clk = '1'; 
     if reset <= '0' then  
        present_state <= idle; 
     else 
        present_state <= next_state; 
     end if; 
end process;      
     
end Behavioral; 