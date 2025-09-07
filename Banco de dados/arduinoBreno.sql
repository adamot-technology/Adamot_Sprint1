create database adamotBreno;
use adamotBreno;

create table cadastro (
idCadastro int primary key auto_increment, 
nome varchar(50),
email varchar (50),
cnpj char(18),
senha varchar(20)
);

insert into cadastro (nome, email, cnpj, senha) values
('David Castro','davidcastro@gmail.com', '77.637.684/0001-61', '*************'),
('Leandro Assunção','leandroassuncao@gmail.com', '06.662.892/0001-72', '***********'),
('Mauricio Antonio','mauricioantonio@gmail.com', '85.606.575/0001-05', '***************');

select * from cadastro;

create table localArduino (
idlocalArduino int primary key auto_increment, 
shopping varchar(50),
nome_local varchar(50),
modelo varchar (20),
posicao varchar (50)
);

insert into localArduino (shopping, nome_local, modelo, posicao) values
('Shopping Estress', 'Saída Sul', 'Ultrassonico', 'Teto'),
('Shopping Estress', 'Saída Metrô', 'Ultrassonico', 'Teto'),
('Shopping Estress', 'Saída Estacionamento Norte', 'Ultrassonico', 'Lado esquerdo'),
('Shopping Estress', 'Saída Estacionamento Subsolo', 'Ultrassonico', 'Lado esquerdo');

select * from localArduino;

create table contagemArduino (
idcontagemArduino int primary key auto_increment,
horarioentrada datetime,
horariosaida datetime,
contagemPessoas int
);

insert into contagemArduino (horarioentrada, horariosaida, contagemPessoas) values
('2025-02-09 06:00:00', '2025-02-09 07:30:00', 50),
('2025-02-09 12:30:00', '2025-02-09 14:00:00', 127),
('2025-02-09 17:00:00', '2025-02-09 18:30:00', 75 ),
('2025-02-09 19:30:00', '2025-02-09 21:00:00', 85);

select * From contagemArduino;