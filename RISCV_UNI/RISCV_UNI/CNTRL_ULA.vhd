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
	signal opcode : ULA_OP;
begin
	opcode <= opcode;
	process
	begin
		case ula_cntrl is
			when "00" => opcode <= ADD_OP;
			when "01" => opcode <= SUB_OP;
			when "10" => 
				case funct3 is
					when "000" =>
						case funct7 is
							when "0000000" => opcode <= ADD_OP;
							when "0100000" => opcode <= SUB_OP;
						end case;
					when "001" => opcode <= SLL_OP;
					when "010" => opcode <= SLT_OP;
					when "011" => opcode <= SLTU_OP;
					when "100" => opcode <= XOR_OP;
					when "101" => 
						case funct7 is
							when "0000000" => opcode <= SRL_OP;
							when "0100000" => opcode <= SRA_OP;
						end case;
					when "110" => opcode <= OR_OP;
					when "111" => opcode <= AND_OP;
				end case;
			when "11" => 
			case funct3 is
				when "000" => opcode <= ADD_OP;
				when "001" => opcode <= SLL_OP;
				when "010" => opcode <= SLT_OP;
				when "011" => opcode <= SLTU_OP;
				when "100" => opcode <= XOR_OP;
				when "101" => 
					case funct7 is
						when "0000000" => opcode <= SRL_OP;
						when "0100000" => opcode <= SRA_OP;
					end case;
				when "110" => opcode <= OR_OP;
				when "111" => opcode <= AND_OP;
				end case;
			when others => opcode <= ADD_OP; 
		end case;
	end process;
end CNTRL_ULA_arch;