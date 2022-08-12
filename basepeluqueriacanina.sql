CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;

CREATE TABLE Dueno(
    DNI int UNIQUE NOT NULL, 
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono int NOT NULL,
    Direccion varchar(100),
    PRIMARY KEY (DNI)
    );
    
CREATE TABLE Perro(
    ID_Perro int auto_increment not null,
    Nombre varchar(50) not null,
    Fecha_Nac datetime,
    Sexo varchar(20),
    DNI_Dueno int,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) references Dueno(DNI)
    );
    
CREATE TABLE Historial(
    ID_Historial int auto_increment not null,
    Fecha datetime,
    Perro int not null,
    Descripcion varchar(100),
    Monto float not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
    );
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (12345678, 'Bianca', 'Perez', 5552121, 'calle01');
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (1, 'Puppy', '2013-06-13', 'Macho', 12345678);

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (23889991, 'Hector', 'Paz', 47552000, 'Santa Maria02');
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (42111557, 'Edith', 'Hernandez', 02936541, 'Principal8');
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (32224177, 'Grabriela', 'Torres', 52100000, 'Roca101');
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (26999333, 'Carlos', 'Corona', 11119988, 'Ferro33');
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (40266444, 'Adriana', 'Garcia', 31558359, 'Pilar85');
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (36277411, 'Roman', 'Martinez', 44551960, 'Rosales123');

INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES 
(2, 'Taly', '2010-01-20', 'Hembra', 23889991);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (3, 'Felipe', '2019-08-15', 'Macho', 42111557);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (4, 'Toby', '2018-11-14', 'Macho', 32224177);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (5, 'Luna', '2015-05-03', 'Hembra', 26999333);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (6, 'Lucky', '2021-02-17', 'Macho', 40266444);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (7, 'Kefren', '2022-04-23', 'Macho', 36277411);


SELECT*FROM Perro 
WHERE sexo = 'Macho' AND Fecha_Nac between '2020-01-01' AND '2022-12-31';