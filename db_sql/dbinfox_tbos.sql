-- usando naco dados dbinfox
use dbinfox;

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

