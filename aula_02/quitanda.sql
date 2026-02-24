CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    quantidade int,
    data_validade date,
    preco decimal NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ('amora', 200, '2026-03-21', 17.80),
	   ('framboesa', 300, '2026-03-20', 15.90),
	   ('maçã', 200, '2026-04-24', 9.90);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 3;
SELECT * FROM tb_produtos WHERE preco > 10.00;
SELECT * FROM tb_produtos WHERE preco < 10.00;
SELECT * FROM tb_produtos WHERE nome = "banana" OR nome = "maçã";
SELECT * FROM tb_produtos WHERE nome = "amora" AND preco = 17.80;
SELECT * FROM tb_produtos WHERE nome != "amora";

SELECT nome,
DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade,
CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preco
FROM tb_produtos;

UPDATE tb_produtos SET preco = 8.99;

DELETE FROM tb_produtos WHERE id = 2;

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

ALTER TABLE tb_produtos ADD descricao varchar(500); 

ALTER TABLE tb_produtos CHANGE descricao descricao_produto varchar(500);

ALTER TABLE tb_produtos DROP descricao_produto;

SET SQL_SAFE_UPDATES = 1;