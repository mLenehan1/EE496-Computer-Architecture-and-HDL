----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2018 13:19:34
-- Design Name: 
-- Module Name: synchronousSystem - Behavioral
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

entity synchronousSystem is
 generic (N : positive := 16; M : positive :=4);
 port(  sync_reset, sync_clock : in std_logic;
        sync_A_Bus, sync_B_Bus : in unsigned(N-1 downto 0);
        sync_Result : out unsigned(N-1 downto 0);
        sync_Ctrl : in unsigned(M-1 downto 0)
      );
end synchronousSystem;

architecture Behavioral of synchronousSystem is

  signal In_A, In_B : unsigned(N-1 downto 0);
  signal In_Ctrl : unsigned(M-1 downto 0);
  signal In_Result : unsigned(N-1 downto 0);

  component InRegister
    port ( reset, clock : in std_logic;
           A_In, B_In : in unsigned(N-1 downto 0);
           Ctrl_In : in unsigned(M-1 downto 0);
           A_Out, B_Out: out unsigned(N-1 downto 0);
           Ctrl_Out : out unsigned(M-1 downto 0)
         );
  end component;
  component CombinationalLogic
    port ( A_Bus, B_Bus    : in unsigned(N-1 downto 0);
            Ctrl            : in unsigned(M-1 downto 0);
            Result          : out unsigned(N-1 downto 0)
         );
  end component;
  component OutRegister
    port ( reset, clock: in std_logic;
           Result_in : in unsigned (N-1 downto 0);
           Result_Out : out unsigned (N-1 downto 0)
         );
  end component;
begin
  InRegister_Map : InRegister
    port map( reset => sync_reset,
              clock => sync_clock,
              A_In => sync_A_Bus,
              B_In => sync_B_Bus,
              Ctrl_In => sync_Ctrl,
              A_Out => In_A,
              B_Out => In_B,
              Ctrl_Out => In_Ctrl
            );
            
  CombLogic_Map : CombinationalLogic
    port map( A_Bus => In_A,
              B_Bus => In_B,
              Ctrl => In_Ctrl,
              Result => In_Result           
            );
            
  OutRegister_Map : OutRegister
    port map( reset => sync_reset,
              clock => sync_clock,
              Result_in => In_Result,
              Result_Out => sync_Result
            );
  
end Behavioral;
