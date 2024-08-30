create database escola;

use escola;

create table aluno (
ra int primary key auto_increment,
nome varchar(50),
serie varchar(40)
);

create table disciplina (
id int auto_increment primary key,
nome varchar(50),
professor varchar(40)
);

create table notas (
id int auto_increment primary key,
fkAluno int,
fkDisciplina int,
nota decimal(5,2),
dtAvaliacao date,
foreign key (fkAluno) references aluno (ra),
foreign key (fkDisciplina) references disciplina (id)
);

INSERT INTO aluno (nome, serie) VALUES 
('João Silva', '3ª Série'),
('Maria Oliveira', '2ª Série'),
('Carlos Souza', '1ª Série'),
('Ana Costa', '4ª Série'),
('Paulo Ferreira', '5ª Série');

INSERT INTO disciplina (nome, professor) VALUES 
('Matemática', 'Prof. Marcia Lima'),
('História', 'Prof. João Pedro'),
('Geografia', 'Prof. Carla Nunes'),
('Ciências', 'Prof. Roberto Almeida'),
('Português', 'Prof. Juliana Santos'),
('Inglês', 'Prof. Fernando Martins');

INSERT INTO notas (fkAluno, fkDisciplina, nota, dtAvaliacao) VALUES 
(1, 1, 8.5, '2024-08-05'),
(1, 2, 8.5, '2024-08-18'),
(1, 3, 7.5, '2024-08-10'),
(1, 4, 7.0, '2024-08-25'),
(1, 5, 8.0, '2024-08-28'),
(1, 6, 10.0, '2024-08-16'),
(2, 1, 6.0, '2024-08-15'),
(2, 2, 7.5, '2024-08-18'),
(2, 3, 9.0, '2024-08-10'),
(2, 4, 7.0, '2024-08-25'),
(2, 5, 9.0, '2024-08-14'),
(2, 6, 7.5, '2024-08-30'),
(3, 1, 5.0, '2024-08-05'),
(3, 2, 7.0, '2024-08-18'),
(3, 3, 8.5, '2024-08-10'),
(3, 4, 5.5, '2024-08-25'),
(3, 5, 7.5, '2024-08-28'),
(3, 6, 8.0, '2024-08-30'),
(4, 1, 8.0, '2024-08-05'),
(4, 2, 8.0, '2024-08-18'),
(4, 3, 7.0, '2024-08-10'),
(4, 4, 9.5, '2024-08-25'),
(4, 5, 10.0, '2024-08-14'),
(4, 6, 8.0, '2024-08-30'),
(5, 1, 7.5, '2024-08-15'),
(5, 2, 7.0, '2024-08-18'),
(5, 3, 9.0, '2024-08-10'),
(5, 4, 7.5, '2024-08-12'),
(5, 4, 6.0, '2024-08-25'),
(5, 5, 8.0, '2024-08-14'),
(5, 6, 9.0, '2024-08-30');

select * from aluno;
select * from disciplina;
select * from notas;

select a.ra RA,
       a.nome Aluno,
       d.nome 'Matéria',
       n.nota Nota,
       n.dtAvaliacao 'Data Avaliação'
from notas n
join aluno a on n.fkAluno = a.ra
join disciplina d on n.fkDisciplina = d.id

select a.ra RA,
       a.nome Aluno,
       d.nome 'Matéria',
       n.nota Nota,
       n.dtAvaliacao 'Data Avaliação'
from notas n
join aluno a on n.fkAluno = a.ra
join disciplina d on n.fkDisciplina = d.id
where a.nome = 'João Silva';

select a.ra RA,
       a.nome Aluno,
       d.nome 'Matéria',
       n.nota Nota,
       n.dtAvaliacao 'Data Avaliação'
from notas n
join aluno a on n.fkAluno = a.ra
join disciplina d on n.fkDisciplina = d.id
where d.nome = 'Matemática'