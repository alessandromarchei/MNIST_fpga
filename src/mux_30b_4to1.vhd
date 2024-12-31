library ieee;
use ieee.std_logic_1164.all;

-- mux di 30 bit 4to1 che effettua le operazioni di saturazione

entity mux_30b_4to1 is
	port( in_0, in_1, in_2, in_3: in std_logic_vector (29 downto 0);
			sel: in std_logic_vector(1 downto 0);
			out_mux: out std_logic_vector( 29 downto 0)
			);
end mux_30b_4to1;

architecture behaviour of mux_30b_4to1 is

begin

	out_mux <= in_0 when (sel = "00") 
						else in_1 when (sel = "01") 
						else in_2 when (sel = "10") 
						else in_3;

end behaviour;