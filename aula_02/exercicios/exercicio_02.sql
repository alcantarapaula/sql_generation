CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_livros(
	id bigint AUTO_INCREMENT,
    titulo varchar(255) NOT NULL,
    valor decimal(6, 2) NOT NULL,
    autor varchar(255),
    ano int,
    PRIMARY KEY(id)
);

INSERT INTO tb_livros(titulo, valor, autor, ano)
VALUES ('Pachinko', 49.99, 'Min Jin Lee', 2017),
	   ('The Wedding People', 39.99, 'Alison Espach', 2024),
       ('Spy X Family - Volume 1', 18.99, 'Tatsuya Endo', 2019),
       ('The Poppy War', 44.99, 'R. F. Kuang', 2018),
       ('Norte e Sul', 36.99, 'Elizabeth Gaskell', 1855),
       ('Eu que nunca conheci os homens', 29.99, 'Jacqueline Harpman', 1995),
       ('Anne de Green Gables', 21.99, 'L. M. Montgomery', 1908),
       ('A Guerra dos Tronos', 55.99, 'George G. G. Martin', 1996);
       
SELECT * FROM tb_livros;
SELECT * FROM tb_livros WHERE ano > 2000;
SELECT * FROM tb_livros WHERE valor > 30;

UPDATE tb_livros SET valor = 42.99 WHERE id = 4;

SELECT * FROM tb_livros;

