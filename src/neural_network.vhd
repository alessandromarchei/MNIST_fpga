library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity neural_network is
port(CLK : in std_logic;
		DATA_IN : in unsigned(29 downto 0);	--dato in ingresso di tipo unsigned
		DATA_OUT : out signed(29 downto 0);	--dati in uscita di tipo signed
			START : in std_logic;	--segnale che da inizio al caricamento dei dati di ingresso nella memoria
			DONE_OUT : out std_logic;	--segnale im uscita che segna il completamento del caricamento dei dati nella memoria di uscita
			RESET : in std_logic);	--segnale di reset
end neural_network;

architecture behavior of neural_network is

--dichiarazione componenti

component add_sub_39 is
port (a,b: in std_logic_vector(38 downto 0);
		sel : in std_logic;					
		s : out std_logic_vector(38 downto 0));
end component;

component mux_3b_10to1 is
	port( in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9: in std_logic_vector(2 downto 0);
			sel: in std_logic_vector(3 downto 0);
			out_mux: out std_logic_vector( 2 downto 0));
end component;

component mux_9b_2to1 is
	port( in_0, in_1: in std_logic_vector (8 downto 0);
			sel: in std_logic;
			out_mux: out std_logic_vector( 8 downto 0));
end component;

component mux_39b_2to1 is
	port( in_0: in std_logic_vector (38 downto 0); -- Input che viene da mem_a, a cui si devono concaternare 9 '0'
			in_1: in std_logic_vector (38 downto 0); -- 39 '0'
			sel: in std_logic;
			out_mux: out std_logic_vector( 38 downto 0)
			);
end component;

component mux_30b_4to1 is
	port( in_0, in_1, in_2, in_3: in std_logic_vector (29 downto 0);
			sel: in std_logic_vector(1 downto 0);
			out_mux: out std_logic_vector(29 downto 0)
			);
end component;

component n_counter is
generic (N : integer := 4);
port	(clock, enable, reset : in std_logic;
		 n_out : buffer std_logic_vector(N-1 downto 0));	
end component;

component RAM10x30 is
port(		Address: in std_logic_vector(3 downto 0);
			D_in: in std_logic_vector(29 downto 0);
			D_out : out signed(29 downto 0);
			WE,RE,CS,Clk: in std_logic);	
end component;

component RAM512x30 is
port(		Address: in std_logic_vector(8 downto 0);
			D_in: in unsigned(29 downto 0);
			D_out : out std_logic_vector(29 downto 0);
			WE,RE,CS,Clk: in std_logic);	
end component;

component mux2to1 is 
	port ( w0, w1, s : in std_logic;
			f : out std_logic);
end component;

component shiftn is
	generic (n : integer := 30);
	port( r: in std_logic_vector( n-1 downto 0);
			clk, ld_en, sh_en, reset: in std_logic;
			q: buffer std_logic_vector( n-1 downto 0)
			);
end component;

--dichiarazione stati dell' ASM
type state is (idle, data_load, data_req, load_weight, load_pixel, set_add, set_sub, add_null_1, add_1_pixel, add_null_2, add_2_pixel, load_sum, load_min_B, load_max_B, load_part_B, count_2_incr, done);
signal present_state : state;
signal next_state : state;

--segnali interni
signal mem_a_out , sat_out, sat_in: std_logic_vector(29 downto 0);
signal part_out, part_in, fact_in, rp_out_39bit: std_logic_vector(38 downto 0);
signal cnt_1, mux_cnt1_out : std_logic_vector(8 downto 0);
signal b : std_logic_vector(2 downto 0 );
signal sat_sel : std_logic_vector (1 downto 0);
signal cnt_2, w_sel : std_logic_vector ( 3 downto 0);
signal cnt1_en, cnt1_rst, cnt1_sel, cnt2_en, cnt2_rst, rd_A, wr_A, cs_A, rd_B, wr_B, cs_B, rw_ld, rp_ld, rw_rst, rp_rst, rp_sh, fact_sel, add_sub, part_rst, part_ld, msb_sat, sat_check, sat_check_in, mux_sat_check_sel : std_logic;
signal cnt_1_neg : std_logic_vector(8 downto 0);
signal rw_out, rp_out : std_logic_vector(29 downto 0);
signal sat_check_cntrl_1, sat_check_cntrl_2, cnt1_511_check, s: std_logic;

begin

s <= START;

state_registers: process (CLK, RESET)			-- update degli stati tramite clock
begin
if RESET = '1' then 
		present_state <= idle;
