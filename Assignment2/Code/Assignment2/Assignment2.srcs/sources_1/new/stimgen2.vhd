----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2018 18:24:53
-- Design Name: 
-- Module Name: stimgen - Behavioral
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

entity stimgen2 is

    generic (CLOCK_PERIOD : time);
    Port ( A_Bus : out unsigned(15 downto 0);
           B_Bus : out unsigned(15 downto 0);
           Ctrl : out unsigned(3 downto 0);
           clock : out STD_LOGIC;
           reset : out STD_LOGIC;
           result : in unsigned  (15 downto 0)
          );
end stimgen2;

architecture Behavioral of stimgen2 is
 
  signal DONE : boolean := false;
  signal FAILED: boolean := false;
begin
    -- Ctrl generator
    Clock1: process
        variable clktmp : std_logic := '0';
    begin       
        while DONE /= true and FAILED /= true loop
            wait for CLOCK_PERIOD/2;
            clktmp := not clktmp;
            Clock <= clktmp;
        end loop;        
        wait;        
    end process;
    
    -- Apply stimulus signals and check result (LED signal values) 
    CheckResult: process 
        
    begin
        wait for CLOCK_PERIOD;        
        -- Put system in reset
        Reset <= '1';
        A_Bus <= x"0000";
        B_Bus <= x"0000";
        
        wait for CLOCK_PERIOD;
        -- Take system out of reset
        Reset <= '0';           
        wait for 0ns; -- force update of signal values
        
-- test three rounds
        for i in 0 to 3 loop

 -- test 1: 
        Ctrl <= x"0";      
        A_Bus <= x"F0F1";
        B_Bus <= x"F0F1";
        wait for 1.5*CLOCK_PERIOD;
        if  result = x"E1E2" then
           report "Passed test1";
        else
           report "failed test1" severity error;
           FAILED <= true;
        end if;
 
 -- test 2:
        Ctrl <= x"1";
        A_Bus <= x"F0F2";
        B_Bus <= x"F0F1";
        wait for 1.5*CLOCK_PERIOD;
         if result = x"0001" then
            report "Passed test2";
         else
            report "failed test2" severity error;
            FAILED <= true;
         end if;       

-- test 3:   
        Ctrl <= x"2";
        A_Bus <= x"B2A1";
        B_Bus <= x"C3D1";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"8281" then
           report "Passed test3";
        else
           report "failed test3" severity error;
           FAILED <= true;
        end if;           
 
 -- test 4:
        Ctrl <= x"3";
        A_Bus <= x"234A";
        B_Bus <= x"A21D";
        wait for 1.5*CLOCK_PERIOD;
    if result <= x"A35F" then
           report "Passed test4";
        else
           report "failed test4" severity error;
           FAILED <= true;
        end if;

 -- test 5:            
        Ctrl <= x"4";
        A_Bus <= x"234A";
        B_Bus <= x"A21D";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"8157" then
           report "Passed test5";
        else
           report "failed test5" severity error;
           FAILED <= true;
        end if;
  
  -- test 6:  
        Ctrl <= x"5";
        A_Bus <= x"F21D";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"0DE2" then
           report "Passed test6";
        else
           report "failed test6" severity error;
           FAILED <= true;
        end if;
         
   -- test 7:    
        Ctrl <= x"6";
        A_Bus <= x"ABCD";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"ABCD" then
           report "Passed test7";
        else
           report "failed test7" severity error;
           FAILED <= true;
        end if;
        
   -- test 8:
        Ctrl <= x"8";
        B_Bus <= x"12BC";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"C12B" then
            report "Passed test8";
        else
            report "failed test8" severity error;
            FAILED <= true;
        end if;       
       
   -- test 9:  
        Ctrl <= x"9";
        B_Bus <= x"12BC";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"2BC1" then
           report "Passed test9";
        else
           report "failed test9" severity error;
           FAILED <= true;
        end if;           
        
   -- test 10:
        Ctrl <= x"A";
        B_Bus <= x"BD14";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"D140" then
           report "Passed test10";
        else
           report "failed test10" severity error;
           FAILED <= true;
        end if;
   
   -- test 11:            
        Ctrl <= x"B";
        B_Bus <= x"BD14";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"0BD1" then
           report "Passed test11";
        else
           report "failed test11" severity error;
           FAILED <= true;
        end if;
         
   -- test 12:
        Ctrl <= x"C";
        A_Bus <= x"B2A1";
        wait for 1.5*CLOCK_PERIOD;
        if result = x"B270" then
           report "Passed test12";
        else
           report "failed test12" severity error;
           FAILED <= true;
        end if; 
        
        wait for 5*CLOCK_PERIOD;                           
           
        end loop;  -- end round loop
        
        wait for 5*CLOCK_PERIOD;                                          

	   
        DONE <= true;
        Report "Test completed";
        wait;
    end process;

end Behavioral;
