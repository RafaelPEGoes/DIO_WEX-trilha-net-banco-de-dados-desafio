-- EXERCÍCIO 1

SELECT
		Nome,
		Ano
FROM 
		Filmes;

---------------------------------------
-- EXERCÍCIO 2

SELECT
		Nome,
		Ano,
		Duracao
FROM 
		Filmes
ORDER BY
		Ano ASC;

----------------------------------------
-- EXERCÍCIO 3

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Nome = 'De Volta para o Futuro';

----------------------------------------
-- EXERCÍCIO 4

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Ano= 1997;

----------------------------------------
-- EXERCÍCIO 5

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Ano > 2000;

----------------------------------------
-- EXERCÍCIO 6

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Duracao
			BETWEEN 101 AND 149
ORDER BY
		Duracao ASC;

----------------------------------------
-- EXERCÍCIO 7
-- ordenado pela duração???

SELECT
		Ano,
		COUNT(*) AS Quantidade
FROM
		Filmes
GROUP BY 
		Ano
ORDER BY
		Quantidade DESC;

----------------------------------------
-- EXERCÍCIO 8

SELECT
		Id,
		PrimeiroNome,
		UltimoNome,
		Genero
FROM
		Atores
WHERE 
		Genero = 'M';

----------------------------------------
-- EXERCÍCIO 9

SELECT
		Id,
		PrimeiroNome,
		UltimoNome,
		Genero
FROM
		Atores
WHERE 
		Genero = 'F'
ORDER BY
		PrimeiroNome;

----------------------------------------
-- EXERCÍCIO 10

SELECT
		F.Nome,
		G.Genero
FROM
		Filmes AS F
INNER JOIN
		FilmesGenero FG
	ON	F.Id = FG.IdFilme
INNER JOIN
		Generos G
	ON	FG.IdGenero = G.Id;

----------------------------------------
-- EXERCÍCIO 11

SELECT
		F.Nome,
		G.Genero
FROM
		Filmes AS F
INNER JOIN
		FilmesGenero FG
	ON	F.Id = FG.IdFilme
INNER JOIN
		Generos G
	ON	FG.IdGenero = G.Id
WHERE
		G.Genero = 'Mistério';

----------------------------------------
-- EXERCÍCIO 12

SELECT
		F.Nome,
		A.PrimeiroNome,
		A.UltimoNome,
		EF.Papel
FROM
		Filmes AS F
INNER JOIN
		ElencoFilme EF
	ON	F.Id = EF.IdFilme
INNER JOIN
		Atores AS A
	ON	EF.IdAtor = A.Id;