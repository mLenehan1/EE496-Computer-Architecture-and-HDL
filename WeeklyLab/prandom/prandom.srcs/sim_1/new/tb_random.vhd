LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testprbs IS
END testprbs;
 
ARCHITECTURE behavior OF testprbs IS
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT lfsr
    PORT(
         CLK : IN  std_logic;
         RSTn : IN  std_logic;
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
   signal CLK : std_logic := '0';
   signal RSTn : std_logic := '0';
   signal data_out : std_logic_vector(15 downto 0);
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 -- Instantiate the Unit Under Test (UUT)
   uut: lfsr PORT MAP (
          CLK => CLK,
          RSTn => RSTn,
          data_out => data_out
        );
   CLK_process :process
 
   begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin
      wait for 10 ns;
      wait for CLK_period*1;
      RSTn <= '1';
        wait for CLK_period*1;
        RSTn <= '0';
      wait;
   end process;
 
END;