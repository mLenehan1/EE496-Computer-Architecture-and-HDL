library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_tb is
--  Port ( );
end top_tb;

architecture struct of top_tb is

  CONSTANT CLK_PERIOD : time := 20ns;
  
-- Internal signal declarations
  SIGNAL CLOCK  : STD_LOGIC;
  SIGNAL RESET  : STD_LOGIC;
  SIGNAL sensor_a : STD_LOGIC;
  signal sensor_b : std_logic;
  signal traffic_lights_a : std_Logic_vector(1 downto 0);
  signal traffic_lights_b : std_logic_vector(1 downto 0);

-- Component declarations
component fsm0
    Port ( Ta : in STD_LOGIC;
           Tb : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           La : out STD_LOGIC_vector(1 downto 0);
           Lb : out STD_LOGIC_vector(1 downto 0));
end component;

component stimgen
    generic (CLOCK_PERIOD : time := CLK_PERIOD);
    Port ( lights_a : in STD_LOGIC_VECTOR (1 downto 0);
           lights_b : in STD_LOGIC_VECTOR (1 downto 0);
           clock : out STD_LOGIC;
           reset : out STD_LOGIC;
           traffic_sensor_a : out STD_LOGIC;
           traffic_sensor_b : out STD_LOGIC);
end component;

begin

-- Component Instantiations
  tlc_controller: fsm0
               port map ( Ta => sensor_a,
                          Tb => sensor_b,
                          clk => clock,
                          rst => reset,
                          La => traffic_lights_a,
                          Lb => traffic_lights_b);

           my_stimgen : stimgen
               port map ( lights_a => traffic_lights_a,
                          lights_b => traffic_lights_b,
                          clock => clock,
                          reset => reset,
                          traffic_sensor_a => sensor_a,
                          traffic_sensor_b => sensor_b);

END struct;