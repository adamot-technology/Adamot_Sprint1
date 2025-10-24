-- banco de dados grupo 02 adamot

CREATE DATABASE adamot;

USE adamot;

CREATE TABLE shopping(
	idShopping INT PRIMARY KEY AUTO_INCREMENT,
	nomeShopping VARCHAR(45),
    numeroTel CHAR(11),
    cnpj char(14),
    token char(6)
);

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(45) UNIQUE,
    cpf CHAR(11) UNIQUE,
    senha VARCHAR(45),
    fkShopping INT NOT NULL,
    CONSTRAINT fk_shop_cad FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping)
);

CREATE TABLE auditoria(
	idAuditoria INT AUTO_INCREMENT,
    acesso VARCHAR(45),
    senha VARCHAR(45),
	fkCadastro INT,
    CONSTRAINT pkAuditCad PRIMARY KEY (idAuditoria,fkCadastro),
    CONSTRAINT fk_Aud_Cad FOREIGN KEY (fkCadastro) REFERENCES usuario(idUsuario)
);

CREATE TABLE entrada (
	idEntrada INT,
    fkShopping INT,
    CONSTRAINT pkEntShop PRIMARY KEY (idEntrada,fkShopping),
    CONSTRAINT fk_Ent_Shop FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping),
    nomeEntrada VARCHAR(45)
);

CREATE TABLE sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR (45),
    dtInstalacao DATETIME,
    dtManutencao DATETIME,
    fkEntrada INT,
    CONSTRAINT fk_Sen_Ent FOREIGN KEY (fkEntrada) REFERENCES entrada(idEntrada)
);

CREATE TABLE endereco(
	idEndereco INT AUTO_INCREMENT,
    cep CHAR(9),  
    bairro VARCHAR(45),
    cidade CHAR(2),
    uf CHAR(2),
    numero CHAR(11),
    fkShopping INT,
    CONSTRAINT pk_End_Shop PRIMARY KEY (idEndereco,fkShopping),
    CONSTRAINT fk_End_Shop FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping)
);  

CREATE TABLE registro(
idRegistro INT AUTO_INCREMENT,
valor INT,
dtHora DATETIME,
fkSensor INT,
CONSTRAINT pk_Reg_Sen PRIMARY KEY (idRegistro,fkSensor),
CONSTRAINT fk_Reg_Sen FOREIGN KEY (fkSensor) REFERENCES sensor(idSensor)
);

CREATE TABLE Fale_Conosco(
idFaleConosco INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
emailFaleConosco VARCHAR (45) UNIQUE,
mensagem VARCHAR (400),
fkRegistro INT
);

DROP DATABASE adamot;
