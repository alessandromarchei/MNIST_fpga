library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_high is
end tb_high;

architecture behavior of tb_high is

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

rst <= '1';
s <= '0';
inc_data <= "000000000000000100000000101000";     -- PIXEL 0 : 16424
clock <= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 5 ns;
rst <= '0';
wait for 5 ns;
clock <= '0';
wait for 5 ns;
s <= '1';
wait for 5 ns;
clock<= '1';
wait for 10 ns;
clock <= '0';
wait for 10 ns;
clock<= '1';
wait for 10 ns;


-- INIZIO PROCESSO CARICAMENTO DATI
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010000111101110111101";     -- PIXEL 1 : 4750269
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001111100111011011111";     -- PIXEL 2 : 6803167
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001111010110110011010101";     -- PIXEL 3 : 4025557
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100101110111101010000";     -- PIXEL 4 : 7532368
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111111101011001001000";     -- PIXEL 5 : 6280776
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011011111101111101111";     -- PIXEL 6 : 7207919
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000011111111111101000";     -- PIXEL 7 : 4325352
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000000011110101110110010";     -- PIXEL 8 : 125874
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011101111011011011010";     -- PIXEL 9 : 3077850
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000101010111111010000101";     -- PIXEL 10 : 1408645
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110010100111100111101";     -- PIXEL 11 : 3755837
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000000001101100100100011";     -- PIXEL 12 : 55587
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100000101111000001011";     -- PIXEL 13 : 3169803
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010010101110100000100";     -- PIXEL 14 : 4807940
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011011111011101000110";     -- PIXEL 15 : 5109574
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101001111111110110010";     -- PIXEL 16 : 5570482
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011010101011101001100";     -- PIXEL 17 : 2971468
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011011110110001000001";     -- PIXEL 18 : 5106753
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001101111101110001001";     -- PIXEL 19 : 6749065
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001101111011000011101";     -- PIXEL 20 : 2553373
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111010111101101011000";     -- PIXEL 21 : 6126424
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101100111110100000111";     -- PIXEL 22 : 7765255
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100100111101100100100";     -- PIXEL 23 : 1211172
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111100111111101011011";     -- PIXEL 24 : 1998683
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110101111011111001001";     -- PIXEL 25 : 1767369
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011010111111111110010100";     -- PIXEL 26 : 7077780
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111111111111101000011";     -- PIXEL 27 : 8388419
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100100111101100010010";     -- PIXEL 28 : 3308306
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001100110111110000111";     -- PIXEL 29 : 2518919
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000000110111101000011011";     -- PIXEL 30 : 227867
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010111101111110101100";     -- PIXEL 31 : 778156
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001110111001100011111";     -- PIXEL 32 : 488223
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101011111101101001111";     -- PIXEL 33 : 7732047
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000101110111100111110";     -- PIXEL 34 : 2289470
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110000111101100110100";     -- PIXEL 35 : 5798708
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111001111111100010001";     -- PIXEL 36 : 6094609
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110100101111100110000";     -- PIXEL 37 : 1728304
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110111111111010011101";     -- PIXEL 38 : 3931805
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110010111111101000111";     -- PIXEL 39 : 7962439
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011011101110010101011";     -- PIXEL 40 : 908459
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100010101111100010010";     -- PIXEL 41 : 3235602
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011011111101101000010";     -- PIXEL 42 : 5110594
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011100101001101100101";     -- PIXEL 43 : 3036005
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111001111011001101010";     -- PIXEL 44 : 1898090
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001101100011000101110";     -- PIXEL 45 : 6735406
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111101111011100110000";     -- PIXEL 46 : 8320816
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011000111111110100000";     -- PIXEL 47 : 2916256
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101000111111011110101";     -- PIXEL 48 : 5537525
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010000111101110001111";     -- PIXEL 49 : 555919
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000001101111111100000";     -- PIXEL 50 : 4251616
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110011101101100011110";     -- PIXEL 51 : 7985950
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100111101101010101110";     -- PIXEL 52 : 7592622
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001101111111010011000";     -- PIXEL 53 : 2555544
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010010111101110110111";     -- PIXEL 54 : 621495
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101110111001110011100";     -- PIXEL 55 : 5731228
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100000110100100101010";     -- PIXEL 56 : 7366954
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010101101100001111101";     -- PIXEL 57 : 4905085
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000101101110110110010111";     -- PIXEL 58 : 1502615
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001111001101011111101000";     -- PIXEL 59 : 3987432
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000001101110110110000";     -- PIXEL 60 : 4251056
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100111110101111001000";     -- PIXEL 61 : 3402696
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010001101111101010001";     -- PIXEL 62 : 4775761
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000001111111101100101";     -- PIXEL 63 : 6356837
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001111001101111110111110";     -- PIXEL 64 : 3989438
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011110111111011010100";     -- PIXEL 65 : 3112660
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001000111111000101011";     -- PIXEL 66 : 294443
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101001111111010001101";     -- PIXEL 67 : 5570189
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011010111111110000001";     -- PIXEL 68 : 884609
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101011110111101010101";     -- PIXEL 69 : 7728981
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011000111110101100000";     -- PIXEL 70 : 2915680
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011111111111101100111";     -- PIXEL 71 : 3145575
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010001111111101100000";     -- PIXEL 72 : 2686816
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000101111110111001111";     -- PIXEL 73 : 2293199
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001100101111010011011";     -- PIXEL 74 : 2514587
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010001101110100010101";     -- PIXEL 75 : 4775189
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000010111101101110000";     -- PIXEL 76 : 6388592
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100101110011000011011";     -- PIXEL 77 : 3335707
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100011111001110000011";     -- PIXEL 78 : 7467907
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111110100111101001000";     -- PIXEL 79 : 8343368
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001100111011100000000";     -- PIXEL 80 : 423680
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110001111111111100110";     -- PIXEL 81 : 1638374
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100000111110100101010";     -- PIXEL 82 : 5274922
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110010111101111001001";     -- PIXEL 83 : 1670089
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011111100111100010001";     -- PIXEL 84 : 1036049
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111110111111000110010";     -- PIXEL 85 : 6258226
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110000111010010011101";     -- PIXEL 86 : 7894173
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010110101110111110011";     -- PIXEL 87 : 2842099
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111011111111111010010";     -- PIXEL 88 : 6160338
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110101101111111010010";     -- PIXEL 89 : 5955538
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111111110010001011000";     -- PIXEL 90 : 6284376
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100100111111000110100";     -- PIXEL 91 : 1211956
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001111110111100110000";     -- PIXEL 92 : 519984
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011010111101011110011";     -- PIXEL 93 : 7174899
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011101100111011001101";     -- PIXEL 94 : 970445
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000000011101111110001111";     -- PIXEL 95 : 122767
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110100110110101000110";     -- PIXEL 96 : 3829062
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101111101011110001101";     -- PIXEL 97 : 5756813
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010010111011111100101";     -- PIXEL 98 : 620517
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110011101100100011011";     -- PIXEL 99 : 1693979
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001010111111111100100";     -- PIXEL 100 : 2457572
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111011100100111110101";     -- PIXEL 101 : 1952245
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010001000111101101110110";     -- PIXEL 102 : 4488054
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000101001100000110000101";     -- PIXEL 103 : 1360261
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110110101110100001100";     -- PIXEL 104 : 8084748
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101100101111101001111";     -- PIXEL 105 : 7757647
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010110101011011010011";     -- PIXEL 106 : 2840275
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111110111101110001100";     -- PIXEL 107 : 8354700
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111111111111001111010";     -- PIXEL 108 : 8388218
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100000100110100010100";     -- PIXEL 109 : 5262612
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110000111011100111001";     -- PIXEL 110 : 3700537
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001100111001110000000";     -- PIXEL 111 : 422784
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001010101111100010111";     -- PIXEL 112 : 2449175
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000100111010010010001";     -- PIXEL 113 : 6452369
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110011101101001100010";     -- PIXEL 114 : 1694306
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011010111110111001101";     -- PIXEL 115 : 5078477
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110111111110110000011";     -- PIXEL 116 : 3931523
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100010111111101100111";     -- PIXEL 117 : 5341031
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011010100101111111110110";     -- PIXEL 118 : 6971382
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111000100111001101000";     -- PIXEL 119 : 6049384
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100000101011110010101";     -- PIXEL 120 : 3168149
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111100111011100001100";     -- PIXEL 121 : 6190860
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100111101111100010101";     -- PIXEL 122 : 7593749
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000110000110111101100101";     -- PIXEL 123 : 1601381
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110010110101011010010";     -- PIXEL 124 : 5860050
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011001111111101001001";     -- PIXEL 125 : 2948937
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010100101111011001110";     -- PIXEL 126 : 679630
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011100101111101100110";     -- PIXEL 127 : 5136230
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110000111011011111000";     -- PIXEL 128 : 5797624
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100110101111110111001";     -- PIXEL 129 : 1269689
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011110111010110101011";     -- PIXEL 130 : 7304619
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011101111111100100010";     -- PIXEL 131 : 5177122
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001011101110101110111";     -- PIXEL 132 : 384375
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111001111111001010001";     -- PIXEL 133 : 8191569
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010001111111100100100";     -- PIXEL 134 : 4783908
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000101100100111111100100";     -- PIXEL 135 : 1462244
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011110111110011110010";     -- PIXEL 136 : 7306482
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111110101011111010010";     -- PIXEL 137 : 6248402
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010011101101000100111";     -- PIXEL 138 : 2742823
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010011101111000001001";     -- PIXEL 139 : 646665
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011010001111010111000011";     -- PIXEL 140 : 6878659
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110010111010001011000";     -- PIXEL 141 : 3765336
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001100111111110010110";     -- PIXEL 142 : 2523030
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000000111011110001001";     -- PIXEL 143 : 4224905
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010010101111101110100";     -- PIXEL 144 : 2711412
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010000110110111001110";     -- PIXEL 145 : 2649550
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110101110111111000111";     -- PIXEL 146 : 8056775
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111001110111101100111";     -- PIXEL 147 : 6090599
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110001101010001001000";     -- PIXEL 148 : 7918664
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010000110111001110111";     -- PIXEL 149 : 552567
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000110110111100000110";     -- PIXEL 150 : 4419334
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110100110100100111111";     -- PIXEL 151 : 8022335
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100000101011110101111";     -- PIXEL 152 : 7362479
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010010111111101101001";     -- PIXEL 153 : 2719593
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000001111110100010000";     -- PIXEL 154 : 4259088
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001010111110110111111";     -- PIXEL 155 : 2457023
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010001101101110011010100";     -- PIXEL 156 : 4644052
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011101111111100001010";     -- PIXEL 157 : 982794
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100001111111110010110";     -- PIXEL 158 : 3211158
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001011100110100101101";     -- PIXEL 159 : 6671661
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100001111100100010011";     -- PIXEL 160 : 3209491
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010001000101110110011000";     -- PIXEL 161 : 4480408
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100101101010111000000";     -- PIXEL 162 : 3331520
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110101101111111100000";     -- PIXEL 163 : 5955552
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011111110111001111100";     -- PIXEL 164 : 5238396
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001111101111111110100110";     -- PIXEL 165 : 4128678
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001111111111101010100110";     -- PIXEL 166 : 4192934
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001001100011011000000";     -- PIXEL 167 : 6604480
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011011111111101010010";     -- PIXEL 168 : 3014482
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100001111111110011001";     -- PIXEL 169 : 5308313
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001011111111011111011000";     -- PIXEL 170 : 3143640
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010111110111101111001111";     -- PIXEL 171 : 6257615
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011100101011110001111";     -- PIXEL 172 : 5134223
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010100111111100100111";     -- PIXEL 173 : 2785063
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100011101000111011000";     -- PIXEL 174 : 5362136
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011000110111010011111";     -- PIXEL 175 : 7106207
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011000111111001011100";     -- PIXEL 176 : 5013084
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011010100111111100000";     -- PIXEL 177 : 7163872
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100000111101010011010";     -- PIXEL 178 : 1079962
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011101111111111011000";     -- PIXEL 179 : 5177304
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010000111010110011110";     -- PIXEL 180 : 554398
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011111110101110100100";     -- PIXEL 181 : 5237668
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001010001110111100001011";     -- PIXEL 182 : 2682635
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101001111111110110010";     -- PIXEL 183 : 5570482
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001110100011101100011";     -- PIXEL 184 : 6768483
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011100111111000101000";     -- PIXEL 185 : 5144104
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100110101011010001000";     -- PIXEL 186 : 7558792
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010100001111101110000001";     -- PIXEL 187 : 5307265
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000000111100101111001";     -- PIXEL 188 : 2128249
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011010111111001110111";     -- PIXEL 189 : 7175799
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001101101100101101100001";     -- PIXEL 190 : 3591009
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001001101111011100100100";     -- PIXEL 191 : 2553636
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111001111111111011001";     -- PIXEL 192 : 1900505
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011100110111101101011";     -- PIXEL 193 : 946027
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100010111111001100001";     -- PIXEL 194 : 1146465
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001001111001010010100";     -- PIXEL 195 : 6615700
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001010101111100110010";     -- PIXEL 196 : 6643506
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011101111111100111000";     -- PIXEL 197 : 5177144
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011011111111100111110";     -- PIXEL 198 : 7208766
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011101101110101011101";     -- PIXEL 199 : 7265629
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111111111010101101011";     -- PIXEL 200 : 2094443
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111100100111011100010";     -- PIXEL 201 : 8277730
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010100110111100100110";     -- PIXEL 202 : 683814
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001101101110110100011101";     -- PIXEL 203 : 3599645
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000010111001000011011";     -- PIXEL 204 : 2191899
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111011101101111000001";     -- PIXEL 205 : 1956801
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100000111011100111101";     -- PIXEL 206 : 1079101
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010100100011100000110";     -- PIXEL 207 : 673542
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001111110111100001110";     -- PIXEL 208 : 519950
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101010111011100000100";     -- PIXEL 209 : 7698180
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001101110111110100011001";     -- PIXEL 210 : 3636505
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011010110110110001011111";     -- PIXEL 211 : 7040095
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011010111101100111000011";     -- PIXEL 212 : 7068099
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100101110011100101011";     -- PIXEL 213 : 3335979
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000000001100111101000100";     -- PIXEL 214 : 53060
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110100111011100000111";     -- PIXEL 215 : 8025863
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111101101111011110001";     -- PIXEL 216 : 2023153
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000001111111110001011";     -- PIXEL 217 : 2162571
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110001111111110111101";     -- PIXEL 218 : 7929789
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011100011111001011101010";     -- PIXEL 219 : 7467754
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110000111110111111101";     -- PIXEL 220 : 7896573
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001001110100111001110";     -- PIXEL 221 : 6613454
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100100111111101110100";     -- PIXEL 222 : 1212276
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100010100011010001011";     -- PIXEL 223 : 3229323
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001101010111111010000110";     -- PIXEL 224 : 3505798
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101000111110101110001";     -- PIXEL 225 : 5537137
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000010000110111111001110";     -- PIXEL 226 : 552910
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101001111111010000000";     -- PIXEL 227 : 5570176
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001101111111111011001";     -- PIXEL 228 : 6750169
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010101111101001001000101";     -- PIXEL 229 : 5755461
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110000101110100101001";     -- PIXEL 230 : 5791017
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000111100111111111001";     -- PIXEL 231 : 6541305
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011110111001001111101";     -- PIXEL 232 : 7303805
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110100111101011101111";     -- PIXEL 233 : 5929711
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010001101111111101010010";     -- PIXEL 234 : 4652882
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000001111110011100110001";     -- PIXEL 235 : 517937
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100101111110110101000";     -- PIXEL 236 : 1244584
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011110111111101100111";     -- PIXEL 237 : 5209959
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011101100111111100001010";     -- PIXEL 238 : 7765770
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010110001111111111111011";     -- PIXEL 239 : 5832699
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000100111111111111001001";     -- PIXEL 240 : 1310665
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010000101111111101111011";     -- PIXEL 241 : 4390779
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000011011111111110000111";     -- PIXEL 242 : 917383
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110001100101001000000";     -- PIXEL 243 : 3721792
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011001000101111111111100";     -- PIXEL 244 : 6578172
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111001111101101001101";     -- PIXEL 245 : 8190797
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011011110111101011110101";     -- PIXEL 246 : 7305973
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001110100111001001111010";     -- PIXEL 247 : 3830394
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000000101111010011000";     -- PIXEL 248 : 6315672
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001100111110111111010010";     -- PIXEL 249 : 3403730
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111110100110111101111";     -- PIXEL 250 : 8343023
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000001000000101110000111001";     -- PIXEL 251 : 2120761
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000000111111111011110100101";     -- PIXEL 252 : 2095013
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010011110111011101010001";     -- PIXEL 253 : 5207889
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011110000111101100001010";     -- PIXEL 254 : 7895818
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011000111101101110011111";     -- PIXEL 255 : 6544287
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;




