CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;
CREATE TABLE Dueno (
DNI INT UNIQUE NOT NULL,
Nombre VARCHAR (40) NOT NULL,
Apellido VARCHAR (40) NOT NULL,
Telefono INT NOT NULL,
Direccion VARCHAR (50),
PRIMARY KEY (DNI)
);
CREATE TABLE Perro (
ID_Perro INT AUTO_INCREMENT NOT NULL,
Nombre VARCHAR (40) NOT NULL,
Fecha_nac DATETIME,
Sexo VARCHAR (7),
DNI_dueno INT,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);
CREATE TABLE Historial (
ID_Historial INT AUTO_INCREMENT NOT NULL,
Fecha DATETIME,
Perro INT NOT NULL,
Descripcion VARCHAR(100),
Monto FLOAT NOT NULL,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (33546788, 'Lucia', 'Castro', 4691863, 'Av.Rivadavia 222');
INSERT INTO Perro (ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (1,'Pancho', '2019-03-17', 'Macho', 11790381);

TRUNCATE Historial;
ALTER TABLE Historial AUTO_INCREMENT = 0;