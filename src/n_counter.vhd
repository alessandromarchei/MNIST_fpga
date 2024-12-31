library ieee;
use ieee.std_logic_1164.all;

-- CONTATORE GENERICO DI n bit (con valore di default = 4), che ritorna un vettore rappresentante
-- un numero binario di modulo 2^n (std_logic_vector)
-- L'implementazione consiste nell'uso di n flip flop di tipo T posti in cascata
-- in modo da creare un contatore SINCRONO
entity n_counter is
generic (N : integer := 4);
port	(clock, enable, reset : in std_logic;
		 n_out : buffer std_logic_vector(N-1 downto 0));	-- vettore con l'MSB al posto piu a sinistra
end n_counter;

architecture behavior of n_counter is

-- DICHIARAZIONE T FLIP-FLOP, il componente base da utilizzare
component t_ff is
port (T, clk, clr: in std_logic;
		Q: buffer std_logic	
		);
end component;

signal Ti : std_logic_vector(0 to N-1);

begin
-- assegnazione dei primi ingressi al primo flip flop T
T0 : t_ff port map(T => enable,clk => clock,clr => reset,Q => n_out(0));
Ti(0) <= enable;

-- generazione del contatore con n ff
gen : for i in 1 to N-1 generate
Ti(i) <= Ti(i-1) and n_out(i-1);-- assegnazione del toggle di ingresso all' i-esimo ff
T : t_ff port map(T => Ti(i),clk => clock,clr => reset,Q => n_out(i));
end generate;

end behavior;