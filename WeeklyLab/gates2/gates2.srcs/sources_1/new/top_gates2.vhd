----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 17:05:06
-- Design Name: 
-- Module Name: top_gates2 - Behavioral
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

entity top_gates2 is
    Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end top_gates2;

architecture Behavioral of top_gates2 is
    component gates2 is
        Port (
                a : in STD_LOGIC;
                b : in STD_LOGIC;
                z : out STD_LOGIC_VECTOR (3 downto 0)
             );
    end component;
begin
    cl : gates2
     port map (
                a => sw(0),
                b => sw(1),
                z(0) => led(0),
                z(1) => led(1),
                z(2) => led(2),
                z(3) => led(3)
               );
end Behavioral;
