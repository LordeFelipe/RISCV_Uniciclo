library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.RV_PKG.all;

entity RISC_UNI_tb is
	generic (WSIZE : natural := 32);
end RISC_UNI_tb;

architecture RISC_UNI_tb_arch of RISC_UNI_tb is
	--signals
	signal clock : std_logic := '0';
	signal PC2 : std_logic_vector(31 downto 0);
	signal instr2 : std_logic_vector(31 downto 0);
	constant clock_period: time := 40 ns;
	
	
	--Declaration of component
	component RISC_UNI is
		port(clock : in std_logic;
				PC2 : out std_logic_vector(31 downto 0);
				instr2 : out std_logic_vector(31 downto 0)
			  );
	end component;
	
--begin architecture
begin
	i1 : RISC_UNI
	port map (
				clock => clock,
				pc2 => pc2,
				instr2 => instr2
	);
	
	clk : process
	begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
	end process;
	
	init : process
	begin
		wait for clock_period*6;
		wait;
	end process;
end RISC_UNI_tb_arch;