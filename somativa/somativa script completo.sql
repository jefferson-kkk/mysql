create database curso;
use curso;

create table alunos(
id_alunos int auto_increment primary key,
nome varchar(255) not null,
email varchar(25),
data_nascimento date
); 

create table cursos(
id_cursos int auto_increment primary key,
titulo varchar(255) not null,
descricao varchar(255) not null,
carga_horaria int,
status_curso varchar(255) not null
);

create table inscricao(
id_incricao int auto_increment primary key,
data_inscricao date,
id_cursos int,
id_alunos int,
foreign key (id_alunos) references alunos (id_alunos),
foreign key (id_cursos) references cursos (id_cursos)
);

create table avaliacao(
id_avaliacao int auto_increment primary key,
nota decimal(7,2),
comentario varchar(255) not null,
id_incricao int,
foreign key (id_incricao) references inscricao (id_incricao)
);

-- Inserindo 5 alunos na tabela 'alunos'
INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Ana Silva', 'ana.silva@email.com', '2005-03-15'),
('Bruno Costa', 'bruno.costa@email.com', '2004-07-22'),
('Carla Dias', 'carla.dias@email.com', '2006-01-30'),
('Daniel Farias', 'daniel.farias@email.com', '2005-11-10'),
('Elena Souza', 'elena.souza@email.com', '2004-09-05');

-- Inserindo 5 cursos na tabela 'cursos' (1 com status 'inativo')
INSERT INTO cursos (titulo, descricao, carga_horaria, status_curso) VALUES
('Introdução à Programação em Python', 'Aprenda os conceitos básicos de Python.', 40, 'ativo'),
('Design Gráfico para Iniciantes', 'Explore os fundamentos do design com ferramentas populares.', 60, 'ativo'),
('Marketing Digital Essencial', 'Domine as estratégias de marketing online.', 50, 'ativo'),
('Gestão de Projetos com Metodologias Ágeis', 'Aprenda a gerenciar projetos de forma eficiente.', 80, 'ativo'),
('Curso Avançado de SQL', 'Técnicas aprofundadas de consulta e gestão de bancos de dados.', 70, 'inativo');

-- Inserindo 5 inscrições na tabela 'inscricao'
-- (IDs de alunos e cursos podem variar dependendo da execução, aqui usamos 1 a 5)
INSERT INTO inscricao (data_inscricao, id_cursos, id_alunos) VALUES
('2025-08-10', 1, 1), -- Ana se inscreveu em Python
('2025-08-11', 2, 2), -- Bruno se inscreveu em Design Gráfico
('2025-08-12', 3, 3), -- Carla se inscreveu em Marketing Digital
('2025-08-13', 4, 4), -- Daniel se inscreveu em Gestão de Projetos
('2025-08-14', 1, 5); -- Elena se inscreveu em Python

-- Inserindo 3 avaliações na tabela 'avaliacao'
-- (IDs de inscrição podem variar, aqui usamos 1, 2 e 4)
INSERT INTO avaliacao (nota, comentario, id_incricao) VALUES
(9.5, 'Curso excelente, muito didático!', 1), -- Avaliação da Ana para o curso de Python
(8.0, 'Bom conteúdo, mas poderia ter mais exemplos práticos.', 2), -- Avaliação do Bruno para Design Gráfico
(10.0, 'Fantástico! O instrutor domina o assunto e a aplicação é imediata.', 4); -- Avaliação do Daniel para Gestão de Projetos

-- troca o email aluno
update alunos
set
email = 'jefferson.b.novo@email.com'
where id_alunos = 1;

-- troca a carga horaria
UPDATE cursos
SET
    carga_horaria = 7
WHERE
    id_cursos = 1;

-- altera nome alunos
update alunos
set
nome = 'bruno'
where id_alunos = 1;

-- altera status curso
update cursos
set
curso = 'desativado'
where id_cursos = 1;

-- altera a nota de avaliação
update avaliacao
set
nota = '7.5'
where id_avaliacao = 1;

-- exclui da tabela aluno o aluno com código 1
delete  from alunos where id_alunos = 1;

-- excului do avaliacao
delete from avaliacao where id_avaliacao = 1;

-- exclui curso
delete from cursos where id_cursos = 1;

-- exclui inscrição
delete from inscricao where id_incricao = 1;

-- exclui todas inscricao do curso
delete from inscricao where id_cursos = 5; 

-- ver todos os dados
SELECT * FROM alunos;

-- exibe nome e email dos alunos
SELECT nome, email FROM alunos;

-- lista os cursos com carga horaria > 30
SELECT * FROM cursos WHERE carga_horaria > 30;

-- exibe cursos que estão inativos
SELECT * FROM cursos WHERE status_curso = 'inativo';

-- buscar alunos nacidos em 1995
SELECT * FROM alunos 
WHERE YEAR(data_nascimento) > 1995;

-- exibe avaliações com nota > 9
SELECT * FROM avaliacao 
WHERE nota > 9;

-- conta quantos cursos estão cadastrados
SELECT COUNT(*) AS total_de_cursos 
FROM cursos;

-- lista os 3 cursos com maior carga horaria
SELECT * FROM cursos 
ORDER BY carga_horaria DESC 
LIMIT 3;

-- index
CREATE INDEX idx_alunos_email ON alunos (email);