library IEEE;
use ieee.std_logic_1164.all;

entity practica is 
port(A,B: in std_logic_vector(3 downto 0);
Cin: in std_logic;
S: out std_logic_vector(3 downto 0);
Cout: out std_logic
);
end practica;

architecture arch_practica of practica is 
signal and1,and2,and3,and4,and5,and6,and7 : std_logic_vector(3 downto 0);
begin
and1 <= A and B and Cin;
and2 <= A and (not B) and (not Cin);
and3 <= (not A) and B and (not Cin);
and4 <= (not A) and (not B) and Cin;
and5 <= A and B;
and6 <= A and Cin;
and7 <= b and Cin;

S <= and1 or and2 or and3;
Cout <= and4 or and5 or and6;
end arch_practica;

