CREATE DATABASE sla;
USE sla;

-- Tabela: instituicao
CREATE TABLE instituicao (
    I_codigo INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Tabela: projeto
CREATE TABLE projeto (
    PR_codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    I_codigo INT,
    FOREIGN KEY (I_codigo) REFERENCES instituicao(I_codigo)
);

-- Tabela: fornecedor
CREATE TABLE fornecedor (
    f_codigo INT PRIMARY KEY,
    f_nome VARCHAR(100),
    f_cidade VARCHAR(50),
    f_status CHAR(1)
);

-- Tabela: peca
CREATE TABLE peca (
    p_codigo INT PRIMARY KEY,
    p_nome VARCHAR(100),
    p_peso DECIMAL(10,2),
    p_cidade VARCHAR(50),
    p_cor VARCHAR(50)
);

-- Relacionamento: possui (fornecedor - peca)
CREATE TABLE possui (
    f_codigo INT,
    p_codigo INT,
    PRIMARY KEY (f_codigo, p_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);

-- Tabela: fornecimento (PK separada)
CREATE TABLE fornecimento (
    for_codigo INT PRIMARY KEY,
    quantidade INT,
    f_codigo INT,
    p_codigo INT,
    pr_codigo INT,
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo),
    FOREIGN KEY (pr_codigo) REFERENCES projeto(PR_codigo)
);

-- Relacionamento: pertence (projeto - instituicao)
CREATE TABLE pertence (
    I_codigo INT,
    PR_codigo INT,
    PRIMARY KEY (I_codigo, PR_codigo),
    FOREIGN KEY (I_codigo) REFERENCES instituicao(I_codigo),
    FOREIGN KEY (PR_codigo) REFERENCES projeto(PR_codigo)
);

-- Relacionamento: contem (fornecedor - peca)
CREATE TABLE contem (
    for_codigo INT,
    p_codigo INT,
    PRIMARY KEY (for_codigo, p_codigo),
    FOREIGN KEY (for_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);

-- Relacionamento: tem (projeto - fornecedor - peca)
CREATE TABLE tem (
    PR_codigo INT,
    for_codigo INT,
    p_codigo INT,
    PRIMARY KEY (PR_codigo, for_codigo, p_codigo),
    FOREIGN KEY (PR_codigo) REFERENCES projeto(PR_codigo),
    FOREIGN KEY (for_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);

alter table fornecedor 
	add Fone varchar(19);
   

    
alter table instituicao rename cidade, 
    add uf char(2), change nome c_nome varchar(255),
    change I_codigo c_code int auto_increment not null;
    
    
alter table peca
    add Ccod int PRIMARY KEY;
    
alter table projeto
    add cidade char(50), change I_codigo c_code int auto_increment not null;
    
    
    
    
