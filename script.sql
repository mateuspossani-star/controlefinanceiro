DROP DATABASE IF EXISTS controle_financeiro;
CREATE DATABASE controle_financeiro;
USE controle_financeiro;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    tipo ENUM('Receita','Despesa') NOT NULL
);

CREATE TABLE receitas (
    id_receita INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_receita DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_categoria INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario),

    FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);

CREATE TABLE despesas (
    id_despesa INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_despesa DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_categoria INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario),

    FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria)
);

INSERT INTO usuarios (nome, email, senha)
VALUES
('Mateus Santos','mateus@email.com','123456'),
('Ana Souza','ana@email.com','654321');

INSERT INTO categorias (nome_categoria, tipo)
VALUES
('Vendas','Receita'),
('Serviços','Receita'),
('Aluguel','Despesa'),
('Energia','Despesa');

INSERT INTO receitas
(descricao, valor, data_receita, id_usuario, id_categoria)
VALUES
('Venda de produtos', 2500.00, '2026-06-01', 1, 1),
('Prestação de serviço', 1200.00, '2026-06-02', 1, 2);

INSERT INTO despesas
(descricao, valor, data_despesa, id_usuario, id_categoria)
VALUES
('Pagamento aluguel', 800.00, '2026-06-03', 1, 3),
('Conta de energia', 250.00, '2026-06-04', 1, 4);
