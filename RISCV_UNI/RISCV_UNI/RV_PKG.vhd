PACKAGE RV_PKG IS

TYPE ULA_OP IS ( ADD_OP, SUB_OP, AND_OP, OR_OP, NOR_OP, XOR_OP, SLL_OP,
					  SRL_OP, SRA_OP, SLT_OP, SLTU_OP, SGE_OP, SGEU_OP, SEQ_OP,
					  SNE_OP);
					  
type FORMAT_RV is ( R_type, I_type_imm, I_type, S_type, SB_type, UJ_type, U_type );

END RV_PKG;

