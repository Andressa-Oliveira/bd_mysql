create database db_comercio;
use db_Comercio;

create table tb_produtos(
 id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 preco decimal(7,2) not null,
 categoria varchar (255) not null,
 marca varchar (255) not null,
  primary key(id)
);

select * from tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, preco, categoria, marca)
VALUES
("WHXM", 20, 2389.00, "headphone", "Sony"),
("Space", 20, 207.20, "headphone", "SoundPEATS"),
("SuperActive", 20, 269.99, "headphone", "Haylou"),
("SolarPlus", 20, 207.20, "smartwatch", "Haylou"),
("Hero", 20, 174.99, "fone", "StageSound"),
("SHN", 20, 799.00, "notebook", "Dell"),
("KMW", 20, 124.90, "periferico", "Dell");

DELETE FROM tb_produtos WHERE id BETWEEN 9 AND 60;

DELETE FROM tb_produtos WHERE id = 2;


SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;


