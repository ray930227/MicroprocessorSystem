library ieee;
use ieee.std_logic_1164.all;

package hex_package is
	component hex
		port( num:in std_logic_vector(3 downto 0);
				H:out std_logic_vector(0 to 6));
	end component hex;
end package hex_package;