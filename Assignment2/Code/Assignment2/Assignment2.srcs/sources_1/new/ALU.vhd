----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2018 11:19:38
-- Design Name: 
-- Module Name: ALU - Behavioral
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
---------- ALU 8-bit VHDL ---------------------
-----------------------------------------------
entity ALU is
  generic (N : positive := 16; M : positive :=4);
  port(
        A, B     : in  unsigned(N-1 downto 0);  -- 2 N-bit inputs
        ALU_Ctrl  : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
        ALU_Out   : out unsigned(N-1 downto 0)  -- 1 N--bit output
       );
end ALU; 
architecture Behavioral of ALU is
begin
  process(A,B,ALU_Ctrl)
    begin
      case(ALU_Ctrl) is
        when "0000" => -- Addition
          ALU_out <= A + B ; 
        when "0001" => -- Subtraction
          ALU_out <= A - B ;
        when "0010" => -- AND
          ALU_out <= A and B;
        when "0011" => -- OR
          ALU_out <= A or B;
        when "0100" => -- XOR
          ALU_out <= A xor B;
        when "0101" => -- NOT
          ALU_out <= not A;
        when "0110" => -- Move
          ALU_out <= A;
        when others => ALU_out <= A + B;
      end case;
  end process;
end Behavioral;
