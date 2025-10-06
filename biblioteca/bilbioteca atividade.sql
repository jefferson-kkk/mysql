create database biblioteca;
use biblioteca;

create table alunos(
codigo int not null,
nome varchar(100) not null,
cpf varchar(14) not null,
email varchar(100) not null,
endereco varchar(200) not null,
primary key (codigo)
);

create table livros(
codigo int not null,
nome varchar(100) not null,
categoria varchar(100) not null,
estado char(50),
autor varchar(50),
primary key (codigo)
);

-- inserir dados --
insert into alunos(codigo, nome, cpf, email, endereco) 
values (1, 'Carlos Eduardo da Silva', '123.456.789-01', 'carlos.silva@email.com', 'Rua das Laranjeiras, 123 - São Paulo, SP'),
(2, 'Mariana Oliveira Costa', '987.654.321-00', 'mariana.costa@email.com', 'Avenida Brasil, 456 - Rio de Janeiro, RJ'),
(3, 'João Pedro Almeida', '456.789.123-99', 'joao.almeida@email.com', 'Rua das Palmeiras, 789 - Belo Horizonte, MG');

insert into livros(codigo,nome,categoria,estado,autor)
values (1, 'O Código Da Vinci', 'Ficção', 'Novo', 'Dan Brown'),
(2, 'Dom Casmurro', 'Romance', 'Usado', 'Machado de Assis'),
(3, 'Sapiens: Uma Breve História da Humanidade', 'História', 'Novo', 'Yuval Noah Harari');

select * from alunos;
select * from livros;


-- deletar dados --
delete from livros;
delete from livros where codigo = '1';
 
-- registro multiplo --
delete from livros where estado = 'bom';

-- intervalo (operador anda)
delete from livros where livros ='usado' and codigo = 2;


-- atualizar dados --
update livros
set estado = 'novo'
where codigo = 2;

update alunos
set nome = 'jeff'
where codigo = 1;

update livros
set estado = 'usado'
where codigo = 3;






