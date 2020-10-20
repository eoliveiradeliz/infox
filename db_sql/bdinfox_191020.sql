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
-- --------------------------------------------------

-- criar a tabela ordens de serviço

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key (idcli) references tbclientes(idcli)
);

-- descrever tabela
describe tbos;

-- inserir registro na tabela
insert into tbos(equipamento, defeito, servico, tecnico,valor,idcli)
values ('notebook','não liga','verificação hadware e testes', 'joao',250, 1);

-- selecionar a tabela tbos
select * from tbos;

-- traz informação de duas tabelas

select  
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from  tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);
-- ------------------------------------------------------
-- criando a tabela clientes
create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(15) not null,
emailcli varchar(50)
);

-- descrição da tabela
describe tbclientes;

-- mostra tabela no dbinfox
show tables;

-- inserindo dados dados tabela clientes
insert into tbclientes(nomecli, endcli, fonecli, emailcli) 
values ('Maria da Silva', 'Rua das bracatingas, Bairro Caroba, Lages/SC','49 9999-9999', 'msilva@gmail.com');

-- selecionando dados tabela clientes
select *from tbclientes;

use dbinfox;
describe tbusuarios;
select * from tbusuarios;
-- linha abaixo adiciona um campo na tabela
alter table tbusuarios add column perfil varchar(20) not null;
-- linha abaixo remove um campo na tabela
alter table tbusuarios drop column perfil;
-- linha abaixo atualiza campo perfil da tabela
update tbusuarios set perfil='admin' where iduser=1; 
update tbusuarios set perfil='admin' where iduser=4; 
update tbusuarios set perfil='user' where iduser=2; 


