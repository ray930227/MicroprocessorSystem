library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity division is
	port(clk:in std_logic;
		  Dividend,Divisor:in std_logic_vector(7 downto 0);
		  result:out std_logic_vector(7 downto 0));
end;

architecture func of division is
	type FSM_State is(s0,s1,s2a,s2b,s3,s4);
	signal state:FSM_State;
	signal div,Remainder:std_logic_vector(15 downto 0);
	signal count:integer range 0 to 15;
	signal Quot:std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(state=s0) then
				Remainder<="00000000"&Dividend;
				div<=Divisor&"00000000";
				Quot<="00000000";
				count<=0;
				state<=s1;
			elsif(state=s1) then
				if(Remainder>=div) then 
					Remainder<=Remainder-div;
					state<=s2a;
				else
					state<=s2b;
				end if;
			elsif(state=s2a) then
				Quot<=Quot(6 downto 0)&"1";
				state<=s3;
			elsif(state=s2b) then
				Quot<=Quot(6 downto 0)&"0";
				state<=s3;
			elsif(state=s3) then
				div<="0"&div(15 downto 1);
				count<=count+1;
				if(count<8) then
					state<=s1;
				else
					state<=s4;
				end if;
			else
				result<=Quot;
				state<=s0;
			end if;
		end if;
	end process;
end; 