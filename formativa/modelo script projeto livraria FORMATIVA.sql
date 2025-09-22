-- Remove o banco se já existir (evita 

-- Cria o banco de dados
CREATE DATABASE livraria;
USE livraria;

-- Tabela: Autores
CREATE TABLE autores (
    cod_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    nascimento DATE
);

-- Tabela: Editores
CREATE TABLE editores (
    cod_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(100) NOT NULL,
    cnpj VARCHAR(19) NOT NULL UNIQUE,
    endereco VARCHAR(100),
    contato VARCHAR(19),
    telefone VARCHAR(19),
    cidade CHAR(2)
);

-- Tabela: Livros
CREATE TABLE livros (
    cod_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(100),
    preco DECIMAL(10, 2),
    quantidade INT NOT NULL,
    cod_autor_livros INT,
    cod_editora_livros INT,
    FOREIGN KEY (cod_autor_livros) REFERENCES autores(cod_autor),
    FOREIGN KEY (cod_editora_livros) REFERENCES editores(cod_editora)
);

-- Tabela: Clientes
CREATE TABLE clientes (
    cod_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(50),
    telefone VARCHAR(14),
    nascimento DATE,
    cpf VARCHAR(19) NOT NULL
);

-- Tabela: Vendas
CREATE TABLE vendas (
    cod_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATETIME,
    valor_total DECIMAL(10, 2),
    quantidade INT,
    cod_cliente_vendas INT,
    cod_livro_vendas INT,
    FOREIGN KEY (cod_cliente_vendas) REFERENCES clientes(cod_cliente),
    FOREIGN KEY (cod_livro_vendas) REFERENCES livros(cod_livro)
);

drop database livraria;

-- Inserir autores (para chave estrangeira livros)
INSERT INTO autores (nome_autor, nacionalidade, nascimento) VALUES
('Machado de Assis', 'Brasileira', '1839-06-21'),
('J.K. Rowling', 'Britânica', '1965-07-31');

-- Inserir editoras
INSERT INTO editores (nome_editora, cnpj, endereco, contato, telefone, cidade) VALUES
('Editora Globo', '12345678000199', 'Rua A, 123', 'contato@globo.com', '1133334444', 'SP'),
('Editora Abril', '98765432000188', 'Av. B, 456', 'contato@abril.com', '1144445555', 'RJ');

-- Inserir livros
INSERT INTO livros (titulo, genero, preco, quantidade, cod_autor_livros, cod_editora_livros) VALUES
('Dom Casmurro', 'Romance', 39.90, 100, 1, 1),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 59.90, 150, 2, 2);

-- Inserir clientes
INSERT INTO clientes (nome_cliente, email_cliente, telefone, nascimento, cpf) VALUES
('João Silva', 'joao.silva@email.com', '11999998888', '1985-05-20', '12345678901'),
('Maria Oliveira', 'maria.oliveira@email.com', '21988887777', '1990-08-15', '98765432100');


-- Registrar uma venda do cliente João Silva comprando 2 exemplares de Dom Casmurro

INSERT INTO vendas (data_venda, valor_total, quantidade, cod_cliente_vendas, cod_livro_vendas) VALUES
(NOW(), 2 * 39.90, 2, 1, 1);

-- Registrar uma venda da cliente Maria Oliveira comprando 1 exemplar de Harry Potter

INSERT INTO vendas (data_venda, valor_total, quantidade, cod_cliente_vendas, cod_livro_vendas) VALUES
(NOW(), 59.90, 1, 2, 2);




