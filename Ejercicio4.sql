CREATE DATABASE Peluqueria_canina;
CREATE TABLE Dueno (DNI int(10)PRIMARY KEY not null, Nombre varchar(50) not null, Apellido varchar(50) not null,Telefono int(15) not null,Direccion varchar(50));
CREATE TABLE Perro (ID_perro int(250)PRIMARY KEY not null, Nombre varchar(25) not null, Fecha_de_nacimiento date not null,Sexo varchar(7) not null, DNI_dueno int(10) not null,FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI) );
CREATE TABLE Historial (ID_historial int AUTO_INCREMENT PRIMARY KEY not null, Fecha date not null, Perro int(250)NOT null , Descripcion varchar(100) not null, Monto float not null,FOREIGN KEY (Perro) REFERENCES Perro(ID_perro) );

INSERT INTO Dueno VALUES(10999421, 'Jose', 'Andrada', 45689652, 'Bulnes 2025'),(25632586, 'Josefina', 'Waldorf', 1156829632, 'Arcos 2025'),(40325652, 'Martin', 'Vattuone', 1198762431, 'Cramer 2023');
INSERT INTO Perro VALUES(1, 'Firulais', '2020-03-25', 'macho', 10999421),(2, 'Snowy', '2018-05-23', 'hembra',25632586 ),(3, 'Rocky', '2019-12-21', 'macho', 40325652);
INSERT INTO Historial VALUES(NOT null, '2022-08-08', 1,'Sin raza', 1400),(NOT null, '2022-08-06', 2,'Husky', 2500),(NOT null, '2022-08-12', 3,'Pug', 3600);


UPDATE Perro SET Fecha_de_nacimiento = '2015-06-15' WHERE Fecha_de_nacimiento = '2020-03-25'