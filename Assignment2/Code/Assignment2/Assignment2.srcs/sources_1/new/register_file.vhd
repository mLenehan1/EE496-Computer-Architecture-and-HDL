----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2018 13:21:13
-- Design Name: 
-- Module Name: register_file - Behavioral
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

entity register_file is
 generic (N : positive := 16; M : positive :=4);
 port( Abus          : out unsigned(15 downto 0);
       Bbus          : out unsigned(15 downto 0);
       result        : in unsigned(15 downto 0);
       writeEnable   : in std_logic;
       regAsel       : in unsigned(3 downto 0);
       regBsel       : in unsigned(3 downto 0);
       writeRegSel   : in unsigned(3 downto 0);
       reset         : in std_logic;
       clock         : in std_logic
     );
end register_file;

architecture Behavioral of register_file is

  type memory is array(0 to 15) of unsigned(15 downto 0);
  signal REG_FILE : memory := ( 0 => x"0001",
                                1 => x"c505",
                                2 => x"3c07",
                                3 => x"d405",
                                4 => x"1186",
                                5 => x"f407",
                                6 => x"1086",
                                7 => x"4706",
                                8 => x"6808",
                                9 => x"baa0",
                                10=> x"c902",
                                11 => x"100b",
                                12 => x"C000",
                                13=> x"c902",
                                14 => x"100b",
                                15 => x"B000",
                                others => (others => '0')
                              );      
  begin
    asr_clk_en: process (reset,clock)
    begin
      if (reset = '0') then   --asynchronous reset
        Abus <= (others => '0'); --x"0000";
        Bbus <= (others => '0'); -- x"0000"; 
      elsif (clock'event and clock='1') then --rising_edge(clk)
          if(writeEnable = '1') then
            reg_file(to_integer(writeRegSel)) <= result;
            if(regAsel = writeRegSel) then
              Abus <= result;
            end if;
            if(regBsel = writeRegSel) then
              Bbus <= result;
            end if;
          else null;
          end if;
      end if;
    end process asr_clk_en;
    Abus <= reg_file(to_integer(regAsel));
    Bbus <= reg_file(to_integer(regBsel));
end Behavioral;
