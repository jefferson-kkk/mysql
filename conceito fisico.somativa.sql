-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE alunos (
id_aluno int auto_increment primary key PRIMARY KEY,
data_nascimento_aluno date ,
nome_aluno varchar(100) not null,
email_aluno varchar(50) not null
)

CREATE TABLE cursos (
id_cursos int auto_increment primary key PRIMARY KEY,
status booleana,
carga_horaria date time,
descricao varchar (250) not null,
titulo_curso varchar(100) not null
)

CREATE TABLE inscricoes (
id_avaliacao int auto_increment primary key PRIMARY KEY,
data_inscricao date time,
id_aluno int auto_increment primary key,
id_cursos int auto_increment primary key,
FOREIGN KEY(id_aluno) REFERENCES alunos (id_aluno),
FOREIGN KEY(id_cursos) REFERENCES cursos (id_cursos)
)

CREATE TABLE avaliacao (
id_avaliacao int auto_increment primary key PRIMARY KEY,
nota dedcmal (7,2),
comentario varchar(250) not null,
-- Erro: nome do campo duplicado nesta tabela!
id_avaliacao int auto_increment primary key,
FOREIGN KEY(id_avaliacao) REFERENCES inscricoes (id_avaliacao)
)

