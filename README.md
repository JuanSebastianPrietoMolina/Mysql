# Mysqlcreate database DB_Universidad1;
use DB_Universidad1;
create table Facultad(
Num_Bloque int auto_increment primary key,
Nombre_Facultad varchar (50) NOT NULL,
Ubicacion_Facultad varchar (50) not null
);
Create table Decano(
Cedula_Decano int auto_increment primary key,
Celular int not null,
Nombre_Decano varchar (50)  not null,
Apellido_Decano varchar (50) not null
);
ALTER TABLE Decano
ADD CONSTRAINT Cedula_Decano 
FOREIGN KEY (Cedula_Decano )
REFERENCES Facultad (Num_Bloque
);
create table Docente(
Cedula_Docente int auto_increment primary key,
Titulo_Docente varchar (50) not null,
Nombre_Docente varchar (50)  not null,
Apellido_Docente varchar (50) not null,
Num_Bloque_FK int not null
);
ALTER TABLE Docente
ADD CONSTRAINT Cedula_Docente
FOREIGN KEY (Cedula_Docente)
REFERENCES Facultad (Num_Bloque
);
create table Asignatura(
Codigo_Asignatura int auto_increment primary key,
Cedula_Docente_FK INT NOT NULL,
Nombre_Asignatura varchar (50) not null,
Creditos_Asignatura decimal 
);
ALTER TABLE Asignatura
ADD CONSTRAINT Codigo_Asignatura
FOREIGN KEY (Codigo_Asignatura)
REFERENCES  Docente (Cedula_Docente
);
create table Estudiante(
Identificacion_Decano int auto_increment primary key,
Nombre_Estudiante varchar (50)  not null,
Apellido_Estudiante varchar (50) not null,
Direccion_Estudiante varchar (50) not null
);
ALTER TABLE Asignatura
ADD CONSTRAINT Cedula_Docente_FK
FOREIGN KEY (Cedula_Docente_FK)
REFERENCES Estudiante (Identificacion_Decano);




