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

entity stimgen3 is

    generic (CLOCK_PERIOD : time);
    Port ( Instruction : out unsigned(15 downto 0);
           wen   : out STD_LOGIC;
           clock : out STD_LOGIC;
           reset : out STD_LOGIC;
           resultin  : out unsigned (15 downto 0);
           resultout : in unsigned  (15 downto 0)
          );
end stimgen3;

architecture Behavioral of stimgen3 is
 
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
        Reset <= '0';
        Instruction <= x"0000";
        ResultIn <= x"0000";
        
        wait for CLOCK_PERIOD;
        -- Take system out of reset
        Reset <= '1';          
        wait for 0ns; -- force update of signal values
        
-- test three rounds
        for i in 0 to 3 loop

 -- test 1: 
        Instruction <= x"054C";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if  resultout = x"E1E2" then
           report "Passed test1";
        else
           report "failed test1" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;
 
 -- test 2:
        Instruction <= x"4187";
         wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
         if resultout = x"0001" then
            report "Passed test2";
         else
            report "failed test2" severity error;
            FAILED <= true;
         end if; 
         resultin <= resultout;
      

-- test 3:   
        Instruction <= x"80C0";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"8281" then
           report "Passed test3";
        else
           report "failed test3" severity error;
           FAILED <= true;
        end if;           
        resultin <= resultout;

 -- test 4:
        Instruction <= x"A393";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
    if resultout <= x"A35F" then
           report "Passed test4";
        else
           report "failed test4" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;

 -- test 5:            
        Instruction <= x"007A";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"8157" then
           report "Passed test5";
        else
           report "failed test5" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;

  -- test 6:  
        Instruction <= x"173C";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"0DE2" then
           report "Passed test6";
        else
           report "failed test6" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;
        
   -- test 7:    
        Instruction <= x"7000";
        wen <= '0';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"ABCD" then
           report "Passed test7";
        else
           report "failed test7" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;
     
   -- test 8:
        Instruction <= x"2CA9";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"C12B" then
            report "Passed test8";
        else
            report "failed test8" severity error;
            FAILED <= true;
        end if;       
        resultin <= resultout;
    
   -- test 9:  
        Instruction <= x"7000";
        wen <= '0';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"2BC1" then
           report "Passed test9";
        else
           report "failed test9" severity error;
           FAILED <= true;
        end if;           
        resultin <= resultout;
     
   -- test 10:
        Instruction <= x"C922";
        wen <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if resultout = x"D140" then
           report "Passed test10";
        else
           report "failed test10" severity error;
           FAILED <= true;
        end if;
        resultin <= resultout;
     
        wait for 5*CLOCK_PERIOD;                           
           
        end loop;  -- end round loop
        
        wait for 5*CLOCK_PERIOD;                                          

	   
        DONE <= true;
        Report "Test completed";
        wait;
    end process;

end Behavioral;
