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

entity tb_combLogic is
  generic(N : positive := 16; M : positive :=4);
end tb_combLogic;

architecture struct of tb_combLogic is
  
  constant clk_period : time := 20ns;
  
  signal clock, reset : std_logic;
  signal tb_ABus, tb_BBus, tb_Result : unsigned(N-1 downto 0);
  signal tb_Ctrl : unsigned(M-1 downto 0);
  
  component CombinationalLogic is
    port( A_Bus    : in unsigned(N-1 downto 0);
          B_Bus    : in unsigned(N-1 downto 0);
          Ctrl            : in unsigned(M-1 downto 0) := x"0";
          Result          : out unsigned(N-1 downto 0)
        );
  end component;
  component stimgen
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
  uut: CombinationalLogic
    port map( A_Bus => tb_ABus,
              B_Bus => tb_BBus,
              Ctrl => tb_Ctrl,
              Result => tb_Result
            );
   
   my_stimgen: stimgen
     port map( A_Bus => tb_ABus,
               B_Bus => tb_BBus,
               Ctrl => tb_Ctrl,
               clock => clock,
               reset => reset,
               result => tb_Result
              );             
            
end struct;
