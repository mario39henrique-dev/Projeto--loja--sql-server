CREATE DATABASE LojaSimples;
GO
USE LojaSimples;
GO

CREATE TABLE Clientes (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Produtos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    NomeProduto VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT
);

INSERT INTO Clientes (Nome, Telefone, Email) VALUES 
('João Silva', '(11) 99999-9999', 'joao@email.com'),
('Maria Oliveira', '(11) 98888-8888', 'maria@email.com');

INSERT INTO Produtos (NomeProduto, Preco, Estoque) VALUES
('Notebook Dell', 3500.00, 10),
('Mouse sem fio', 80.50, 50);

SELECT * FROM Clientes;
SELECT * FROM Produtos;
SELECT NomeProduto, Preco FROM Produtos WHERE Preco > 100;
