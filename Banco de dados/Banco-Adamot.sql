-- GRUPO 1 - TABELAS

create database adamot;
use adamot;

create table usuario (
idUsuario int primary key auto_increment, 
nome varchar(50) not null,
email varchar (50) not null,
cnpj char(18) not null,
telefone char(13),
cep char(9),
qtdSensores int
);

insert into usuario (nome, email, cnpj, telefone, cep, qtdSensores) values
('David Castro','davidcastro@gmail.com', '77.637.684/0001-61', '11 99920-0345','04256-025', '4'),
('Leandro Assunção','leandroassuncao@gmail.com', '06.662.892/0001-72', '11 98790-2345', '08971-202', '3'),
('Mauricio Antonio','mauricioantonio@gmail.com', '85.606.575/0001-05', '11 99727-9190','02478-002', '5');

select * from usuario;

describe usuario;

create table sensor (
idSensor int primary key auto_increment, 
shopping varchar(50),
saida varchar(50),
posicao varchar (50),
modelo varchar (20)
);

insert into sensor (shopping, saida, posicao, modelo) values
('Shopping Estress', 'Saída Sul', 'Teto', 'Ultrassonico'),
('Shopping Estress', 'Saída Metrô', 'Teto', 'Ultrassonico'),
('Shopping Estress', 'Saída Estacionamento Norte', 'Lado esquerdo', 'Ultrassonico'),
('Shopping Estress', 'Saída Estacionamento Subsolo', 'Ladoesquerdo', 'Ultrassonico');

select * from sensor;

describe sensor;

create table historicoSensor (
idHistorico int primary key auto_increment,
hora datetime,
detectar INT
);

insert into historicoSensor (hora, detectar) values
('2025-02-09 12:30:00', 0),
('2025-02-09 17:00:00', 1),
('2025-02-09 20:00:00', 1);

select * from historicoSensor;

describe historicoSensor;
