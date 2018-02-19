-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jan 22 01:12:45 2018
-- Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode pin_planning -force -port_diff_buffers
--               C:/Users/ZdunekPC/Documents/Spektrop2/Vivado/Spektrop2_CMV4000_V2/spektrop2_cmv4000_top.vhd
-- Design      : ios
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- The following library declaration should be present if 
---- instantiating any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;


entity spektrop2_cmv4000_top is
	Port ( 

    -- Processor board signals
    -- Signals are named from 19 downto 1 to correspond to schematics. 
		     FPGA_BANK35_DIFF_P : inout STD_LOGIC_VECTOR(19 downto 1);
		     FPGA_BANK35_DIFF_N : inout STD_LOGIC_VECTOR(19 downto 1);   
		     FPGA_BANK13_IO : inout STD_LOGIC_VECTOR ( 10 downto 0 );
		     CLK_MGT1_P : in STD_LOGIC;
		     CLK_MGT1_N : in STD_LOGIC;
		     CLK_MGT0_P : in STD_LOGIC;
		     CLK_MGT0_N : in STD_LOGIC;
		     COAXPRESS_UPLINK_I : in STD_LOGIC;
		     SI5340_LOS_XAXBb : in STD_LOGIC;
		     SI5340_nINTR : in STD_LOGIC;
		     SI5340_LOL : in STD_LOGIC;
		     SI5340_nRST : out STD_LOGIC;
		     SI5340_SCL : inout STD_LOGIC;
		     SI5340_SDA : inout STD_LOGIC;
		     LED0 : out STD_LOGIC;
		     LED1 : out STD_LOGIC;
		     MGT_RX0_P : in STD_LOGIC;
		     MGT_RX0_N : in STD_LOGIC;
		     MGT_TX0_P : out STD_LOGIC;
		     MGT_TX0_N : out STD_LOGIC;
		     MGT_TX1_P : out STD_LOGIC;
		     MGT_TX1_N : out STD_LOGIC;
		     MGT_TX2_P : out STD_LOGIC;
		     MGT_TX2_N : out STD_LOGIC;
		     RS485_RX : in STD_LOGIC;
		     RS485_TX : out STD_LOGIC;
		     GS12281_nCS : inout STD_LOGIC;
		     GS12281_SCLK : inout STD_LOGIC;
		     GS12281_SDIN : inout STD_LOGIC;
		     GS12281_SDOUT : inout STD_LOGIC;
		     GS12281_GPIO : inout STD_LOGIC_VECTOR ( 4 downto 1 );

    -- CMV4000 signals   
    --main reset of the CMV4000 IP
    --rst_n           : in std_logic;
    --sensor data
    --data_in_p       : in unsigned (15 downto 0);
    --data_in_n       : in unsigned (15 downto 0);
    --data clock
    --    clk_in_p        : in std_logic;
    --    clk_in_n        : in std_logic;
    --control signal
    --    cntrl_in_p      : in std_logic;
    --    cntrl_in_n      : in std_logic;

    --trigger
    --frame_req       : out std_logic;
    --slow sensor clock
    --sen_clk_in      : out std_logic;
    --sensor reset
    --sen_reset_n     : out std_logic;

    --fast sensor clock 480 MHz
    --    CLK_LVDS_OUT_P  : out std_logic;
    --    CLK_LVDS_OUT_N  : out std_logic;

--		     cmd_grab_frame        : in std_logic;

    --		     fvalid_led            : out std_logic;
    --control_led           : out std_logic;
    --monitor_locked_led    : out std_logic;
    --rst_sys_dbg_led       : out std_logic;
    --state_no_led          : out std_logic_vector(3 downto 0);

    -- Zynq Processing System signals
		     FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
		     FIXED_IO_ps_clk : inout STD_LOGIC;
		     FIXED_IO_ps_porb : inout STD_LOGIC;
		     FIXED_IO_ps_srstb : inout STD_LOGIC
		    -- UART_rxd : in STD_LOGIC;
		    -- UART_txd : out STD_LOGIC
	     );
end spektrop2_cmv4000_top;

