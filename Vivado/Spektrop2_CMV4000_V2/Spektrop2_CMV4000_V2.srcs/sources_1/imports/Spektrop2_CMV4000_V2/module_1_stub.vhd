-------------------------------------------------------------------------------
-- module_1_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity module_1_stub is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB : in std_logic;
    processing_system7_0_PS_CLK : in std_logic;
    processing_system7_0_PS_PORB : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;

	  axi_spi_0_SCK_pin : inout std_logic;
	  axi_spi_0_MISO_pin : inout std_logic;
      axi_spi_0_MOSI_pin : inout std_logic;
      axi_spi_0_SS_pin : inout std_logic;
            v_vid_in_axi4s_0_rst_pin : in std_logic;
          v_vid_in_axi4s_1_rst_pin : in std_logic;
          v_vid_in_axi4s_2_rst_pin : in std_logic;
          v_vid_in_axi4s_3_rst_pin : in std_logic;
    
        --g��wny reset modu�u obs�uguj�cego sensor
            rst_n           : in std_logic;
            --dane ze sensora
           data_in_p         : in unsigned (15 downto 0);
           data_in_n         : in unsigned (15 downto 0);
           --zegar danych
           clk_in_p          : in std_logic;
           clk_in_n          : in std_logic;
           --kana� steruj�cy
           cntrl_in_p         : in std_logic;
           cntrl_in_n         : in std_logic;
           
           --trigger
           frame_req   :   out std_logic;
           --wolny zegar do sensora
           sen_clk_in : out std_logic;
           --reset do sensora
           sen_reset_n : out std_logic;
          
          --szybki zegar do sensora 480 MHz
          CLK_LVDS_OUT_P : out std_logic;
          CLK_LVDS_OUT_N : out std_logic;
          
          cmd_grab_frame : in std_logic;
          
          fvalid_led : out std_logic;
	  control_led : out std_logic;
          monitor_locked_led : out std_logic;
          rst_sys_dbg_led : out std_logic;
          state_no_led  :   out std_logic_vector(3 downto 0);
          
          clk_100m : in std_logic;
                    --debug
          clk_loop_p : in std_logic;
          clk_loop_n : in std_logic;
          clk_loop : out std_logic;
--          CLKOUT0_pin : out std_logic;
--          CLKOUT1_pin : out std_logic;
          sen_clk_dbg : out std_logic;
          training_active     : out std_logic;
          monitor_clk_rx : out std_logic
  );
end module_1_stub;

