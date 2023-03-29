----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2023 11:36:36
-- Design Name: 
-- Module Name: PWM_Logic - PWM_Logic_behav
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

entity PWM_Logic is
  Port ( clk : in std_logic;
         rst: in std_logic;
         input: in std_logic_vector (2 downto 0);
         pwm_out : out std_logic_vector (2 downto 0) -- uitgangs signaal
         );
end PWM_Logic;

architecture PWM_Logic_behav of PWM_Logic is
    type state is (S0, S1, S2, S3, S4, S5, S6, S7);
    signal p_s, n_s: state;
begin

Memory:
process(clk, rst)
begin
    if rst = '1' then p_s <= S0 after 1 ns;
    elsif rising_edge(clk) then
        p_s <= n_s after 1 ns;
    end if;
end process;
OutputDecoder:
process(clk)
begin
    case p_s is
        when S0 => pwm_out <= "000";
        when S1 => pwm_out <= "001";
        when S2 => pwm_out <= "010";
        when S3 => pwm_out <= "011";
        When S4 => pwm_out <= "100";
        when S5 => pwm_out <= "101";
        When S6 => pwm_out <= "110";
        When S7 => pwm_out <= "111";
        When others => pwm_out <= "000";
    end case;
end process;

end PWM_Logic_behav;
