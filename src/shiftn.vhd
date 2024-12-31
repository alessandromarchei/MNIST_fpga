library ieee;
use ieee.std_logic_1164.all;

-- Shift register a n bit con parallel load e shift enable

entity shiftn is
	generic (n : integer := 30);
	port( r: in std_logic_vector( n-1 downto 0);
			clk, ld_en, sh_en, reset: in std_logic;
			q: buffer std_logic_vector( n-1 downto 0)
			);
end shiftn;

architecture behaviour of shiftn is
begin
	process (clk) is
	begin
	if(reset = '0') then
		if (clk'event and clk = '1') then
			if ld_en = '1' then	--quando il load è attivo, carica i bit in ingresso al registro 
				q <= r;
			end if;
			if sh_en = '1' then	--quando lo shift è attivo, shifta i bit di una posizione verso sinistra
				Genbits: for i in n-2 downto 0 loop
								q(i+1) <= q(i);
							end loop;
				q(0) <= '0';
			end if;
		end if;
	else 
		gen_zeros : for i in n-1 downto 0 loop
								q(i) <= '0';
						end loop;
	end if;
	end process;
end behaviour;
			
				