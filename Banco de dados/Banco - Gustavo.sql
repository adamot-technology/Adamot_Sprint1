CREATE DATABASE Adamot_Gustavo;

USE Adamot_Gustavo;

-- Armazena informações sobre os acessos do shopping.
CREATE TABLE entradas_shopping (
idEntrada INT PRIMARY KEY AUTO_INCREMENT,
nomeEntrada VARCHAR(50),
localizasao VARCHAR(100),
shopping VARCHAR(100)
);

INSERT INTO entradas_shopping VALUES 
(DEFAULT, 'Entrada do metrô', 'Proximo ao metrô', 'Shopping Tatuapé');

-- ---------------------------------------------------------------------------------------------------------------------------------

-- Para registrar ocorrências que afetam diretamente o fluxo de cada entrada.
CREATE TABLE eventos_entrada (
idEvento INT PRIMARY KEY AUTO_INCREMENT,
-- Qual a entrada do shopping
nomeEntrada VARCHAR(50),
-- Data e horario
dtEvento DATETIME,
-- Uma breve descrição do que aconteceu (manutenção, transito proximo, greve e etc)
descrisao VARCHAR(100),
-- Uma estimativa de variação no fluxo (%)
impactoFluxo DECIMAL (5,2)
);

INSERT INTO eventos_entrada VALUES 
(DEFAULT, 'Entrada Norte', '2025-07-04 11:30', 'Manutenção', 23.33);

SELECT * FROM eventos_entrada;
