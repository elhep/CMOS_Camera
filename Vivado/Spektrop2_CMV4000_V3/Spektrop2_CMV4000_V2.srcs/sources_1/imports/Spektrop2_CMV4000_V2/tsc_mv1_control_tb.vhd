--tsc_mv1_control_tb.vhd
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
	
entity tsc_mv1_control_tb is
end entity tsc_mv1_control_tb;

architecture sim of tsc_mv1_control_tb is
	
component tsc_mv1_control is
  port (
    -- CLOCK/RESET
    rst_sys             : in  std_logic;
    clk_sys             : in  std_logic;

    -- CONTROL & REGISTER INPUTS

    -- INPUTS
	cmd_grab_frame		:	in	std_logic;
    training_done       : in  std_logic;
    fval                : in std_logic;

    -- OUTPUTS (CONTROLLER INTERNAL)
    cmd_start_training  : out std_logic;

    -- OUTPUTS (TO SENSOR)
    sen_reset_n         : out std_logic;
    frame_req           : out std_logic;
    
    -- DEBUG
    state_no            : out std_logic_vector(2 downto 0)
    );
end component;

signal rst_sys_sig			: std_logic := '1'; --active high
signal clk_sys_sig			: std_logic := '0';
signal cmd_grab_frame_sig	: std_logic := '0';
signal training_done_sig	: std_logic := '0';
signal fval_sig				: std_logic := '0';

signal cmd_start_training_sig   : std_logic;
signal sen_reset_n_sig          : std_logic;
signal frame_req_sig			: std_logic;
signal state_no_sig             : std_logic_vector(2 downto 0);

constant clk_period : time := 100 ns;

begin

	uut0: tsc_mv1_control 
	port map (
			rst_sys => rst_sys_sig,
			clk_sys => clk_sys_sig,
			cmd_grab_frame => cmd_grab_frame_sig,
			training_done => training_done_sig,
			fval => fval_sig,
			cmd_start_training => cmd_start_training_sig,
			sen_reset_n => sen_reset_n_sig,
			frame_req => frame_req_sig,
			state_no => state_no_sig
        );

-- Clock process definitions( clock with 50% duty cycle is generated here.
	sys_clk_process : process
	begin
		clk_sys_sig <= '1';
		wait for clk_period/2;  --for 0.5 ns signal is '0'.
		clk_sys_sig <= '0';
		wait for clk_period/2;  --for next 0.5 ns signal is '1'.
	end process;
	
	stim_proc: process
	   begin        
		wait for 500 ns;
			rst_sys_sig <='0';
		wait;
		-- wait for 100 ps;
			-- reset <='1';
		-- wait for 200 ps;
			-- start <='1';
		-- wait for 800 ps;
			-- data_in_sig <= X"01020304";
		-- wait for 400 ps;
			-- data_in_sig <= X"05060708";
		-- wait for 400 ps;
			-- data_in_sig <= X"090A0B0C";
		-- wait for 400 ps;
			-- data_in_sig <= X"0D0E0F10";
	end process;

end architecture sim;