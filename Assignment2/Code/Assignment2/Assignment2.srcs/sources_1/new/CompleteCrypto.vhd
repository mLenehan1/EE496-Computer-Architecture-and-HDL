----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2018 19:18:01
-- Design Name: 
-- Module Name: CompleteCrypto - Behavioral
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

entity CompleteCrypto is
 generic (N : positive := 16; M : positive :=4);
 port( Instruction : in unsigned(N-1 downto 0);
       resetIn, clockIn : in std_logic;
       writeEnableIn  : in std_logic;
       ResultIn : in unsigned(N-1 downto 0)
     );
end CompleteCrypto;

architecture Behavioral of CompleteCrypto is

  signal A_In, B_In, Result_Out : unsigned(N-1 downto 0);
  signal OpCode, regASelIn, regBSelIn, writeRegSelIn : unsigned(M-1 downto 0);
  signal writeEnableTmp : std_logic;
  signal Result_In : unsigned(N-1 downto 0);
  
  component register_file
  port(  Abus          : out unsigned(15 downto 0);
         Bbus          : out unsigned(15 downto 0);
         result        : in unsigned(15 downto 0);
         writeEnable   : in std_logic;
         regAsel       : in unsigned(3 downto 0);
         regBsel       : in unsigned(3 downto 0);
         writeRegSel   : in unsigned(3 downto 0);
         reset         : in std_logic;
         clock         : in std_logic
       );
  end component;
  
  component CombinationalLogic
    port ( A_Bus, B_Bus    : in unsigned(N-1 downto 0);
            Ctrl            : in unsigned(M-1 downto 0);
            Result          : out unsigned(N-1 downto 0)
         );
    end component;
         
begin

  Reg_Map : register_file
    port map(  Abus => A_In,
               Bbus => B_In,
               result => ResultIn,
               writeEnable => writeEnableIn,
               regAsel => regASelIn,
               regBsel => regBSelIn,
               writeRegSel => writeRegSelIn,
               reset => resetIn,
               clock => clockIn
            );
            
  CombLogic_Map : CombinationalLogic
    port map( A_Bus => A_In,
              B_Bus => B_In,
              Ctrl => OpCode,
              Result =>  Result_Out       
            );
            
  process(Instruction, Result_Out)
    begin
      OpCode <= Instruction(N-1 downto 3*M);
      regASelIn <= Instruction((3*M)-1 downto 2*M);
      regBSelIn <= Instruction((2*M)-1 downto M);
      writeRegSelIn <= Instruction(M-1 downto 0);
      writeEnableTmp <= writeEnableIn;
      Result_Out <= ResultIn;
--    case(OpCode) is
--      when x"7" => writeEnableTmp <= '0';
--      when others => writeEnableTmp <= '1';
--    end case;
    --Result_In <= Result_Out;
  end process;

end Behavioral;
