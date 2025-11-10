-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cliente (
id_cliente int auto_increment primary key PRIMARY KEY,
nome_cliente varchar(255) not null,
cpf varchar(14) not null,
telefone varchar(18) not null,
endereco varchar(150) not null,
email varchar(255) not null,
id_veiculo int auto_increment primary key
)

CREATE TABLE funcionarios (
id_funcionario int auto_increment primary key PRIMARY KEY,
data_nascimnto date_time,
setor varchar(100) not null,
nome_funcionario varchar(255) not null,
salario decimal(5,2),
data_contrato datetime,
id_cliente int auto_increment primary key,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
)

CREATE TABLE serviços (
id_serviço int auto_increment primary key PRIMARY KEY,
preço decimal,
tipo_serviço status,
descricao varchar(1255) not null,
duracao datetime,
status_servicos Texto(1)
)

CREATE TABLE produtos (
id_produtos int auto_increment primary key PRIMARY KEY,
quantidade int,
nome_produto varchar(255) not null,
data_validade date,
descricao varchar(255 not null,
valor decimal(5,2),
id_peca int auto_increment primary key
)

CREATE TABLE estoque (
id_estoque int auto_increment primary key PRIMARY KEY,
quantidade int,
status status('disponivel', 'indisponivel'),
localizacao varchar(100) not null,
id_produtos int auto_increment primary key,
id_peca int auto_increment primary key,
FOREIGN KEY(id_produtos) REFERENCES produtos (id_produtos)
)

CREATE TABLE veiculos (
id_veiculo int auto_increment primary key PRIMARY KEY,
tipo_veiculo varchar(100) not null,
nome_veiculo varchar(100) not null,
status_veiculos status('ativo', 'inativo'),
marca varchar(100) not null,
ano_fabricacao datetime,
modelo varchar(255) not null,
descricao varchar(255) not null
)

CREATE TABLE peças (
id_peca int auto_increment primary key PRIMARY KEY,
peso decimal,
material varchar(255) not null,
cor varchar(100) not null,
nome_peca varchar(255) not null,
preco decimal,
quantidade int
)

CREATE TABLE cadastro (
id_cadastro int auto_increment primary key PRIMARY KEY,
senha_cadastro varchar(100) not null,
nome_cadastro varchar(255) not null,
id_cliente int auto_increment primary key,
id_funcionario int auto_increment primary key,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY(id_funcionario) REFERENCES funcionarios (id_funcionario)
)

CREATE TABLE executa (
id_funcionario int auto_increment primary key,
id_serviço int auto_increment primary key,
FOREIGN KEY(id_funcionario) REFERENCES funcionarios (id_funcionario)/*falha: chave estrangeira*/
)

ALTER TABLE cliente ADD FOREIGN KEY(id_veiculo) REFERENCES veiculos (id_veiculo)
ALTER TABLE produtos ADD FOREIGN KEY(id_peca) REFERENCES peças (id_peca)
ALTER TABLE estoque ADD FOREIGN KEY(id_peca) REFERENCES peças (id_peca)