architecture STRUCTURE of module_1_stub is
      
            component module_1 is
        port (
          processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
          processing_system7_0_PS_SRSTB : in std_logic;
          processing_system7_0_PS_CLK : in std_logic;
          processing_system7_0_PS_PORB : in std_logic;
          processing_system7_0_DDR_Clk : inout std_logic;
          processing_system7_0_DDR_Clk_n : inout std_logic;
          processing_system7_0_DDR_CKE : inout std_logic;
          processing_system7_0_DDR_CS_n : inout std_logic;
          processing_system7_0_DDR_RAS_n : inout std_logic;
          processing_system7_0_DDR_CAS_n : inout std_logic;
          processing_system7_0_DDR_WEB_pin : out std_logic;
          processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
          processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
          processing_system7_0_DDR_ODT : inout std_logic;
          processing_system7_0_DDR_DRSTB : inout std_logic;
          processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
          processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
          processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
          processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
          processing_system7_0_DDR_VRN : inout std_logic;
          processing_system7_0_DDR_VRP : inout std_logic;
          v_vid_in_axi4s_0_vid_in_clk_pin : in std_logic;
          v_vid_in_axi4s_0_vid_de_pin : in std_logic;
          v_vid_in_axi4s_0_vid_vsync_pin : in std_logic;
          v_vid_in_axi4s_1_vid_in_clk_pin : in std_logic;
          v_vid_in_axi4s_1_vid_de_pin : in std_logic;
          v_vid_in_axi4s_1_vid_vsync_pin : in std_logic;
          v_vid_in_axi4s_0_vid_data_pin : in std_logic_vector(63 downto 0);
          v_vid_in_axi4s_1_vid_data_pin : in std_logic_vector(63 downto 0);
          v_vid_in_axi4s_2_vid_in_clk_pin : in std_logic;
          v_vid_in_axi4s_2_vid_de_pin : in std_logic;
          v_vid_in_axi4s_2_vid_vsync_pin : in std_logic;
          v_vid_in_axi4s_2_vid_data_pin : in std_logic_vector(63 downto 0);
          v_vid_in_axi4s_3_vid_in_clk_pin : in std_logic;
          v_vid_in_axi4s_3_vid_de_pin : in std_logic;
          v_vid_in_axi4s_3_vid_vsync_pin : in std_logic;
          v_vid_in_axi4s_3_vid_data_pin : in std_logic_vector(63 downto 0);
--          clock_generator_0_cmv_fast_clk : out std_logic;
--          clock_generator_0_cmv_idelay_clk : out std_logic;
--          gen1_clk_rx : in std_logic;
--          gen1_clk_shft : out std_logic;
--          clock_generator_1_LOCKED_pin : out std_logic;
--          clock_generator_0_CLKOUT1_pin : out std_logic;
--          clock_generator_0_LOCKED_pin : out std_logic;
	  cam_control_0_data : out std_logic_vector(31 downto 0);
          axi_spi_0_SCK_pin : inout std_logic;
          axi_spi_0_MISO_pin : inout std_logic;
          axi_spi_0_MOSI_pin : inout std_logic;
          axi_spi_0_SS_I_pin : in std_logic;
          axi_spi_0_SS_O_pin : out std_logic;
          axi_spi_0_SS_T_pin : out std_logic;
                    v_vid_in_axi4s_0_rst_pin : in std_logic;
              v_vid_in_axi4s_1_rst_pin : in std_logic;
              v_vid_in_axi4s_2_rst_pin : in std_logic;
              v_vid_in_axi4s_3_rst_pin : in std_logic
        );
      end component;
  
    component tsc_mv1_top is
        port (
        -- EXTERNAL CONTROL
        rst_n             : in  std_logic;
        clk_100m			: in std_logic;
--        clk_400m			: in std_logic;
--		clk_idelay			: in std_logic;
--        clk_locked			: in std_logic;
        --reset generatora zegarowego
--        clk_rst				: out std_logic;
        cmd_grab_frame		: in std_logic;
--		clk_ser 			: in std_logic;
--		clk_ser_locked		: in std_logic;
        prev_en : in std_logic;
        
        -- SENSOR CLOCK AND RESET
        sen_clk_in        : out std_logic;
        --reset sensora
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
        data_valid  : out std_logic;
                --DEBUG
        training_active     : out std_logic;
        monitor_locked      : out std_logic;
        monitor_clk_rx      : out std_logic;
        rst_sys_dbg : out std_logic;
        state_no : out std_logic_vector(3 downto 0)
        );
    end component;
    
	component vid_sig_formatter is
	port 
	(
		pix_clk : in std_logic;		
		dval : in std_logic;
		fval : in std_logic;
		data0 : in std_logic_vector(63 downto 0);
		data1 : in std_logic_vector(63 downto 0);
		data2 : in std_logic_vector(63 downto 0);
		data3 : in std_logic_vector(63 downto 0);

		dval_out : out std_logic;
		fval_out : out std_logic;
		data0_out : out std_logic_vector(63 downto 0);
		data1_out : out std_logic_vector(63 downto 0);
		data2_out : out std_logic_vector(63 downto 0);
		data3_out : out std_logic_vector(63 downto 0)
	);
	end component;
	
--	component chipscope_icon_v1_06_a_0
--	  PORT (
--		CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));
--	end component;
	
