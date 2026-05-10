library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity motor_test is
    port(
        clk      : in  STD_LOGIC;  -- 50 MHz clock
        dc_motor : out STD_LOGIC
    );
end motor_test;

architecture Behavioral of motor_test is
    signal toggle : STD_LOGIC := '0';
    signal count  : integer range 0 to 24999999 := 0;  -- ~1 Hz
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count = 24999999 then
                toggle <= not toggle;
                count <= 0;
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    dc_motor <= toggle;
end Behavioral;
