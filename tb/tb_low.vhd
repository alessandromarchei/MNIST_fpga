library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_low is
end tb_low;

architecture behavior of tb_low is

component neural_network
port(CLK : in std_logic;
		DATA_IN : in unsigned(29 downto 0);
		DATA_OUT : out signed(29 downto 0);
			START : in std_logic;
			DONE_OUT : out std_logic;
			RESET : in std_logic);
end component;

signal s,rst, clock, stop : std_logic;
signal inc_data : unsigned(29 downto 0);
signal d_out : signed(29 downto 0);

begin
incoming_data : process
begin

-- inizio stato di IDLE
rst <= '1';
s <= '0';
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 5 ns;
rst <= '0';
wait for 5 ns;
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 5 ns;
s <= '1';
wait for 5 ns;
clock <= '1';
wait for 10 ns;

for i in 0 to 20000 loop
		clock <= '0';
		wait for 10 ns;
		clock <= '1';
		wait for 10 ns;
	end loop;

-- RISULTATI ASPETTATI
-- OUTPUT[0] : 21693083500 = 000010100001101000000100010111101101100
-- OUTPUT[1] : 19037483757 = 000010001101110101110001111001011101101
-- OUTPUT[2] : 8291280432 = 000000111101110001100101110011000110000
-- OUTPUT[3] : -6574987355 = 111111001111000000110011010011110100101
-- OUTPUT[4] : -6340680060 = 111111010000110000100001110011010000011
-- OUTPUT[5] : -45252347971 = 111010101110110101111111111011110111101
-- OUTPUT[6] : 15422670658 = 000001110010111010000110100011101000010
-- OUTPUT[7] : -6216673325 = 111111010001101011101010001011111010011
-- OUTPUT[8] : -2916271374 = 111111101010010001011010011101011110001
-- OUTPUT[9] : -23150443982 = 111101010011100001000000100001000110001

end process;

datapath : neural_network port map(CLK => clock, DATA_IN => inc_data, DATA_OUT => d_out, START => s, DONE_OUT => stop, RESET => rst);

end behavior;
