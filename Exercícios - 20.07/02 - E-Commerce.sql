create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
codigo int,
produto varchar(255),
marca varchar(255),
cor varchar(255),
preco decimal(8,2),
primary key(id)
);

insert into tb_produtos(codigo, produto, marca, cor, preco) values (1101, "Smartphone", "LG", "Preto", 599.00);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (2022, "Smartphone", "Motorola", "Preto", 1259.10);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (3102, "Smartphone", "Apple", "Vermelho", 3812.07);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (4010, "Fone Bluetooth", "Apple", "Branco", 1074.99);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (5011, "Fone Bluetooth", "Xiaomi", "Preto", 263.00);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (6021, "Carregador Smartphone", "Xiaomi", "Branco", 75.20);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (7001, "Carregador Smartphone", "Apple", "Branco", 157.22);
insert into tb_produtos(codigo, produto, marca, cor, preco) values (8022, "Carregador Smartphone", "Motorola", "Preto", 49.90);


select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set cor = "Branco" where id = 5; 
select * from tb_produtos where id = 5;