--	component chipscope_ila_v1_05_a_0
--		  PORT (
--			CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
--			CLK : IN STD_LOGIC;
--			TRIG0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--			TRIG1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--			TRIG2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--			TRIG3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
--			TRIG4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
--			);
--	end component;

 attribute BOX_TYPE : STRING;
 attribute BOX_TYPE of module_1 : component is "user_black_box";
 
  signal v_vid_in_axi4s_0_vid_in_clk_pin    :   std_logic:='0';
  signal v_vid_in_axi4s_0_vid_de_pin        :   std_logic;
  signal v_vid_in_axi4s_0_vid_vsync_pin     :   std_logic;
  signal v_vid_in_axi4s_0_vid_data_pin      :   std_logic_vector(63 downto 0):=(others=>'0');
  signal v_vid_in_axi4s_1_vid_in_clk_pin    :   std_logic:='0';
  signal v_vid_in_axi4s_1_vid_de_pin        :   std_logic;
  signal v_vid_in_axi4s_1_vid_vsync_pin     :   std_logic;
  signal v_vid_in_axi4s_1_vid_data_pin      :   std_logic_vector(63 downto 0):=(others=>'0');
  signal v_vid_in_axi4s_2_vid_in_clk_pin    :   std_logic:='0';
  signal v_vid_in_axi4s_2_vid_de_pin        :   std_logic;
  signal v_vid_in_axi4s_2_vid_vsync_pin     :   std_logic;
  signal v_vid_in_axi4s_2_vid_data_pin      :   std_logic_vector(63 downto 0):=(others=>'0');
  signal v_vid_in_axi4s_3_vid_in_clk_pin    :   std_logic:='0';
  signal v_vid_in_axi4s_3_vid_de_pin        :   std_logic;
  signal v_vid_in_axi4s_3_vid_vsync_pin     :   std_logic;
  signal v_vid_in_axi4s_3_vid_data_pin      :   std_logic_vector(63 downto 0):=(others=>'0');
  
--  signal clock_generator_0_CLKOUT0_pin_sig      :   std_logic;
--  signal clock_generator_0_CLKOUT1_pin_sig      :   std_logic;
--  signal clock_generator_0_CLKOUT2_pin_sig      :   std_logic;
--  signal clock_generator_0_RST_pin_sig          :   std_logic;
--  signal clock_generator_0_LOCKED_pin       :   std_logic;
--  signal clock_generator_cmv_slow_clk_sig : std_logic;
  
  signal dval : std_logic; --data valid
  signal lval :	std_logic; --line valid
  signal fval : std_logic;  --frame valid
  signal ctrl_par : unsigned (11 downto 0);
  signal pix_clk_sig    : std_logic;
  
  signal dval_shft : std_logic;
  signal fval_shft : std_logic;
    signal vid_data0 : std_logic_vector(63 downto 0);
    signal vid_data1 : std_logic_vector(63 downto 0);
    signal vid_data2 : std_logic_vector(63 downto 0);
    signal vid_data3 : std_logic_vector(63 downto 0);
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
  signal data_valid : std_logic;
  
  signal sen_clk  :   std_logic;
  signal clk_loop_unbuf : std_logic;
  
  signal spi_SCK_sig : 	std_logic;
  signal spi_MISO_sig : std_logic;
  signal spi_MOSI_sig : std_logic;
  signal spi_SS_sig : 	std_logic;
  signal spi_SS_I_sig : std_logic;
  signal spi_SS_O_sig : std_logic;
  signal spi_SS_O_sig_inv : std_logic; -- CMV4000 wymaga odwrotnego SS
  signal spi_SS_T_sig : std_logic;

  signal control_data : std_logic_vector(31 downto 0);
  
--  signal clk_ser : std_logic; --zegar s�u��cy do taktowania deserializer�w LVDS (zegar z sensora przesuni�ty o 90 stopni)
--  signal clk_ser_locked : std_logic;
  
signal ctrl_data_reg : std_logic_vector(11 downto 0);
signal ctrl_data_next : std_logic_vector(11 downto 0);

signal cmd_grab_frame_sig : std_logic;
signal rst_n_sig  : std_logic;

--signal chipscope_control_sig : std_logic_vector(35 downto 0);
--signal chipscope_trig0_sig : std_logic_vector(11 downto 0);
--signal chipscope_trig1_sig : std_logic_vector(11 downto 0);
--signal chipscope_trig2_sig : std_logic_vector(11 downto 0);
--signal chipscope_trig3_sig : std_logic_vector(11 downto 0);
--signal chipscope_trig4_sig : std_logic_vector(11 downto 0);

