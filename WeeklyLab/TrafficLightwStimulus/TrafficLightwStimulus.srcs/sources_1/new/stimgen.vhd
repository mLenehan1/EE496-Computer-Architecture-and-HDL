library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stimgen is

    generic (CLOCK_PERIOD : time);
    Port ( lights_a : in STD_LOGIC_VECTOR (1 downto 0);
           lights_b : in STD_LOGIC_VECTOR (1 downto 0);
           clock : out STD_LOGIC;
           reset : out STD_LOGIC;
           traffic_sensor_a : out STD_LOGIC;
           traffic_sensor_b : out STD_LOGIC);
end stimgen;

architecture Behavioral of stimgen is
 
  signal DONE : boolean := false;
  signal FAILED: boolean := false;
  constant green : std_logic_vector(1 downto 0) := "00";
  constant yellow : std_logic_vector(1 downto 0) := "01";
  constant red : std_logic_vector(1 downto 0) := "10";

begin
    -- Clock generator
    Clock1: process
        variable clktmp : std_logic := '1';
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
        traffic_sensor_a <= '1';
        traffic_sensor_b <= '1';
        
        wait for CLOCK_PERIOD;
        -- Take system out of reset
        Reset <= '0';           
        wait for 0ns; -- force update of signal values
        
-- test three rounds
        for i in 0 to 3 loop

 -- In state s0
 -- test 1: traffic_sensor_a = '1', traffic_sensor_b = '0'
 -- lights_a should be green, light_b should be red      
        traffic_sensor_a <= '1';
        traffic_sensor_b <= '0';
        wait for 1.5*CLOCK_PERIOD;
        if lights_a = green and lights_b = red then
           report "Passed test1";
        else
           report "failed test1" severity error;
           FAILED <= true;
        end if;
 
 -- In s0, stay in state s0 until sensor = '0'
 -- test 2:  traffic_sensor_a = '1', traffic_sensor_b = '1'
 -- should stay in lights_a = green, lights_b = red 
        traffic_sensor_a <= '1';
        traffic_sensor_b <= '1';      
        wait for 1.5*CLOCK_PERIOD;
        if lights_a = green and lights_b = red then
            report "Passed test2";
        else
            report "failed test2" severity error;
            FAILED <= true;
       end if;        

-- In state s0, change to state s1 when traffic_sensor_a = '0'
-- test 3:  traffic_sensor_a = '0', traffic_sensor_b = '1'
-- expect lights_a = yellow, lights_b = red    
        traffic_sensor_a <= '0';
        traffic_sensor_b <= '1';
        wait for 1.5*CLOCK_PERIOD;
        if lights_a = yellow and lights_b = red then
            report "Passed test3";
        else
            report "failed test3" severity error;
            FAILED <= true;
       end if;            
 
 -- state s1 change to state 2 automatically one clock later
 -- test 4:  traffic_sensor_a = '0', traffic_sensor_b = '1'
 -- expect lights_a = red, lights_b = green
               wait for CLOCK_PERIOD;
               if lights_a = red and lights_b = green then
                   report "Passed test4";
               else
                   report "failed test4" severity error;
                   FAILED <= true;
              end if;
 -- In state s2 until traffic_sensor_b = '0'
 -- test 5:  traffic_sensor_a = '0', traffic_sensor_b = '1'
 -- should stay in lights_a = red, lights_b = green              
              traffic_sensor_a <= '1';
              wait for 5*CLOCK_PERIOD;
              if lights_a = red and lights_b = green then
                  report "Passed test5";
              else
                  report "failed test5" severity error;
                  FAILED <= true;
             end if;
  
  -- test 6:  traffic_sensor_a = '1', traffic_sensor_b = '0'
  -- expect lights_a = red, lights_b = yellow
            traffic_sensor_b <= '0';
            wait for 1.5*CLOCK_PERIOD;
            if lights_a = red and lights_b = yellow then
                report "Passed test6";
            else
                report "failed test6" severity error;
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