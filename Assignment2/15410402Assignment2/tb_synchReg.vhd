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

entity tb_synchReg is
  generic(N : positive := 16; M : positive :=4);
end tb_synchReg;

architecture struct of tb_synchReg is
  
  constant clk_period : time := 20ns;
  
  signal tb_clock, tb_reset : std_logic;
  signal tb_ABus, tb_BBus, tb_Result : unsigned(N-1 downto 0);
  signal tb_Ctrl : unsigned(M-1 downto 0);
  
  component synchronousSystem is
    port( sync_reset, sync_clock : in std_logic;
          sync_A_Bus, sync_B_Bus : in unsigned(N-1 downto 0);
          sync_Result : out unsigned(N-1 downto 0);
          sync_Ctrl : in unsigned(M-1 downto 0)
        );
  end component;
  component stimgen2
    generic (clock_period : time := clk_period);
    port( A_Bus : out unsigned(N-1 downto 0);
          B_Bus : out unsigned(N-1 downto 0);
          Ctrl  : out unsigned (M-1 downto 0);
          clock : out STD_LOGIC;
          reset : out STD_LOGIC;
          result : in unsigned  (N-1 downto 0)
         );
    end component;
    
begin
  uut: synchronousSystem
    port map( sync_reset => tb_reset,
              sync_clock => tb_clock,
              sync_A_Bus => tb_ABus,
              sync_B_Bus => tb_BBus,
              sync_Ctrl => tb_Ctrl,
              sync_Result => tb_Result
            );
   
   my_stimgen: stimgen2
     port map( A_Bus => tb_ABus,
               B_Bus => tb_BBus,
               Ctrl => tb_Ctrl,
               clock => tb_clock,
               reset => tb_reset,
               result => tb_Result
              );             
            
end struct;
