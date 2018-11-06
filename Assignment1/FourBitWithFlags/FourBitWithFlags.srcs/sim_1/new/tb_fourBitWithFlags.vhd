----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2018 09:33:22
-- Design Name: 
-- Module Name: tb_fourBitAddSub - Behavioral
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

entity tb_fourBitAddSub is
--  Port ( );
end tb_fourBitAddSub;

architecture Behavioral of tb_fourBitAddSub is
    signal tb_fbA, tb_fbB, tb_fbSum: std_logic_vector(3 downto 0) := (others => '0');
    signal tb_fbSub, tb_nFlag, tb_zFlag, tb_cFlag, tb_vFlag: std_logic:= '0';
    component fourBitAddSub is
        port ( fbA, fbB : in std_logic_vector(3 downto 0);
               fbSum : inout std_logic_vector(3 downto 0);
               sub : in std_logic;
               nFlag, zFlag, cFlag, vFlag : out std_logic);
    end component;
begin
    uut: fourBitAddSub
        port map ( fbA => tb_fbA,
                   fbB => tb_fbB,
                   fbSum => tb_fbSum,
                   sub => tb_fbSub,
                   nFlag => tb_nFlag,
                   zFlag => tb_zFlag,
                   cFlag => tb_cFlag,
                   vFlag => tb_vFlag);
        -- All A values
        tb_fbA(0) <= not tb_fbA(0) after 10 ns;
        tb_fbA(1) <= not tb_fbA(1) after 20 ns;
        tb_fbA(2) <= not tb_fbA(2) after 40 ns;
        tb_fbA(3) <= not tb_fbA(3) after 80 ns;
        
        -- All B values
        tb_fbB(0) <= not tb_fbB(0) after 160 ns;
        tb_fbB(1) <= not tb_fbB(1) after 320 ns;
        tb_fbB(2) <= not tb_fbB(2) after 640 ns;
        tb_fbB(3) <= not tb_fbB(3) after 1280 ns;
        
        -- Alternate between addition and subtraction
        tb_fbSub <= not tb_fbSub after 2560 ns;
end Behavioral;