-- CARICAMENTO DEI PESI



clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101000001000111010001011110";     -- PESO 0
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110100100110111010111101100";     -- PESO 1
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101010000001101001101001100";     -- PESO 2
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100010111001100100011100110";     -- PESO 3
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101100000010111100010110100";     -- PESO 4
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001010011000100101000001110";     -- PESO 5
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001001010101010000010101101";     -- PESO 6
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100101100111110110011010101";     -- PESO 7
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001001011000110010111001010";     -- PESO 8
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110010010011100100011111111";     -- PESO 9
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100011101100100101110011101";     -- PESO 10
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010010001010001100101001101";     -- PESO 11
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100111111010101001001111001";     -- PESO 12
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110100010011100110101011001";     -- PESO 13
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110010100001011100001111100";     -- PESO 14
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101111001110011001011000001";     -- PESO 15
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011010101111100100101111001101";     -- PESO 16
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110011000110111100110000111";     -- PESO 17
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100000010000011001000100011";     -- PESO 18
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111100110010001011110111000";     -- PESO 19
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100101010011100100110000111";     -- PESO 20
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110001001010101000001001100";     -- PESO 21
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110101011000000011001011010";     -- PESO 22
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001001000110110000101001110";     -- PESO 23
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101000010110111001010011001";     -- PESO 24
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110101110011101110100111101";     -- PESO 25
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100101011000111001001100000";     -- PESO 26
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100101101111111001110110001";     -- PESO 27
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001111000000011000110101101";     -- PESO 28
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010010000100010110101000001";     -- PESO 29
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111011110100101111101100111";     -- PESO 30
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111100100000101111010100101";     -- PESO 31
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100011101010101100110011111";     -- PESO 32
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001000101110010101011100011000";     -- PESO 33
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101001001111110111100010101";     -- PESO 34
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000100100001000111000000000";     -- PESO 35
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101000010011001100111111110";     -- PESO 36
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000100100110101001111010001";     -- PESO 37
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110000010000101100000000100";     -- PESO 38
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010111001001100101000101111";     -- PESO 39
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010011011001100001110001111";     -- PESO 40
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011010111001110011101010011";     -- PESO 41
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110010100000001001001000011";     -- PESO 42
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100101000101000100010101111";     -- PESO 43
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101100111111101110011001010";     -- PESO 44
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110010110111101100011010101";     -- PESO 45
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010011101100111101001111010011";     -- PESO 46
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001011010000100110010010101";     -- PESO 47
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001011100111000011001011010";     -- PESO 48
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111001011111011101101100101";     -- PESO 49
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111000010011101110100101010";     -- PESO 50
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000111111011101011100000111";     -- PESO 51
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110001010110110111110100001";     -- PESO 52
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100011011111000011001100101";     -- PESO 53
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001111010011001010110110100";     -- PESO 54
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001111100100110011111000000";     -- PESO 55
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001000110100101101100110010";     -- PESO 56
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010010011010011111000001001";     -- PESO 57
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000010010110011100001001101";     -- PESO 58
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000010000000100110110001111";     -- PESO 59
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000010001011111001101010110";     -- PESO 60
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011001100011110101111011011";     -- PESO 61
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110001001110100111111001000";     -- PESO 62
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111111010011000011011011000";     -- PESO 63
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010000000101110111010001000";     -- PESO 64
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100011000000110011100111000";     -- PESO 65
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001000110000100001101101011";     -- PESO 66
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010011100110100011001000010010";     -- PESO 67
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000100110001000001111111001";     -- PESO 68
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110100101010110110111010000";     -- PESO 69
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101111110011111001101110001";     -- PESO 70
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111010001011100111001001000";     -- PESO 71
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001110111100111000000001101";     -- PESO 72
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010101001001100110000101001";     -- PESO 73
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010100001110110010110000110";     -- PESO 74
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110110010100100101110011001";     -- PESO 75
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010110111001100100011011011";     -- PESO 76
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011010000111010101011000011100";     -- PESO 77
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010111111101000000101001111";     -- PESO 78
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001000100011011110101110111000";     -- PESO 79
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000111011011010110001010110000";     -- PESO 80
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011111001010110111101010111";     -- PESO 81
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011101111010101110011011111";     -- PESO 82
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100001000000111001001101100";     -- PESO 83
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101110110110100010010001101";     -- PESO 84
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100110111010110001111011001";     -- PESO 85
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110111000101101100101000011";     -- PESO 86
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100110110010110011000010001";     -- PESO 87
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110100000100110110010100101";     -- PESO 88
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100011111011101000001111001";     -- PESO 89
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101111011110100111011110111";     -- PESO 90
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001000011110101110000000010101";     -- PESO 91
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111011011100110010011100000";     -- PESO 92
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101011110000101101101100000";     -- PESO 93
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111011000111100101001101110";     -- PESO 94
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001110011110110110101111011";     -- PESO 95
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011111111010010011101011011";     -- PESO 96
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010010110001011110010001010";     -- PESO 97
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000011000101001100010001111";     -- PESO 98
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111010010011111111101011100";     -- PESO 99
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000011111011101001011100101";     -- PESO 100
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110001000011101011001001010";     -- PESO 101
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010010011101110001100110010";     -- PESO 102
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101101001101110101101100001";     -- PESO 103
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001110100000010111110000100";     -- PESO 104
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000111100011001110111000011";     -- PESO 105
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100011011000101110110100111";     -- PESO 106
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110100011000111110001001010";     -- PESO 107
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001000001000000001011101110";     -- PESO 108
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000100111010101001101101111";     -- PESO 109
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001100000001100000100101111";     -- PESO 110
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011001001111101001001101010";     -- PESO 111
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010111110111111010100010000";     -- PESO 112
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101010101000000101110011011";     -- PESO 113
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001011100100101100110000001";     -- PESO 114
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010110100001101010000101001";     -- PESO 115
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100000010100100010010001010";     -- PESO 116
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010001111011000011011101001";     -- PESO 117
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110111001111010000101000111";     -- PESO 118
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101101010000110111010000001";     -- PESO 119
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111100100100000101100110001";     -- PESO 120
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010000110110101101011001101";     -- PESO 121
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000111010010110111010011110";     -- PESO 122
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011011001101111010010110000001";     -- PESO 123
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011011101010001101001010001100";     -- PESO 124
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111111001100110101000010000";     -- PESO 125
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000011111111110111110011010";     -- PESO 126
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101000100001111010011001101";     -- PESO 127
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000101100111111100001010111";     -- PESO 128
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011011100011110110101010000";     -- PESO 129
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011010010101100111011010111111";     -- PESO 130
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101011011110100000000011100";     -- PESO 131
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101000010011110001100000011";     -- PESO 132
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010000010100000101101111111";     -- PESO 133
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100010101110101011110001001";     -- PESO 134
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001110101111101001110111001";     -- PESO 135
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100100100100100011000110100";     -- PESO 136
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011000100111000001001100000";     -- PESO 137
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111010011110101001011100101";     -- PESO 138
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001101101111111010100000010";     -- PESO 139
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100011001100011011101000010";     -- PESO 140
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000101011001001111100001101";     -- PESO 141
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100100010101101001110110110";     -- PESO 142
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001000001010000001011101100";     -- PESO 143
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011010011011101101000110111000";     -- PESO 144
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100010010111100011001110011";     -- PESO 145
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111011110001011101101010001";     -- PESO 146
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110110111111010011001111101";     -- PESO 147
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001000001110110101111011000";     -- PESO 148
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111011000010100110111010011";     -- PESO 149
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011010001111111111000000001";     -- PESO 150
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000001011111001001101010000";     -- PESO 151
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110100110101101101100010110";     -- PESO 152
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011111111101011110001101000011";     -- PESO 153
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100100010000100111110000011";     -- PESO 154
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110010001100101100000010101";     -- PESO 155
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001010001100100100010011000";     -- PESO 156
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001010010101100011000101100";     -- PESO 157
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110110010111001111110001011";     -- PESO 158
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001011111100111111100001110";     -- PESO 159
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110011101110101010110111100";     -- PESO 160
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000011111000100111111001010";     -- PESO 161
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110010000111110011000111101";     -- PESO 162
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111110110110111111010010100";     -- PESO 163
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110100011000101000010010010";     -- PESO 164
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101000111010100101110101111";     -- PESO 165
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101011000110100000010110101";     -- PESO 166
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111101010010011100110010000";     -- PESO 167
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100011101010111100001011110";     -- PESO 168
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101110110101010000001000000";     -- PESO 169
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110011111110101110110000000";     -- PESO 170
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011110000111011101000000000010";     -- PESO 171
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001010100101101001000010111";     -- PESO 172
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001000110101100011100110110";     -- PESO 173
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001011011000111100100100001";     -- PESO 174
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001111101101111111101111101";     -- PESO 175
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100000101101100110011101010";     -- PESO 176
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001100111001001011000011110";     -- PESO 177
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010101001000001010101010001101";     -- PESO 178
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010000111000101001110101000";     -- PESO 179
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101001000110011011010111000";     -- PESO 180
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000111000101111101011011011001";     -- PESO 181
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101010100111011111110101111";     -- PESO 182
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000001111101110011010111111";     -- PESO 183
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101111011000000000010010100";     -- PESO 184
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001010110111010011000000011101";     -- PESO 185
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100000111010110100111100101";     -- PESO 186
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111011101110111001000010000";     -- PESO 187
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100100101100101001101000110";     -- PESO 188
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010000011101101101110111110010";     -- PESO 189
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010111100101101111101010000001";     -- PESO 190
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110111010000010111001111111";     -- PESO 191
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011100101110111001111001011";     -- PESO 192
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011010010001110111101000110110";     -- PESO 193
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000011011110100110111101001001";     -- PESO 194
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000010111010000010100000010";     -- PESO 195
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101010101010111011111010010";     -- PESO 196
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010001010110001010100011010";     -- PESO 197
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110110000101100111011110111";     -- PESO 198
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010010111010100100111100100110";     -- PESO 199
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010011110010001100101001000000";     -- PESO 200
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110000101101101110110100011";     -- PESO 201
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101010011001101010110111001";     -- PESO 202
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001100011010110011110001000";     -- PESO 203
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001100000110100111111110101101";     -- PESO 204
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000101110000101101000101010";     -- PESO 205
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101011101010111000110110010";     -- PESO 206
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101110011001100101001011101";     -- PESO 207
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110010000101111101011100101";     -- PESO 208
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110000101101011000011011100";     -- PESO 209
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001101110100100111101110111";     -- PESO 210
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110010101110100010111101011";     -- PESO 211
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000101011010110000101101001";     -- PESO 212
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100001100010100000000111010";     -- PESO 213
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001110010110110011011010010011";     -- PESO 214
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001101001100011101100001101";     -- PESO 215
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111110101011101111111101011";     -- PESO 216
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000111101000011100011110011010";     -- PESO 217
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010111101111111011000000100";     -- PESO 218
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100100110100110110110110010";     -- PESO 219
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001111010001011111011010101";     -- PESO 220
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100001110011101111110100100";     -- PESO 221
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000001100011010000010111100";     -- PESO 222
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101000111011110010101011111";     -- PESO 223
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110011000110100011011000011";     -- PESO 224
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001101000111100001011010110";     -- PESO 225
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011001010010101101101000100001";     -- PESO 226
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000000110001010101110110101001";     -- PESO 227
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010001101101010111010100000100";     -- PESO 228
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100000001000110011000000001";     -- PESO 229
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001001110001100011001010001101";     -- PESO 230
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111011010111000011010111011";     -- PESO 231
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100110111001100000000011100";     -- PESO 232
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011000100110000110000011001010";     -- PESO 233
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000111000010000001001111001111";     -- PESO 234
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001110101110101010111010110";     -- PESO 235
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001000010111110110001000101";     -- PESO 236
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010110010101001110011000101001";     -- PESO 237
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001101111101011111110110101000";     -- PESO 238
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010100010101100110010111001100";     -- PESO 239
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001111010000110110111111101010";     -- PESO 240
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000010100010011000110011101101";     -- PESO 241
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000100100101010101001001001110";     -- PESO 242
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011101011000000010011110000100";     -- PESO 243
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011111101100110100000101011";     -- PESO 244
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000001011111100110100000110111";     -- PESO 245
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000111101011100111001011101101";     -- PESO 246
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001000001101010110001001111010";     -- PESO 247
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000110101010000001110101011100";     -- PESO 248
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011011000100111110111111111010";     -- PESO 249
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "011100011001111110110000100001";     -- PESO 250
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010011011111110000010100111100";     -- PESO 251
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101100011011001011110000101";     -- PESO 252
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "001011011000111011100110000001";     -- PESO 253
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "000101111011000111001001111101";     -- PESO 254
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;
clock <= '0';
WAIT FOR 5 ns;
inc_data <= "010011111011111100010111101110";     -- PESO 255
WAIT FOR 5 ns;
clock <= '1';
WAIT FOR 10 ns;


