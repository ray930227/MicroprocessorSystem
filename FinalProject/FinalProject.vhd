library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.hex_package.all;
use work.debounce_package.all;
use work.division_package.all;

entity FinalProject is
	port( inputData:in std_logic_vector(7 downto 0);
			op:in std_logic_vector(3 downto 0);
			rs,rt:in integer range 0 to 3;
			clk,btn:in std_logic;
			sel:in integer range 0 to 3;
			HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7:out std_logic_vector(0 to 6);
			hazard:out std_logic;
			cycle:buffer std_logic_vector(3 downto 0));
end;

architecture func of FinalProject is
	type register1 is array(0 to 3) of std_logic_vector(7 downto 0);
	signal reg:register1;
	signal IF_data,ID_data,EXE_data,result,divResullt:std_logic_vector(7 downto 0);
	signal IF_op,ID_op, EXE_op, WB_op:std_logic_vector(3 downto 0):="1111";
	signal IF_rs,IF_rt,ID_rs,ID_rt, EXE_rs, EXE_rt, WB_rs:integer range 0 to 3;
	signal btn_debounce:std_logic:='0';
begin
	btnDebounce:debounce port map(clk,btn,btn_debounce);
	div:division port map(clk,reg(EXE_rs),reg(EXE_rt),divResullt);
	
	IF_stage:process(btn_debounce)
	begin
		if rising_edge(btn_debounce) then
			IF_op <= op;
			IF_rs <= rs;
			IF_rt <=  rt;
			IF_data <= inputData;
		end if;
	end process;

	ID_stage:process(btn_debounce)
	begin
		if rising_edge(btn_debounce) then
			ID_op <= IF_op;
			ID_rs <= IF_rs;
			ID_rt <= IF_rt;
			ID_data <= IF_data;
		end if;
	end process;

	EXE_stage:process(btn_debounce,clk)
	begin
		if rising_edge(btn_debounce) then
			EXE_op <= ID_op;
			EXE_rs <= ID_rs;
			EXE_rt <= ID_rt;
			EXE_data <= ID_data;
		end if;
		
		if rising_edge(clk) then
			if EXE_op="0000" then
				result <= EXE_data;
			elsif EXE_op="0001" then	--Move
				result <= reg(EXE_rt);
			elsif EXE_op="0010" then	--Add
				result <= reg(EXE_rs) + reg(EXE_rt);
			elsif EXE_op="0011" then	--Sub
				result <= reg(EXE_rs) - reg(EXE_rt);
			elsif EXE_op="0100" then	--And
				result <= reg(EXE_rs) AND reg(EXE_rt);
			elsif EXE_op="0101" then	--Or
				result <= reg(EXE_rs) OR reg(EXE_rt);
			elsif EXE_op="0110" then	--Nor
				result <= reg(EXE_rs) NOR reg(EXE_rt);
			elsif EXE_op="0111" then	--Slt
				if (reg(EXE_rs) < reg(EXE_rt)) then
					result <= "00000001";
				else
					result <= "00000000";
				end if;
			elsif EXE_op="1000" then	--Div
				result <= divResullt;
			else	--None
				result <= result;
			end if;
		end if;

	end process;
	
	WB_stage:process(btn_debounce)
	begin
		if rising_edge(btn_debounce) then
			WB_op <= EXE_op;
			WB_rs <= EXE_rs;
			reg(EXE_rs) <= result;		
		end if;
	end process;
	
	Cycle_LED:process(btn_debounce,op)
	begin
		if(op="1111")then
			cycle(0)<='0';
		else
			cycle(0)<='1';
		end if;
		
		if(rising_edge(btn_debounce)) then
			cycle(3 downto 1)<=cycle(2 downto 0);
		end if;
	end process;
	
	hazard<='1' when EXE_op/="1111" and WB_op/="1111" and (WB_rs=EXE_rs or WB_rs=EXE_rt) else '0';

	
	print0:hex port map(inputData(3 downto 0),HEX0);
	print1:hex port map(inputData(7 downto 4),HEX1);
	print2:hex port map(result(3 downto 0),HEX2);
	print3:hex port map(result(7 downto 4),HEX3);
	print4:hex port map(reg(EXE_rt)(3 downto 0),HEX4);
	print5:hex port map(reg(EXE_rt)(7 downto 4),HEX5);
	print6:hex port map(reg(sel)(3 downto 0),HEX6);
	print7:hex port map(reg(sel)(7 downto 4),HEX7);
end; 