LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity CNTRL is 
	port(
		opcode: in std_logic_vector(6 downto 0);
		branch: out std_logic;
		memRead: out std_logic;
		mem2Reg: out std_logic;
		memWrite: out std_logic;
		ulaSrc: out std_logic;
		ulaOp: out std_logic_vector(6 downto 0);
		regWrite: out std_logic	
	);
end CNTRL;

architecture CNTRL_arch of CNTRL is

		signal opcode: std_logic_vector(6 downto 0);
		signal branch: std_logic;
		signal memRead: std_logic;
		signal mem2Reg: std_logic;
		signal memWrite: std_logic;
		signal ulaSrc: std_logic;
		signal ulaOp : std_logic_vector(6 downto 0);
		signal regWrite: std_logic;	
		
begin
	branch <= branch;
	memRead <= memRead;
	mem2Reg <= mem2Reg;
	memWrite <= memWrite;
	ulaSrc <= ulaSrc;
	ulaOp <= ulaOp;
	regWrite <= regWrite;
	
	process
	begin
		case opcode is
			when "0110011" => -- R_type  	
				branch <= 0;
				memRead <= 0;
				mem2Reg <= 0;
				memWrite <= 0;
				ulaSrc <= 0;
				ulaOp <= 10;
				regWrite <= 1;
			when "0000011" => --I_type load
				branch <= 0;
				memRead <= 1;
				mem2Reg <= 1;
				memWrite <= 0;
				ulaSrc <= 1;
				ulaOp <= 00;
				regWrite <= 1;
			when "0010011" => --I_type imediato
				branch <= 0;
				memRead <= 0;
				mem2Reg <= 1;
				memWrite <= 0;
				ulaSrc <= 1;
				ulaOp <= 11;
				regWrite <= 1;			
			when "1100111" => --I_type jalr
				--branch <= 1;
				--memRead <= 0;
				--mem2Reg <= 1;
				--memWrite <= 0;
				--ulaSrc <= 1;
				--ulaOp <= 00;
				--regWrite <= 1;			
			when "0100011" => --S_type
				branch <= 0;
				memRead <= 0;
				mem2Reg <= 0;
				memWrite <= 1;
				ulaSrc <= 1;
				ulaOp <= 00;
				regWrite <= 0;
			when "1100011" => --SB_type
				branch <= 1;
				memRead <= 0;
				mem2Reg <= 0;
				memWrite <= 0;
				ulaSrc <= 0;
				ulaOp <= 10;
				regWrite <= 0;
			when "0110111" =>  --U_type
				branch <= 0;
				memRead <= 0;
				mem2Reg <= 2; -- adicionar saida do gerador de imediatos pro mux :)
				memWrite <= 0;
				ulaSrc <= 0;
				ulaOp <= 00;
				regWrite <= 1;
			when "1101111" =>  --UJ_type
				branch <= 1;
				--jal <= 1; jump incondicional
				memRead <= 0;
				mem2Reg <= 0;
				memWrite <= 0;
				ulaSrc <= 0;
				ulaOp <= 00;
				regWrite <= 0;
			when others =>  
				branch <= 0;
				memRead <= 0;
				mem2Reg <= 0;
				memWrite <= 0;
				ulaSrc <= 0;
				ulaOp <= 0;
				regWrite <= 0;
			end case;
	end process;
end CNTRL_arch;