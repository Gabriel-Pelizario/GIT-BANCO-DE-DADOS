-- 1) Crie o banco de dados exercicioInnerJoin
create database exercicioInnerJoin;

use exercicioInnerJoin;

-- 2) Crie as tabelas conforme o diagrama do slideanterior
create table Cliente (
cpf int not null,
nome varchar(60),
dtNasc date,
primary key(cpf));

create table modeo (
codMod integer not null,
Desc_2 varchar(40),
primary key(codMod));

create table Patio (
num int not null,
ender varchar(40),
capacidade integer,
primary key(num));

create table veiculo (
placa int not null,
Modelo_codMod integer,
Cliente_cpf integer,
cor varchar(20),
primary key(placa),
foreign key(Modelo_codMod) references modelo(codMod),
foreign key(Cliente_cpf) references modelo(codMod));

create table estaciona (
cod int not null,
Patio_num int,
Veiculo_placa int,
dtEntrada varchar(10),
dtSaida varchar(10),
hsEntrada varchar(10),
hsSaida varchar(10),
primary key(cod),
foreign key(Patio_num) references patio(num),
foreign key(Veiculo_placa) references patio(num));

-- 3) Exiba a placa e o nome dos donos de todos os veículos
select v.placa, c.nome from veiculo v, cliente c;

-- 4) Exiba o CPF e o nome do cliente que possui o veiculo de placa "JJJ 2020"
select c.cpf, c.nome, v.placa from cliente c, veiculo v
where v.placa = "JJJ 2020";

-- 5) Exiba a placa e a cor do veículo que possui o código de estacionamento 1
select v.placa, v.cor, e.cod from veiculo v, estaciona e
where e.cod = 1;

-- 6) Exiba o endereço, a data de entrada e de saída dos estacionamentos do veículo de placa "JEG 1010"
select p.ender, e.dtEntrada, e.dtSaida, v.placa from patio p, estaciona e, veiculo v
where v.placa = "JEP 1010";

-- 7) Exiba a quantidade de vezes os veículos de cor verde estacionaram
select count(v.placa), e.dtEntrada from veiculo v, estaciona e;

-- 8) Liste todos os clientes que possuem carro de modelo 1
select c.nome, m.codMod from cliente c, modelo m
where m.codMod = 1;

-- 9) Liste as placas, os horários de entrada e saída dos veículos de cor verde
select v.placa, e.hsEntrada, e.hsSaida, v.cor from veiculo v, estaciona e
where v.cor = "verde";

-- 10) Liste todos os estacionamentos do veículo de placa “JJJ 2020"
select e.cod, v.placa from estaciona e, veiculo v
where v.placa = "JJJ 2020";

-- 11) Exiba o nome do cliente que possui o veículo cujo código do estacionamento é 2
select c.nome, e.cod from cliente c, estaciona e
where e.cod = 2;

-- 12) Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é 3
select c.cpf, e.cod from cliente c, estaciona e
where e.cod = 3;

-- 13) Exiba a descrição do modelo do veículo cujo código do estacionamento é 2
select m.Desc_2, e.cod from modelo m, estaciona e
where e.cod = 2;

-- 14) Exiba a placa, o nome dos donos e a descrição dos os modelos de todos os veículos
select v.placa, c.nome, m.Desc_2 from veiculo v, cliente c, modelo m;
















