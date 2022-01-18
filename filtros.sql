SELECT nome AS "Nome do Aluno", 
	idade,
	matriculado_em AS data_matricula
	FROM aluno;

INSERT INTO aluno (nome) VALUES ('Vinicius Dias');
INSERT INTO aluno (nome) VALUES ('Joverson Liet');
INSERT INTO aluno (nome) VALUES ('Laurean Jacob');
INSERT INTO aluno (nome) VALUES ('Diego');
INSERT INTO aluno (nome) VALUES ('Diogo');

DELETE FROM aluno
	WHERE nome <> 'Mauro';
	
SELECT *
	FROM aluno
	WHERE nome LIKE 'D%';
	
	
SELECT *
	FROM aluno
	WHERE nome LIKE '% %';
	

SELECT *
	FROM aluno
	WHERE nome LIKE 'Di_go';