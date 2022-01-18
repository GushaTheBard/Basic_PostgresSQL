DROP TABLE funcionarios;

CREATE TABLE funcionarios (
	id			SERIAL			PRIMARY KEY,
	matricula 	VARCHAR(10),
	nome		VARCHAR(255),
	sobrenome 	VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Tom', 'Jobim');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinicius', 'Morais');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Renato', 'Russo');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'Joao', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Mônica', 'Russo');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Angus', 'Young');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M007', 'Renato', 'Russo');

/*Ordenando por 2 campos*/
SELECT * 
	FROM funcionarios
	ORDER BY sobrenome, matricula DESC
	
/*Ordenando por ID do campo*/
SELECT * 
	FROM funcionarios
	ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC

/*Ordenando com campos de mesmo nome*/
SELECT
	aluno.id		AS		"ID do Aluno",
	aluno.nome		AS		"Nome do Aluno",
	curso.id		AS		"ID do Curso",
	curso.nome		AS		"Nome do Curso"
	FROM aluno
	
		JOIN aluno_curso 	ON aluno_curso.aluno_id = aluno.id
		JOIN curso			ON curso.id				= aluno_curso.curso_id
		
		ORDER BY curso.nome, aluno.nome
		
			SELECT * FROM curso;
			SELECT * FROM aluno;
			
			INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (11, 3);
			
/*Limitando consultas*/
SELECT * 
	FROM funcionarios 
	ORDER BY 1
LIMIT 5
OFFSET 3;

/*Funções de agregação*/

SELECT COUNT 	(id),
		SUM 	(id),
		MAX 	(id),
		MIN 	(id),
		ROUND	(AVG(id), 0)
	FROM funcionarios;

/*Group By*/

SELECT DISTINCT nome, sobrenome,
	COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
	
SELECT curso.nome,
		COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
GROUP BY 1
ORDER BY 1

/*Filtros em Colunas agrupadas*/
SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT curso.nome,
		COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
GROUP BY 1
	HAVING COUNT(aluno.id) <> 0
	

SELECT nome,
		COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) > 1;
	
	
	