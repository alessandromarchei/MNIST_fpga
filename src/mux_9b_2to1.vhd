library ieee;
use ieee.std_logic_1164.all;

-- mux di 9 bit 2to1

entity mux_9b_2to1 is
	port( in_0, in_1: in std_logic_vector (8 downto 0);
			sel: in std_logic;
			out_mux: out std_logic_vector( 8 downto 0)
			);
end mux_9b_2to1;

architecture behaviour of mux_9b_2to1 is

begin

	out_mux <= in_0 when (sel = '0') else in_1;

end behaviour;