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
    variable A_lowBit : unsigned(M-1 downto 0) := A(3 downto 0);
    variable A_highBit : unsigned(M-1 downto 0) := A(7 downto 4);
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
           when "1111" => A_lowBit := "0110";
           when others => A_lowBit := "0000";
         end case;
         case(A_highBit) is
           when "0000" =>
             A_highBit := "0001";
           when "0001" =>
             A_highBit := "1011";
           when "0010" =>
             A_highBit := "1001";
           when "0011" =>
             A_highBit := "1100";
           when "0100" =>
             A_highBit := "1101";
           when "0101" =>
             A_highBit := "0110";
           when "0110" =>
             A_highBit := "1111";
           when "0111" =>
             A_highBit := "0011";
           when "1000" =>
             A_highBit := "1110";
           when "1001" =>
             A_highBit := "1000";
           when "1010" =>
             A_highBit := "0111";
           when "1011" =>
             A_highBit := "0010";
           when "1100" =>
             A_highBit := "1010";
           when "1101" =>
             A_highBit := "0010";
           when "1110" =>
             A_highBit := "0101";
           when "1111" => A_lowBit := "0000";
           when others => A_lowBit := "0000";
         end case;
       when others => LUT_out <= x"0000";
    end case;
    LUT_out(15) <= A(15);
    LUT_out(14) <= A(15);
    LUT_out(13) <= A(15);
    LUT_out(12) <= A(15);
    LUT_out(11) <= A(15);
    LUT_out(10) <= A(15);
    LUT_out(9) <= A(15);
    LUT_out(8) <= A(15);
    LUT_out(7) <= A_highBit(3);
    LUT_out(6) <= A_highBit(2);
    LUT_out(5) <= A_highBit(1);
    LUT_out(4) <= A_highBit(0);
    LUT_out(3) <= A_lowBit(3);
    LUT_out(2) <= A_lowBit(2);
    LUT_out(1) <= A_lowBit(1);
    LUT_out(0) <= A_lowBit(0);
  end process;
end Behavioral;
