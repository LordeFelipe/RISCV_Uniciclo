library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.RV_PKG.all;

entity GEN_IMM32 is
	port( 
			instr: in signed(31 downto 0);
			imm32: out signed(31 downto 0)
			);
end GEN_IMM32;

architecture GEN_arch of GEN_IMM32 is
signal opcode: FORMAT_RV;
signal zeros: signed(31 downto 0);
begin
	process(instr, opcode)
	begin
		--Identifica o tipo
		case instr(6 downto 0) is
			when "0110011" => opcode <= R_type;
			when "0000011" | "1100111" => opcode <= I_type;
			when "0010011" => opcode <= I_type_imm;
			when "0100011" => opcode <= S_type;
			when "1100011" => opcode <= SB_type;
			when "0110111" => opcode <= U_type;
			when "1101111" => opcode <= UJ_type;
			when others => opcode <= R_type;
		end case;
		--Extrai o imediato da instrução de acordo com o tipo
		case opcode is
			when R_type => imm32 <= x"00000000";
			when I_type => 
				imm32(11 downto 0) <= instr(31 downto 20);
				imm32(31 downto 12) <= SHIFT_RIGHT(instr, 20)(31 downto 12);
			when I_type_imm => 
				case instr(14 downto 12) is
					when "000" | "010" | "011" | "100" | "110" | "111" =>
						imm32(11 downto 0) <= instr(31 downto 20);
						imm32(31 downto 12) <= SHIFT_RIGHT(instr, 20)(31 downto 12);
					when "001" | "101" => -- Caso que precisa do shamt
						imm32(4 downto 0) <= instr(24 downto 20);
						imm32(31 downto 5) <= SHIFT_RIGHT(instr, 27)(31 downto 5);
					when others =>
						imm32(4 downto 0) <= instr(24 downto 20);
						imm32(31 downto 5) <= SHIFT_RIGHT(instr, 27)(31 downto 5);
				end case;
			when S_type => 
				imm32(11 downto 0) <= instr(31 downto 25) & instr(11 downto 7);
				imm32(31 downto 12) <= SHIFT_RIGHT(instr, 20)(31 downto 12);
			when SB_type =>
				imm32(12 downto 0) <= instr(31) & instr(7) & instr(30 downto 25) & instr(11 downto 8) & '0';
				imm32(31 downto 13) <= SHIFT_RIGHT(instr, 19)(31 downto 13);
			when UJ_type => 
				imm32(20 downto 0) <= instr(31) & instr(19 downto 12) & instr(20) & instr(30 downto 21) & '0';
				imm32(31 downto 21) <= SHIFT_RIGHT(instr, 11)(31 downto 21);
			when U_type =>
				imm32(31 downto 12) <= instr(31 downto 12);
				imm32(11 downto 0) <= x"000"; 
			when others => imm32 <= x"00000000";
		end case;
	end process;
end GEN_arch;