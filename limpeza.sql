create database limpeza;

-- ativar banco de dados
use limpeza;

-- criar tabela
create table clientes (
cod_cliente int,
nome_cliente varchar(255),
cpf_cliente varchar(18),
celular varchar(14),
endereco varchar(255)
);

create table produtos(
cod_produto int,
nome_produto varchar (255),
validade date,
quantidade int,
localizacaoo varchar(255)
);


create table manutencao(
cod_manutencao int,
data_manutencao date,
cliente_manutecao varchar(255),
endereco varchar(255),
descricao varchar(255)
);

create table processo(
cod_processo int,
nome_processo varchar(255),
descricao varchar(255),
data_processo date,
responsavel varchar(255)
);

create table venda(
cod_venda int,
valor decimal,
nota_fiscal int,
data_venda date,
garantia date
);


