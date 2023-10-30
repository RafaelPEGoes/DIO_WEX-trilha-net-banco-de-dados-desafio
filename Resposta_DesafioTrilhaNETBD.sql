-- EXERC�CIO 1

SELECT
		Nome,
		Ano
FROM 
		Filmes;

---------------------------------------
-- EXERC�CIO 2

SELECT
		Nome,
		Ano,
		Duracao
FROM 
		Filmes
ORDER BY
		Ano ASC;

----------------------------------------
-- EXERC�CIO 3

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Nome = 'De Volta para o Futuro';

----------------------------------------
-- EXERC�CIO 4

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Ano= 1997;

----------------------------------------
-- EXERC�CIO 5

SELECT
		Nome,
		Ano,
		Duracao
FROM
		Filmes
WHERE 
		Ano > 2000;

----------------------------------------
-- EXERC�CIO 6

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
-- EXERC�CIO 7
-- ordenado pela dura��o???

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
-- EXERC�CIO 8

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
-- EXERC�CIO 9

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
-- EXERC�CIO 10

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
-- EXERC�CIO 11

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
		G.Genero = 'Mist�rio';

----------------------------------------
-- EXERC�CIO 12

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