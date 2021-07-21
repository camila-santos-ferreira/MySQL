-- Criação do banco de dados
create database db_construindo_a_nossa_vida;

-- Declaração de uso do banco de dados
use db_construindo_a_nossa_vida;

-- Criação da tabela 1
create table tb_categoria (
id bigint auto_increment,
classificacao varchar(255) not null,
material varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_categoria (classificacao, material, disponivel) values ("Móveis para sala","Madeira",true);
insert into tb_categoria (classificacao, material, disponivel) values ("Acessórios para cozinha","Aço",true);
insert into tb_categoria (classificacao, material, disponivel) values ("Acessórios para banheiro","Marmore",true);
insert into tb_categoria (classificacao, material, disponivel) values ("Móveis para quarto","Madeira",true);
insert into tb_categoria (classificacao, material, disponivel) values ("Acessórios para área de serviço","Plastico",true);


-- Criação da tabela 2
create table tb_produto (
id bigint auto_increment,
produto varchar(255) not null,
cor varchar(255) not null,
peso int not null,
estoque_unidade int not null,
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Declaração dos dados
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Estante","Marrom",120,25,240.00,1);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Panela de pressão","Cinza",5,123,80.00,2);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Piso","Branco",3,985,35.00,3);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Cabeceira","Bege",60,8,520.00,4);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Vaso para flores","Amarelo",2,15,16.00,5);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Mesa de centro","Marrom",75,23,184.00,1);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Bule","Preto",1,35,120.00,2);
insert into tb_produto (produto, cor, peso, estoque_unidade, preco, categoria_id) values ("Comoda","Marrom",100,14,420.00,4);

-- Valor > 50.00
select * from tb_produto where preco > 50.00;

-- Valor entre 3.00 e 60.00
select * from tb_produto where preco between 3.00 and 60.00 order by produto;

-- Produtos com letra c
select * from tb_produto where produto like "%c%";

-- Inner join
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id order by produto;

-- Buscando em uma classe específica
select * from tb_produto where tb_produto.categoria_id = 4 order by produto;
