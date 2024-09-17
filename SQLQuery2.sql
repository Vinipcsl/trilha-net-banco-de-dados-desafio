SELECT nome,
ano
FROM Filmes

-- 2 

SELECT *
FROM Filmes
ORDER BY ano;

-- 3

SELECT * 
FROM Filmes
WHERE Nome ='De Volta para o Futuro';

-- 4

SELECT * 
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT * 
FROM Filmes
WHERE Ano LIKE '2%';

--6

SELECT * 
FROM Filmes
WHERE Duracao > 100 
AND Duracao < 150
ORDER BY Duracao;

-- 7

SELECT ANO, 
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY ANO
ORDER BY Quantidade DESC;

-- 8

SELECT * FROM Atores
WHERE Genero = 'M';

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome Asc;

-- 10

SELECT f.Nome 
AS Nome,g.Genero 
AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11

SELECT f.Nome 
AS Nome,g.Genero 
AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério';

-- 12

SELECT f.Nome AS Filme,
a.PrimeiroNome,
a.UltimoNome,
e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON a.Id = e.IdAtor;
