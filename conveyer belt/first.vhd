library ieee;
use ieee.std_logic_1164.all;
entity ex3 is port (x1,x2,x3,x4 :in std_logic ;
f,g : out std_logic);
end ex3;
architecture arch of ex3 is 
begin 
f<=(x1 and x3) or ( x2 and x4);
g<=(x1 or not x3 ) and (not x2 or x4);
end arch;

