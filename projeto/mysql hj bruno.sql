create database sla;

use sla;
-- Tabela: instituicao
CREATE TABLE instituicao (
    I_codigo INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE projeto (
    PR_codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    icod INT
);


CREATE TABLE fornecedor (
    f_codigo INT PRIMARY KEY,
    f_cidade VARCHAR(50),
    f_nome VARCHAR(100),
    f_status CHAR(1)
);


CREATE TABLE peca (
    p_codigo INT PRIMARY KEY,
    p_cidade VARCHAR(50),
    p_peso DECIMAL(10,2),
    p_cor VARCHAR(50),
    p_nome VARCHAR(100)
);


CREATE TABLE possui (
    f_codigo INT,
    p_codigo INT,
    PRIMARY KEY (f_codigo, p_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);


CREATE TABLE fornecimento (
    f_codigo INT,
    pr_codigo INT,
    p_codigo INT,
    quantidade INT,
    PRIMARY KEY (f_codigo, pr_codigo, p_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (pr_codigo) REFERENCES projeto(PR_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);


CREATE TABLE relacao_1 (
    I_codigo INT,
    PR_codigo INT,
    PRIMARY KEY (I_codigo, PR_codigo),
    FOREIGN KEY (I_codigo) REFERENCES instituicao(I_codigo),
    FOREIGN KEY (PR_codigo) REFERENCES projeto(PR_codigo)
);


CREATE TABLE relacao_2 (
    f_codigo INT,
    pr_codigo INT,
    p_codigo INT,
    PRIMARY KEY (f_codigo, pr_codigo, p_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (pr_codigo) REFERENCES projeto(PR_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);


CREATE TABLE relacao_3 (
    f_codigo INT,
    pr_codigo INT,
    p_codigo INT,
    PRIMARY KEY (f_codigo, pr_codigo, p_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (pr_codigo) REFERENCES projeto(PR_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);


CREATE TABLE relacao_4 (
    PR_codigo INT,
    f_codigo INT,
    p_codigo INT,
    PRIMARY KEY (PR_codigo, f_codigo, p_codigo),
    FOREIGN KEY (PR_codigo) REFERENCES projeto(PR_codigo),
    FOREIGN KEY (f_codigo) REFERENCES fornecedor(f_codigo),
    FOREIGN KEY (p_codigo) REFERENCES peca(p_codigo)
);
