SELECT *
	FROM aluno
	WHERE cpf IS NOT NULL
	
SELECT *
	FROM aluno
	WHERE idade = 22


SELECT *
	FROM aluno
	WHERE idade >= 22
	

SELECT *
	FROM aluno
	WHERE idade <> 22
	

SELECT *
	FROM aluno
	WHERE idade BETWEEN 22 AND 25
	
SELECT * FROM aluno WHERE ativo = FALSE

SELECT * FROM aluno WHERE ativo IS NULL
