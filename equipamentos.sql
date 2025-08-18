create database equipamentos;

use equipamentos;

create table clientes(
cod_cliente int auto_increment key not null,
nome_cliente varchar(255) not null,
cpf_cliente varchar(18) not null,
celular varchar(14) not null,
endereco varchar(255) not null,
estado char(2) default "sp"
);

create table produtos(
cod_produto int auto_increment key not null,
quantidade int,
nome_produto varchar(255) not null,
valor decimal(7,2),
descricao varchar(255) not null
);

create table fornecedores(
cod_fornecedor int auto_increment primary key not null,
cnpj varchar(18) not null,
endereco varchar(100) not null,
celular varchar(19) not null,
nome_fornecedor varchar(255) not null
);

create table relacao1(
cod_relacao1 int auto_increment primary key not null,
cod_fornecedor int,
cod_produto int,
foreign key (cod_produto) references produtos (cod_produto),
foreign key (cod_fornecedor) references fornecedores (cod_fornecedor)
);

create table funcionario(
cod_funcionario int auto_increment key not null,
nome_funcionario varchar(255) not null,
salario decimal(5,2),
setor varchar(150) not null,
data_nascimento date
);

create table equipamentos(
cod_equipamento int auto_increment key not  null,
descricao varchar(255) not null,
nome_equipamento varchar(255) not null,
quntidade int,
validade datetime
);





