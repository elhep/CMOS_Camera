--vid_sig_formatter.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

--moduł zmieniający timingi sygnałów wideo
--wchodzi:
--	DVAL        ______________________   _____________________
--		  _|                      |_|                     |_
--	FVAL        ______________________________________________
--		  _|                                              |_
--	DATA        ______________________________________________
--		  _|                                              |_

--wychodzi
--	DVAL          ______________________   _____________________
--		  ___|                      |_|                     |___
--	FVAL        __________________________________________________
--		  _|                                                  |_
--	DATA          ______________________________________________
--		  ___|                                              |___

entity vid_sig_formatter is
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
end vid_sig_formatter;

architecture STRUCTURE of vid_sig_formatter is

type t_control_state is (s_INIT, s_1, s_2, s_3);
signal state_reg		: t_control_state:= s_INIT;
signal fval_out_sig : std_logic;
signal dval_reg : std_logic; 
signal data0_reg : std_logic_vector(63 downto 0);
signal data1_reg : std_logic_vector(63 downto 0);
signal data2_reg : std_logic_vector(63 downto 0);
signal data3_reg : std_logic_vector(63 downto 0);

begin
	fval_out <= fval_out_sig;

	process (pix_clk) 
	begin 
		if rising_edge(pix_clk) then 
			dval_reg <= dval; 
			data0_reg <= data0;
			data1_reg <= data1;
			data2_reg <= data2;
			data3_reg <= data3;

			dval_out <= dval_reg;
			data0_out <= data0_reg;
			data1_out <= data1_reg;
			data2_out <= data2_reg;
			data3_out <= data3_reg;
		end if;
	end process;

	process(pix_clk)
	begin
		if rising_edge(pix_clk) then
		fval_out_sig <= '0';

		case state_reg is
			when s_INIT =>
				if (fval = '1') then
					state_reg <= s_1;
					fval_out_sig <= '1';    						
				end if;
	
			when s_1 =>
				fval_out_sig <= '1';
				if (fval = '0') then
					state_reg <= s_2;
				end if;
	
			when s_2 =>
				fval_out_sig <= '1';
				state_reg <= s_INIT;
			
			when others =>
				state_reg <= s_INIT;
		end case;
		end if;
	end process;
end architecture structure;
