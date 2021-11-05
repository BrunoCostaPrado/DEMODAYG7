create database if not exists chance;
use chance;
create table if not exists autonomo(cpf integer primary key, nome_completo varchar(100), email varchar(100), empresa varchar(100), cidade varchar(100), profissao varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), gender varchar(100), endereco varchar(100));
create table if not exists cliente(cpf integer primary key , nome_completo varchar(100), email varchar(100), cidade varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), genero varchar(100), endereco varchar(100));
create table if not exists funcionario(cpf integer primary key , nome_completo varchar(100), email varchar(100), cidade varchar(100), estado_civil varchar(100), data_nasc integer, cep integer, telefone integer, estado varchar(100), genero varchar(100), pis integer, RG integer, endereco varchar(100), CTPS varchar(100));
create table if not exists servico(tipo varchar(100), datas integer, quantidade integer);
create table if not exists pagamento(id_pagamento integer primary key, pix varchar(80),credito varchar(80),debito varchar(80),tranferencia varchar(150),boleto varchar(100));
show tables
