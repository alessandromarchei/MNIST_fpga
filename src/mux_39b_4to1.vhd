library ieee;
use ieee.std_logic_1164.all;

-- mux di 39 bit 4to1 che effettua le operazioni di saturazione

entity mux_39b_4to1 is
	port( in_0, in_1, in_2, in_3: in std_logic_vector (29 downto 0);
			sel: in std_logic_vector(1 downto 0);
			out_mux: out std_logic_vector( 29 downto 0)
			);
end mux_39b_4to1;

architecture behaviour of mux_39b_4to1 is

begin

	process (sel)
	begin
		case sel is
			when "00" => 
				out_mux <= in_0;
			when "01" => 
				out_mux <= in_1; --ingresso mai usato
			when "10" => 
				out_mux <= in_2;
			when others =>
				out_mux <= in_3;
		end case;
	end process;

end behaviour;