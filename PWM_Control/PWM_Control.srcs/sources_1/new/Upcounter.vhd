----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2023 13:41:19
-- Design Name: 
-- Module Name: Upcounter - UpcounterBehav
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
USE ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Upcounter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Counterout : out STD_LOGIC_VECTOR (3 downto 0));
end Upcounter;

architecture UpcounterBehav of Upcounter is
signal tempcounter: std_logic_vector (3  downto 0);
begin

Next_counter:
process(clk)
begin
if rising_edge(clk)then 
    if tempcounter <= "1111" then
        tempcounter <= tempcounter + 1;
    else
        tempcounter <= "0000";
    end if;
end if;
end process;

Outout_decoder:
process (tempcounter)
begin
    Counterout <= tempcounter;
end process;
end UpcounterBehav;
