library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- MEMORIA SRAM 10x30 CON : WE attivo basso, RE attivo alto

entity RAM10x30 is
port(		Address: in std_logic_vector(3 downto 0);
			D_in: in std_logic_vector(29 downto 0);
			D_out : out signed(29 downto 0);
			WE,RE,CS,Clk: in std_logic);
	
end RAM10x30;

architecture behavior of RAM10x30 is

type ram_array is array (0 to 9) of std_logic_vector(29 downto 0);
signal mem: ram_array;

--
--begin
--process (clk)
--	begin
--	if (clk'event and clk = '1') then
--		if(WE = '0') then
--			mem(to_integer(unsigned(Address))) <= D_in;
--		elsif(RE = '1')then
--			D_out <= signed(mem(to_integer(unsigned(Address))));
--		end if;
--	end if;
--end process;

begin
process (clk, CS)
	begin
	if(CS ='1') then
		if (clk'event and clk = '1') then
			if(WE = '0') then
				mem(to_integer(unsigned(Address))) <= D_in;
			elsif(RE = '1') then
				D_out <= signed(mem(to_integer(unsigned(Address))));
			end if;
		end if;
	end if;
end process;

end behavior;