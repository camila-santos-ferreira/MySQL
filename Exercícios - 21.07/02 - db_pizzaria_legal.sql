-- Criação do banco de dados
create database db_pizzaria_legal;

-- Declaração de uso do banco de dados
use db_pizzaria_legal;

-- Criação da tabela 1
create table tb_categoria (
id bigint auto_increment,
paladar varchar(255) not null,
tempo_preparo int not null,
fabricando boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_categoria (paladar, tempo_preparo, fabricando) values ("Salgado",30,true);
insert into tb_categoria (paladar, tempo_preparo, fabricando) values ("Doce",20,true);
insert into tb_categoria (paladar, tempo_preparo, fabricando) values ("Amargo",30,true);
insert into tb_categoria (paladar, tempo_preparo, fabricando) values ("Azedo",30,true);
insert into tb_categoria (paladar, tempo_preparo, fabricando) values ("Umami",30,true);

-- Criação da tabela 2
create table tb_pizza (
id bigint auto_increment,
sabor varchar(255) not null,
tipo_massa varchar(255) not null,
recheio_borda varchar(255) not null,
fatias int not null,
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Declaração dos dados
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Mussarela","Sem recheio","Tradicional",10,65.99,1);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Calabresa","Catupiry","Tradicional",10,60.99,1);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Escarola","Sem recheio","Folhada",10,50.99,3);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Frango","Requeijão","Tradicional",10,63.99,5);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Chocolate","Sem recheio","Folhada",6,38.99,2);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Limão","Sem recheio","Folhada",6,34.99,4);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Jiló","Sem recheio","Tradicional",10,49.99,3);
insert into tb_pizza (sabor, tipo_massa, recheio_borda, fatias, preco, categoria_id) values ("Banana","Chocolate","Tradicional",6,37.99,2);

-- Valor > 45.00
select * from tb_pizza where preco > 45.00;

-- Valor entre 29.00 e 60.00
select * from tb_pizza where preco between 29.00 and 60.00 order by sabor asc;

-- Produtos com letra c
select * from tb_pizza where sabor like "%c%";

-- Inner join
select * from tb_pizza inner join tb_categoria on tb_categoria.id =  tb_pizza.categoria_id order by sabor;

-- Buscando em uma classe específica
select * from tb_pizza where tb_pizza.categoria_id = 2 order by sabor;
