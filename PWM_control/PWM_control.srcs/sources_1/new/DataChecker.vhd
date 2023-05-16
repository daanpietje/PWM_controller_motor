----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.05.2023 11:32:05
-- Design Name: 
-- Module Name: DataChecker - Behavioral
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

entity DataChecker is
  Port ( 
  Datain : in std_logic_vector(7 downto 0);
  senddata : out std_logic;
  clk : in std_logic;
  Ready : in std_logic;
  rst: in std_logic
  );
end DataChecker;

architecture Behavioral of DataChecker is
signal lastsenddata : std_logic_vector(7 downto 0);
begin

process (clk, rst)
begin
        if rst = '1' then
            lastsenddata <= "00000000" after 1 ns;
        end if;
         if ready = '1' then
            if lastsenddata /= datain then 
                senddata <= '1' after 1 ns;
                lastsenddata <= datain after 1 ns;
           end if;
         elsif ready = '0' then
             senddata <= '0'  after 1 ns;
         end if;
end process;
end Behavioral;