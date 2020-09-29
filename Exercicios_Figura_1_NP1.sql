use exerc_fixacao;

-- Utilize a modelagem (Figura 1) e crie as estruturas SQL para as questões:
-- a) Mostre a média de salários da folha de pagamento.
select avg(salario) from funcionarios;

-- b) Mostre os nomes, a função dos funcionários e o departamento que ele trabalha. Agrupando pelo nome do departamento.
select f.primeiro_Nome, f.funcao, d.codigo_Depto, d.nome from funcionarios f, departamentos d
where d.codigo_Depto = f.codigo_Func
group by nome;
-- c) Mostre os nomes, o endereço, RG e CPF dos funcionários que trabalham no departamento de TI.
select f.primeiro_Nome, f.endereco, f.rg, f.cpf, d.nome from funcionarios f, departamentos d
where f.codigo_Func = d.codigo_Depto
and nome = 'TI';

-- d) Mostre o nome e os salários dos funcionários que nasceram entre 01/01/1980 a 31/12/1990.
select primeiro_Nome, salario, data_Nasc from funcionarios
where data_Nasc >01/01/1980 <31/12/1990;


