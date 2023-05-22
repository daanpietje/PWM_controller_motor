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
           ld : in STD_LOGIC;
           Counterout : out STD_LOGIC_VECTOR (7 downto 0));
end Upcounter;

architecture UpcounterBehav of Upcounter is
signal tempcounter: std_logic_vector (7 downto 0):="00000000";
begin

Next_counter:
process(clk, rst)
begin
if rst = '1' then tempcounter <= "11111111";
else if ld = '1'then
    if rising_edge(clk) then 
        if tempcounter = "11111111" then
            tempcounter <= "00000000";
        else
            tempcounter <= tempcounter + 1;
        end if;
    end if;
else if ld = '0' then tempcounter <= "11111111";
end if;
end if;
end if;
end process;

Outout_decoder:
process (tempcounter)
begin
        Counterout <= tempcounter;
end process;
end UpcounterBehav;