elsif (CLK' event and CLK = '1')then
	   present_state <= next_state;
end if;
end process;

state_transitions : process(s, b, cnt_1, cnt_2, msb_sat, sat_check, present_state)		-- transizione da uno stato all'altro
begin
	case present_state is
		when idle => case s is
						 when ('1') => next_state <= data_load; 
						 when others => next_state <= idle;
						 end case;
		when data_load => case cnt_1 is 
						 when ("111111111") => next_state <= data_req ; 
						 when others => next_state <= data_load; 
						 end case;
		when data_req => next_state <= load_weight;
		when load_weight => next_state <= load_pixel;
		when load_pixel => if b(2) = '0' then next_state <= set_add ; else next_state <= set_sub; end if;
		when set_add => if b(0) = '0' then next_state <= add_null_1 ; else next_state <= add_1_pixel; end if;
		when set_sub => if b(0) = '0' then next_state <= add_null_1 ; else next_state <= add_1_pixel; end if;
		when add_null_1 => if b(1) = '0' then next_state <= add_null_2 ; else next_state <= add_2_pixel; end if;
		when add_1_pixel => if b(1) = '0' then next_state <= add_null_2 ; else next_state <= add_2_pixel; end if;
		when add_null_2 => next_state <= load_sum;
		when add_2_pixel => next_state <= load_sum;
		when load_sum => if cnt_1 = "100000000" then 
									if msb_sat = '1' then
										if sat_check = '1' then
											next_state <= load_min_B;
										else next_state <= load_part_B;
										end if;
									else
										if sat_check = '1' then
											next_state <= load_max_B;
										else next_state <= load_part_B;
										end if;
									end if;
								else next_state <= data_req; end if;
		when load_min_B => if cnt_2 = "1001" then next_state <= done; else next_state <= count_2_incr; end if;
		when load_max_B => if cnt_2 = "1001" then next_state <= done; else next_state <= count_2_incr; end if;
		when load_part_B => if cnt_2 = "1001" then next_state <= done; else next_state <= count_2_incr; end if;
		when count_2_incr => next_state <= data_req;
		when done => if s = '1' then next_state <= done; else next_state <= idle; end if;
	end case;
end process;

state_outputs: process(present_state)  --comandi di controllo sui segnali eseguiti nei vari stati
begin

	case present_state is
		when idle => 
			rw_rst <= '1'; 
			part_rst <= '1'; 
			rp_rst <= '1'; 
			cnt1_rst <= '1'; 
			cnt2_rst <= '1'; 
			cs_A <= '1';
			cs_B <= '0';
			rd_A <= '0';
			cnt1_en <= '0';
			DONE_OUT <= '0';
			cnt1_sel <= '0';
			cnt2_en <= '0';
			wr_A <= '1';
			rd_B <= '0';
			wr_B <= '1';
			rw_ld <= '0';
			rp_ld <= '0';
			rp_sh <= '0';
			fact_sel <= '0';
			add_sub <= '0';
			part_ld <= '0';
			sat_sel <= "00";
			w_sel <= "0000";
		when data_load =>
			cnt1_en <= '1'; 
			cnt1_sel <= '0';
			cs_A <= '1';
			wr_A <= '0';
			cnt1_rst <= '0';
		when data_req =>
			cs_A <= '1';
			rd_A <= '1';
			cnt1_sel <= '1';
			cnt2_rst <= '0';
			cnt2_en <= '0';
			rp_rst <= '0';
			rw_rst <= '0';
			wr_A <= '1';
			cnt1_rst <= '0';
			cnt1_en <= '0';
			sat_sel <= "00";
			part_ld <= '0';
			part_rst <= '0';
		when load_weight =>
			part_rst <= '0';
			part_ld <= '0';
			rp_ld <= '0';
			cnt1_sel <= '0';
			rw_ld <= '1';
			w_sel <= cnt_2;
		when load_pixel =>
			rw_ld <= '0';
			rp_sh <= '0';
			cnt1_sel  <= '1';
			rp_ld <= '1';
			cnt1_en <= '1';
		when set_add =>
			cs_A <= '0';
			add_sub <= '0';
			rp_ld <= '0';
			cnt1_en <= '0';
		when set_sub =>
			cs_A <= '0';
			add_sub <= '1';
			cnt1_en <= '0';
			rp_ld <= '0';
		when add_null_1 =>
			part_ld <= '1';
			fact_sel <= '0';
			rp_sh <= '1';
		when add_null_2 =>
			fact_sel <= '0';
			rp_sh <= '0';
		when add_1_pixel =>
			part_ld <= '1';
			fact_sel <= '1';
			rp_sh <= '1';
		when add_2_pixel=>
			fact_sel <= '1';
			rp_sh <= '0';
		when load_sum =>
			part_ld <= '0';
		when load_min_B =>
			cs_B <= '1';
			wr_B <= '0';
			 cnt1_rst  <= '1';
			cnt2_rst <= '0';
			sat_sel <= "11";
		when load_max_B =>
			cs_B <= '1';
			wr_B <= '0';
			cnt1_rst  <= '1';
			cnt2_rst <= '0';
			sat_sel <= "10";
		when load_part_B =>
			cs_B <= '1';
			wr_B <= '0';
			cnt1_rst <= '1';
			cnt2_rst <= '0';
			sat_sel <= "00";
		when done =>
			DONE_OUT <= '1';	
			wr_B <= '1';
			cnt2_en <= '0';
			cnt2_rst <= '1';
		when count_2_incr =>
			cnt2_en <= '1';
			wr_B <= '1';
			cs_B <= '0';
			part_rst <= '1';
	end case;
end process;
	
		
--costruzione datapath

--counter
counter_1 : n_counter generic map(N => 9) port map(clock => CLK, enable => cnt1_en, reset => cnt1_rst, n_out => cnt_1);
counter_2 : n_counter generic map(N => 4) port map(clock => CLK, enable => cnt2_en, reset => cnt2_rst, n_out => cnt_2);

--check counter
cnt1_511_check <= cnt_1(0) and cnt_1(1) and cnt_1(2) and cnt_1(3) and cnt_1(4) and cnt_1(5) and cnt_1(6) and cnt_1(7) and cnt_1(8);

--negazione del nono bit
cnt_1_neg(7 downto 0) <= cnt_1(7 downto 0);
cnt_1_neg(8) <= not cnt_1(8);
mux_cnt1: mux_9b_2to1 port map (in_0 => cnt_1, in_1 => cnt_1_neg, sel => cnt1_sel, out_mux => mux_cnt1_out);

--memorie
mem_a : RAM512x30 port map(Address => mux_cnt1_out, D_in => DATA_IN , D_out => mem_a_out, WE => wr_A, RE => rd_A, CS => cs_A, Clk => CLK);
mem_b : RAM10x30 port map(Address => cnt_2, D_in => sat_out, D_out => DATA_OUT, WE => wr_B, RE => rd_B, CS => cs_B, Clk => CLK);

--shift register
rw: shiftn port map(r => mem_a_out, clk => CLK, ld_en => rw_ld, sh_en => '0', reset => rw_rst,q => rw_out);
rp: shiftn port map(r => mem_a_out, clk => CLK, ld_en => rp_ld, sh_en => rp_sh, reset => rp_rst, q =>rp_out); 
sum_part : shiftn generic map( N => 39) port map(r => part_in, clk => CLK, ld_en => part_ld, sh_en => '0', reset => part_rst, q => part_out);

--saturatore

sat_in <= part_out(38) & part_out(28 downto 0); --numero di 30 bit in uscita dal saturatore se non c'è saturazione
mux_sat : mux_30b_4to1 port map(in_0 => sat_in, in_1 => "000000000000000000000000000000", in_2 => "011111111111111111111111111111", in_3 => "100000000000000000000000000000", sel => sat_sel, out_mux => sat_out);

msb_sat <= part_out(38);
mux_sat_check_sel <= part_out(38);

sat_check_cntrl_1 <= ( part_out(37) or part_out(36) or part_out(35) or part_out(34) or part_out(33) or part_out(32) or part_out(31) or part_out(30) or part_out(29));	--saturazione positivi
sat_check_cntrl_2 <= ( part_out(37) and part_out(36) and part_out(35) and part_out(34) and part_out(33) and part_out(32) and part_out(31) and part_out(30) and part_out(29));	--saturazione negativi

mux_sat_check : mux2to1 port map (sat_check_cntrl_1, sat_check_cntrl_2, mux_sat_check_sel, sat_check_in);
sat_check <= msb_sat xor sat_check_in;

-- weight mux

mux_weight : mux_3b_10to1 port map(in_0 => rw_out(2 downto 0), in_1 => rw_out(5 downto 3), in_2 => rw_out(8 downto 6), in_3 => rw_out(11 downto 9), in_4 => rw_out(14 downto 12), in_5 => rw_out(17 downto 15), in_6 => rw_out(20 downto 18), in_7 => rw_out(23 downto 21), in_8 => rw_out(26 downto 24), in_9 => rw_out(29 downto 27), sel => w_sel, out_mux => b);

--add/sub
rp_out_39bit <= "000000000" & rp_out;
mux_add_sub : mux_39b_2to1 port map(in_0 =>  "000000000000000000000000000000000000000", in_1 =>rp_out_39bit, sel => fact_sel, out_mux => fact_in);
adder_subtracter : add_sub_39 port map(a => part_out, b => fact_in, sel => add_sub, s => part_in);




end behavior;

