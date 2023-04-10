DROP DATABASE IF EXISTS zoologico;
CREATE DATABASE IF NOT EXISTS zoologico;
USE zoologico;

CREATE TABLE Gerente(
	Gerente_id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL
);

CREATE TABLE Cuidador(
	Cuidador_id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Gerente_id INT NOT NULL,
    FOREIGN KEY (Gerente_id) REFERENCES Gerente (Gerente_id)
);

CREATE TABLE Animal(
	Animal_id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
	Especie VARCHAR(45) NOT NULL,
    Sexo VARCHAR(45) NOT NULL,
	Idade VARCHAR(45) NOT NULL,
    Localizacao VARCHAR(45) NOT NULL
);

CREATE TABLE Animal_e_Cuidador(
	Cuidador_id INT,
    Animal_id INT,
    CONSTRAINT PRIMARY KEY(Cuidador_id, Animal_id),
    FOREIGN KEY (Cuidador_id) REFERENCES Cuidador (Cuidador_id),
    FOREIGN KEY (Animal_id) REFERENCES Animal (Animal_id)
);



