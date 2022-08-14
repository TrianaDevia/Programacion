CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;
--TABLA DUEÑOS
CREATE TABLE Dueno(
    DNI int UNIQUE NOT NULL, 
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono int NOT NULL,
    Direccion varchar(100),
    PRIMARY KEY (DNI)
    );
--TABLA PERROS
CREATE TABLE Perro(
    ID_Perro int auto_increment not null,
    Nombre varchar(50) not null,
    Fecha_Nac datetime,
    Sexo varchar(20),
    DNI_Dueno int,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) references Dueno(DNI)
    );
--TABLA HISTORIAL
CREATE TABLE Historial(
    ID_Historial int auto_increment not null,
    Fecha datetime,
    Perro int not null,
    Descripcion varchar(100),
    Monto float not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
    );

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (11111111, "Luciano", "Vazquez", 1234567, "Avenida1" );
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (22222222, "Pedro", "Grazzini", 7456123, "Pasaje12");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (33333333, "Sofia", "Pedernera", 5471236, "Boulevard1");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (44444444, "Camila", "Uribe", 3652149, "Calle1");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (55555555, "Joaquin", "Sequeria", 36254179, "Boulevard2");

INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (1, "Chanela", 2018-05-20, "Hembra", 11111111);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (2, "Ellie", 2019-02-06, "Hembra", 22222222);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (3, "Lola", 2017-05-03, "Hembra", 33333333);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (4, "Oliver", 2019-09-25, 44444444);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (5, "Renato", 2021-01-30, 55555555);

SELECT Nombre
from Dueno inner join Perro on Nombre=Nombre
where Nombre = "Pedro"