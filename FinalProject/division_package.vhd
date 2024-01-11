library ieee;
use ieee.std_logic_1164.all;

package division_package is
	component division
		port(clk:in std_logic;
			Dividend,Divisor:in std_logic_vector(7 downto 0);
			result:buffer std_logic_vector(7 downto 0));
	end component division;
end package division_package;