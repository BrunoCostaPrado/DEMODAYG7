drop database chance;
create database if not exists chance;
use chance;
#create table if not exists autonomo(cpf integer primary key, nome_completo varchar(100), email varchar(100), empresa varchar(100), cidade varchar(100), profissao varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), gender varchar(100), endereco varchar(100));
#create table if not exists cliente(cpf integer primary key , nome_completo varchar(100), email varchar(100), cidade varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), genero varchar(100), endereco varchar(100));
#create table if not exists funcionario(cpf integer primary key , nome_completo varchar(100), email varchar(100), cidade varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), genero varchar(100), pis integer, RG integer, endereco varchar(100), CTPS varchar(100));
#create table if not exists servico(tipo varchar(100), datas integer, quantidade integer);
#create table if not exists pagamento(id_pagamento integer primary key, pix varchar(80),credito varchar(80),debito varchar(80),tranferencia varchar(150),boleto varchar(100));
#show tables



CREATE TABLE CadastoAutonomo (
Nome VARCHAR(80),
Estado VARCHAR(30),
Telefone INTEGER,
Genero VARCHAR(20),
Empresa VARCHAR(80),
Email VARCHAR(100),
CPF INTEGER,
Cidade VARCHAR(50),
Profissão VARCHAR(50),
CNPJ INTEGER,
CEP INTEGER,
DataNasc INTEGER,
Estado_Civil VARCHAR(20),
PRIMARY KEY(CPF,CNPJ)
);

CREATE TABLE CadastroCliente (
Endereço VARCHAR(50),
Genero VARCHAR(20),
Email VARCHAR(40),
Nome VARCHAR(100),
Telefone INTEGER,
CPF INTEGER PRIMARY KEY,
Estado VARCHAR(40),
Cidade VARCHAR(50),
CEP INTEGER,
Estado_Civil VARCHAR(40),
DataNasc INTEGER,
IDPagamento VARCHAR(10)
);

CREATE TABLE Pagamento (
PIX VARCHAR(100),
Boleto INTEGER,
Credito INTEGER,
Debito INTEGER,
IDPagamento integer PRIMARY KEY auto_increment,
Transferencia INTEGER,
PicPay VARCHAR(100)
);

CREATE TABLE Funcionario (
CPF INTEGER PRIMARY KEY,
Email VARCHAR(100),
Endereço VARCHAR(100),
RG VARCHAR(10),
Titulo_Eleitor INTEGER,
CTPS INTEGER,
Foto VARCHAR(10),
Certidão_Criança VARCHAR(100),
Reservista INTEGER,
PIS INTEGER,
Nome VARCHAR(100),
Vacinação_Criança VARCHAR(30),
Telefone INTEGER,
Historico_Escolar VARCHAR(30),
Antecedente_Criminais VARCHAR(10)
);

CREATE TABLE Serviço (
Tipo VARCHAR(80),
Data INTEGER,
Quantidade INTEGER,
IdServiço INTEGER PRIMARY KEY
);


CREATE TABLE Solicitar (
    IdServiço INTEGER,
    CPF INTEGER,
    FOREIGN KEY (IdServiço)
        REFERENCES Serviço (IdServiço),
    FOREIGN KEY (CPF)
        REFERENCES CadastroCliente (CPF)
);




CREATE TABLE Prove (
    CPF INTEGER,
    IdServiço INTEGER,
    FOREIGN KEY (CPF)
        REFERENCES Funcionario (CPF),
    FOREIGN KEY (IdServiço)
        REFERENCES Serviço (IdServiço)
);

CREATE TABLE Pagar (
    IDPagamento integer,
    FOREIGN KEY (IDPagamento)
        REFERENCES Pagamento (IDPagamento),
        CPF INTEGER,
    CNPJ INTEGER,
    FOREIGN KEY (CNPJ)
        REFERENCES CadastoAutonomo (CNPJ,CPF)
);


CREATE TABLE Prover (
    IdServiço INTEGER, CPF INTEGER, CNPJ INTEGER, FOREIGN KEY (IdServiço) REFERENCES Serviço (IdServiço), FOREIGN KEY (CNPJ) REFERENCES CadastoAutonomo (CPF , CNPJ));
show tables;