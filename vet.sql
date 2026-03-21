-- Criar banco de dados
CREATE DATABASE db_Clinica_Veterinaria
GO

-- Acessar o arquivo criado
USE db_Clinica_Veterinaria
GO
-- Criar tabelas Forte / Independente / Pai / Mestre
CREATE TABLE tbl_Veterinario(
    vet_Nome_Completo NVARCHAR(100) NOT NULL,
    vet_CPF BIGINT NOT NULL,
    vet_CRMV INT NOT NULL PRIMARY KEY,
    vet_Especialidade NVARCHAR(50) NULL,
    vet_Telefone BIGINT NOT NULL,
    vet_Email NVARCHAR(50) NOT NULL
)
GO

-- Tabela Consulta (sem chaves)
CREATE TABLE tbl_Consulta(
    con_valor MONEY NOT NULL,
    con_diagnostico NVARCHAR(MAX) NOT NULL,
    con_motivo NVARCHAR(MAX) NOT NULL,
    con_data DATE NOT NULL,
    con_horario TIME NOT NULL
)
GO

-- Adicionar a coluna de código da Consulta
ALTER TABLE tbl_Consulta
    ADD con_codigo INT IDENTITY(1,1)
GO

-- Adicionar a restrição de chave primária em Consulta
ALTER TABLE tbl_Consulta
    ADD CONSTRAINT pk_Consulta
        PRIMARY KEY con_codigo
GO

-- Adicionar coluna Veterinário na tabela Consulta
ALTER TABLE tbl_Consulta
    ADD con_veterinario INT NOT NULL
GO

-- Adicionar restrição em Consulta para Veterinário
ALTER TABLE tbl_Consulta
    ADD CONSTRAINT fk_con_vet
        FOREIGN KEY(con_veterinario)
        REFERENCES tbl_Veterinario(vet_CRMV)
GO

-- Apagar tabela para construir novamente
DROP TABLE tbl_Consulta
GO

-- Código alternativo da tabela Consulta (restrições nomeadas)
CREATE TABLE IF NOT EXISTS tbl_Consulta(
    con_codigo INT IDENTITY(1,1),
    con_valor MONEY NOT NULL,
    con_diagnostico NVARCHAR(MAX) NOT NULL,
    con_motivo NVARCHAR(MAX) NOT NULL,
    con_data DATE NOT NULL,
    con_horario TIME NOT NULL,
    CONSTRAINT pk_Consulta,
        PRIMARY KEY (con_codigo),
    CONSTRAINT fk_con_vet
        FOREIGN KEY (con_veterinario)
        REFERENCES tbl_Veterinario(vet_CRMV)
)
GO

-- Apagar tabela para construir novamente
DROP TABLE tbl_Consulta
GO

-- Código abreviado da tabela Consulta (restrições anônimas)
CREATE TABLE IF NOT EXISTS tbl_Consulta(
    con_codigo INT IDENTITY(1,1) PRIMARY KEY,
    con_valor MONEY NOT NULL,
    con_diagnostico NVARCHAR(MAX) NOT NULL,
    con_motivo NVARCHAR(MAX) NOT NULL,
    con_data DATE NOT NULL,
    con_horario TIME NOT NULL,
    con_veterinario INT
        FOREIGN KEY (con_veterinario)
        REFERENCES tbl_Veterinario(vet_CRMV)
)
GO