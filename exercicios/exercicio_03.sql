CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    idade int,
    turma int,
    nota decimal(4, 2),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, idade, turma, nota)
VALUES ('Daphne', 14, 2, 9),
	   ('Anthony', 18, 1, 9.2),
       ('Benedict', 17, 1, 4.5),
       ('Colin', 15, 2, 6.8),
       ('Eloise', 12, 3, 10),
       ('Francesca', 11, 3, 9.3),
       ('Haycinth', 7, 5, 6.5),
       ('Gregory', 8, 4, 7.1);
       
SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7;

UPDATE tb_estudantes SET nota = 7.2 WHERE id = 7;

