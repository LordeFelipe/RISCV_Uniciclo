LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.RV_PKG.all;

entity RISC_UNI is
end RISC_UNI;

architecture RISC_arch of RISC_UNI is
	--Banco de registradores 
	component XREGS is
		generic (WSIZE : natural := 32);
		port (
			clk, wren, rst : in std_logic;
			rs1, rs2, rd : in std_logic_vector(4 downto 0);
			data : in std_logic_vector(WSIZE-1 downto 0);
			ro1, ro2 : out std_logic_vector(WSIZE-1 downto 0));
	end component;
	--Gerador de imediatos
	component GEN_IMM32 is
		port( 
			instr: in signed(31 downto 0);
			imm32: out signed(31 downto 0)
			);
	end component;
	--ULA
	component ULA_RV is
		PORT (
			OPCODE : IN ULA_OP;
			A, B : IN STD_LOGIC_VECTOR(WSIZE-1 DOWNTO 0);
			Z : OUT STD_LOGIC_VECTOR(WSIZE-1 DOWNTO 0);
			ZERO : OUT STD_LOGIC);
	end component;
	
	component CNTRL is
		PORT (
			opcode: in std_logic_vector(6 downto 0);
			branch: out std_logic;
			memRead: out std_logic;
			mem2Reg: out std_logic;
			memWrite: out std_logic;
			ulaSrc: out std_logic;
			ulaOp: out std_logic_vector(6 downto 0);
			regWrite: out std_logic	
		);
	end component;
	
	component CNTRL_ULA is
		PORT (
			funct3 : in std_logic_vector(2 downto 0);
			funct7 : in std_logic_vector(6 downto 0);
			ula_cntrl : in std_logic_vector(1 downto 0);
			opcode : out ULA_OP
		);	
	end component;
	
	begin
	process
	begin

	end process;
end RISC_arch;
