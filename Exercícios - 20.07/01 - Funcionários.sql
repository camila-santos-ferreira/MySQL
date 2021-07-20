create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
id bigint auto_increment,
matricula int,
nome varchar(255),
departamento varchar(255),
cargo varchar(255),
salario decimal(8,2),
primary key(id)
);

insert into tb_funcionarios(matricula, nome, departamento, cargo, salario) values (100001, "Francisco Mendes da Silva", "Recursos Humanos", "Analista de Recrutamento e Seleção", 4200.32);
insert into tb_funcionarios(matricula, nome, departamento, cargo, salario) values (100002, "Lucia Araujo Souza", "Recursos Humanos", "Assistente de Recursos Humanos", 2566.00);
insert into tb_funcionarios(matricula, nome, departamento, cargo, salario) values (100003, "Ana Sebastiana Barros", "Recursos Humanos", "Jovem Aprendiz", 852.00);
insert into tb_funcionarios(matricula, nome, departamento, cargo, salario) values (100004, "Julio Monteiro", "Recursos Humanos", "Estagiário", 1443.00);
insert into tb_funcionarios(matricula, nome, departamento, cargo, salario) values (100005, "Carolina Carvalho Silva", "Recursos Humanos", "Gerente de Recursos Humanos", 10143.89);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 2700.00 where id = 2; 
select * from tb_funcionarios where id = 2;