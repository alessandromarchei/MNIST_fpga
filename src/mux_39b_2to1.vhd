library ieee;
use ieee.std_logic_1164.all;

-- mux di 39 bit 2to1 che porta l'input di mem_A da 30 a 39 bit per evitare overflow nelle operazioni successive

entity mux_39b_2to1 is
	port( in_0: in std_logic_vector (38 downto 0); -- Input che viene da mem_a
			in_1: in std_logic_vector (38 downto 0); -- 39 '0'
			sel: in std_logic;
			out_mux: out std_logic_vector( 38 downto 0)
			);
end mux_39b_2to1;

architecture behaviour of mux_39b_2to1 is

begin

	out_mux <= in_0 when (sel = '0') else in_1;

end behaviour;