begin

------------------------------------------------------------------------------

  module_1_i : module_1
      port map (
        processing_system7_0_MIO => processing_system7_0_MIO,
        processing_system7_0_PS_SRSTB => processing_system7_0_PS_SRSTB,
        processing_system7_0_PS_CLK => processing_system7_0_PS_CLK,
        processing_system7_0_PS_PORB => processing_system7_0_PS_PORB,
        processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
        processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
        processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
        processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
        processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
        processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
        processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
        processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
        processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
        processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
        processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
        processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
        processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
        processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
        processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
        processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
        processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
        v_vid_in_axi4s_0_vid_in_clk_pin => v_vid_in_axi4s_0_vid_in_clk_pin,
        v_vid_in_axi4s_0_vid_de_pin => v_vid_in_axi4s_0_vid_de_pin,
        v_vid_in_axi4s_0_vid_vsync_pin => v_vid_in_axi4s_0_vid_vsync_pin,
        v_vid_in_axi4s_1_vid_in_clk_pin => v_vid_in_axi4s_1_vid_in_clk_pin,
        v_vid_in_axi4s_1_vid_de_pin => v_vid_in_axi4s_1_vid_de_pin,
        v_vid_in_axi4s_1_vid_vsync_pin => v_vid_in_axi4s_1_vid_vsync_pin,
        v_vid_in_axi4s_0_vid_data_pin => v_vid_in_axi4s_0_vid_data_pin,
        v_vid_in_axi4s_1_vid_data_pin => v_vid_in_axi4s_1_vid_data_pin,
        v_vid_in_axi4s_2_vid_in_clk_pin => v_vid_in_axi4s_2_vid_in_clk_pin,
        v_vid_in_axi4s_2_vid_de_pin => v_vid_in_axi4s_2_vid_de_pin,
        v_vid_in_axi4s_2_vid_vsync_pin => v_vid_in_axi4s_2_vid_vsync_pin,
        v_vid_in_axi4s_2_vid_data_pin => v_vid_in_axi4s_2_vid_data_pin,
        v_vid_in_axi4s_3_vid_in_clk_pin => v_vid_in_axi4s_3_vid_in_clk_pin,
        v_vid_in_axi4s_3_vid_de_pin => v_vid_in_axi4s_3_vid_de_pin,
        v_vid_in_axi4s_3_vid_vsync_pin => v_vid_in_axi4s_3_vid_vsync_pin,
        v_vid_in_axi4s_3_vid_data_pin => v_vid_in_axi4s_3_vid_data_pin,
--        clock_generator_0_cmv_fast_clk => clock_generator_0_CLKOUT0_pin_sig,
--        clock_generator_0_cmv_idelay_clk => clock_generator_0_CLKOUT2_pin_sig,
--        clock_generator_0_CLKOUT1_pin => clock_generator_0_CLKOUT1_pin_sig,
--        clock_generator_0_LOCKED_pin => clock_generator_0_LOCKED_pin,
--        gen1_clk_rx => clk_rx,
--        gen1_clk_shft => clk_ser,
--        clock_generator_1_LOCKED_pin => clk_ser_locked,
	    cam_control_0_data => control_data,
        axi_spi_0_SCK_pin => spi_SCK_sig,
        axi_spi_0_MISO_pin => spi_MISO_sig,
        axi_spi_0_MOSI_pin => spi_MOSI_sig,
        axi_spi_0_SS_I_pin => spi_SS_I_sig,
        axi_spi_0_SS_O_pin => spi_SS_O_sig,
        axi_spi_0_SS_T_pin => spi_SS_T_sig,
        v_vid_in_axi4s_0_rst_pin => rst_n_sig,
        v_vid_in_axi4s_1_rst_pin => rst_n_sig,
        v_vid_in_axi4s_2_rst_pin => rst_n_sig,
        v_vid_in_axi4s_3_rst_pin => rst_n_sig
      );
    
    tsc_mv1_top_i : tsc_mv1_top
    port map(
        -- EXTERNAL CONTROL
            rst_n               => rst_n_sig,
            clk_100m            => clk_100m,
--            clk_400m            => clock_generator_0_CLKOUT0_pin_sig,
--			clk_idelay			=> clock_generator_0_CLKOUT2_pin_sig,
--            clk_locked	        => clock_generator_0_LOCKED_pin,
--            clk_rst		        => clock_generator_0_RST_pin_sig,
            cmd_grab_frame      => cmd_grab_frame_sig,
--			clk_ser 			=> clk_rx,--clk_ser,
--			clk_ser_locked		=> clk_ser_locked,
            prev_en => control_data(2),
            
            -- SENSOR CLOCK AND RESET
            sen_clk_in        => sen_clk,
            sen_reset_n       => sen_reset_n,
            
            -- CONTROL OUTPUTS TO SENSOR
            frame_req   => frame_req,
            
            -- LVDS DATA TO/FROM SENSOR
            data_rx_p   => data_in_p,
            data_rx_n   => data_in_n,
            
            ctrl_rx_p   => cntrl_in_p,
            ctrl_rx_n   => cntrl_in_n,
            
            clk_rx_p    => clk_in_p,
            clk_rx_n    => clk_in_n,
            
            clk_byp_p   => CLK_LVDS_OUT_P,
            clk_byp_n   => CLK_LVDS_OUT_N,
            
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
            ctrl_par => ctrl_par,
            pix_clk => pix_clk_sig,
            data_valid => data_valid,
            training_active => training_active,
            monitor_locked => monitor_locked_led,
            monitor_clk_rx => monitor_clk_rx,
            rst_sys_dbg => rst_sys_dbg_led,
            state_no => state_no_led
    );
	
