CREATE DATABASE IF NOT EXISTS gestao_torneios; 

USE gestao_torneios; 


-- Tabela Equipas 
CREATE TABLE Equipas ( 
ID_Equipa INT AUTO_INCREMENT PRIMARY KEY, 
Nome_Equipa VARCHAR(100) NOT NULL, 
Data_Criacao DATE NOT NULL 
); 


-- Tabela Jogadores 
CREATE TABLE Jogadores ( 
ID_Jogador INT AUTO_INCREMENT PRIMARY KEY, 
Nome VARCHAR(100) NOT NULL, 
Nickname VARCHAR(50) NOT NULL, 
Data_Nascimento DATE NOT NULL, 
ID_Equipa INT NOT NULL, 
FOREIGN KEY (ID_Equipa) 
REFERENCES Equipas(ID_Equipa) 
); 


-- Tabela Torneios 
CREATE TABLE Torneios ( 
ID_Torneio INT AUTO_INCREMENT PRIMARY KEY, 
Nome VARCHAR(100) NOT NULL, 
Data_Inicio DATE NOT NULL, 
Premio_Monetario DECIMAL(10,2) NOT NULL, 
CHECK (Premio_Monetario >= 0) 
); 


-- Tabela Participacoes 
CREATE TABLE Participacoes ( 
ID_Equipa INT NOT NULL, 
ID_Torneio INT NOT NULL, 
PRIMARY KEY (ID_Equipa, ID_Torneio), 
FOREIGN KEY (ID_Equipa) 
REFERENCES Equipas(ID_Equipa), 
FOREIGN KEY (ID_Torneio) 
REFERENCES Torneios(ID_Torneio) 
); 

INSERT INTO Equipas (Nome_Equipa, Data_Criacao) VALUES ('Porto', '1903-02-10');
INSERT INTO Equipas (Nome_Equipa, Data_Criacao) VALUES ('Inter Milheirós', '2000-10-10');

INSERT INTO Jogadores (Nome, Nickname, Data_Nascimento, ID_Equipa) VALUES ('Pedro Saraiva', 'Pedders' '1986-02-10', 1);
INSERT INTO Jogadores (Nome, Nickname, Data_Nascimento, ID_Equipa) VALUES ('Joshua Saraiva', 'Mystic' '2010-04-10', 2);


