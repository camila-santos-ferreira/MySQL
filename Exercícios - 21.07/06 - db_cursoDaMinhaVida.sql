-- Criação do banco de dados
create database db_cursoDaMinhaVida;

-- Declaração de uso do banco de dados
use db_cursoDaMinhaVida;

-- Criação da tabela 1
create table tb_categoria (
id bigint auto_increment,
area_curso varchar(255) not null,
modalidade varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_categoria (area_curso, modalidade, disponivel) values ("Financeira","EAD",true);
insert into tb_categoria (area_curso, modalidade, disponivel) values ("Lingua portuguesa","Presencial",true);
insert into tb_categoria (area_curso, modalidade, disponivel) values ("Lingua inglesa","Semi presencial",true);
insert into tb_categoria (area_curso, modalidade, disponivel) values ("Tecnologia","EAD",true);
insert into tb_categoria (area_curso, modalidade, disponivel) values ("Esporte","Presencial",true);


-- Criação da tabela 2
create table tb_curso (
id bigint auto_increment,
curso varchar(255) not null,
duracao_meses int not null,
professor varchar(255) not null,
bolsas int not null,
preco_mes decimal(5,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Declaração dos dados
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Finanças pessoais",6,"Jose",10,50.00,1);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Gramatica",12,"Maria",2,80.00,2);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Conversacao",24,"Joao",15,120.00,3);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Java",3,"Paulo",5,150.00,4);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Volei",12,"Nanci",3,200.00,5);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Leitura",12,"Paula",5,100.00,3);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("POO",3,"Hugo",1,100.00,4);
insert into tb_curso (curso, duracao_meses, professor, bolsas, preco_mes, categoria_id) values ("Oratoria",3,"Mario",5,40.00,2);


-- Valor > 50.00
select * from tb_curso where preco_mes > 50.00;

-- Valor entre 3.00 e 60.00
select * from tb_curso where preco_mes between 3.00 and 60.00 order by curso;

-- Produtos com letra j
select * from tb_curso where curso like "%j%";

-- Inner join
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id order by curso;

-- Buscando em uma classe específica
select * from tb_curso where tb_curso.categoria_id = 2 order by curso;