--	chipscope_icon_i : chipscope_icon_v1_06_a_0
--		port map 
--		(
--			CONTROL0 => chipscope_control_sig
--		);
	
--	chipscope_ila_i : chipscope_ila_v1_05_a_0
--	  port map 
--	  (
--		CONTROL => chipscope_control_sig,
--		CLK => clk_cs,--pix_clk_sig,
--		TRIG0 => chipscope_trig0_sig,
--		TRIG1 => chipscope_trig1_sig,
--		TRIG2 => chipscope_trig2_sig,
--		TRIG3 => chipscope_trig3_sig,
--		TRIG4 => chipscope_trig4_sig
--		);

    vid_sig_formatter_i : vid_sig_formatter
        port map
        (
            pix_clk => pix_clk_sig,		
            dval => dval,
            fval => fval,
            data0 => vid_data0,
            data1 => vid_data1,
            data2 => vid_data2,
            data3 => vid_data3,
    
            dval_out => dval_shft,
            fval_out => fval_shft,
            data0_out => data0_shft,
            data1_out => data1_shft,
            data2_out => data2_shft,
            data3_out => data3_shft
        );
    
	inst_spi_ss: iobuf
	port map (i => spi_SS_O_sig_inv, o => spi_SS_I_sig, io => spi_SS_sig, t=> spi_SS_T_sig);
	
	spi_SS_O_sig_inv <= not spi_SS_O_sig;
	
	axi_spi_0_SCK_pin 	<= 	spi_SCK_sig;
	axi_spi_0_MISO_pin 	<= 	spi_MISO_sig;
	axi_spi_0_MOSI_pin 	<= 	spi_MOSI_sig;
	axi_spi_0_SS_pin 	<= 	spi_SS_sig;
	  
--	chipscope_trig0_sig <= std_logic_vector(ctrl_par);
--	chipscope_trig1_sig <= std_logic_vector(data00);
--	chipscope_trig2_sig <= std_logic_vector(data01);
--	chipscope_trig3_sig <= std_logic_vector(data02);
--	chipscope_trig4_sig <= std_logic_vector(data03); 

    sen_clk_in <= sen_clk;
    sen_clk_dbg <= sen_clk;

