-- Criação do banco de dados
create database db_farmacia_do_bem;

-- Declaração de uso do banco de dados
use db_farmacia_do_bem;

-- Criação da tabela 1
create table tb_categoria (
id bigint auto_increment,
finalidade varchar(255) not null,
idade_minima int not null,
disponivel boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_categoria (finalidade, idade_minima, disponivel) values ("Gripe",6,true);
insert into tb_categoria (finalidade, idade_minima, disponivel) values ("Dor de cabeça",12,true);
insert into tb_categoria (finalidade, idade_minima, disponivel) values ("Estresse",12,true);
insert into tb_categoria (finalidade, idade_minima, disponivel) values ("Febre",6,true);
insert into tb_categoria (finalidade, idade_minima, disponivel) values ("Dor no estômago",12,true);


-- Criação da tabela 2
create table tb_produto (
id bigint auto_increment,
produto varchar(255) not null,
fabricante varchar(255) not null,
dtvalidade date,
quantidade_xicara_dia int not null,
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Declaração dos dados
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de limão","Plantação","2021-08-15",2,21.00,1);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de camomila","Jardim","2021-08-01",2,18.63,3);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de boldo","Jardim","2021-08-05",2,35.00,5);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de eucalipto","Plantação","2021-08-20",1,26.00,4);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de ervas","Jardim","2021-08-02",1,102.54,4);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de manjerição","Jardim","2021-08-08",1,12.00,1);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de maçã","Plantação","2021-08-15",1,84.21,1);
insert into tb_produto (produto, fabricante, dtvalidade, quantidade_xicara_dia, preco, categoria_id) values ("Chá de gengibre","Plantação","2021-08-02",1,31.20,1);


-- Valor > 50.00
select * from tb_produto where preco > 50.00;

-- Valor entre 3.00 e 60.00
select * from tb_produto where preco between 3.00 and 60.00 order by produto;

-- Produtos com letra b
select * from tb_produto where produto like "%b%";

-- Inner join
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id order by produto;

-- Buscando em uma classe específica
select * from tb_produto where tb_produto.categoria_id = 3 order by produto;
