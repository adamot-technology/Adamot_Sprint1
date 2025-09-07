CREATE DATABASE Adamotvi;

USE Adamotvi;

CREATE TABLE cliente (
id INT PRIMARY KEY AUTO_INCREMENT,

nome VARCHAR(50),
cnpj CHAR(14),
estado VARCHAR(50) -- adicionar email 
);

INSERT cliente (nome, cnpj, estado) VALUES
('fazzbear', '11653257000169', 'São Paulo'),
('Hie', '64603244000141', 'Rio de janeiro'),
('Cosco', '60137694000135' , 'Amazonas'),
('Perly', '50447914000173' , 'Rondonia'), 
('Lusk', '95461479000170', 'Amapa');

SELECT * FROM cliente;
DESC cliente;

CREATE TABLE arduino(
id INT PRIMARY KEY AUTO_INCREMENT,

entrada VARCHAR (60),
hAtivacao TIME, -- colocar hora que foi ativado
qtdPessoas INT 
);

INSERT arduino(entrada, hAtivacao, qtdPessoas) VALUES
('Estacionamento', '10:00', '5'),
('Principal', '10:15', '11'),
('Estação', '10:40', '9'),
('Estacionamento', '10:45', '4'),
('Estação', '11:00', '19');

SELECT * FROM arduino;
DESC info;

CREATE TABLE info( 
id INT PRIMARY KEY AUTO_INCREMENT,

cnjp CHAR(14),
email VARCHAR(30),
senha VARCHAR(15)
);

INSERT info (cnpj, email) VALUES 
('11653257000169', 'fazzbear@gmail.com'),
('64603244000141', 'hie@gmail.com'),
('60137694000135', 'Cosco@gmail.com'),
('50447914000173','Perly@gmail.com'),
('95461479000170', 'lusk@gmail.com');

ALTER TABLE info RENAME COLUMN cnjp to cnpj;

SELECT * FROM info;
desc info;
