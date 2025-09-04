CREATE DATABASE Adamot_Kirie;
USE Adamot_Kirie;
-- -----------------------------------------------------------------------------------------------------------
-- CADASTRO

CREATE TABLE CadastroAdamot (
id INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(40),
CPF CHAR(11) NOT NULL,
Cargo VARCHAR(60));

INSERT INTO CadastroAdamot (Nome, CPF, Cargo) VALUES
('Bruna','41874640009','Design'),
('Gleidson','97078215079','Marketing'),
('Breno','23269705000','Developer'),
('Gustavo','90429979070','Gestão'),
('Vinicius','25222969061','Manutenção'),
('Kiriê','73429957036','Pesquisa');

ALTER TABLE CadastroAdamot ADD CONSTRAINT chkCargo CHECK (Cargo IN 
('Design','Marketing','Developer','Gestão','Manutenção', 'Pesquisa'));

SELECT * FROM CadastroAdamot;
-- ------------------------------------------------------------------------------------------------------------
-- GESTÃO

CREATE TABLE DadosCliente (
id INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (60),
Shopping VARCHAR(40),
CNPJ CHAR(14) NOT NULL,
Email VARCHAR(60) NOT NULL,
Telefone CHAR(13),
Região VARCHAR(15),
Integrações VARCHAR(10),
QtdSensores INT);

INSERT INTO DadosCliente (Nome, Shopping, CNPJ, Email, Telefone, Região, Integrações, QtdSensores) VALUES
('Carlos Afonso','Metro Tatuape','63606754000100','cafonso@hotmail.com.br','11 91234-8765','ZL','M',25),
('Fabiana Gianini','Central Plaza','71718045000144','fabigia@gmail.com','11 9978-3468','ZL','M',22),
('Bruno Bocardi','Boulevard Tatuape', '43656049000100','bbcardi@outlook.com','11 9655-4728','ZL','M',30),
('Antonio Soprano','Analia Franco', '01956264000186','tonysoprano@gmail.com','11 96759-2255','ZL',null,20);

SELECT * FROM DadosCliente;
-- ------------------------------------------------------------------------------------------------------------
-- MONITORAMENTO

CREATE TABLE FluxDia_Arduino (
idHora INT PRIMARY KEY AUTO_INCREMENT,
Hora VARCHAR(7),
Dom INT,
Seg INT,
Ter INT,
Qua INT,
Qui INT,
Sex INT,
Sab INT);
DROP TABLE FluxDia_Arduino;

INSERT INTO FluxDia_Arduino (Hora, Dom, Seg, Ter, Qua, Qui, Sex, Sab) VALUES
('10h-11h',10,6,7,9,11,10,14),
('11h-12h',13,7,8,11,11,13,20),
('12h-13h',29,13,14,19,20,22,31),
('13h-14h',23,10,11,15,11,13,36),
('14h-15h',40,9,10,11,12,13,30),
('15h-16h',55,7,5,11,13,12,39),
('16h-17h',59,3,7,16,11,13,44),
('17h-18h',43,8,5,12,17,19,48),
('18h-19h',37,11,12,11,14,22,50),
('19h-20h',39,14,15,11,13,26,42),
('20h-21h',24,12,13,14,16,29,39),
('21h-22h',22,11,8,15,18,25,33);

SELECT * FROM FluxDia_Arduino;