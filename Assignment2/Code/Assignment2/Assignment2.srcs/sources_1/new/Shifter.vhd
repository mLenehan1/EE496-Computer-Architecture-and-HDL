----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2018 11:33:13
-- Design Name: 
-- Module Name: Shifter - Behavioral
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
---------- Shifter 16-bit VHDL ---------------------
-----------------------------------------------
entity Shifter is
  generic (N : positive := 16; M : positive :=4);
  port(
        B           : in  unsigned(N-1 downto 0);    --   N-bit input
        Shift_Ctrl  : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
        Shift_Out   : out unsigned(N-1 downto 0)  -- 1 N--bit output
      );
end Shifter; 
architecture Behavioral of Shifter is
begin
  process(B,Shift_Ctrl)
    begin
      case(Shift_Ctrl) is
      when x"8" => -- Rotate Right
        Shift_out <= rotate_right(B, M);  -- shift left logic, the number of bits specified in B
      when x"9" => -- Rotate Left
        Shift_out <= rotate_left(B, M);
      when x"A" => --  Shift Left
        Shift_out <= shift_left(B, M);
      when x"B" => -- Shift Right
        Shift_out <= shift_right(B, M);
      when others => Shift_out <= x"0000";
    end case;
  end process;
end Behavioral;
