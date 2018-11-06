library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm0 is
    Port ( Ta : in STD_LOGIC;
           Tb : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           La : out STD_LOGIC_vector(1 downto 0);
           Lb : out STD_LOGIC_vector(1 downto 0));
end fsm0;


architecture Behavioral of fsm0 is
   Type state_type is (s0, s1, s2, s3);
   signal current_state, next_state : state_type;
   constant green : std_logic_vector(1 downto 0) := "00";
   constant yellow : std_logic_vector(1 downto 0) := "01";
   constant red : std_logic_vector(1 downto 0) := "10";
begin
  tlc: process(clk, rst)
       begin
         if rising_edge(clk) then
           if rst = '1' then
             current_state <= s0;
           else
             current_state <= next_state;
           end if;
         end if;
       end process tlc;
         
   -- next state logic
    ns: process(current_state, Ta, Tb, rst)
        begin
        case current_state is
           when s0 => if Ta = '0' then next_state <= s1; end if;
           when s1 => next_state <= s2;
           when s2 => if Tb = '0' then next_state <= s3; end if;
           when s3 => next_state <= s0;
         end case;
--         if rst = '1' then
--           next_state <= s0;
--         end if;

        end process ns;
        
 -- output logic
          lights: process(current_state, Ta, Tb, rst)
              begin
               case current_state is
                 when s0 => La <= green; Lb <= red;
                 when s1 => La <= yellow; Lb <= red;
                 when s2 => La <= red; Lb <= green;
                 when s3 => La <= red; Lb <= yellow;
               end case;
             end process lights;        

end Behavioral;