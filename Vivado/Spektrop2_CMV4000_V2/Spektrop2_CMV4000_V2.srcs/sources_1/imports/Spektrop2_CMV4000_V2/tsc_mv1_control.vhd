--------------------------------------------------------------------------------
-- Part of MV1 Test System Controller
--
-- Function: Controller unit that controls overall timing
--
-- Bart Ceulemans
-- CMOSIS nv
--------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;


entity tsc_mv1_control is
  port (
    -- CLOCK/RESET
    rst_sys             : in  std_logic;
    clk_sys             : in  std_logic;
    n_clk_sys           : in  std_logic;

    -- CONTROL & REGISTER INPUTS

    -- INPUTS
	cmd_grab_frame		:	in	std_logic;
    training_done       : in  std_logic;
    fval                : in std_logic;
    --uruchamia licznik spowalniając rejestrację klatek do ok. 1-2 na s do podglądu
    prev_en             : in std_logic;

    -- OUTPUTS (CONTROLLER INTERNAL)
    cmd_start_training  : out std_logic;

    -- OUTPUTS (TO SENSOR)
    sen_reset_n         : out std_logic;
    frame_req           : out std_logic;
    data_valid          : out std_logic;
    
    -- DEBUG
    state_no            : out std_logic_vector(3 downto 0)
    );
end entity tsc_mv1_control;

architecture rtl of tsc_mv1_control is
  type t_control_state is (s_INIT, s_IDLE, s_RESET, s_TRAINING, s_GRAB0, s_GRAB1, s_GRAB2 ,s_GRAB3);
  
   signal state_reg		: t_control_state:= s_INIT;
   --signal state_next	: t_control_state:= s_INIT;
   --signal cnt_reset        : unsigned (5 downto 0) := (others => '1');
   signal cnt_reg : unsigned(22 downto 0);
   signal cnt_next : unsigned(22 downto 0);
   signal rst_cnt  : std_logic;
   signal cnt_down : std_logic;
   --signal n_clk_sys : std_logic;
   signal state_no_reg : std_logic_vector(3 downto 0);
   
   signal cnt_prev      : unsigned (23 downto 0) := (others => '0');

