-- DDL -- CREAT , DROP , ALTER

-- Comando que exibe o Databases
SHOW DATABASES;
-- Usa um Database já criado 
USE INFORMATION_SCHEMA;
SHOW tables;
-- seleciona 
SELECT*FROM CHARACTER_SETS;
SELECT*FROM COLLATIONS;
-- ............... Daddo dos Alunos ......................
-- Apaga objeto databases
DROP DATABASE faculdade;
CREATE DATABASE IF NOT EXISTS faculdade
-- Define o alfabeto que vai usar
CHARACTER SET latin1
COLLATE 'latin1_swedish_ci';

USE faculdade;

CREATE TABLE tbAlunos (
	rgm			INT PRIMARY KEY		,
    nome		VARCHAR(50) NOT NULL,
    email		VARCHAR(50) NOT NULL,
    dtnascto	DATE NOT NULL
    );

DROP TABLE tbAlunos;

------------------------ Alterar Tabela ----------------------------
-- DDL 
-- (ALTER - ADD / MODIFY)

-- alterar a tabela 
ALTER TABLE  tbAlunos
	ADD sexo CHAR(1)
    AFTER nome;
    
ALTER TABLE tbAlunos
	MODIFY sexo CHAR(1) NOT NULL;

------------------------ Insere Valores na Tabela ----------------------------------
INSERT INTO tbAlunos VALUES (22187332, "Janaina Santos", "F", "janasantos2912@gmail.com", "2001-06-16"),
			    (18733222, "Maria Luiza", "F", "magaluiza@gmail.com", "2000-09-22");

SELECT*FROM  faculdade.tbAlunos;
