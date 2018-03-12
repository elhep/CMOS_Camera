----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2018 10:58:09 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath_tb is
--  Port ( );
end datapath_tb;

architecture Behavioral of datapath_tb is
component design_1_wrapper is
  port (

    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_enable_0 : in STD_LOGIC;
    vid_io_in_0_active_video : in STD_LOGIC;
    vid_io_in_0_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_0_field : in STD_LOGIC;
    vid_io_in_0_hblank : in STD_LOGIC;
    vid_io_in_0_hsync : in STD_LOGIC;
    vid_io_in_0_vblank : in STD_LOGIC;
    vid_io_in_0_vsync : in STD_LOGIC;
    vid_io_in_1_active_video : in STD_LOGIC;
    vid_io_in_1_data : in STD_LOGIC_VECTOR ( 95 downto 0 );
    vid_io_in_1_field : in STD_LOGIC;
    vid_io_in_1_hblank : in STD_LOGIC;
    vid_io_in_1_hsync : in STD_LOGIC;
    vid_io_in_1_vblank : in STD_LOGIC;
    vid_io_in_1_vsync : in STD_LOGIC;
    vid_io_in_ce_0 : in STD_LOGIC;
    vid_io_in_clk_0 : in STD_LOGIC;
    vid_io_in_reset_0 : in STD_LOGIC
  );
end component;

  signal M_AXIS_0_tdata  : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal M_AXIS_0_tlast  : STD_LOGIC;
  signal M_AXIS_0_tready : STD_LOGIC := '0';
  signal M_AXIS_0_tvalid : STD_LOGIC;
  signal aclk_0 	: STD_LOGIC := '0';
  signal aclken_0 	: STD_LOGIC := '1';
  signal aresetn_0 	: STD_LOGIC := '1';
  signal axis_enable_0 	: STD_LOGIC := '1';
  signal vid_io_in_0_active_video : STD_LOGIC := '0';
  signal vid_io_in_0_data : STD_LOGIC_VECTOR ( 95 downto 0 ) := (others => '1');
  signal vid_io_in_0_field : STD_LOGIC := '0';
  signal vid_io_in_0_hblank : STD_LOGIC := '0';
  signal vid_io_in_0_hsync : STD_LOGIC := '0';
  signal vid_io_in_0_vblank : STD_LOGIC := '0';
  signal vid_io_in_0_vsync : STD_LOGIC := '0';
  signal vid_io_in_1_active_video : STD_LOGIC := '0';
  signal vid_io_in_1_data : STD_LOGIC_VECTOR ( 95 downto 0 ) := (others => '1');
  signal vid_io_in_1_field : STD_LOGIC := '0';
  signal vid_io_in_1_hblank : STD_LOGIC := '0';
  signal vid_io_in_1_hsync : STD_LOGIC := '0';
  signal vid_io_in_1_vblank : STD_LOGIC := '0';
  signal vid_io_in_1_vsync : STD_LOGIC := '0';
  signal vid_io_in_ce_0 : STD_LOGIC := '1';
  signal vid_io_in_clk_0 : STD_LOGIC := '0';
  signal vid_io_in_reset_0 : STD_LOGIC := '0';
  signal data_valid : std_logic := '0';
  signal fval : std_logic := '0';
  signal blank : std_logic := '1';
  
  signal pixel : std_logic_vector(11 downto 0) := (others => '0');

  signal video_clk : std_logic := '0';
  constant video_clk_period : time := 25 ns;

  signal axi_clk : std_logic := '0';
  constant axi_clk_period : time := 10 ns;

begin

	axi_clk_proc: process
	begin
		axi_clk <= '0';
		wait for axi_clk_period/2;
		axi_clk <= '1';
		wait for axi_clk_period/2;
	end process;


	video_clk_proc: process
	begin
		video_clk <= '0';
		wait for video_clk_period/2;
		video_clk <= '1';
		wait for video_clk_period/2;
	end process;

	video_data: process(video_clk)
	begin
		if(rising_edge(video_clk)) then
            if(data_valid = '1') then
                pixel <= std_logic_vector(unsigned(pixel) + 1);
            elsif(data_valid = '0') then
                pixel <= (others => '0');
            end if;
		end if;
	end process;
	
	vid_io_in_0_data <= pixel &
	                    pixel &
	                    pixel &
	                    pixel &
	                    pixel &
	                    pixel &
	                    pixel &
                        pixel;
                        
     	vid_io_in_1_data <= pixel &
                                            pixel &
                                            pixel &
                                            pixel &
                                            pixel &
                                            pixel &
                                            pixel &
                                            pixel;


	datapath_i: design_1_wrapper
	port map(

		M_AXIS_0_tdata 			=>  M_AXIS_0_tdata,
		M_AXIS_0_tlast 			=>  M_AXIS_0_tlast,
		M_AXIS_0_tready 		=>  M_AXIS_0_tready,
		M_AXIS_0_tvalid 		=>  M_AXIS_0_tvalid,
		aclk_0 				=>  axi_clk,
		aclken_0 			=>  '1',
		aresetn_0 			=>  aresetn_0,
		axis_enable_0 			=>  '1',
		vid_io_in_0_active_video 	=>  data_valid,
		vid_io_in_0_data 		=>  vid_io_in_0_data,
		vid_io_in_0_field 		=>  '0',
		vid_io_in_0_hblank 		=>  blank,
		vid_io_in_0_hsync 		=>  fval,
		vid_io_in_0_vblank 		=>  blank,
		vid_io_in_0_vsync 		=>  fval,
		vid_io_in_1_active_video 	=>  data_valid,
		vid_io_in_1_data 		=>  vid_io_in_1_data,
		vid_io_in_1_field 		=>  '0',
		vid_io_in_1_hblank 		=>  blank,
		vid_io_in_1_hsync 		=>  fval,
		vid_io_in_1_vblank 		=>  blank,
		vid_io_in_1_vsync 		=>  fval,
		vid_io_in_ce_0 			=>  '1',
		vid_io_in_clk_0 		=>  video_clk,
		vid_io_in_reset_0 		=>  vid_io_in_reset_0 
	);
	
    blank <= not fval;
    fval <= data_valid;
   -- Stimulus process, Apply inputs here.
  stim_proc: process
   begin        
        wait for video_clk_period*40;
        
        vid_io_in_reset_0 <='1';                    --then pull down reset for 20 clock cycles.
        aresetn_0 <= '0';
        wait for video_clk_period*40;
        
        vid_io_in_reset_0 <='0';                    --then pull down reset for 20 clock cycles.
        aresetn_0 <= '1';
        
        wait for video_clk_period*40;
        
        data_valid <= '0';
       -- fval <= '0';
        wait for video_clk_period*5;
        
        --data_valid <= '1';
        --
        --wait for video_clk_period;
--        --fval <= '1';
--        wait for video_clk_period;
        
--        data_valid <= '0';
--        fval <= '0';
--        wait for video_clk_period;
        M_AXIS_0_tready <= '1';
        wait for video_clk_period*10;
        data_valid <= '1';
        --wait for video_clk_period;
        --fval <= '1';
        wait for video_clk_period*40;
 
        data_valid <= '0';
        --fval <= '0';
        wait for video_clk_period;
        
--                data_valid <= '1';
--        wait for video_clk_period;
--        fval <= '1';
--        wait for video_clk_period*20;
        
--                data_valid <= '0';
--        fval <= '0';
--        wait for video_clk_period;
             
       -- data_valid <= '1';
       -- wait for video_clk_period*40;
        
        --data_valid <= '0';

        wait;
  end process;

end Behavioral;
