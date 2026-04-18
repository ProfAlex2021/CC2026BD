-- Acessar banco
USE db_ultima_aula
GO

-- Cadastrar linhas
-- Escolhendo apenas 2 colunas
INSERT INTO tbl_Aluno(alu_nome, alu_RA)
    VALUES('Alan', '123AS456')
GO

-- Usando todas as colunas (com valor nulo para IDENTITY)
INSERT INTO tbl_Aluno
    VALUES(NULL, 'Bianca', 'AS456QWE')
GO

-- Cadastrando mais de um registro
INSERT INTO tbl_Aluno
    VALUES
        (NULL, 'Carlos', '456QWE123'),
        (NULL, 'Diana', 'AS45QWE7'),
        (NULL, 'Edgar', 'A45S6QWE')
GO

