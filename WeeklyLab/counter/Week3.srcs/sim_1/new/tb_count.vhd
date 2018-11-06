----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2018 16:24:04
-- Design Name: 
-- Module Name: tb_count - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_count is
--  Port ( );
end tb_count;

architecture Behavioral of tb_count is
    signal tb_clk, tb_rstn, tb_dir: std_logic:= '0';
    signal tb_count : std_logic_vector(3 downto 0);
begin
    uut: entity work.counter(beh) port map (clk => tb_clk, rstn => tb_rstn, dir => tb_dir, count => tb_count); 
    tb_clk <= not tb_clk after 10 ns;
    tb_rstn <= '1' after 50 ns, '0' after 750 ns, '1' after 900 ns;
    tb_dir <= '1' after 300 ns;
end Behavioral;
