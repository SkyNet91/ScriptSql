drop table cad_fornecedores;
drop table cad_funcionarios;
drop table cad_produto;
drop table vendas;


create table if not exists cad_produto(
    id serial primary key,
    nome varchar(100)
);

insert into cad_produto(nome) values ('computador'), ('microwaves'), ('parachoque'), ('lampada');

create table if not exists cad_fornecedores(
    id serial primary key,
    nome varchar(150)
);

insert  into cad_fornecedores(nome) values ('Robereto Paulo'), ('dormir'), ('cama'), ('cobertor'), ('dormir2');

create table if not exists cad_funcionarios(
    id serial, 
    nome varchar(150), 
    idade int
    );
    
insert into cad_funcionarios(nome, idade) values ('Hugo', 5),('Lala', 18);

create table  vendas(
    id serial,
    id_func int
);

alter table vendas
add constraint FkFuncionarioQueVendeu
foreign key (id_func) references cad_funcionarios(id);

insert into vendas (id_func) values(100);

select * from cad_produto;
select * from cad_fornecedores;
select * from vendas;