create database adamot;
use adamot;

create table cadastro (
id int primary key auto_increment,
nome varchar(40),
cnpj varchar(14) not null,
estado varchar(2));

insert into cadastro (nome, cnpj, estado) values
('Shopping Metralha' ,'12345678901234', 'RJ'),
('Shopping Estress' ,'05819340100039', 'SP'),
('Estabelecimento Roda Roda' ,'83057205801724', 'BH'),
(null ,'83057205801724', 'MG');

select * from cadastro;

create table arduino (
id int primary key auto_increment,
nomeShop varchar (30),
localAd varchar (30),
tempoInicio datetime,
tempoFinal datetime,
total int);

insert into arduino (nomeShop, localAd, tempoInicio, tempoFinal) values
('Shopping Estress', 'Saída Sul', '2017-08-25 07:00:00', '2017-08-25 07:30:00'),
('Shopping Estress', 'Saída Estacionamento Norte', '2017-08-25 08:00:00', '2017-08-25 08:52:03'),
('Shopping Estress', 'Saída Metrô', '2017-10-25 12:00:00', '2017-10-25 12:50:00'),
('Shopping Estress', 'Saída Estacionamento Subsolo', '2017-12-20 08:59:00', '2017-12-20 09:40:00');

select * From arduino;

create table arduinoCont (
id int primary key auto_increment,
nomeShop varchar (30),
localAd varchar (30),
contagemPessoas int);

insert into arduinoCont (nomeShop, localAd, contagemPessoas) values
('Shopping Estress', 'Saída Sul', 50),
('Shopping Estress', 'Saída Estacionamento Norte', 75),
('Shopping Estress', 'Saída Metrô', 127),
('Shopping Estress', 'Saída Estacionamento Subsolo', 85);

select * From arduinoCont;