--    CLKOUT0_pin <= clock_generator_0_CLKOUT0_pin_sig;
--    CLKOUT1_pin <= clock_generator_0_CLKOUT1_pin_sig;


	dval      <= ctrl_par(0) when data_valid = '1' else '0';
	lval      <= ctrl_par(1) when data_valid = '1' else '0';
	fval      <= ctrl_par(2) when data_valid = '1' else '0';
	
	vid_data0 <= "0000" & std_logic_vector(data03(11 downto 8)) & std_logic_vector(data03(7 downto 0))& "0000" & std_logic_vector(data02(11 downto 8)) & std_logic_vector(data02(7 downto 0)) & 
                 "0000" & std_logic_vector(data01(11 downto 8)) & std_logic_vector(data01(7 downto 0)) & "0000" & std_logic_vector(data00(11 downto 8)) & std_logic_vector(data00(7 downto 0));
    
    vid_data1 <= "0000" & std_logic_vector(data07(11 downto 8)) & std_logic_vector(data07(7 downto 0))& "0000" & std_logic_vector(data06(11 downto 8)) & std_logic_vector(data06(7 downto 0)) & 
                 "0000" & std_logic_vector(data05(11 downto 8)) & std_logic_vector(data05(7 downto 0)) & "0000" & std_logic_vector(data04(11 downto 8)) & std_logic_vector(data04(7 downto 0));
     
    vid_data2 <= "0000" & std_logic_vector(data11(11 downto 8)) & std_logic_vector(data11(7 downto 0))& "0000" & std_logic_vector(data10(11 downto 8)) & std_logic_vector(data10(7 downto 0)) & 
                 "0000" & std_logic_vector(data09(11 downto 8)) & std_logic_vector(data09(7 downto 0)) & "0000" & std_logic_vector(data08(11 downto 8)) & std_logic_vector(data08(7 downto 0));
        
    vid_data3 <= "0000" & std_logic_vector(data15(11 downto 8)) & std_logic_vector(data15(7 downto 0))& "0000" & std_logic_vector(data14(11 downto 8)) & std_logic_vector(data14(7 downto 0)) & 
                 "0000" & std_logic_vector(data13(11 downto 8)) & std_logic_vector(data13(7 downto 0)) & "0000" & std_logic_vector(data12(11 downto 8)) & std_logic_vector(data12(7 downto 0));
	
    fvalid_led <= fval_shft;
	control_led <= control_data(0);
	
	cmd_grab_frame_sig <= control_data(0);
	rst_n_sig <= control_data(1);
	
	inst_clk_loop_ibufds: ibufds
	generic map (IOSTANDARD => "LVDS_25", DIFF_TERM => true )
	port map (i => clk_loop_p, ib => clk_loop_n, o => clk_loop_unbuf);
	
	inst_bufg_loop : bufg    port map (i => clk_loop_unbuf,  o => clk_loop );

    v_vid_in_axi4s_0_vid_in_clk_pin     <= pix_clk_sig;
    v_vid_in_axi4s_0_vid_de_pin         <= dval_shft;
    v_vid_in_axi4s_0_vid_vsync_pin      <= fval_shft;
    v_vid_in_axi4s_0_vid_data_pin       <= data0_shft;
    
    v_vid_in_axi4s_1_vid_in_clk_pin     <= pix_clk_sig;
    v_vid_in_axi4s_1_vid_de_pin         <= dval_shft;
    v_vid_in_axi4s_1_vid_vsync_pin      <= fval_shft;
    v_vid_in_axi4s_1_vid_data_pin       <= data1_shft;
    
    v_vid_in_axi4s_2_vid_in_clk_pin    <= pix_clk_sig;
    v_vid_in_axi4s_2_vid_de_pin        <= dval_shft;
    v_vid_in_axi4s_2_vid_vsync_pin     <= fval_shft;
    v_vid_in_axi4s_2_vid_data_pin      <= data2_shft;

    v_vid_in_axi4s_3_vid_in_clk_pin    <= pix_clk_sig;
    v_vid_in_axi4s_3_vid_de_pin        <= dval_shft;
    v_vid_in_axi4s_3_vid_vsync_pin     <= fval_shft;
    v_vid_in_axi4s_3_vid_data_pin      <= data3_shft;
 
    
end architecture STRUCTURE;
