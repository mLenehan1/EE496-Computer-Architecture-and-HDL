----------------------------------------------------------------------------------
-- Company: DCU ECE4
-- Engineer: Michael Lenehan
-- 
-- Create Date: 08.10.2018 14:35:59
-- Design Name: One Bit Full Adder
-- Module Name: oneBitFullAdder - Behavioral
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

entity oneBitFullAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           c_out : out STD_LOGIC);
end oneBitFullAdder;

architecture Behavioral of oneBitFullAdder is
    signal temp: std_logic;
begin

    temp <= a xor b after 1 ns;
    c_out <= (a and b) or (c_in and temp) after 2 ns;
    sum <= c_in xor temp after 1 ns;

end Behavioral;