-- RISULTATI ASPETTATI
-- OUTPUT [0] DECIMALE: -3313633014 ; BINARIO : 111111100111010011111011111100100001001 ; BINARIO SAT : 100000000000000000000000000000
-- OUTPUT [1] DECIMALE: 227505515 ; BINARIO : 000000000001101100011110111010101101011 ; BINARIO SAT : 001101100011110111010101101011
-- OUTPUT [2] DECIMALE: -90485492 ; BINARIO : 111111111111010100110110100110100001011 ; BINARIO SAT : 111010100110110100110100001011
-- OUTPUT [3] DECIMALE: 17391591 ; BINARIO : 000000000000001000010010101111111100111 ; BINARIO SAT : 000001000010010101111111100111
-- OUTPUT [4] DECIMALE: -655909989 ; BINARIO : 111111111011000111001111001101110011011 ; BINARIO SAT : 100000000000000000000000000000
-- OUTPUT [5] DECIMALE: 10315675 ; BINARIO : 000000000000000100111010110011110011011 ; BINARIO SAT : 000000100111010110011110011011
-- OUTPUT [6] DECIMALE: -47052419 ; BINARIO : 111111111111101001100100000100101111101 ; BINARIO SAT : 111101001100100000100101111101
-- OUTPUT [7] DECIMALE: 21111397 ; BINARIO : 000000000000001010000100010001001100101 ; BINARIO SAT : 000001010000100010001001100101
-- OUTPUT [8] DECIMALE: -130387868 ; BINARIO : 111111111111000001110100111000001100011 ; BINARIO SAT : 111000001110100111000001100011
-- OUTPUT [9] DECIMALE: 1669432466 ; BINARIO : 000000001100011100000011000010010010010 ; BINARIO SAT : 011111111111111111111111111111


for i in 0 to 160000 loop
clock <= '0';
wait for 10 ns;
clock <= '1';
wait for 10 ns;
end loop;
end process;
datapath : neural_network port map(CLK => clock, DATA_IN => inc_data, DATA_OUT => d_out, START => s, DONE_OUT => stop, RESET => rst);
end behavior;

