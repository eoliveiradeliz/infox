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