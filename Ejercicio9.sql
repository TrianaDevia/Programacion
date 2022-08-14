use hocicos;

CREATE TABLE dueno(
DNI VARCHAR (10) NOT NULL, 
Nombre VARCHAR (45) NOT NULL, 
Apellido VARCHAR (45) NOT NULL, 
Telefono VARCHAR (15) NOT NULL, 
Direccion VARCHAR (90),
PRIMARY KEY (DNI));

CREATE TABLE perro (
ID_Perro INT NOT NULL AUTO_INCREMENT,
Perro VARCHAR (45) NOT NULL, 
Fecha_nac DATE, 
Sexo VARCHAR (10) NOT NULL, 
DNI_dueno VARCHAR (10) NOT NULL,
PRIMARY KEY (ID_Perro),
FOREIGN KEY(DNI_dueno)REFERENCES dueno (DNI));

CREATE TABLE historial (
ID_historial INT NOT NULL AUTO_INCREMENT , 
Fecha DATE , 
Perro INT NOT NULL , 
Descripcion VARCHAR (100) NOT NULL, 
Monto FLOAT NOT NULL,
PRIMARY KEY (ID_historial),
FOREIGN KEY (Perro) REFERENCES perro(ID_perro));

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (34567890, 'Carla', 'Filomeni', 155678543, 'Laprida 456');
INSERT INTO perro (ID_Perro, Perro,  Fecha_nac, Sexo, DNI_dueno) VALUES (1, 'Negro', NULL, 'Macho', 34567890);
INSERT INTO historial (ID_Historial, Fecha, Perro,  Descripcion , Monto) VALUES (1, '2022/08/15', 1, 'Corte', 800);

UPDATE dueno SET Direccion= 'Libertad 123' WHERE DNI = 34567890;