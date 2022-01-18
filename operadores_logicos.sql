SELECT *
	FROM aluno
	WHERE nome LIKE 'D%' AND cpf IS NOT NULL;
	
SELECT *
	FROM aluno
	WHERE nome LIKE 'Mauro' 
	OR nome LIKE 'Severson'
	OR nome LIKE 'Diego';