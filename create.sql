-- Acessar banco
USE db_ultima_aula
GO

-- Criar tabela
CREATE TABLE tbl_Aluno(
    alu_codigo INT IDENTITY(1, 1) PRIMARY KEY,
    alu_nome VARCHAR(100) NOT NULL,
    alu_RA CHAR(8) NOT NULL
)
GO