begin
	
	--n_clk_sys <= not clk_sys;
	
	-- process (clk_sys)
	-- begin
		-- if (rst_sys = '1') then
			-- state_reg <= s_INIT;
		-- elsif rising_edge(clk_sys) then
			-- state_reg <= state_next;
		-- end if;
	-- end process;
	
	process (n_clk_sys)
	begin
		if (rst_cnt = '1') then
			cnt_reg <= (others => '1');
		elsif rising_edge(n_clk_sys) then
			cnt_reg <= cnt_next;
		end if;
	end process;
	
	cnt_next <= cnt_reg - 1 when cnt_down = '1' else
	cnt_reg;
	
	state_no <= state_no_reg;
	
	-- process (state_reg,cmd_grab_frame,training_done,fval,cnt_reg)
	-- begin
		-- cmd_start_training <= '0';
		-- frame_req <= '0';
		-- sen_reset_n <= '1';
		-- state_no_reg <= (others => '0');
		-- cnt_reset           <= (others => '1');
		-- rst_cnt <= '0';
		-- cnt_down <= '0';
		
			-- case state_reg is
			
				-- when s_INIT =>
					-- state_no_reg <= "111";
					-- rst_cnt <= '1';
					-- state_next <= s_RESET;
			
				-- when s_RESET =>
                    -- state_no_reg <= "111";
                    -- sen_reset_n <= '0';
					-- cnt_down <= '1';
                    -- if (cnt_reg = 0) then
                        -- state_next <= s_IDLE;
                    -- else      
                        -- state_next <= s_RESET;        						
                    -- end if;
			
				-- when s_IDLE =>
				    -- state_no_reg <= "001";
					-- if (cmd_grab_frame = '1') then
						-- state_next <= s_TRAINING;
						-- cmd_start_training <= '1';
					-- end if;
					
				-- when s_TRAINING =>
				    -- state_no_reg <= "010"; --zmiana!! by�o: 010
					-- if (training_done = '1') then
						-- state_next       <= s_GRAB0;
						-- frame_req           <= '1';
					-- end if;
				
				-- when s_GRAB0 =>
				    -- state_no_reg <= "011";
				    -- if (fval = '0') then
					   -- state_next       <= s_GRAB1;
					-- end if;
					
                -- when s_GRAB1 =>
                    -- state_no_reg <= "100";
                    -- if (fval = '1') then
                       -- state_next       <= s_GRAB2;
                    -- end if;
                
                -- when s_GRAB2 =>
                    -- state_no_reg <= "101";
                    -- if (fval = '0') then
                       -- state_next       <= s_GRAB3;
                    -- end if;
		
                -- when s_GRAB3 =>
                    -- state_no_reg <= "110";
                    -- state_next       <= s_IDLE;
					
				-- when others =>
				    -- state_next      <= s_INIT;

            -- end case;
		
	-- end process;
	
	control_proc : process(clk_sys,rst_sys)
	begin
		if(rst_sys='1') then
			state_reg<=s_INIT;
		elsif rising_edge(clk_sys) then
			cmd_start_training <= '0';
			frame_req <= '0';
			sen_reset_n  <= '1';
			state_no_reg <= (others => '0');
			rst_cnt <= '0';
			cnt_down <= '0';
			data_valid <= '0';
		
			case state_reg is
				when s_INIT =>
					state_no_reg <= "1110";
					rst_cnt <= '1';
					sen_reset_n <= '0';
					state_reg <= s_RESET;
			
				when s_RESET =>
                    state_no_reg <= "1110";
					cnt_down <= '1';
					sen_reset_n <= '0';
                    if (cnt_reg = 0) then
                        state_reg <= s_IDLE;
                    else      
                        state_reg <= s_RESET;        						
                    end if;
			
				when s_IDLE =>
				    state_no_reg <= "0010";
					if (cmd_grab_frame = '1') then
						state_reg <= s_TRAINING;
						cmd_start_training <= '1';
					end if;
					
                when s_TRAINING =>
                    state_no_reg <= "0100"; --zmiana!! by�o: 010
                    if (training_done = '1') then
                        state_reg       <= s_GRAB0;
                        frame_req           <= '1';
                    end if;
				
				when s_GRAB0 =>
				    state_no_reg <= "0110";
					data_valid <= '1';
				    if (fval = '0') then
					   state_reg       <= s_GRAB1;
					end if;
					
                when s_GRAB1 =>
                    state_no_reg <= "1000";
                    data_valid <= '1';  
                    if (fval = '1') then
                       state_reg       <= s_GRAB2;
                    end if;
                
                when s_GRAB2 =>
                    state_no_reg <= "1010";
					data_valid <= '1';
                    if (fval = '0') then
                       state_reg       <= s_GRAB3;
                    end if;

                    if(prev_en = '1') then
                        cnt_prev <= (others => '1');
                    else
                        cnt_prev <= (others => '0');
                    end if;
--                when s_GRAB1 =>
--                   state_no_reg <= "100";
--				sen_reset_n <= '1';
--				rst_cnt <= '1';

--                   --if (fval = '1') then
--                      state_reg       <= s_GRAB2;
--                   --end if;
               
--               when s_GRAB2 =>
--                   state_no_reg <= "101";
--				sen_reset_n <= '1';
----                   if (fval = '0') then
----                      state_reg       <= s_GRAB3;
----                   end if;
--                cnt_down <= '1';
--                    if (cnt_reg = 0) then
--                        state_reg <= s_GRAB3;
--                    else      
--                        state_reg <= s_GRAB2;        						
--                    end if;
		
                when s_GRAB3 =>
                    state_no_reg <= "1101";
                    if(cnt_prev = 0) then
                        state_reg       <= s_IDLE;
                    else
                        cnt_prev <= cnt_prev - 1;
                    end if;
					
				when others =>
				    state_reg      <= s_INIT;
			end case;
		end if;
	end process;
end architecture rtl;