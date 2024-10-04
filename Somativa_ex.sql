CREATE DATABASE VENDAS_BD;
USE VENDAS_BD;

create table vendas(
	id_venda int auto_increment primary key not null,
    produto varchar(100) not null,
    quantidade int not null,
    preco decimal(10,2) not null
);

insert into vendas(produto, quantidade, preco)
	values("Produto 1", 5, 10.00),("Produto 2", 5, 5.00),("Produto 3", 5, 70.00), ("Produto 4", 5, 91.00),
    ("Produto 5", 5, 67.00),("Produto 6", 5, 150.00),("Produto 7", 5, 43.00),("Produto 8", 5, 30.00),
    ("Produto 9", 5, 755.00),("Produto 10", 5, 1000.00);
    
select * from vendas;

select count(*) AS Total_vendas
from vendas;

select sum(quantidade) AS Total_Produtos
from vendas;

select avg(preco) AS Media_de_Preço
from vendas;

select min(preco) AS Menor_Preço
from vendas;

select max(preco) AS Maior_Preço
from vendas;

select produto, count(*) AS Total_Vendas
from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas
group by produto
having Total_produtos_vendas >17;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas
group by produto
order by preco asc;

select produto, quantidade, preco
from vendas
order by preco desc
limit 5;

select produto, preco,
	(select max(preco) from vendas) AS Maior_Preco
from vendas;