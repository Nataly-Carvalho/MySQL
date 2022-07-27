CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
classes VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
nivel INT,
ataque BIGINT,
defesa BIGINT,
raca VARCHAR (255),

classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(classes) 
VALUE ("Arqueiro"),("Sarcedote"),("Retalhador"),("Tormentador"),
("Feiticeira"),("Barbaro"),("Mago"),("Guerreiro"),("Mistica"),("Arcano"),("Mercenario"),("Espiritualista");

INSERT INTO tb_personagens(nome,nivel,ataque,defesa,raca,classe_id)
VALUE ("Paczinha", 13, 400,200,"Alada", 1),
("CupCake", 99, 20000,3000,"Alada", 2),
("Nyaa", 23, 700,4000,"Sombrio", 3),
("Floquinho", 105, 40000,5000,"Sombrio", 4),
("SombraSombria",190, 60000,5000,"Sombrio", 5),
("batata",1, 20,300,"Selvagem", 6),
("Tigrinho", 13, 2000,4000,"Selvagem,", 7),
("FireBomb", 13, 2000,4000,"Humano",8);

select * from tb_personagens;
SELECT * FROM tb_personagens WHERE ataque> 2000;
SELECT * FROM tb_personagens WHERE defesa> 1000 AND defesa <2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT *
FROM tb_classes
INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.classe_id;

SELECT *
FROM tb_classes
INNER JOIN tb_personagens
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id=1;


