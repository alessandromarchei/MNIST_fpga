library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port (n,m,ci : in std_logic;
		s, co : out std_logic);
end full_adder;

architecture behavior of full_adder is

component mux2to1 is 
	port ( w0, w1, s : in std_logic;
			f : out std_logic);
end component;
signal p : std_logic;

begin

p <= n xor m;
L1: mux2to1 port map(w0=>m,w1=>ci,s=>p,f=>co);
s <= ci xor p;

end behavior;
