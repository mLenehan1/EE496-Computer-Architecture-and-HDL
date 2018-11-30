----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2018 14:04:22
-- Design Name: 
-- Module Name: tb_combLogic - Behavioral
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
use ieee.NUMERIC_STD.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_Crypto is
  generic(N : positive := 16; M : positive :=4);
end tb_Crypto;

architecture struct of tb_Crypto is
  
  constant clk_period : time := 20ns;
  
  signal tb_clock, tb_reset : std_logic;
  signal tb_Instruction,tb_Result : unsigned(N-1 downto 0);
  signal tb_wrEnIn : std_logic;
  
  component CompleteCrypto is
    port( Instruction : in unsigned(N-1 downto 0);
          resetIn, clockIn, writeEnableIn  : in std_logic;
          ResultIn : in unsigned(N-1 downto 0)
        );
  end component;
  component stimgen3
    generic (clock_period : time := clk_period);
    port( Instruction  : out unsigned (N-1 downto 0);
          wen   : out STD_LOGIC;
          clock : out STD_LOGIC;
          reset : out STD_LOGIC;
          result : in unsigned  (N-1 downto 0)
         );
    end component;
    
begin
  uut: CompleteCrypto
    port map( Instruction => tb_Instruction,
              resetIn => tb_reset, 
              clockIn => tb_clock, 
              writeEnableIn => tb_wrEnIn,
              ResultIn => tb_Result
            );
   
   my_stimgen: stimgen3
     port map( 
               Instruction => tb_Instruction,
               wen => tb_wrEnIn,
               clock => tb_clock,
               reset => tb_reset,
               result => tb_Result
              );             
            
end struct;
