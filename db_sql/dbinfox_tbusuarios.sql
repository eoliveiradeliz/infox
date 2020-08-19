-- usando mysql
-- mostra bases de dados
show databases;
-- cria base de dados
create database dbinfox;	
-- usa o banco de dados dbinfox
use dbinfox;
-- cria a tabela dentro da base de dados selecionada
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) ,
login varchar(15) not null unique,
senha varchar(15)not null
);
-- descreve a tabela informada
describe tbusuarios;	
-- insere dados na tabela
insert into tbusuarios(iduser,usuario,fone,login,senha) 
values(1,'Jose de assis','9999-9999','joseassis','123456');

insert into tbusuarios(iduser,usuario,fone,login,senha) 
values(2,'Maria da Silva','9999-9999','maria','123456');

insert into tbusuarios(iduser,usuario,fone,login,senha) 
values(3,'Pedro Oliveira','9999-9999','oliveira','123456');

insert into tbusuarios(iduser,usuario,fone,login,senha) 
values(4,'Administrador','9999-9999','admin','123456');

-- seleciona dados da tabela 
select * from `dbinfox`.`tbusuarios`;

-- alterado dados na tabela
update tbusuarios set fone='8888-8888' where iduser=4;

update tbusuarios set senha='admin' where iduser=4;

-- apagar registro da tabela
delete from tbusuarios where iduser=3;
