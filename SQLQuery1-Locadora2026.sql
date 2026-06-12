CREATE DATABASE LocadoraBD;

USE LocadoraBD;

CREATE TABLE Diretores (
	Id INT PRIMARY KEY IDENTITY,
	Nome VARCHAR ( 200 ) NOT NULL
	);

CREATE TABLE Generos (
	Id INT PRIMARY KEY IDENTITY,
	Nome VARCHAR ( 200 ) NOT NULL UNIQUE
	);

CREATE TABLE Filmes (
	Id INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR ( 150 ) NOT NULL,
	Ano INT,
	IdDiretor INT,
	FOREIGN KEY (IdDiretor)
		REFERENCES Diretores(Id)
	);

CREATE TABLE FilmesGeneros (
	Id INT PRIMARY KEY IDENTITY,
	IdFilme INT,
	IdGenero INT,
	FOREIGN KEY (IdFilme)
		REFERENCES Filmes(Id),
	FOREIGN KEY (IdGenero)
		REFERENCES Generos(Id),
		);

CREATE TABLE Clientes (
		Id INT PRIMARY KEY IDENTITY,
		Nome VARCHAR (200),
		Email VARCHAR (200)
	);

CREATE TABLE Locacoes (
	Id INT PRIMARY KEY IDENTITY,
	IdCliente INT,
	IdFilme INT,
	DataLocacao DATE,
	FOREIGN KEY (IdCliente)
		REFERENCES Clientes(Id),
	FOREIGN KEY (IdFilme)
		REFERENCES Filmes(Id));

INSERT INTO Generos (Nome)
	VALUES ('Ação'),
			('Drama'),
			('Ficção Científica');

INSERT INTO Diretores(Nome)
	VALUES ('Christopher Nolan'),
		('Quentin Tarantino');

	SELECT * FROM Diretores;

INSERT INTO Filmes(Titulo, Ano, IdDiretor)
	VALUES ('A origem', 2010, 1),
		('Django Livre', 2012, 2),
		('Interestelar', 2014, 1);

	SELECT * FROM Filmes;

INSERT INTO FilmesGeneros(IdFilme, IdGenero)
	VALUES (1,1),
		(1,3),
		(2,2),
		(3,2),
		(3,3);

SELECT * FROM Filmes;

			