architecture STRUCTURE of spektrop2_cmv4000_top is
	signal CLK_MGT1_IBUFDS_GTE2_O : STD_LOGIC;
	signal CLK_MGT0_IBUFDS_GTE2_O : STD_LOGIC;
	signal MGT_RX0_IBUFDS_GTE2_O : STD_LOGIC;
	signal MGT_TX0_OBUFDS_I : STD_LOGIC;
	signal MGT_TX1_OBUFDS_I : STD_LOGIC;
	signal MGT_TX2_OBUFDS_I : STD_LOGIC;

	signal ps_100m_clk : std_logic;

	component tsc_mv1_top is
		port (
      -- EXTERNAL CONTROL
			     rst_n               : in std_logic;
			     clk_100m            : in std_logic;
      --    clk_400m            : in std_logic;
      --    clk_idelay            : in std_logic;
      --    clk_locked            : in std_logic;
      --    clk_rst                : out std_logic;
			     cmd_grab_frame        : in std_logic;
      --    clk_ser             : in std_logic;
      --    clk_ser_locked        : in std_logic;
			     prev_en : in std_logic;

      -- SENSOR CLOCK AND RESET
			     sen_clk_in        : out std_logic;
			     sen_reset_n       : out std_logic;

      -- CONTROL OUTPUTS TO SENSOR
			     frame_req         : out std_logic;

      -- LVDS DATA TO/FROM SENSOR
			     data_rx_p         : in unsigned (15 downto 0);
			     data_rx_n         : in unsigned (15 downto 0);

			     ctrl_rx_p         : in std_logic;
			     ctrl_rx_n         : in std_logic;

			     clk_rx_p          : in std_logic;
			     clk_rx_n          : in std_logic;

			     clk_byp_p         : out std_logic;
			     clk_byp_n         : out std_logic;

      -- DESERIALIZED OUTPUT
			     data00   : out unsigned (11 downto 0);
			     data01   : out unsigned (11 downto 0);
			     data02   : out unsigned (11 downto 0);
			     data03   : out unsigned (11 downto 0);
			     data04   : out unsigned (11 downto 0);
			     data05   : out unsigned (11 downto 0);
			     data06   : out unsigned (11 downto 0);
			     data07   : out unsigned (11 downto 0);
			     data08   : out unsigned (11 downto 0);
			     data09   : out unsigned (11 downto 0);
			     data10   : out unsigned (11 downto 0);
			     data11   : out unsigned (11 downto 0);
			     data12   : out unsigned (11 downto 0);
			     data13   : out unsigned (11 downto 0);
			     data14   : out unsigned (11 downto 0);
			     data15   : out unsigned (11 downto 0);

			     ctrl_par : out unsigned (11 downto 0);

			     pix_clk             : out std_logic;
			     data_valid          : out std_logic;

      --DEBUG
			     training_active     : out std_logic;
			     monitor_locked      : out std_logic;
			     monitor_clk_rx      : out std_logic;
			     rst_sys_dbg         : out std_logic;
			     state_no            : out std_logic_vector(3 downto 0)
		     );
	end component;

	component system_wrapper is
		port (
			     FCLK_100M_CLK : out STD_LOGIC;
			     FCLK_50M_CLK : out STD_LOGIC;
			     FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
			     FIXED_IO_ps_clk : inout STD_LOGIC;
			     FIXED_IO_ps_porb : inout STD_LOGIC;
			     FIXED_IO_ps_srstb : inout STD_LOGIC;
			     I2C_scl_io : inout STD_LOGIC;
			     I2C_sda_io : inout STD_LOGIC;
			     SPI0_io0_io : inout STD_LOGIC;
			     SPI0_io1_io : inout STD_LOGIC;
			     SPI0_sck_io : inout STD_LOGIC;
			     SPI0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
			     SPI1_io0_io : inout STD_LOGIC;
			     SPI1_io1_io : inout STD_LOGIC;
			     SPI1_sck_io : inout STD_LOGIC;
			     SPI1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
			     UART_rxd : in STD_LOGIC;
			     UART_txd : out STD_LOGIC;
			     control_reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
		     );
	end component;

  --  component vid_sig_formatter is
  --  port 
  --  (
  --      pix_clk   : in std_logic;        
  --      dval      : in std_logic;
  --      fval      : in std_logic;
  --      data0     : in std_logic_vector(63 downto 0);
  --      data1     : in std_logic_vector(63 downto 0);
  --      data2     : in std_logic_vector(63 downto 0);
  --      data3     : in std_logic_vector(63 downto 0);

  --      dval_out  : out std_logic;
  --      fval_out  : out std_logic;
  --      data0_out : out std_logic_vector(63 downto 0);
  --      data1_out : out std_logic_vector(63 downto 0);
  --      data2_out : out std_logic_vector(63 downto 0);
  --      data3_out : out std_logic_vector(63 downto 0)
  --  );
  --  end component;

  --  signal rst_n  : std_logic;
	signal led0_o : std_logic;
	signal led1_o : std_logic;

	signal dval           : std_logic; --data valid
	signal lval           : std_logic; --line valid
	signal fval           : std_logic;  --frame valid
	signal ctrl_par       : unsigned (11 downto 0);
	signal pix_clk_sig    : std_logic;

	signal dval_shft  : std_logic;
	signal fval_shft  : std_logic;

	signal vid_data0  : std_logic_vector(63 downto 0);
	signal vid_data1  : std_logic_vector(63 downto 0);
	signal vid_data2  : std_logic_vector(63 downto 0);
	signal vid_data3  : std_logic_vector(63 downto 0);

	signal data0_shft : std_logic_vector(63 downto 0);
	signal data1_shft : std_logic_vector(63 downto 0);
	signal data2_shft : std_logic_vector(63 downto 0);
	signal data3_shft : std_logic_vector(63 downto 0);

	signal data00   : unsigned (11 downto 0);
	signal data01   : unsigned (11 downto 0);
	signal data02   : unsigned (11 downto 0);
	signal data03   : unsigned (11 downto 0);
	signal data04   : unsigned (11 downto 0);
	signal data05   : unsigned (11 downto 0);
	signal data06   : unsigned (11 downto 0);
	signal data07   : unsigned (11 downto 0);
	signal data08   : unsigned (11 downto 0);
	signal data09   : unsigned (11 downto 0);
	signal data10   : unsigned (11 downto 0);
	signal data11   : unsigned (11 downto 0);
	signal data12   : unsigned (11 downto 0);
	signal data13   : unsigned (11 downto 0);
	signal data14   : unsigned (11 downto 0);
	signal data15   : unsigned (11 downto 0);

	signal sen_clk  :   std_logic;
	signal frame_req  :   std_logic;


  --  signal spi_SCK_sig        : std_logic;
  --  signal spi_MISO_sig       : std_logic;
  --  signal spi_MOSI_sig       : std_logic;

  --  signal spi_SS_sig         : std_logic;
  --  signal spi_SS_I_sig       : std_logic;
  --  signal spi_SS_O_sig       : std_logic;
  --  signal spi_SS_O_sig_inv   : std_logic; -- CMV4000 wymaga odwrotnego SS
  --  signal spi_SS_T_sig       : std_logic;

	signal control_data       : std_logic_vector(31 downto 0);

  --  signal clk_ser : std_logic; --zegar s?u??cy do taktowania deserializer?w LVDS (zegar z sensora przesuni?ty o 90 stopni)
  --  signal clk_ser_locked : std_logic;

	signal ctrl_data_reg      : std_logic_vector(11 downto 0);
	signal ctrl_data_next     : std_logic_vector(11 downto 0);

	signal cmd_grab_frame_sig : std_logic;
	signal rst_n          : std_logic;
	signal control_reg0_o : std_logic_vector(31 downto 0);

	signal ps_50m_clk             : std_logic;
	signal led_counter            : unsigned(31 downto 0);
	constant LED_COUNTER_MAX      : natural := 50000000;

	signal spi_cmv4000_mosi : std_logic;
	signal spi_cmv4000_miso : std_logic;
	signal spi_cmv4000_sck : std_logic;
	signal spi_cmv4000_ss : std_logic_vector(0 downto 0);

	signal spi_gs12281_mosi : std_logic;
	signal spi_gs12281_miso : std_logic;
	signal spi_gs12281_sck : std_logic;
	signal spi_gs12281_ss : std_logic_vector(0 downto 0);

	signal cmv4000_data_p : unsigned(16 downto 1);
	signal cmv4000_data_n : unsigned(16 downto 1);

	signal pix_clk             : std_logic;
	signal data_valid          : std_logic;
	signal sen_reset_n         : std_logic;

  --DEBUG
	signal   training_active     : std_logic;
	signal   monitor_locked      : std_logic;
	signal   monitor_clk_rx      : std_logic;
	signal   rst_sys_dbg         : std_logic;
	signal   state_no            : std_logic_vector(3 downto 0);

