library ieee;
use ieee.std_logic_1164.all;

entity Fabrica is 
    port(
        a, b: in std_logic;
        c, d, e: out std_logic
    );
end entity Fabrica;

architecture arch of Fabrica is 
begin 
    process(a, b)
    begin
        c <= '0';
        d <= '0';
        e <= '0';
        if (a = '0') then
		  c<='1';
		  elsif (b='0') then
		  c<='1';
		  end if;
		
        if (a = '0' and b = '0') then
            d <= '1';
            e <= '1';
				c<='0';
        end if;
    end process;
end architecture arch;


