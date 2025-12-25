----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2025 11:30:27 PM
-- Design Name: 
-- Module Name: rwcmd - Behavioral
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

entity rwcmd is 
  Port ( 
  R_cmd, W_cmd, RESET, clk: in std_logic; 
  Mux_sel, CAS, RAS, W: out std_logic   
   ); 
end rwcmd; 
 
architecture Behavioral of rwcmd is 
type state is (s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17); 
signal present_state, next_state: state:=s1;  
begin 
process(R_cmd, W_cmd, present_state) 
begin  
case present_state is 
 
    when s1 => 
        Mux_sel <= '0'; 
        CAS <= '0'; 
        RAS <= '1'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s2; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s2; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
     
    when s2 => 
        Mux_sel <= '0'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s3; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s3; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s3 => 
        Mux_sel <= '0'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s4; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s4; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
     
    when s4 => 
        Mux_sel <= '0'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s5; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s5; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
     
    when s5 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '0'; 
        W <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s6; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s6; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
     
    when s6 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s7; 
            W <= '1'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s7; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
    
    when s7 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s8; 
            W <= '1'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s8; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s8 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s9; 
            W <= '1'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s9; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s9 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s10; 
            W <= '1'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s10; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s10 => 
        Mux_sel <= '1'; 
        CAS <= '0'; 
        RAS <= '0'; 
        W <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s11; 
            W <= '1'; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s11; 
            W <= '0'; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s11 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '0'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s12; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s12; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s12 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s13; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s13; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s13 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s14; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s14; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s14 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s15; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s15; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when s15 => 
        Mux_sel <= '1'; 
        CAS <= '1'; 
        RAS <= '1'; 
        W <= '1'; 
        if R_cmd = '1' and W_cmd = '0' then  
            next_state <= s2; 
        elsif R_cmd = '0' and W_cmd = '1' then  
            next_state <= s2; 
        elsif R_cmd = '0' and W_cmd = '0' then  
            next_state <= s1; 
        else 
            next_state <= s2; 
        end if; 
         
    when others => 
       next_state <= s1; 
     
end case; 
end process;     
     
process 
begin 
wait until clk'event and clk = '1'; 
    if reset = '0' then  
        present_state <= s1; 
    else  
        present_state <= next_state; 
    end if; 
end process; 
 
 
end Behavioral;