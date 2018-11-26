----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2018 09:37:01
-- Design Name: 
-- Module Name: CombinationalLogic - 
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

entity CombinationalLogic is
  generic (N : positive := 16; M : positive :=4);
  port(
        A_Bus, B_Bus    : in unsigned(N-1 downto 0);
        Ctrl            : in unsigned(M-1 downto 0);
        Result          : out unsigned(N-1 downto 0)
      );
end CombinationalLogic;

architecture structural_view of CombinationalLogic is
    component ALU
    port(
          A, B        : in  unsigned(N-1 downto 0);  -- 2 N-bit inputs
          ALU_Ctrl    : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
          ALU_Out     : out unsigned(N-1 downto 0)  -- 1 N--bit output
        );
    end component;
    component Shifter
    port(
          B           : in  unsigned(N-1 downto 0);    --   N-bit input
          Shift_Ctrl  : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
          Shift_Out   : out unsigned(N-1 downto 0)  -- 1 N--bit output
        );
    end component;
    component LUT
    port(
          A           : in  unsigned(N-1 downto 0);    --   N-bit input
          LUT_En      : in  unsigned(M-1 downto 0);  -- 1 M-bit function selection
          LUT_Out     : out unsigned(N-1 downto 0)  -- 1 N--bit output
        );
    end component;
    signal ALU_Result, Shift_Result, LUT_Result : unsigned(N-1 downto 0);
begin
  ALU_Map : ALU
    port map(
              A => A_bus,
              B => B_Bus,
              ALU_Ctrl => Ctrl,
              ALU_Out => ALU_Result
            );
  Shifter_Map : Shifter 
    port map(
              B => B_Bus,
              Shift_Ctrl => Ctrl,
              Shift_Out => Shift_Result
            );
  LUT_Map : LUT 
    port map(
              A => A_Bus,
              LUT_En => Ctrl,
              LUT_Out => LUT_Result
            );
  process(A_Bus, B_Bus, Ctrl)
    begin
      if(Ctrl = "1100") then Result <= LUT_Result;
      elsif(Ctrl(3) = '1') then Result <= Shift_Result;
      elsif(Ctrl(3) = '0') then Result <= ALU_Result;
      else Result <= ALU_Result;
      end if; 
  end process;

end ;
