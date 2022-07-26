-- comando para criar banco de dados
-- Não pode ter 2 bancos de com o mesmo nome
-- Criação banco de dados
CREATE DATABASE db_loja;
-- Usa para a criação das tabelas 
USE db_loja;

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
-- 10 numeros no total e 2 depois da virgula
valor DECIMAL(10,2),
quantidade INT,
pagamento_cartao BOOLEAN

-- PRIMARY KEY(id) -outra forma de indicar a primay key
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Camiseta",25.59,5,true);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Calça",100.59,10,true);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Bone",21.59,20,true);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Sapato",250.59,3,false);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Saia",30.00,20,true);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Blusa",16.59,10,true);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Colar",100.59,6,false);
INSERT INTO tb_produtos(nome_produto,valor, quantidade,pagamento_cartao)VALUES("Sandalia",30.59,40,false);
SELECT * FROM tb_produtos;
