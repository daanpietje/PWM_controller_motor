----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2023 10:05:54
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
    Port ( ld : in STD_LOGIC;
           clk : in STD_LOGIC;
           nrst : in STD_LOGIC;
           info : in STD_LOGIC_VECTOR (7 downto 0);
           regout : out STD_LOGIC_VECTOR (7 downto 0));
end Reg;

architecture RegBehav of Reg is
BEGIN
process(clk, nrst)
begin
    if nrst = '0' then regout <= "00000000";
    elsif rising_edge(clk) then
        if ld = '1' then regout <= info;
        end if;
    end if;
end process;
end RegBehav;
