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
alter table Historial modify column ID_historial int auto_increment;
insert into Historial (ID_Historial) VALUES(10);


 
