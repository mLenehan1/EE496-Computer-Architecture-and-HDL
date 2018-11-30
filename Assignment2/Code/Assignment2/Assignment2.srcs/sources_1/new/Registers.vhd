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
use ieee.NUMERIC_STD.all;

entity InRegister is
  generic (N : positive := 16; M : positive :=4);
  port( reset, clock : in std_logic;
        A_In, B_In : in unsigned(N-1 downto 0);
        Ctrl_In : in unsigned(M-1 downto 0);
        A_Out, B_Out: out unsigned(N-1 downto 0);
        Ctrl_Out : out unsigned(M-1 downto 0)
      );
  end InRegister;
--flip-flop with asynchronous reset
architecture beh of InRegister is
  begin
    asr_clk_en: process (reset,clock)
  begin
    if (reset = '1') then   --asynchronous reset
      A_Out <= (others => '0'); --x"0000";
      B_Out <= (others => '0'); -- x"0000"; 
    elsif (clock'event and clock='1') then --rising_edge(clk)
        A_Out <= A_In;
        B_Out <= B_In;
        Ctrl_Out <= Ctrl_In;
    end if;
  end process asr_clk_en;
end beh;
