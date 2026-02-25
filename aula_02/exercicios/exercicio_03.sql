CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    data_nascimento date NOT NULL,
    serie varchar(50),
    nota decimal(4, 2),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, nota)
VALUES ('Daphne', '2011-06-05', '9º ano do Ensino Fundamental', 9),
	   ('Anthony', '2008-01-10', '3º ano do Ensino Médio', 9.2),
       ('Benedict', '2008-12-27', '3º ano do Ensino Médio', 4.5),
       ('Colin', '2010-04-22', '1º ano do Ensino Médio', 6.8),
       ('Eloise', '2013-06-30', '7º ano do Ensino Fundamental', 10),
       ('Francesca', '2014-10-09', '6º ano do Ensino Fundamental', 9.3),
       ('Haycinth', '2018-10-02', '2º ano do Ensino Fundamental', 6.5),
       ('Gregory', '2017-12-12', '3º ano do Ensino Fundamental', 7.1);
       
SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7;

UPDATE tb_estudantes SET nota = 7.2 WHERE id = 7;
