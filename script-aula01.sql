#Permite criar o database
create database db_video_locadora;

#Visualiza todos os databases no mysql
show databases;

#Permite excluir um database
drop database db_video_locadora;

#Especifica o database utilizado
use db_video_locadora;

create table tbl_genero (
		id int not null auto_increment primary key,
        nome varchar(45) not null,
        unique index(id)
);

create table tbl_classificacao(
		id int not null auto_increment,
        nome varchar(20) not null,
        classificacao varchar(45) not null,
        caracteristicas varchar(80) not null,
        unique index(id),
        primary key(id)
);

create table tbl_nacionalidade (
		id int not null auto_increment primary key,
        nome varchar(45) not null,
        unique index(id)
);

create table tbl_sexo (
		id int not null auto_increment primary key,
        siglas varchar(6) not null,
        descricao varchar(45) not null,
        unique index(id)
);

#Exibe todas as tabelas
show tables;

#Visualiza a estrutura fisica de uma tabela
desc tbl_sexo;
describe tbl_genero;

#Apaga o objeto tabela
#drop table tbl_sexo;

#adicionar -> add
#apagar -> drop
#modificar -> modify, change
alter table tbl_sexo drop column descricao;
alter table tbl_sexo add column descricao varchar(30);
alter table tbl_sexo modify column descricao varchar(30) not null; #modifica a estrutra
alter table tbl_sexo change descricao descricao varchar(30) not null; #renomeia e modifica a estrutra

