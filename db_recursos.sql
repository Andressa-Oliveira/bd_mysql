create database db_RECURSOS;
use db_RECURSOS;

create table tb_employees(
id BIGINT AUTO_INCREMENT primary key,
firstname VARCHAR(255) NOT NULL,
lastname VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
departamento VARCHAR(255) NOT NULL,
salario DECIMAL(7,2) NOT NULL
);
select * from tb_employees;

INSERT INTO tb_employees (firstname, lastname, cargo, departamento, salario)
VALUES
("Andressa", "Oliveira", "database jr", "Desenvolvimento de Aplicações", 2500.00),
("Beatriz", "Luz", "back end jr", "Desenvolvimento de Aplicações", 2500.00),
("Christian", " Star", "estagiário js", "Desenvolvimento de Aplicações", 1900.00),
("Ingrid", "Moon", "database jr", "Desenvolvimento de Aplicações", 2500.00),
("Lucas", "Mars", "front end jr", "Desenvolvimento de Aplicações", 2500.00),
("Marcelo", "Neptune", "front end jr", "Desenvolvimento de Aplicações", 2500.00),
("Milena", "Sun", "js fullstack senior", "Desenvolvimento de Aplicações", 6000.00),
("Pamela", "Earth", "js fullstack pleno", "Desenvolvimento de Aplicações", 5000.00);