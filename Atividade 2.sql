-- Criar Tabela
CREATE DATABASE Livraria;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Livraria;

-- Criar Tabela
CREATE TABLE Livraria.autores(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Num_Pag INT  NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kingle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

-- Inserir Registro na Tabela
INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

SELECT * FROM Livraria.autores;

-- nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00 1 Questão
SELECT Livro, Autor,Valor_Kingle FROM Livraria.autores WHERE Valor_Kingle <='40';

-- 2 Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT Livro, Autor, Ano_de_publicacao, Sexo_Autor, Editora FROM Livraria.autores WHERE Ano_de_Publicacao >='2017' and Editora = 'Sextante' and Sexo_Autor = 'Feminino';

-- 3  Trazer o nome do livro e editora de livros com mais de 200 páginas;
SELECT Livro, Editora, Num_Pag FROM Livraria.autores WHERE Num_pag >= '200';

-- 4 Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT Livro, Num_Pag, Autor FROM Livraria.autores WHERE Autor LIKE 'C%' ;

-- 5 Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT Autor, Editora, Ano_de_publicacao FROM Livraria.autores WHERE Sexo_Autor = 'Masculino' and Editora = 'Alta Books';

-- 6 Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT Livro, Autor, Num_Pag, Editora, Ano_de_publicacao, Valor_Capa_Comum FROM Livraria.autores WHERE Valor_Capa_Comum >= '50.00';

-- 7 Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT Livro, Editora, Valor_Capa_Comum FROM Livraria.autores WHERE Autor LIKE 'Nathalia%';

-- 8 Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT Livro, Autor, Num_Pag, Ano_de_Publicacao FROM Livraria.autores WHERE Ano_de_Publicacao <= '2017';

-- 9 Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT Autor, Editora, Num_Pag FROM Livraria.autores WHERE Num_Pag >= '200' and Editora = 'Sextante';

-- 10 Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT Livro, Autor, Valor_Capa_Comum FROM Livraria.autores WHERE Valor_Capa_Comum > '30.00';