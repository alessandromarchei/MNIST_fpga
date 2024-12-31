library ieee;
use ieee.std_logic_1164.all;

-- Toggle FF con clear attivo alto sincrono

entity t_ff is
port (T, clk, clr: in std_logic;
		Q: buffer std_logic	
		);
end t_ff;

architecture behaviour of t_ff is

signal Qa : STD_LOGIC ; -- Definisco i segnali interni

begin

Q <= Qa;

process (clk)
	begin
	if (clk'event and clk = '1') then
	if(clr = '1') then
		Qa <= '0';  --uscita a 0 se il clear è attivo
	elsif(T = '1')then
		Qa <= not(Qa);
	elsif(T = '0') then
		Qa <= Qa;
	end if;
	end if;
end process;

end behaviour;
