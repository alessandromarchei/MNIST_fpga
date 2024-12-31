library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is 
	port ( w0, w1, s : in std_logic;
			f : out std_logic);
end mux2to1;

architecture behavior of mux2to1 is
begin
	f <= (not (s) and w0) or (s and w1);
end behavior;