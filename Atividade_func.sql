CREATE DATABASE func_bd;
USE func_bd;

create table funcionario(
	codfunc int auto_increment primary key not null,
    nomefunc varchar(100) not null,
    sexofunc varchar(50) not null,
    bairrofunc varchar(100) not null,
    salfunc decimal(10,2) not null,
    setorfunc varchar(100) not null
);

insert into funcionario(nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
	values("Larissa Menezes","F","Jabaquara",1200.00,"Marketing"),
    ("Selma Nunes","F","Grajaú",3800.00,"Vendas"),
    ("Leandro Henrique","M","Socorro",2950.00,"RH"),
    ("Amélia Jeremias","F","Socorro",4200.00,"Marketing"),
    ("Cláudio Jorge Silva","M","Jabaquara",1480.00,"Vendas"),
    ("Luciano Souza","M","Pedreira",1000.00,"Vendas"),
    ("Gabriela Santos Nunes","F","Jurubatuba",4150.00,"RH"),
    ("Rafaela Vieira Jr","F","Jabaquara",700.00,"Marketing"),
    ("Suzana Crispim","F","Grajaú",5600.00,"Produção"),
    ("Sabrina Oliveira Castro","F","Pedreira",2900.00,"Marketing"),
    ("Jarbas Silva Nunes","M", "Jurubatuba",5300.00,"Produção"),
    ("Ralf Borges","M","Jabaquara",1600.00,"Marketing");
    
    select * from funcionario;
    
    select sum(salfunc) AS Total_Salário
    from funcionario;
    
    select setorfunc, count(*) AS Func_Marketing
    from funcionario
    where setorfunc = 'Marketing';
    
    select setorfunc, avg(salfunc) AS Media_Salario 
    from funcionario 
    group by setorfunc
    order by Media_Salario desc;
    
    select COUNT(*) AS Func_Socorro 
    from funcionario 
    where salfunc < 3000 and bairrofunc = 'Socorro';
    
    select setorfunc, COUNT(*) AS Quantidade_Funcionarios 
    from funcionario 
    group by setorfunc 
    having COUNT(*) > 3;