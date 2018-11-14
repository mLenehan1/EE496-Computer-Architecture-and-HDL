----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2018 19:22:31
-- Design Name: 
-- Module Name: LUT - Behavioral
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
---------- LUT 16-bit VHDL ---------------------
-----------------------------------------------
entity LUT is
  generic (N : positive := 16; M : positive :=4);
  port(
        A           : in  unsigned(N-1 downto 0);    --   N-bit input
        LUT_En  : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
        LUT_Out   : out unsigned(N-1 downto 0)  -- 1 N--bit output
      );
end LUT; 
architecture Behavioral of LUT is
begin
  process(A,LUT_En)
    variable A_lowBit, A_highBit : std_logic_vector((N/4)-1 downto 0);
  -- A_lowBit:= A((N/4)-1 downto 0);
  -- A_highBit := A((N/2)-1 downto (N/4)-1);
    begin
      case(LUT_en) is
      when "1100" => 
        case(A_lowBit) is
        when "0000" =>
          A_lowBit := "1111";
        when "0001" =>
          A_lowBit := "0000";
        when "0010" =>
          A_lowBit := "1101";
        when "0011" =>
          A_lowBit := "0111";
        when "0100" =>
          A_lowBit := "1011";
        when "0101" =>
          A_lowBit := "1110";
        when "0110" =>
          A_lowBit := "0101";
        when "0111" =>
          A_lowBit := "1010";
        when "1000" =>
          A_lowBit := "1001";
        when "1001" =>
          A_lowBit := "0010";
        when "1010" =>
          A_lowBit := "1100";
        when "1011" =>
          A_lowBit := "0001";
        when "1100" =>
          A_lowBit := "0011";
        when "1101" =>
          A_lowBit := "0100";
        when "1110" =>
          A_lowBit := "1000";
        when others => A_lowBit := "0110";
      end case;
      case(A_highBit) is
        when "0000" =>
          A_lowBit := "0001";
        when "0001" =>
          A_lowBit := "1011";
        when "0010" =>
          A_lowBit := "1001";
        when "0011" =>
          A_lowBit := "1100";
        when "0100" =>
          A_lowBit := "1101";
        when "0101" =>
          A_lowBit := "0110";
        when "0110" =>
          A_lowBit := "1111";
        when "0111" =>
          A_lowBit := "0011";
        when "1000" =>
          A_lowBit := "1110";
        when "1001" =>
          A_lowBit := "1000";
        when "1010" =>
          A_lowBit := "0111";
        when "1011" =>
          A_lowBit := "0010";
        when "1100" =>
          A_lowBit := "1010";
        when "1101" =>
          A_lowBit := "0010";
        when "1110" =>
          A_lowBit := "0101";
        when others => A_lowBit := "0000";
      end case;
    when others => LUT_out <= A;
    end case;
  end process;
end Behavioral;
