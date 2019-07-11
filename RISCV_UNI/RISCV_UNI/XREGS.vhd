LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity XREGS is
	generic (WSIZE : natural := 32);
	port (
		clk, wren, rst : in std_logic;
		rs1, rs2, rd : in std_logic_vector(4 downto 0);
		data : in std_logic_vector(WSIZE-1 downto 0);
		ro1, ro2 : out std_logic_vector(WSIZE-1 downto 0));
end XREGS;

architecture arch_XREGS of XREGS is
	type XREGS_type is array(0 to 32) of std_logic_vector(31 downto 0);
	signal XREGS : XREGS_type;
begin
	process(clk, wren, rst, rs1, rs2, rd, data)
	begin
		if rising_edge(clk) then
			if wren = '1' then 
				XREGS(to_integer(unsigned(rd))) <= data;
				ro1 <= data;
				ro2 <= data;
			elsif wren = '0' then
				ro1 <= XREGS(to_integer(unsigned(rs1)));
				ro2 <= XREGS(to_integer(unsigned(rs2)));
			end if;
			if rst = '1' then
				for I in 0 to 31 loop
					XREGS(I) <= X"00000000";
				end loop;
			end if;
			XREGS(0) <= X"00000000";
		end if;
	end process;
end arch_XREGS;