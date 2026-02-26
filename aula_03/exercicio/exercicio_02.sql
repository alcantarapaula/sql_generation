CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria_sabores (
	id bigint AUTO_INCREMENT,
    categoria_sabor varchar(50),
    descricao varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    categoria varchar(50),
    descricao varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id bigint AUTO_INCREMENT,
    sabor varchar(255),
    preco decimal (6, 2),
    tamanho varchar(50),
    categoria_sabor_id bigint,
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_sabor_id) REFERENCES tb_categoria_sabores(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categoria_sabores(categoria_sabor, descricao) VALUES
('Salgada', 'Pizza salgada a base de molho de tomate caseiro e mussarela'),
('Doce', 'Deliciosa pizza doce para sobremesa');

INSERT INTO tb_categorias(categoria, descricao) VALUES
('Tradicional', 'Sabor clássico amado por toda a galera'),
('Gourmet', 'Sabor especial para quando estiver num momento inesquecível'),
('Kids', 'Para os pequenos acompanharem com alegria'),
('Vegana', 'Feita com ingredientes 100% veganos'),
('Zero Lactose', 'Feita com ingredientes selecionados zero lactose');

INSERT INTO tb_pizzas (sabor, preco, tamanho, categoria_sabor_id, categoria_id) VALUES
-- Tradicionais salgadas
('Calabresa Tradicional', 39.90, 'Média', 1, 1),
('Mussarela Clássica', 36.90, 'Média', 1, 1),
('Portuguesa Completa', 59.90, 'Grande', 1, 1),

-- Gourmet salgadas
('Frango com Catupiry Premium', 74.90, 'Grande', 1, 2),
('Quatro Queijos Especial', 79.90, 'Grande', 1, 2),
('Camarão Gourmet', 119.90, 'Gigante', 1, 2),
('Parma com Rúcula', 99.90, 'Grande', 1, 2),

-- Kids doces
('Chocolate ao Leite Kids', 34.90, 'Brotinho', 2, 3),
('Confete com Chocolate', 39.90, 'Brotinho', 2, 3),

-- Tradicionais doces
('Romeu e Julieta', 54.90, 'Grande', 2, 1),
('Banana com Canela', 49.90, 'Média', 2, 1),

-- Gourmet doces
('Nutella com Morango', 89.90, 'Grande', 2, 2),

-- Veganas salgadas
('Vegana de Legumes', 64.90, 'Grande', 1, 4),
('Vegana Mediterrânea', 69.90, 'Grande', 1, 4),

-- Zero lactose salgada
('Frango Zero Lactose', 72.90, 'Grande', 1, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
INNER JOIN tb_categoria_sabores
ON tb_pizzas.categoria_sabor_id = tb_categoria_sabores.id;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco > 50 AND preco < 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
INNER JOIN tb_categoria_sabores
ON tb_pizzas.categoria_sabor_id = tb_categoria_sabores.id
WHERE categoria_sabor = 'Doce';


DROP TABLE tb_pizzas;
DROP TABLE tb_categorias;