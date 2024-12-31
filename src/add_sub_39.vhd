library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Add_sub senza overflow bit

entity add_sub_39 is
port (a,b: in std_logic_vector(38 downto 0);
		sel : in std_logic;					
		s : out std_logic_vector(38 downto 0));
end add_sub_39;

architecture behavior of add_sub_39 is

component full_adder is
port (n,m,ci : in std_logic;
		s, co : out std_logic);
end component;
signal cout : std_logic;
signal cin : std_logic_vector(38 downto 1);
signal j: std_logic_vector(38 downto 0);
begin

j <= b xor (b'range => sel);

F0: full_adder port map(n=>a(0),m=>j(0),ci=>sel,s=>s(0),co=>cin(1));

gen: for i in 1 to 37 generate
F: full_adder port map(n=>a(i),m=>j(i),ci=>cin(i),s=>s(i),co=>cin(i+1));
end generate gen;

F38: full_adder port map(n=>a(38),m=>j(38),ci=>cin(38),s=>s(38),co=>cout);

end behavior;