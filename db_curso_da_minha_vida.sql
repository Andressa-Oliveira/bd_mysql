create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categorias(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(255) not null,  
    instituto varchar(255) not null    
);


insert into tb_categorias (nome_categoria, instituto) 
values
('Filosofia', 'Fflch'), 
('Ciências Sociais', 'FE'),
('História', 'Fflch'),
('Psicologia', 'IP'),
('Letras', 'Fflch');

create table tb_cursos(
id_curso bigint auto_increment primary key,
nome_curso varchar(255) not null,
professora varchar(255) not null,
descricao varchar(255) not null,
valor decimal(5, 2) not null,
id_categoria bigint,
foreign key (id_categoria) references tb_categorias (id_categoria)
);

insert into tb_cursos (nome_curso, professora, descricao, valor, id_categoria) 
values
('Sociologia da Educação I', 'Dra. Kimi Tomizaki', 'Debate de obras selecionadas de Charles Taylor, Pierre Bourdieu e Jessé Souza', 999.99, 2), 
('Introdução à Psicanálise', 'Dr. Rinaldo Voltolini', 'Debate de obras selecionadas de Freud e Lacan aplicadas à Educação', 500.00, 4), 
('Platão I', 'Profa. Marcela Kühn', 'Introdução à filosofia socrática',300.00, 1), 
('Teoria Literária I', 'Dr. Terry Eagleton', 'Introdução teórica a gêneros, sociedade, história e cultura', 100.00, 5), 
('Sociologia da Educação II', 'Dra. Kimi Tomizaki', 'Aprofundamento da sociologia de Jessé Souza', 999.99, 2), 
('Psicanálise: Crianças x Alunos', 'Dr. Rinaldo Voltolini', 'Aprofundamento de Freud e Lacan aplicados à Educação',500.00, 4), 
('Platão II', 'Profa. Marcela Kühn', 'Introdução à filosofia platônica',300.00, 1), 
('Teoria Literária II', 'Dr. Terry Eagleton', 'Aprofundamento de gêneros literários, cultura, história e sociedade', 100.00, 5);

select * from tb_cursos where valor>500.00;
select * from tb_cursos where valor between 200.00 and 700.00;
select * from tb_cursos;
select * from tb_categorias;
select * from tb_cursos where nome_curso like "%s%";

-- esse eu colei do chatgpt pq tem muita palavra e eu não entendo :D
SELECT tb_cursos.*, tb_categorias.nome_categoria, tb_categorias.instituto
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

-- esse também </3
SELECT tb_cursos.*, tb_categorias.nome_categoria, tb_categorias.instituto
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Psicologia';
