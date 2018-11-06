library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity counter is
  port ( clk   : in  std_logic;
           rstn   : in  std_logic;
           dir   : in  std_logic;
           count : out std_logic_vector(3 downto 0)
          );
end counter;

architecture beh of counter is
--  signal cnt : std_logic_vector(3 downto 0);
begin
-- 4-bit synchronous counter with asynchronous 
-- reset and count direction control
p1: process (clk, rstn)
   variable cnt : std_logic_vector(3 downto 0);
  -- cnt is only visible with this process
begin
   if rstn = '0' then 
--      cnt <= (others => '0');  -- "0000";
      cnt := (others => '0');  -- "0000";

   elsif rising_edge(clk) then  -- check clock rising edge
       if dir='1' then  
           cnt := std_logic_vector(unsigned(cnt) + 1);
      else
           cnt := std_logic_vector(unsigned(cnt) - 1);
      end if;
   end if;
   count <= cnt;
end process p1;
-- cnt is not visible in this concurrent region
-- p2: process …..
end beh;