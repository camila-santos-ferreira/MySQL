-- Criação do banco de dados
create database db_cidade_das_carness;

-- Declaração de uso do banco de dados
use db_cidade_das_carness;

-- Criação da tabela 1
create table tb_categoria (
id bigint auto_increment,
estado varchar(255) not null,
origem varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_categoria (estado, origem, disponivel) values ("Cortada","Frango",true);
insert into tb_categoria (estado, origem, disponivel) values ("Cortada","Suina",true);
insert into tb_categoria (estado, origem, disponivel) values ("Sem corte","Peixe",true);
insert into tb_categoria (estado, origem, disponivel) values ("Picada","Frango",true);
insert into tb_categoria (estado, origem, disponivel) values ("Cortada","Boi",true);

-- Criação da tabela 2
create table tb_produto (
id bigint auto_increment,
produto varchar(255) not null,
coloracao varchar(255) not null,
estoque_kg int not null,
data_validade date,
preco_kg decimal(5,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Declaração dos dados
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Bife","Vermelha",550,"2021-07-25",40.00,5);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Frango a passarinho","Branca",300,"2021-07-23",25.00,4);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("File de pescada","Branca",150,"2021-07-20",35.00,3);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Costela de porco","Branca",450,"2021-07-25",32.00,2);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Costela de boi","Vermelha",750,"2021-07-24",45.00,5);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("File de frango","Branca",850,"2021-07-22",25.00,1);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Salmao","Branca",50,"2021-07-20",85.00,3);
insert into tb_produto (produto, coloracao, estoque_kg, data_validade, preco_kg, categoria_id) values ("Carne moida","Vermelha",750,"2021-07-23",36.00,5);



-- Valor > 50.00
select * from tb_produto where preco_kg > 50.00;

-- Valor entre 3.00 e 60.00
select * from tb_produto where preco_kg between 3.00 and 60.00 order by produto;

-- Produtos com letra c
select * from tb_produto where produto like "%c%";

-- Inner join
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id order by produto;

-- Buscando em uma classe específica
select * from tb_produto where tb_produto.categoria_id = 2 order by produto;
