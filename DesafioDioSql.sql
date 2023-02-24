-- 1. Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM dbo.Filmes;

-- 2 . Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao FROM dbo.Filmes ORDER BY Ano ASC;

-- 3 . Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 . Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano = 1997;

-- 5 . Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000;

-- 5 . Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000;

-- 6 . Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- 7 . Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT  Ano, COUNT(ANO) as Quantidade from dbo.Filmes GROUP BY Ano ORDER BY COUNT(ANO) DESC;

-- 8 . Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores WHERE Genero = 'M';

-- 9 . Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 . Buscar o nome do filme e o gênero 

SELECT 
 FILMES.Nome as Nome,
 Genero.Genero as Genero
FROM Filmes AS FILMES
	INNER JOIN FilmesGenero AS FilmesGenero on FilmesGenero.IdFilme = FILMES.Id
	INNER JOIN Generos as Genero on Genero.Id = FilmesGenero.IdGenero

-- 11 . Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT 
 FILMES.Nome as Nome,
 Genero.Genero as Genero
FROM Filmes AS FILMES
	INNER JOIN FilmesGenero AS FilmesGenero on FilmesGenero.IdFilme = FILMES.Id
	INNER JOIN Generos as Genero on Genero.Id = FilmesGenero.IdGenero
	WHERE Genero.Genero = 'Mistério';

-- 12 . Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
	FILME.Nome AS NomeFilme,
	ATOR.PrimeiroNome,
	ATOR.UltimoNome,
	ELENCO.Papel
FROM ElencoFilme AS ELENCO
	INNER JOIN Atores AS ATOR ON ATOR.Id = ELENCO.IdAtor
	INNER JOIN Filmes AS FILME ON FILME.Id = ELENCO.IdFilme;


