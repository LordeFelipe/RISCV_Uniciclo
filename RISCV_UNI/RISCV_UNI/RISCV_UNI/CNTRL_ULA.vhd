LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
USE WORK.RV_PKG.ALL;

entity CNTRL_ULA is
	port(
		funct3 : in std_logic_vector(2 downto 0);
		funct7 : in std_logic_vector(6 downto 0);
		ula_cntrl : in std_logic_vector(1 downto 0);
		opcode : out ULA_OP
	);	
end CNTRL_ULA;

architecture CNTRL_ULA_arch of CNTRL_ULA is
	signal opcodeSignal : ULA_OP;
begin
	opcode <= opcodeSignal;
	process(funct3, funct7, ula_cntrl)
	begin
		case ula_cntrl is
			when "00" => opcodeSignal <= ADD_OP;
			when "01" => opcodeSignal <= SUB_OP;
			when "10" => 
				case funct3 is
					when "000" =>
						if(funct7 = "0000000") then opcodeSignal <= ADD_OP;
						elsif(funct7 = "0100000")then opcodeSignal <= SUB_OP;
						end if;
					when "001" => opcodeSignal <= SLL_OP;
					when "010" => opcodeSignal <= SLT_OP;
					when "011" => opcodeSignal <= SLTU_OP;
					when "100" => opcodeSignal <= XOR_OP;
					when "101" => 
						if(funct7 = "0000000") then opcodeSignal <= SRL_OP;
						elsif(funct7 = "0100000")then opcodeSignal <= SRA_OP;
						end if;
					when "110" => opcodeSignal <= OR_OP;
					when "111" => opcodeSignal <= AND_OP;
				end case;
			when "11" => 
			case funct3 is
				when "000" => opcodeSignal <= ADD_OP;
				when "001" => opcodeSignal <= SLL_OP;
				when "010" => opcodeSignal <= SLT_OP;
				when "011" => opcodeSignal <= SLTU_OP;
				when "100" => opcodeSignal <= XOR_OP;
				when "101" =>
					if(funct7 = "0000000") then opcodeSignal <= SRL_OP;
					elsif(funct7 = "0100000")then opcodeSignal <= SRA_OP;
					end if;
				when "110" => opcodeSignal <= OR_OP;
				when "111" => opcodeSignal <= AND_OP;
				end case;
			when others => opcodeSignal <= ADD_OP; 
		end case;
	end process;
end CNTRL_ULA_arch;