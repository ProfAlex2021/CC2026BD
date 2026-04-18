CREATE TABLE tbl_Usuario(
    usu_nome VARCHAR(100) NOT NULL,
    usu_sistema CHAR(10) NULL
)
GO

CREATE TABLE tbl_App(
    app_nome VARCHAR(100) NOT NULL,
    app_sistema CHAR(10) NULL
)

INSERT INTO tbl_Usuario VALUES
    ('Mariana', 'Android'),
    ('Nivaldo', 'iOS'),
    ('Joaquim', 'Android'),
    ('Odair', NULL)
GO

INSERT INTO tbl_App VALUES
    ('WhatsApp', 'iOS'),
    ('Netflix', NULL),
    ('iFood', 'iOS'),
    ('Uber', 'Android')
GO

-- Consulta base para JOIN
SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario
    JOIN tbl_App

-- Consulta INNER JOIN (Usuario com mesmo sistema de App)
SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario U
    INNER JOIN tbl_App A
        ON U.usu_sistema = A.app_sistema

-- Consulta LEFT JOIN (Todos Usuarios com ou sem Sistema de App)
SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario U
    LEFT JOIN tbl_App A
        ON U.usu_sistema = A.app_sistema
        
SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario U
    LEFT JOIN tbl_App A
        ON U.usu_sistema = A.app_sistema
    WHERE
        A.app_sistema IS NULL

-- Consulta FULL OUTER JOIN (Todos Usuarios e App com ou sem Sistema)
SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario U
    FULL OUTER JOIN tbl_App A
        ON U.usu_sistema IS A.app_sistema

SELECT
    usu_nome 'Usuário',
    usu_sistema 'Sistema (U)',
    app_nome 'App',
    app_sistema 'Sistema (A)'
    FROM tbl_Usuario U
    FULL OUTER JOIN tbl_App A
        ON U.usu_sistema = A.app_sistema
    WHERE
        U.usu_sistema IS NULL OR
        A.app_sistema IS NULL

