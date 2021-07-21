-- Criação do banco de dados
create database db_generation_game_online;

-- Declaração de uso do banco de dados
use db_generation_game_online;

-- Criação da tabela 1
create table tb_classe (
id bigint auto_increment,
elemento varchar(255) not null,
anos_vida_util int not null,
ativo boolean not null,
primary key (id)
);

-- Declaração dos dados
insert into tb_classe (elemento, anos_vida_util, ativo) values ("Terra",20,true);
insert into tb_classe (elemento, anos_vida_util, ativo) values ("Ar",15,true);
insert into tb_classe (elemento, anos_vida_util, ativo) values ("Água",30,true);
insert into tb_classe (elemento, anos_vida_util, ativo) values ("Fogo",10, true);
insert into tb_classe (elemento, anos_vida_util, ativo) values ("Força",25, true);

-- Criação da tabela 2
create table tb_personagem (
id bigint auto_increment,
nome varchar(255) not null,
anos_vida_atual int not null,
cor varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Declaração dos dados
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Acquaone",15,"Azul",2200,1800,3);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Airone",10,"Cinza",1500,1600,2);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Earthone",5,"Azul",1300,1100,1);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Fireone",7,"Vermelho",2900,2100,4);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Strengthone",10,"Branca",2500,2600,5);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Airtwo",13,"Cinza Escuro",1200,1300,2);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Acquatwo",25,"Azul",1700,1200,3);
insert into tb_personagem (nome, anos_vida_atual, cor, ataque, defesa, classe_id) values ("Firetwo",5,"Vermelho",3300,2500,4);

-- Personagens com poder de ataque > 2000
select tb_personagem.nome as Nome, tb_personagem.anos_vida_atual as Vida_Atual, tb_personagem.cor as Cor, tb_personagem.ataque as Ataque,
tb_personagem.Defesa as Defesa from tb_personagem where ataque > 2000;

-- Personagens com poder entre 1000 e 2000
select tb_personagem.nome as Nome, tb_personagem.anos_vida_atual as Vida_Atual, tb_personagem.cor as Cor, tb_personagem.ataque as Ataque,
tb_personagem.Defesa as Defesa from tb_personagem where defesa between 1000 and 2000 order by nome asc;

-- Personagens com letra c
select tb_personagem.nome as Nome, tb_personagem.anos_vida_atual as Vida_Atual, tb_personagem.cor as Cor, tb_personagem.ataque as Ataque,
tb_personagem.Defesa as Defesa from tb_personagem where nome like "%c%";

-- Inner join
select tb_personagem.nome as Nome, tb_personagem.anos_vida_atual as Vida_Atual, tb_personagem.cor as Cor, tb_personagem.ataque as Ataque,
tb_personagem.Defesa as Defesa, tb_classe.elemento as Elemento, tb_classe.anos_vida_util as Vida_Máxima, tb_classe.ativo as Ativo
from tb_personagem inner join tb_classe on tb_classe.id =  tb_personagem.classe_id order by nome;

-- Buscando em uma classe específica
select tb_personagem.nome as Nome, tb_personagem.anos_vida_atual as Vida_Atual, tb_personagem.cor as Cor, tb_personagem.ataque as Ataque,
tb_personagem.Defesa as Defesa from tb_personagem where tb_personagem.classe_id = 4 order by nome;
