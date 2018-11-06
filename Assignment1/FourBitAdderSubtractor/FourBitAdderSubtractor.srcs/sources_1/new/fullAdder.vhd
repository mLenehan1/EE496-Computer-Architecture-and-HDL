----------------------------------------------------------------------------------
-- Company: DCU ECE4
-- Engineer: Michael Lenehan
-- 
-- Create Date: 08.10.2018 18:29:51
-- Design Name: Full Adder
-- Module Name: fullAdder - Behavioral
-- Project Name: EE496 Assignment 1
-- Target Devices: NA
-- Tool Versions: NA
-- Description: The design of a One Bit Full Adder
--              Inputs: a, b, carry in
--              Outputs: sum, carry out
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

entity fullAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is
    signal temp: std_logic;
begin

    temp <= a xor b;
    c_out <= (a and b) or (c_in and temp);
    sum <= c_in xor temp;

end Behavioral;
