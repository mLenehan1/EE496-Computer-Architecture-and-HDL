----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2018 15:26:10
-- Design Name: 
-- Module Name: Registers - Behavioral
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
use ieee.std_logic_unsigned.all;

entity Registers is
  port(
       reset, set, clock, enable: in std_logic;
       d_in : in std_logic_vector (7 downto 0);
       q_out: out std_logic_vector (7 downto 0)
      );
  end Registers;
--flip-flop with asynchronous reset & set
architecture beh of Registers is
  begin
    asr_clk_en: process (reset, set, clock, enable)
  begin
    if (reset = '0') then   --asynchronous reset
      q_out <= (others => '0'); --"00000000"; 
    elsif (set = '0') then  --asynchronous set
      q_out <= (others => '1'); --"11111111"; 
    elsif (clock'event and clock='1') then --rising_edge(clk)
      if (enable = '1') then--clock enable
        q_out <= d_in;
      end if;
    end if;
  end process asr_clk_en;
end beh;
