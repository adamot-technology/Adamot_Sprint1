
-- banco de dados grupo 02 adamot

CREATE DATABASE adamot;

USE adamot;

CREATE TABLE shopping(
	idShopping INT PRIMARY KEY AUTO_INCREMENT,
	nomeShopping VARCHAR(45),
    numeroTel CHAR(11)
);

CREATE TABLE cadastro(
	idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
	usuario VARCHAR(45),
    email VARCHAR(45) UNIQUE,
    cpf CHAR(11) UNIQUE,
    dtNasc DATE,
    primeiroNome VARCHAR(45),
    sobreNome VARCHAR(45),
    senha VARCHAR(45),
    cargo VARCHAR(45),
    fkShopping INT NOT NULL,
    CONSTRAINT fk_shop_cad FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping)
);

CREATE TABLE auditoria(
	idAuditoria INT,
    fkCadastro INT,
    CONSTRAINT pkAuditCad PRIMARY KEY (idAuditoria,fkCadastro),
    CONSTRAINT fk_Aud_Cad FOREIGN KEY (fkCadastro) REFERENCES cadastro(idCadastro),
    acesso VARCHAR(45),
    senha VARCHAR(45),
    dtAcesso DATETIME
);

CREATE TABLE entrada (
	idEntrada INT,
    fkShopping INT,
    CONSTRAINT pkEntShop PRIMARY KEY (idEntrada,fkShopping),
    CONSTRAINT fk_Ent_Shop FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping),
    nomeEntrada VARCHAR(45)
);

CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT,
    dtCaptura DATETIME,
    fkEntrada INT,
    CONSTRAINT fk_Sen_Ent FOREIGN KEY (fkEntrada) REFERENCES entrada(idEntrada)
);

CREATE TABLE endereco(
	idEndereco INT,
	fkShopping INT,
    constraint pkEndereco_Shopping
    primary key (idEndereco, fkShopping),
    cep CHAR(8),
    bairro VARCHAR(45),
    cidade CHAR(2),
    uf CHAR(2),
    numero CHAR(11),
    CONSTRAINT fk_End_Shop FOREIGN KEY (fkShopping) REFERENCES shopping(idShopping)
);

CREATE TABLE registro(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
registroSensor INT NOT NULL,
dtHora DATETIME,
fkSensor INT,
CONSTRAINT fk_Registro_Sensor FOREIGN KEY (fkSensor) REFERENCES sensor(idSensor)
);
