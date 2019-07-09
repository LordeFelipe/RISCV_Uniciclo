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
		ulaOp: out std_logic_vector(1 downto 0);
		regWrite: out std_logic	
	);
end CNTRL;

architecture CNTRL_arch of CNTRL is

		signal branchSignal: std_logic;
		signal memReadSignal: std_logic;
		signal mem2RegSignal: std_logic;
		signal memWriteSignal: std_logic;
		signal ulaSrcSignal: std_logic;
		signal ulaOpSignal : std_logic_vector(1 downto 0);
		signal regWriteSignal: std_logic;	
		
begin
	branch <= branchSignal;
	memRead <= memReadSignal;
	mem2Reg <= mem2RegSignal;
	memWrite <= memWriteSignal;
	ulaSrc <= ulaSrcSignal;
	ulaOp <= ulaOpSignal;
	regWrite <= regWriteSignal;
	
	process(opcode)
	begin
		case opcode is
			when "0110011" => -- R_type  	
				branchSignal <= '0';
				memReadSignal <= '0';
				mem2RegSignal <= '0';
				memWriteSignal <= '0';
				ulaSrcSignal <= '0';
				ulaOpSignal <= "10";
				regWriteSignal <= '1';
			when "0000011" => --I_type load
				branchSignal <= '0';
				memReadSignal <= '1';
				mem2RegSignal <= '1';
				memWriteSignal <= '0';
				ulaSrcSignal <= '1';
				ulaOpSignal <= "00";
				regWriteSignal <= '1';
			when "0010011" => --I_type imediato
				branchSignal <= '0';
				memReadSignal <= '0';
				mem2RegSignal <= '1';
				memWriteSignal <= '0';
				ulaSrcSignal <= '1';
				ulaOpSignal <= "11";
				regWriteSignal <= '1';			
			when "1100111" => --I_type jalr
				--branchSignal <= 1;
				--memReadSignal <= 0;
				--mem2RegSignal <= 1;
				--memWriteSignal <= 0;
				--ulaSrcSignal <= 1;
				--ulaOpSignal <= 00;
				--regWriteSignal <= 1;			
			when "0100011" => --S_type
				branchSignal <= '0';
				memReadSignal <= '0';
				mem2RegSignal <= '0';
				memWriteSignal <= '1';
				ulaSrcSignal <= '1';
				ulaOpSignal <= "00";
				regWriteSignal <= '0';
			when "1100011" => --SB_type
				branchSignal <= '1';
				memReadSignal <= '0';
				mem2RegSignal <= '0';
				memWriteSignal <= '0';
				ulaSrcSignal <= '0';
				ulaOpSignal <= "10";
				regWriteSignal <= '0';
			when "0110111" =>  --U_type
				branchSignal <= '0';
				memReadSignal <= '0';
				mem2RegSignal <= '0'; -- adicionar saida do gerador de imediatos pro mux :) TA ERRADO ISSO AQUI
				memWriteSignal <= '0';
				ulaSrcSignal <= '0';
				ulaOpSignal <= "00";
				regWriteSignal <= '1';
			when "1101111" =>  --UJ_type
				branchSignal <= '1';
				--jal <= 1; jump incondicional
				memReadSignal <= '0';
				mem2RegSignal <= '0';
				memWriteSignal <= '0';
				ulaSrcSignal <= '0';
				ulaOpSignal <= "00";
				regWriteSignal <= '0';
			when others =>  
				branchSignal <= '0';
				memReadSignal <= '0';
				mem2RegSignal <= '0';
				memWriteSignal <= '0';
				ulaSrcSignal <= '0';
				ulaOpSignal <= "00";
				regWriteSignal <= '0';
			end case;
	end process;
end CNTRL_arch;