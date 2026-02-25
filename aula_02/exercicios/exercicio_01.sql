CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	id bigint AUTO_INCREMENT,
    nome_completo varchar(255) NOT NULL,
    cargo varchar(50),
    idade int,
    salario decimal(6, 2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome_completo, cargo, idade, salario)
VALUES ('Paula Alcantara', 'Desenvolvedora Junior', 28, 2550.20),
	   ('Jeaninny Teixeira', 'Analista de Dados', 27, 3300.36),
       ('Bianca Caetano', 'Desenvolvedora Senior', 25, 5780.72),
       ('Sabrina Novaes', 'Tech Lead', 29, 8050.39),
       ('Camila Lopes', 'Diretora', 34, 9999.99);
       
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario > 4000;

UPDATE tb_colaboradores SET salario = 4020.28 WHERE id = 2;
