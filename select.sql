-- Acessar banco
USE db_ultima_aula
GO

-- Consultando EXPLICITAMENTE todas as colunas da tabela Aluno
SELECT alu_codigo, alu_nome, alu_RA
    FROM tbl_Aluno

-- Consultando IMPLICITAMENTE todas as colunas da tabela Aluno
SELECT *
    FROM tbl_Aluno

-- Consultando apenas o registro de código = 1
SELECT *
    FROM tbl_Aluno
    WHERE
        alu_codigo = 1

-- Consultando apenas os registros que não tem código = 1
SELECT *
    FROM tbl_Aluno
    WHERE
        alu_codigo <> 1

-- Consultando EXPLICITAMENTE todos registros, alterando o nome da coluna
SELECT alu_codigo AS 'Código', alu_nome 'Nome', alu_RA AS 'RA'
    FROM tbl_Aluno

-- Consultando todos registros em que o RA começa com a letra A
SELECT *
    FROM tbl_Aluno
    WHERE
        alu_RA LIKE 'A%'

-- Consultando todos registros em que o Nome que termina com a letra A
SELECT *
    FROM tbl_Aluno
    WHERE
        alu_nome LIKE '%A'

-- Consultando todos registros em que o Nome que contenha a letra A
SELECT *
    FROM tbl_Aluno
    WHERE
        alu_nome LIKE '%A%'

-- Consultando todos os registros com nome em ordem alfabética
SELECT *
    FROM tbl_Aluno
    ORDER BY alu_nome ASC

-- Consultando todos os registros com código em ordem decrescente
SELECT *
    FROM tbl_Aluno
    ORDER BY alu_codigo DESC