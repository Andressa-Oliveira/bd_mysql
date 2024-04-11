create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias (
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(255) not null,
    descricao_categoria text
);

create table tb_pizzas(
id bigint auto_increment primary key,
nome varchar(255) not null,
recheio_pizza text,  
valor decimal(5, 2) not null,
id_categoria bigint,
foreign key (id_categoria) references tb_categorias (id_categoria)
);

insert into tb_categorias (nome_categoria, descricao_categoria) 
values
('Salgada', 'Pizzas com recheios salgados'),
('Doce', 'Pizzas com recheios doces'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas especiais da casa'),
('Calzone', 'Pizzas no estilo calzone');

insert into tb_pizzas (nome, recheio_pizza, valor, id_categoria)
values
("Portuguesa", "queijo, tomate, presunto", 80.00, 1),
("Margherita", "Molho de tomate, queijo, manjericão", 90.00, 3),
("Frango com Catupiry", "Molho de tomate, queijo, frango, catupiry", 50.00, 1),
("Pepperoni", "Molho de tomate, queijo, pepperoni", 45.00, 3),
("Quatro Queijos", "Molho de tomate, mussarela, provolone, gorgonzola, parmesão", 50.00, 3),
("Chocolate", "Chocolate ao leite derretido, morangos", 35.00, 2),
("Banana com Canela", "Banana fatiada, canela em pó, leite condensado", 30.00, 3),
("Cogumelo", "Molho de tomate, queijo mussarela, tomate, pimentão, cebola, cogumelos", 40.00, 4),
("Calzone de Calabresa", "Molho de tomate, queijo, calabresa, cebola, pimentão", 40.00, 5);

update tb_pizzas set valor = 100 where id = 26;

select * from tb_pizzas;
select * from tb_categorias;

-- essa parte eu não entendi, pedi ajuda do chatgpt:
SELECT tb_pizzas.*, tb_categorias.nome_categoria, tb_categorias.descricao_categoria 
FROM tb_pizzas
INNER JOIN  tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

-- essa também foi o chatgpt:
SELECT tb_pizzas.*, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Vegetariana';

select * from tb_pizzas where valor>45.00;
select * from tb_pizzas where valor between 50.00 and 100.00;
select * from tb_pizzas where nome like "%m%";

