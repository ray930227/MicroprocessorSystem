library ieee;
use ieee.std_logic_1164.all;

entity hex is 
port( num:in std_logic_vector(3 downto 0);
		H:out std_logic_vector(0 to 6));
end hex;

architecture func of hex is
begin
	with num select 
		H<="0000001" WHEN "0000",
			"1001111" WHEN "0001",
			"0010010" WHEN "0010",
			"0000110" WHEN "0011",
			"1001100" WHEN "0100",
			"0100100" WHEN "0101",
			"1100000" WHEN "0110",
			"0001111" WHEN "0111",
			"0000000" WHEN "1000",
			"0001100" WHEN "1001",
			"0001000" WHEN "1010",
			"1100000" WHEN "1011",
			"0110001" WHEN "1100",
			"1000010" WHEN "1101",
			"0110000" WHEN "1110",
			"0111000" WHEN "1111",
			"1111111" WHEN OTHERS;
end func;