begin

	system_wrapper_i: system_wrapper
	port map (
			 FCLK_100M_CLK => ps_100m_clk,
			 FCLK_50M_CLK => ps_50m_clk,
			 FIXED_IO_mio => FIXED_IO_mio,
			 FIXED_IO_ps_clk => FIXED_IO_ps_clk,
			 FIXED_IO_ps_porb => FIXED_IO_ps_porb,
			 FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
			 I2C_scl_io => SI5340_SCL,
			 I2C_sda_io => SI5340_SDA,
			 SPI0_io0_io => spi_cmv4000_miso,
			 SPI0_io1_io => spi_cmv4000_mosi,
			 SPI0_sck_io => spi_cmv4000_sck,			 
			 SPI0_ss_io  => spi_cmv4000_ss, 
			 SPI1_io0_io => spi_gs12281_miso,
			 SPI1_io1_io => spi_gs12281_mosi,
			 SPI1_sck_io => spi_gs12281_sck,			 
			 SPI1_ss_io  => spi_gs12281_ss, 
			 UART_rxd => RS485_RX,
			 UART_txd => RS485_TX,
			 control_reg0_o => control_reg0_o
		 );

	tsc_ms1_top_i: tsc_mv1_top
	port map(
		   -- EXTERNAL CONTROL
			rst_n               => control_reg0_o(3),
			clk_100m            => ps_100m_clk,
			cmd_grab_frame       => cmd_grab_frame_sig,
			prev_en => control_reg0_o(1), 

		   -- SENSOR CLOCK AND RESET
			sen_clk_in        => sen_clk,
			sen_reset_n       => sen_reset_n,     

		   -- CONTROL OUTPUTS TO SENSOR
			frame_req        => frame_req, 

		   -- LVDS DATA TO/FROM SENSOR
			data_rx_p        => cmv4000_data_p, 
			data_rx_n        => cmv4000_data_n, 

			ctrl_rx_p  	    => FPGA_BANK35_DIFF_P(7),        
			ctrl_rx_n        => FPGA_BANK35_DIFF_N(7),      

			clk_rx_p        => FPGA_BANK35_DIFF_P(12),        
			clk_rx_n        => FPGA_BANK35_DIFF_N(12),        

			clk_byp_p       => FPGA_BANK35_DIFF_P(13),    -- not sure    
			clk_byp_n       => FPGA_BANK35_DIFF_N(13),        

		   -- DESERIALIZED OUTPUT
			data00  => data00,
			data01  => data01,
			data02  => data02,
			data03  => data03,
			data04  => data04,
			data05  => data05,
			data06  => data06,
			data07  => data07,
			data08  => data08,
			data09  => data09,
			data10  => data10,
			data11  => data11,
			data12  => data12,
			data13  => data13,
			data14  => data14,
			data15  => data15,

			ctrl_par 	=> ctrl_par,       

			pix_clk 	=> pix_clk,    
			data_valid 	=> data_valid,  

		   --DEBUG
			training_active    => training_active,
			monitor_locked     => monitor_locked,
			monitor_clk_rx     => monitor_clk_rx,
			rst_sys_dbg        => rst_sys_dbg,
			state_no           => state_no
		);


	FPGA_BANK35_DIFF_P(14) <= cmv4000_data_p(1);
	FPGA_BANK35_DIFF_N(14) <= cmv4000_data_n(1);

	FPGA_BANK35_DIFF_P(3) <= cmv4000_data_p(2);
	FPGA_BANK35_DIFF_N(3) <= cmv4000_data_n(2);

	FPGA_BANK35_DIFF_P(17) <= cmv4000_data_p(3);
	FPGA_BANK35_DIFF_N(17) <= cmv4000_data_n(3);

	FPGA_BANK35_DIFF_P(10) <= cmv4000_data_p(4);
	FPGA_BANK35_DIFF_N(10) <= cmv4000_data_n(4);

	FPGA_BANK35_DIFF_P(5) <= cmv4000_data_p(5);
	FPGA_BANK35_DIFF_N(5) <= cmv4000_data_n(5);

	FPGA_BANK35_DIFF_P(9) <= cmv4000_data_p(6);
	FPGA_BANK35_DIFF_N(9) <= cmv4000_data_n(6);

	FPGA_BANK35_DIFF_P(2) <= cmv4000_data_p(7);
	FPGA_BANK35_DIFF_N(2) <= cmv4000_data_n(7);

	FPGA_BANK35_DIFF_P(18) <= cmv4000_data_p(8);
	FPGA_BANK35_DIFF_N(18) <= cmv4000_data_n(8);

	FPGA_BANK35_DIFF_P(16) <= cmv4000_data_p(9);
	FPGA_BANK35_DIFF_N(16) <= cmv4000_data_n(9);

	FPGA_BANK35_DIFF_P(8) <= cmv4000_data_p(10);
	FPGA_BANK35_DIFF_N(8) <= cmv4000_data_n(10);

	FPGA_BANK35_DIFF_P(15) <= cmv4000_data_p(11);
	FPGA_BANK35_DIFF_N(15) <= cmv4000_data_n(11);

	FPGA_BANK35_DIFF_P(6) <= cmv4000_data_p(12);
	FPGA_BANK35_DIFF_N(6) <= cmv4000_data_n(12);

	FPGA_BANK35_DIFF_P(11) <= cmv4000_data_p(13);
	FPGA_BANK35_DIFF_N(11) <= cmv4000_data_n(13);

	FPGA_BANK35_DIFF_P(19) <= cmv4000_data_p(14);
	FPGA_BANK35_DIFF_N(19) <= cmv4000_data_n(14);

	FPGA_BANK35_DIFF_P(4) <= cmv4000_data_p(15);
	FPGA_BANK35_DIFF_N(4) <= cmv4000_data_n(15);

	FPGA_BANK35_DIFF_P(1) <= cmv4000_data_p(16);
	FPGA_BANK35_DIFF_N(1) <= cmv4000_data_n(16);
	
	

   -- frame req signal
	FPGA_BANK13_IO(5) <= cmd_grab_frame_sig;
	cmd_grab_frame_sig <= control_reg0_o(2);
	
   -- sensor reset signal
	FPGA_BANK13_IO(9) <= sen_reset_n; 

   --slow sensor clock
	FPGA_BANK13_IO(3) <= sen_clk; 

   -- sensor SPI
	FPGA_BANK13_IO(10) <= spi_cmv4000_miso; 
	FPGA_BANK13_IO(6) <=  spi_cmv4000_mosi; 
	FPGA_BANK13_IO(4) <=  spi_cmv4000_sck; 
	FPGA_BANK13_IO(2) <=  spi_cmv4000_ss(0); 

   -- GS12281 SPI 
	GS12281_SDOUT 	 <= spi_gs12281_miso;
	GS12281_SDIN	 <= spi_gs12281_mosi;
	GS12281_SCLK	 <= spi_gs12281_sck;
	GS12281_nCS 	 <= spi_gs12281_ss(0);

   -- control of the CMV4000 IP reset
	rst_n <= control_reg0_o(3);


	led_blink: process (ps_50m_clk)
	begin
		if (rising_edge(ps_50m_clk)) then
			if led_counter < LED_COUNTER_MAX  then
				led_counter <= led_counter + 1;
				led0_o <= '0';
				led1_o <= '1';
			else
				led_counter <= (others => '0');
				led0_o <= '1';
				led1_o <= '0';
			end if;
		end if;
	end process;


