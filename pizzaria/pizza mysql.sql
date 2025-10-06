create database pizzaria;

use pizzaria;

create table  usuario (id_usuario int,
nome_usuario varchar(255),
telefone varchar (255),
endereco varchar (255),
cpf varchar (255)
);

create table pizza (id_pizza int,
nome_pizza varchar (255),
quantidade varchar (255),
observacao varchar(255),
valor_pizza varchar (255)
);

create table cardapio (id_cardapio int,
preco varchar (255),
sabor varchar (255),
acompanhamento varchar (255)
);

create table administracao (id_adm int,
nome_adm varchar (255),
senha varchar (255),
codigo_idenficacao varchar (255)
);

select * from usuario; -- consultar dados da tabela