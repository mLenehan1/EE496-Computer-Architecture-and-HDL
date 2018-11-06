----------------------------------------------------------------------------------
-- Company: DCU
-- Engineer: Michael Lenehan
-- 
-- Create Date: 08.10.2018 14:47:27
-- Design Name: One Bit Full Adder Test Bench
-- Module Name: tb_oneBitFullAdder - Behavioral
-- Project Name: EE496 Assignment 1
-- Target Devices: NA
-- Tool Versions: NA
-- Description: This code is a test bench for the One Bit Full Adder
--              Runs through the truth table for a One Bit FA to ensure correct operation
--              Inputs from 000 to 111 tested
-- 
-- Dependencies: NA
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

entity tb_oneBitFullAdder is
--  Port ( );
end tb_oneBitFullAdder;

architecture Behavioral of tb_oneBitFullAdder is
    signal tb_a, tb_b, tb_c_in, tb_sum, tb_c_out: std_logic:= '0';
    component oneBitFullAdder is
        port (a: in std_logic;
              b: in std_logic;
              c_in: in std_logic;
              sum: out std_logic;
              c_out: out std_logic);
    end component;
begin
    uut: oneBitFullAdder
        port map ( a => tb_a,
                   b => tb_b,
                   c_in => tb_c_in,
                   sum => tb_sum,
                   c_out => tb_c_out);
                   
        tb_a <= not tb_a after 10 ns;
        tb_b <= not tb_b after 20 ns;
        tb_c_in <= not tb_c_in after 40 ns;

end Behavioral;
