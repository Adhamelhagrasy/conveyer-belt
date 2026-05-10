library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buzzer_test is
    port(
        buzzer : out STD_LOGIC
    );
end buzzer_test;

architecture Behavioral of buzzer_test is
begin
    -- Just turn the buzzer on
    buzzer <= '1';
end Behavioral;
