LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.RV_PKG.all;

entity RISC_UNI is
	port(pc2: out std_logic_vector(31 downto 0);
			instr2 : out std_logic_vector(31 downto 0);
			clock: in std_logic := '0');
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
			A, B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			ZERO : OUT STD_LOGIC);
	end component;
	
	--Unidade de controle
	component CNTRL is
		PORT (
			opcode: in std_logic_vector(6 downto 0);
			branch: out std_logic;
			unconditional: out std_logic;
			jalr: out std_logic;
			memRead: out std_logic;
			mem2Reg: out std_logic_vector(1 downto 0);
			memWrite: out std_logic;
			ulaSrc: out std_logic;
			ulaOp: out std_logic_vector(1 downto 0);
			regWrite: out std_logic	
		);
	end component;
	
	component MEM_INST is
		PORT(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	end component;
	
	component MEM_DATA is
		PORT(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	end component;
	
	
	--Unidade de controle da ULA
	component CNTRL_ULA is
		PORT (
			funct3 : in std_logic_vector(2 downto 0);
			funct7 : in std_logic_vector(6 downto 0);
			ula_cntrl : in std_logic_vector(1 downto 0);
			opcode : out ULA_OP
		);	
	end component;
	
	--PC
	signal PCmais4 : std_logic_vector(31 downto 0);
	signal PC : std_logic_vector(31 downto 0) := X"00000000";
	
	--Clock
	--signal clock : std_logic;
	
	--Sinais do XREGS
	signal rs1, rs2, rd : std_logic_vector(4 downto 0);
	signal ro1, ro2 : std_logic_vector(31 downto 0);
	
	--Sinais do ImmGen
	signal instr: std_logic_vector(31 downto 0);
	signal imm32: signed(31 downto 0);
	
	--Sinais da ULA
	signal ulaA, ulaB, ulaOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal zero : std_logic;
	
	--Sinais da Controladora
	signal opcode: std_logic_vector(6 downto 0);
	signal branch: std_logic;
	signal jalr: std_logic;
	signal unconditional: std_logic;
	signal memRead: std_logic;
	signal mem2Reg: std_logic_vector(1 downto 0);
	signal memWrite: std_logic;
	signal ulaSrc: std_logic;
	signal ulaOp: std_logic_vector(1 downto 0);
	signal regWrite: std_logic;	
	
	--Sinais da Contoladora da ULA
	
	signal funct3 : std_logic_vector(2 downto 0);
	signal funct7 : std_logic_vector(6 downto 0);
	signal opcode_ULA : ULA_OP;
	
	--Sinais da memória de dados
	
	signal memDataOut : std_logic_vector(31 downto 0);
	signal dataWriteReg : std_logic_vector(31 downto 0);
	
	--Sinais do branch
	
	signal pcBranch : std_logic_vector(31 downto 0);
	signal pcNew : std_logic_vector(31 downto 0);
	signal pcJalr : std_logic_vector(31 downto 0);
	signal branchCond : std_logic_vector(1 downto 0);
	
	begin
	PC2 <= pc;
	instr2 <= instr;
	opcode <= instr(6 downto 0);
	RISCV_process : process(clock)
	begin
		if (rising_edge(clock)) then
			PC <= pcNew;
		end if;
	end process;
	
	--Memoria de instrucoes
	mem_i: MEM_INST
	port map(address => PC(9 downto 2),		
			clock => clock,
			data => X"00000000",
			wren => '0',
			q => instr
	);
	
	rs1 <= instr(19 downto 15);
	rs2 <= instr(24 downto 20);
	rd <= instr(11 downto 7);
	
	--Gerador de Imm
	gerador_imm: GEN_IMM32
	port map(
			instr => signed(instr),
			imm32 => imm32
	);
			
	--Banco de Registradores
	breg: XREGS
	port map(
		clk => clock,
		wren => RegWrite,
		rst => '0',
		rs1 => rs1,
		rs2 => rs2,
		rd => rd,
		data => dataWriteReg,
		ro1 => ro1,
		ro2 => ro2
	);
	
	--Contoladora
	contr: CNTRL
	port map(
		opcode => opcode,
		branch => branch,
		unconditional => unconditional,
		jalr => jalr,
		memRead => memRead,
		mem2Reg => mem2Reg,
		memWrite => memWrite,
		ulaSrc => ulaSrc,
		ulaOp => ulaOP,
		regWrite => regWrite	
	);
	
	--Mux da ULA
	with ulaSrc select
		ulaB 	<= ro2 when '0',
					std_logic_vector(imm32) when '1',
					ro2 when others;
	
	ulaA <= ro1;
	
	--ULA
	ula: ULA_RV
	port map(
		OPCODE => opcode_ULA,
		A => ulaA,
		B => ulaB,
		Z => ulaOut,
		ZERO => zero
	);
		
	--Conroladora da ULA
	funct3 <= instr(14 downto 12);
	funct7 <= instr(31 downto 25);
	
	ula_cnt: CNTRL_ULA
	port map(
		funct3 => funct3,
		funct7 => funct7,
		ula_cntrl => ulaOP, 
		opcode => opcode_ULA
	);
	
	--Memoria de dados
	mem_d: MEM_DATA
	port map(address => ulaOut(9 downto 2),	---Checar se é isso mesmo	
			clock => clock,
			data => ro2,
			wren => memWrite,
			q => memDataOut
	);
	
	--MUX memoria de dados
	with mem2Reg select
		dataWriteReg <= ulaOut when "00",
							 memDataOut when "01",
							 std_logic_vector(imm32) when "10",
							 pcMais4 when "11",
							 ulaOut when others;
	--Branch
	pcMais4 <= std_logic_vector(signed(pc) + 4);
	pcBranch <= std_logic_vector(signed(pc) + signed(shift_left(imm32,1)));
	pcJalr <= std_logic_vector((signed(pc) + signed(ulaOut)) and X"FFFFFFFE"); --mascara bit menos significativo 
	branchCond <= ('0' or jalr) & (branch and (ulaOut(0) or unconditional));
	
	--MUX do branch
	with branchCond select
		pcNew <= pcMais4 when "00",
					pcBranch when "01",
					pcJalr when "11",
					pcMais4 when others;
	
end RISC_arch;
