create database exerc_fixacao;

use exerc_fixacao;

create table Departamentos(
codigo_Depto int not null,
nome varchar(30),
localizacao varchar(30),
primary key(codigo_Depto));

create table funcionarios(
codigo_Func int not null,
codigo_Depto int not null,
primeiro_Nome varchar(20),
segundo_Nome varchar(20),
ultimo_Nome varchar(20),
data_Nasc date,
cpf varchar(14) unique,
rg varchar(13),
endereco varchar(60),
cep varchar(10),
cidade varchar(30) default 'Itapira',
fone_Res varchar(14),
fone_Cel varchar(15),
funcao varchar(30),
salario decimal(8,2),
primary key(codigo_Func, codigo_Depto),
foreign key(codigo_Depto) references Departamentos(codigo_Depto));

select primeiro_Nome, segundo_Nome from funcionarios order by segundo_Nome;

select * from funcionarios order by cidade;

select primeiro_Nome, segundo_Nome, salario from funcionarios where salario > 1.000 order by primeiro_Nome;

select data_Nasc, primeiro_Nome from funcionarios order by data_Nasc;

select primeiro_Nome, segundo_Nome, ultimo_Nome, endereco, cep, cidade, fone_Res, fone_Cel from funcionarios;

select SUM(salario) from funcionarios;

select count(codigo_Func) from funcionarios;

select avg(salario) from funcionarios;

select primeiro_Nome, funcao from funcionarios where cidade = "Itapira" and funcao = "Recepcionista";








