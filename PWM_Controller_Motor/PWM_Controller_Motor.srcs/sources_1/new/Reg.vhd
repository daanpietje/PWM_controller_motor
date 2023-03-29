----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2023 11:21:34
-- Design Name: 
-- Module Name: Reg - RegBehav
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

entity Reg is
    Port ( clk : in std_logic;
           rst : in std_logic;
           data : in std_logic_vector (2 downto 0);
           outp : out std_logic_vector (2 downto 0);
           ld : in std_logic);
end Reg;

architecture RegBehav of Reg is
begin
process(clk, rst)
begin
    if rst = '1' then outp <= "0000";
    elsif rising_edge(clk) then
        if ld = '1' then outp <= data;
        end if;
    end if;
end process;
end RegBehav;
