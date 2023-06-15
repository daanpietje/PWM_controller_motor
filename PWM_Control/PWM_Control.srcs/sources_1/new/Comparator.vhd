----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2023 14:14:49
-- Design Name: 
-- Module Name: Comparator - ComparatorBehav
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

entity Comparator is
    Port ( Dutycycle : in STD_LOGIC_VECTOR (7 downto 0);
           Counter : in STD_LOGIC_VECTOR (7 downto 0);
           ld : in std_logic;
           PWM : out STD_LOGIC);
end Comparator;

architecture ComparatorBehav of Comparator is
signal pwm_temp : std_logic;
begin
process(Dutycycle, Counter)
begin
    if ld = '1' then
        if Counter <= Dutycycle then
            pwm_temp <= '1';
        elsif Counter > Dutycycle then
            pwm_temp <= '0';
        end if;
    else
        pwm_temp <= '0';
    end if;
end process;

process (pwm_temp)
begin
    PWM <= pwm_temp;
end process;
end ComparatorBehav;