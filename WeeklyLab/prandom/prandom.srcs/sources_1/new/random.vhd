library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
entity dff is
    Port ( CLK : in std_logic;
           RSTn : in std_logic;
           D : in std_logic;
           Q : out std_logic);
end dff;
 
 
architecture Behavioral of dff is
begin
  process(CLK)
  begin
    if CLK'event and CLK='1' then
      if RSTn='1' then
        Q <= '1';
      else
        Q <= D;
      end if;
    end if;
  end process;
end Behavioral;
 
 
 
--VHDL CODE FOR PRBS Generator using LFSR:
 
 
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
 
entity lfsr is
    Port ( CLK : in  STD_LOGIC;
           RSTn : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));
end lfsr;
 
architecture Behavioral of lfsr is
 
component dff
Port ( CLK : in std_logic;
           RSTn : in std_logic;
           D : in std_logic;
           Q : out std_logic);
end component;
 
signal data_reg : std_logic_vector(15 downto 0);
signal tap_data : std_logic;
 
begin
  process(CLK)
  begin
  tap_data <= (data_reg(1) xor data_reg(2)) xor (data_reg(4) xor
  data_reg(15));
  end process;
 
  stage0: dff
    port map(CLK => CLK, RSTn => RSTn, D => tap_data, Q => data_reg(0));
 
g0:for i in 0 to 14 generate
 
    stageN: dff
      port map(CLK => CLK, RSTn => RSTn, D => data_reg(i), Q => data_reg(i+1));
  end generate;
  data_out <= data_reg after 3 ns;
end Behavioral;