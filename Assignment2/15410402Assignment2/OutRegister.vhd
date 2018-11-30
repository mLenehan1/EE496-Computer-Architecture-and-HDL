----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2018 12:00:31
-- Design Name: 
-- Module Name: OutRegister - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

entity OutRegister is
  generic (N : positive := 16; M : positive :=4);
  port( reset, clock: in std_logic;
        Result_in : in unsigned (N-1 downto 0);
        Result_Out : out unsigned(N-1 downto 0)
      );
  end OutRegister;
--flip-flop with asynchronous reset & set
architecture beh of OutRegister is
  begin
    asr_clk_en: process (reset, clock)
  begin
    if (reset = '1') then   --asynchronous reset
      Result_Out <= (others => '0'); --x"0000";
    elsif (clock'event and clock='0') then --falling_edge(clk)
        Result_Out <= Result_in;
    end if;
  end process asr_clk_en;
end beh;
