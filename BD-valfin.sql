create database peluqueriacanina;
USE peluqueriacanina;
create table Dueno(
    DNI int UNIQUE NOT NULL, 
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono int NOT NULL,
    Direccion varchar(100),
    PRIMARY KEY (DNI)
    );
create table Perro(
    ID_Perro int auto_increment not null,
    Nombre varchar(50) not null,
    Fecha_Nac datetime,
    Sexo varchar(20),
    DNI_Dueno int,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) references Dueno(DNI)
    );
Create table Historial(
    ID_Historial int auto_increment not null,
    Fecha datetime,
    Perro int not null,
    Descripcion varchar(100),
    Monto float not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
    );
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (11223344, "Alma", "Raso", 15978963, "calle12" );
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (22334455, "Juan", "Gil", 23654987, "Calle13");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (66778899, "Danilo", "Pugliese", 15357951, "calle14");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (10101111, "Joaquin", "Lopez", 34987456, "Calle15");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (12121313, "Valentino", "Orsini", 35963123, "Calle16");

INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (1, "Olivia", 2010-05-07, "Hembra", 11223344 );
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (2, "Enrique", 2017-01-31, "macho", 22334455);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (3, "Antonio", 2019-06-26, "macho", 66778899);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (4, "Indira", 2013-09-13, "hembra", 10101111);
INSERT INTO Perro(ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (5, "Pinky", 2007-09-20, "hembra", 12121313);

INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) VALUES (2022-02-03, "Olivia", "cortepelo", 1597);
INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) VALUES (2020-05-13, "Enrique", "lavado", 600);
INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) VALUES (2021-03-02, "Olivia", "lavado", 950);
INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) VALUES (2022-06-11, "Pinky", "cortepelo", 1597);
INSERT INTO Historial(Fecha, Perro, Descripcion, Monto) VALUES (2022-06-06, "Indira", "cortepelo", 1597);

select (Fecha) from Historial where (select year (Fecha)) ='2022'








