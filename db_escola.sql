create database db_Escola;
use db_Escola;

create table tb_estudantes(

id BIGINT AUTO_INCREMENT primary key,
firstname VARCHAR(255) NOT NULL,
lastname VARCHAR(255) NOT NULL,
ano INT NOT NULL,
bimestre VARCHAR(255) NOT NULL,
nota INT NOT NULL
);

select * from tb_estudantes;

INSERT INTO tb_estudantes (firstname, lastname, ano, bimestre, nota)
VALUES
("Marie", "Curie", 3, 4, 9),
("Ada", "Lovelace", 3, 4, 9),
("Katherine", "Johnson", 3, 4, 9),
("Mae", "Jemison", 3, 4, 9),
("Jaqueline", "Goes", 3, 4, 10);

insert into tb_estudantes (firstname, lastname, ano, bimestre, nota)
VALUES
("Andressa", "Oliveira", 3, 4, 6),
("Milena", "Sun", 3, 4, 8),
("Beatriz", "Light", 3, 4, 7),
("Pamela", "Earth", 3, 4, 7);

insert into tb_estudantes (firstname, lastname, ano, bimestre, nota)
VALUES
("Ingrid", "Days", 3, 4, 8);


SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

DELETE FROM tb_estudantes WHERE id BETWEEN 6 AND 15;
