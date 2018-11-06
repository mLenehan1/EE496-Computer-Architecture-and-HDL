----------------------------------------------------------------------------------
-- Company: DCU
-- Engineer: Michael Lenehan
-- 
-- Create Date: 08.10.2018 18:25:35
-- Design Name: Four-Bit Adder/Subtractor with Status Flags
-- Module Name: fourBitAddSub - Behavioral
-- Project Name: Assignment 1
-- Target Devices:  
-- Tool Versions: 
-- Description: Four-Bit Adder Subtractor with Status Flags
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

entity fourBitAddSub is
    port ( fbA, fbB: in std_logic_vector(3 downto 0);
           fbSum: inout std_logic_vector(3 downto 0);
           sub : in std_logic;
           nFlag, zFlag, cFlag, vFlag : out std_logic);
end fourBitAddSub;

architecture Behavioral of fourBitAddSub is
    signal tempCarry: std_logic := '0';
    signal fbCin, Cout, tempXOR : std_logic_vector(3 downto 0) := (others => '0');
    component fullAdder
        port ( a: in std_logic;
               b: in std_logic;
               c_in: in std_logic;
               sum: out std_logic;
               c_out: out std_logic);
    end component;
begin

tempXOR(0) <= fbB(0) xor sub;
tempXOR(1) <= fbB(1) xor sub;
tempXOR(2) <= fbB(2) xor sub;
tempXOR(3) <= fbB(3) xor sub;
FA0: fullAdder port map(a => fbA(0), b => tempXOR(0), c_in => sub, sum => fbSum(0), c_out => Cout(0));
FA1: fullAdder port map(a => fbA(1), b => tempXOR(1), c_in => Cout(0), sum => fbSum(1), c_out => Cout(1));
FA2: fullAdder port map(a => fbA(2), b => tempXOR(2), c_in => Cout(1), sum => fbSum(2), c_out => Cout(2));
FA3: fullAdder port map(a => fbA(3), b => tempXOR(3), c_in => Cout(2), sum => fbSum(3), c_out => Cout(3));
nFlag <= fbSum(3) when sub = '1' else
         '0';
zFlag <= '1' when (fbSum(0) or fbSum(1) or fbSum(2) or fbSum(3)) = '0' else
         '0';
cFlag <= Cout(3);
vFlag <= Cout(3) xor Cout(2);
end Behavioral;
 