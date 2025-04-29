DROP DATABASE IF EXISTS EmpFixo;
CREATE DATABASE EmpFixo;
USE EmpFixo;

CREATE TABLE Direccion (
    IdDireccion INT(12) PRIMARY KEY,
    Direccion VARCHAR(25),
    Ciudad VARCHAR(25),
    Pais VARCHAR(25)
);

INSERT INTO Direccion (IdDireccion, Direccion, Ciudad, Pais) VALUES
(1, '3 Avenida 2 Calle','Madrid','España'),
(2, '10 Avenida 10 Calle','Barcelona','España'),
(3, '6 Avenida 9 Calle','Ciudad de Guatemala','Guatemala'),
(4, '8 Avenida 1 Calle','Ciudad de Mexico','Mexico'),
(5, '12 Avenida 18 Calle','Ciudad de Guatemala','Guatemala');

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
    IdCliente INT(11) PRIMARY KEY,
    Nombre VARCHAR(45),
    Apellido VARCHAR(45),
    Edad INT(11),
    Direccion_IdDireccion INT(11),
    FOREIGN KEY (Direccion_IdDireccion) REFERENCES Direccion(IdDireccion)
);

INSERT INTO Cliente (IdCliente, Nombre, Apellido, Edad, Direccion_IdDireccion) VALUES
(1, 'Juliana', 'Chavarria', 20, 1),
(2, 'Gary', 'Polanco', 12, 5),
(3, 'Zinedine', 'Escobar', 18, 5),
(4, 'Marcos', 'Alvarez', 17, 2),
(5, 'Madeline', 'Garcia', 16, 3);

DROP TABLE IF EXISTS Categoria;
CREATE TABLE Categoria (
    idCategoria INT(11) PRIMARY KEY,
    Nombre VARCHAR(45)
);

INSERT INTO Categoria (idCategoria, Nombre) VALUES
(1, 'Comedia'),
(2, 'Terror'),
(3, 'Documental'),
(4, 'Drama'),
(5, 'Musical');

DROP TABLE IF EXISTS Peliculas;
CREATE TABLE Peliculas (
    idPeliculas INT(10) PRIMARY KEY,
    Nombre VARCHAR(40),
    Duracion INT(10),
    Descripcion TEXT,
    año INT(6),
    Categoria_IdCategoria INT(8),
    FOREIGN KEY (Categoria_IdCategoria) REFERENCES Categoria(idCategoria)
);

INSERT INTO Peliculas (idPeliculas, Nombre, Duracion, Descripcion, año, Categoria_IdCategoria) VALUES
(11, 'The Godfather', 175, 'El patriarca de una familia mafiosa transfiere el control de su imperio a su hijo reacio.', 1972, 4),
(12, 'Joker', 122, 'Un comediante fracasado desciende a la locura y al crimen en Gotham City.', 2019, 4),
(13, 'Coco', 105, 'Un joven músico se embarca en un viaje al mundo de los muertos para descubrir su herencia familiar.', 2017, 1),
(14, 'The Shawshank Redemption', 142, 'Un banquero condenado a cadena perpetua encuentra la redención en prisión.', 1994, 4),
(15, 'POKEMON1', 150, 'Un chico y sus amigos intentan atrapar criaturas en sus pokebolas.', 1998, 1);

DROP TABLE IF EXISTS Inventario;
CREATE TABLE Inventario (
    IdCopiasPeliculas INT(10) PRIMARY KEY,
    Peliculas_idPeliculas INT(10),
    Disponible TINYINT(1),
    FOREIGN KEY (Peliculas_idPeliculas) REFERENCES Peliculas(idPeliculas)
);

INSERT INTO Inventario (IdCopiasPeliculas, Peliculas_idPeliculas, Disponible) VALUES
(1, 11, 1),
(2, 12, 1),
(3, 13, 1),
(4, 14, 1),
(5, 15, 1);

DROP TABLE IF EXISTS Renta;
CREATE TABLE Renta (
    IdRenta INT(12) PRIMARY KEY,
    Fecha_Renta DATE,
    Fecha_Entrega DATE,
    Inventario_idCopiasPeliculas INT(10),
    Cliente_idCliente INT(10),
    FOREIGN KEY (Inventario_idCopiasPeliculas) REFERENCES Inventario(IdCopiasPeliculas),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(IdCliente)
);

INSERT INTO Renta (IdRenta, Fecha_Renta, Fecha_Entrega, Inventario_idCopiasPeliculas, Cliente_idCliente) VALUES
(1, '2025-04-13', '2025-04-20', 1, 4),
(2, '2025-03-25', '2025-04-01', 2, 3),
(3, '2025-01-12', '2025-01-19', 4, 2),
(4, '2025-03-07', '2025-03-14', 1, 1),
(5, '2024-01-09', '2024-01-16', 5, 3);

DROP TABLE IF EXISTS Horarios;
CREATE TABLE Horarios (
    idDia INT(12) PRIMARY KEY,
    Promos VARCHAR(20),
    Hora VARCHAR(20),
    Cliente_idCliente INT(10),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(IdCliente)
);

INSERT INTO Horarios (idDia, Promos, Hora, Cliente_idCliente) VALUES
(1, 'Lunes y Martes', '20:00', 1),
(2, 'Miércoles', '18:00', 2),
(3, 'Domingo y Sábado', '16:00', 3),
(4, 'Viernes', '12:00', 1);

DROP TABLE IF EXISTS Boletos;
CREATE TABLE Boletos (
    idBoletos INT(11) PRIMARY KEY,
    Asiento VARCHAR(20),
    Precio VARCHAR(20),
    Forma_Pago VARCHAR(20),
    Cliente_idCliente INT(10),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(IdCliente)
);

INSERT INTO Boletos (idBoletos, Asiento, Precio, Forma_Pago, Cliente_idCliente) VALUES
(1, 'Fila B3', '130', 'Tarjeta', 2),
(2, 'Fila C2', '150', 'Tarjeta', 3),
(3, 'Fila A1', '1000', 'Efectivo', 1),
(4, 'Fila E4', '200', 'Efectivo', 1),
(5, 'Fila D1', '250', 'Tarjeta', 5);

SELECT * FROM Direccion;
SELECT * FROM Cliente;
SELECT * FROM Renta;
SELECT * FROM Inventario;
SELECT * FROM Peliculas;
SELECT * FROM Categoria;
SELECT * FROM Boletos;
SELECT * FROM Cliente WHERE Nombre = 'Juliana';

UPDATE Peliculas 
SET Nombre = NULL, Duracion = NULL, Descripcion = NULL, año = NULL, Categoria_IdCategoria = NULL
WHERE Nombre = 'POKEMON1';

SELECT * FROM Peliculas;
SELECT * FROM Categoria ORDER BY Nombre ASC;
SELECT * FROM Peliculas ORDER BY año DESC;