--	CLK_MGT1_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
--	port map (  
--			 I => CLK_MGT1_P,
--			 IB => CLK_MGT1_N,
--			 O => CLK_MGT1_IBUFDS_GTE2_O
--		 );

--	CLK_MGT0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
--	port map (
--			 I => CLK_MGT0_P,
--			 IB => CLK_MGT0_N,
--			 O => CLK_MGT0_IBUFDS_GTE2_O
--		 );

--	MGT_RX0_IBUFDS_GTE2: unisim.vcomponents.IBUFDS_GTE2
--	port map (
--			 I => MGT_RX0_P,
--			 IB => MGT_RX0_N,
--			 O => MGT_RX0_IBUFDS_GTE2_O
--		 );

--	MGT_TX0_OBUFDS: unisim.vcomponents.OBUFDS
--	port map (
--			 O => MGT_TX0_P,
--			 OB => MGT_TX0_N,
--			 I => MGT_TX0_OBUFDS_I
--		 );

--	MGT_TX1_OBUFDS: unisim.vcomponents.OBUFDS
--	port map (
--			 O => MGT_TX1_P,
--			 OB => MGT_TX1_N,
--			 I => MGT_TX1_OBUFDS_I
--		 );

--	MGT_TX2_OBUFDS: unisim.vcomponents.OBUFDS
--	port map (
--			 O => MGT_TX2_P,
--			 OB => MGT_TX2_N,
--			 I => MGT_TX2_OBUFDS_I
--		 );


end STRUCTURE;
