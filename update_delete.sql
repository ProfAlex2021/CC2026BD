-- Atualizando apenas o registro de código = -2
UPDATE tbl_Aluno SET
    alu_nome = 'Jones',
    alu_RA = '369BV258'
    WHERE
        alu_codigo = -2
GO

-- Excluindo apenas o registro de código = -3
DELETE FROM tbl_Aluno
    WHERE
        alu_codigo = -3
GO