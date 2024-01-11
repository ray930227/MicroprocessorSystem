library ieee;
use ieee.std_logic_1164.all;

package debounce_package is
	component debounce
		PORT (clock : IN STD_LOGIC;
			  btn : IN STD_LOGIC;
			  btn_debounce : OUT STD_LOGIC);
	end component debounce;
end package debounce_package;