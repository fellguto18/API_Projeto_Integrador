CREATE DATABASE NUTRICIONISTA_DB;
USE NUTRICIONISTA_DB; 

CREATE TABLE TB_NUTRICIONISTA (
ID_NUTRICIONISTA        INT PRIMARY KEY auto_increment,
NM_NUTRICIONISTA     VARCHAR(200),
SH_SENHA     VARCHAR(15),
DS_EMAIL        VARCHAR(200)

);
DROP TABLE TB_NUTRICIONISTA;


CREATE TABLE TB_PACIENTE(
ID_PACIENTE    INT PRIMARY KEY auto_increment,
NM_PACIENTE    VARCHAR(200),
DS_CPF         VARCHAR(14),
DT_NASCIMENTO  DATE,
DS_ASSUNTO  VARCHAR(500),
DS_EMAIL       VARCHAR(200),
DS_TELEFONE   VARCHAR(200)
);

DROP TABLE TB_PACIENTE;


CREATE TABLE TB_CONSULTA(
ID_CONSULTA        INT PRIMARY KEY auto_increment,
ID_PACIENTE			INT,
VL_PRECO        decimal(15,2),
DT_CONSULTA     DATETIME,  
DS_ASSUNTO      VARCHAR(500),   
FOREIGN KEY (ID_PACIENTE) REFERENCES TB_PACIENTE (ID_PACIENTE)

);
DROP TABLE TB_CONSULTA;
