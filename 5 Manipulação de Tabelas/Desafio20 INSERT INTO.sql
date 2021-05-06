-- INSERT INTO

CREATE TABLE Aula(
id		INT				PRIMARY KEY,
Nome	VARCHAR(200)
);

INSERT INTO Aula(id, Nome)
VALUES(1, 'Aula 1');

INSERT INTO Aula(id, Nome)
VALUES
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4');


SELECT * INTO TabelaNova FROM Aula;

SELECT * FROM TabelaNova;

