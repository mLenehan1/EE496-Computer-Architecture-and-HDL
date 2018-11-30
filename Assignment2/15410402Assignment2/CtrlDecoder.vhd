----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2018 15:51:36
-- Design Name: 
-- Module Name: CtrlDecoder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity CtrlDecoder is
generic (M : positive :=4);
Port ( In_Ctrl : in unsigned (M-1 downto 0);
       Out_Ctrl : out unsigned (M-1 downto 0);
       Mux_Out  : out unsigned(M-1 downto 0)
     );
end CtrlDecoder;

architecture Behavioral of CtrlDecoder is

  signal Mux : unsigned(M-1 downto 0);
  
  begin
    process(In_Ctrl, Mux)
      begin
        case(In_Ctrl) is
          when x"0" => Mux <= x"1";
          when x"1" => Mux <= x"1";
          when x"2" => Mux <= x"1";
          when x"3" => Mux <= x"1";
          when x"4" => Mux <= x"1";
          when x"5" => Mux <= x"1";
          when x"6" => Mux <= x"1";
          when x"8" => Mux <= x"2";
          when x"9" => Mux <= x"2";
          when x"A" => Mux <= x"2";
          when x"B" => Mux<= x"2";
          when x"C" => Mux <= x"0";
          when others => Mux <= x"3";
        end case;
        Out_Ctrl <= In_Ctrl;
        Mux_Out <= Mux;
     end process;

end Behavioral;
