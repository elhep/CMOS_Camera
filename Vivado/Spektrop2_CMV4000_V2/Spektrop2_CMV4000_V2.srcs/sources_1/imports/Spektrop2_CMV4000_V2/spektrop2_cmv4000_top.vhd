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
    LED0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;

    
-- Zynq Processing System signals
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );

end spektrop2_cmv4000_top;

architecture STRUCTURE of spektrop2_cmv4000_top is

  component system_wrapper is
  port (
          FCLK_50M_CLK : out STD_LOGIC;
          FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
          FIXED_IO_ps_clk : inout STD_LOGIC;
          FIXED_IO_ps_porb : inout STD_LOGIC;
          FIXED_IO_ps_srstb : inout STD_LOGIC
  );
  end component;
 
  signal led0_o : std_logic;
  signal led1_o : std_logic;
  signal ps_50m_clk             : std_logic;
  signal led_counter            : unsigned(31 downto 0);
  constant LED_COUNTER_MAX      : natural := 50000000;
  
begin

   system_wrapper_i : system_wrapper 
   port map (
        FIXED_IO_mio => FIXED_IO_mio,
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
        FCLK_50M_CLK => ps_50m_clk
    );

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


end STRUCTURE;
