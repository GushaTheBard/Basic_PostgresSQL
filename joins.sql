DROP TABLE curso;

CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'HTML');

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'JavaScript');



SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Mauro');

SELECT * FROM aluno;

SELECT * FROM curso;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY(aluno_id, curso_id),
	
	FOREIGN KEY(aluno_id)
		REFERENCES aluno (id),
	
	FOREIGN KEY(curso_id)
		REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 3);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 1);
/* Bloqueia a inserção*/


SELECT * FROM aluno;
SELECT * FROM curso;

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id
	
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 2);

INSERT INTO aluno (nome) VALUES ('Nico');
INSERT INTO curso (id, nome) VALUES (3, 'CSS');

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	LEFT JOIN curso ON curso.id = aluno_curso.curso_id
	

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	RIGHT JOIN curso ON curso.id = aluno_curso.curso_id
	
SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN curso ON curso.id = aluno_curso.curso_id

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	CROSS JOIN curso
	
INSERT INTO aluno (nome) VALUES ('Joao');

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

DELETE FROM aluno WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
		REFERENCES aluno (id)
		ON DELETE CASCADE,
	
	FOREIGN KEY (curso_id)
		REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 3);

SELECT * FROM aluno_curso;

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id
	
DELETE FROM aluno WHERE id = 1;


UPDATE aluno 
	SET id = 10
	WHERE id = 4;
	
DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
		REFERENCES aluno (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	
	FOREIGN KEY (curso_id)
		REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3, 1);

SELECT 
	aluno.nome AS Aluno,
	curso.nome AS Curso,
	curso.id AS Curso_ID,
	curso.nome AS "Nome do Curso"
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id
	
UPDATE aluno
	SET id = 10
	WHERE id = 2;
	
SELECT * FROM aluno_curso;