----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2023 10:43:26
-- Design Name: 
-- Module Name: Controller - ControllerBehav
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

entity Controller is
    Port (regld : out std_logic;
           upcounterld: out std_logic;
           dataavaibility: in std_logic;
           comparatorld: out std_logic;
           ready : out std_logic;
           clk : in STD_LOGIC;
           nrst : in STD_LOGIC);
end Controller;

architecture ControllerBehav of Controller is
type state is (S0, S1, S2, S3, SU);
signal presentstate: state := S0;
signal nextstate : state;
begin

next_state_decoder:
process(presentstate, dataavaibility)   
    variable n_s : state;   
begin
    case presentstate is
        when S0 => if dataavaibility = '1' then n_s := S1; else n_s := S0; end if;
        when S1 => n_s := S2;
        when S2 => n_s := S3;
        when S3 => if dataavaibility = '1' then n_s := S1; else n_s := S3; end if;
        when others => n_s := SU;    
    end case;
    nextstate <= n_s after 1 ns;
end process;

memory:
process(clk, nrst)
begin   
       if nrst ='0' then
        presentstate <= S0 after 1 ns;
    elsif rising_edge(clk) then
        presentstate <= nextstate after 1 ns;
    end if;
end process;

output_decoder:
process (presentstate)
variable outbus : std_logic_vector(3 downto 0);
begin
    case presentstate is
        when S0 => outbus := "0100";
        when S1 => outbus := "0001";
        when S2 => outbus := "1010";
        when S3 => outbus := "1110";
        when SU => outbus := "0000";
        when others => outbus := "0000";
    end case;
    comparatorld <= outbus(3) after 1 ns;
    ready <= outbus(2) after 1 ns;
    upcounterld <= outbus(1) after 1 ns;
    regld <= outbus(0) after 1 ns;
end process;

end ControllerBehav;