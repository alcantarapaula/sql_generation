CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT,
    categoria varchar(50)NOT NULL,
    descricao varchar(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, descricao) VALUES
('Tecnologia', 'Cursos voltados para programação, desenvolvimento de software, banco de dados, inteligência artificial, segurança da informação e outras áreas relacionadas à tecnologia da informação.'),
('Educação', 'Cursos destinados à formação educacional, metodologias de ensino, práticas pedagógicas, capacitação de professores e desenvolvimento de habilidades acadêmicas.'),
('Artes', 'Cursos que exploram a criatividade, incluindo desenho, pintura, música, fotografia, design, teatro e outras formas de expressão artística e cultural.'),
('Desenvolvimento Pessoal', 'Cursos focados no crescimento individual, habilidades socioemocionais, produtividade, liderança, comunicação, autoconhecimento e melhoria da qualidade de vida.'),
('Culinária', 'Cursos sobre preparação de alimentos, técnicas culinárias, confeitaria, gastronomia nacional e internacional, higiene e boas práticas na cozinha.');

CREATE TABLE tb_cursos(
	id bigint AUTO_INCREMENT,
    categoria_id bigint,
    nome varchar(50),
    duracao decimal(5, 2),
    valor decimal(6,2),
    formato varchar(50),
    nota decimal(2, 1),
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(categoria_id, nome, duracao, valor, formato, nota) VALUES
(1, 'Fundamentos de Programação em Python', 120.00, 799.90, 'on-line', 4.8),
(1, 'Desenvolvimento Web com HTML, CSS e JS', 180.00, 999.90, 'on-line', 4.7),
(1, 'Banco de Dados MySQL do Zero ao Avançado', 100.00, 899.90, 'ao vivo', 4.9),
(1, 'Desenvolvimento Full Stack Completo', 220.00, 1799.90, 'on-line', 4.9),

(2, 'Metodologias Ativas de Aprendizagem', 80.00, 499.90, 'on-line', 4.6),
(2, 'Tecnologias Digitais na Educação', 60.00, 399.90, 'ao vivo', 4.5),

(3, 'Desenho Artístico para Iniciantes', 90.00, 349.90, 'on-line', 4.7),
(3, 'Fotografia Digital Completa', 70.00, 449.90, 'on-line', 4.6),

(4, 'Produtividade e Gestão do Tempo', 50.00, 299.90, 'on-line', 4.8),
(4, 'Comunicação e Oratória Eficaz', 40.00, 199.90, 'ao vivo', 4.7),

(5, 'Culinária Internacional: Pratos Clássicos', 110.00, 599.90, 'ao vivo', 4.9),
(5, 'Formação Profissional em Gastronomia', 230.00, 1499.90, 'ao vivo', 4.8);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor > 600 AND valor < 1000;

SELECT * FROM tb_cursos WHERE nome LIKE '%j%';
SELECT * FROM tb_cursos WHERE nome LIKE '%g%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE categoria = 'tecnologia';


DROP TABLE tb_cursos;