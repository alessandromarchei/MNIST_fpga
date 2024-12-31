library ieee;
use ieee.std_logic_1164.all;

-- mux di 3 bit 10to1

entity mux_3b_10to1 is
	port( in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9: in std_logic_vector (2 downto 0);
			sel: in std_logic_vector(3 downto 0);
			out_mux: out std_logic_vector( 2 downto 0)
			);
end mux_3b_10to1;

architecture behaviour of mux_3b_10to1 is

begin
	--logica del multiplexer
	out_mux <= in_0 when (sel = "0000") 
						else in_1 when (sel = "0001") 
						else in_2 when (sel = "0010") 
						else in_3 when (sel = "0011") 
						else in_4 when (sel = "0100") 
						else in_5 when (sel = "0101") 
						else in_6 when (sel = "0110") 
						else in_7 when (sel = "0111") 
						else in_8 when (sel = "1000") 
						else in_9;
						
end behaviour;