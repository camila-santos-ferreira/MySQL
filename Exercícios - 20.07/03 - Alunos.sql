create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
matricula int,
nome varchar(255),
serie varchar(255),
turno varchar(255),
nota decimal(4,2),
primary key(id)
);

insert into tb_alunos(matricula, nome, serie, turno, nota) values (10101, "Ana Mendes da Silva", "8º ano", "Diurno", 7.50);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10102, "Miguel Lima de Souza", "8º ano", "Diurno", 6.75);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10103, "Alice Maria Araujo", "7º ano", "Vespertino", 8.50);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10104, "Felipe Barbosa", "6º ano", "Vespertino", 6.50);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10105, "Beatriz Oliveira da Silva", "7º ano", "Vespertino", 9.00);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10106, "Tulio Luis Lima", "8º ano", "Diurno", 10.00);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10107, "Fatima Pereira Feitosa", "6º ano", "Vespertino", 7.00);
insert into tb_alunos(matricula, nome, serie, turno, nota) values (10108, "Mariana Marques Silva", "7º ano", "Vespertino", 7.75);

select * from tb_alunos where nota >= 7.00;
select * from tb_alunos where nota < 7.00;

update tb_alunos set nota = 9.75 where id = 6; 
select * from tb_alunos where id = 6;