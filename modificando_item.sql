SELECT *
	FROM aluno
	WHERE id = 1;
	
	UPDATE aluno
		SET nome = 'Maureta', 
		cpf = 12345678901,
		observacao = 'lorem ipsum',
		idade = 23,
		dinheiro = 15.23,
		altura =  1.74,
		ativo = FALSE,
		data_nascimento = '1999-03-26',
		hora_aula = '13:00:00',
		matriculado_em = '2020-01-02 15:00:00'
	
	WHERE id = 1;

SELECT * FROM aluno;