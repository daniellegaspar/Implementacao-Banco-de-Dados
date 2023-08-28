-- 1 consulta para listar o quantitativo de cursos existentes
select count(idCurso) as 'Total de Cursos' from Curso;



-- 2 consulta para listar o nome das disciplinas existentes.
select nome as 'Disciplinas Existentes' from disciplina;



/* 3 consulta para listar o nome de todos os cursos e seus respectivos alunos. 
A listagem deve ser mostrada em ordem decrescente pelo nome dos cursos.*/
select  curso.nome as 'nomeCurso',  aluno.nome as 'nomeAluno' from curso, aluno
inner join alunocurso
on alunocurso.idAluno = aluno.idAluno
order by curso.nome desc; 


	
/* 4 consulta para listar a média das notas das disciplinas de todos os cursos. Para isso, utilize o comando group by. */
select
avg(nota) as 'mediaNota', disciplina.nome as 'nomeDisciplina' from disciplina
inner join historico
on disciplina.idDisciplina = historico.idDisciplina
group by 2
order by medianota desc;
