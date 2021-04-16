create database DB_Hoteles2;

use DB_Hoteles2;

create table Sucursal(
Id_Sucursal int auto_increment primary key,
Direccion_Sucursal varchar (10) NOT NULL,
Provincia_Sucursal varchar (30) not null,
Telefono_Sucursal int (10) not null,
Id_Cliente int not null
);

create table ciente(
Id_Cliente int primary key,
Nombre_Cliente varchar (30)  not null,
Apellido_Cliente varchar (30) not null,
Tell_Ciente int (10) not null,
Email_Cliente varchar (30) not null,
Id_VueloFK varchar (30) not null,
Id_Hotel_FK varchar (30) not null

);


create table vuelo(
Id_Vuelo_FK int auto_increment primary key,
Hora_Salida_Vuelo Time not null,
Hora_llegada_Vuelo time not null,
Origen_Vuelo varchar (30) not null,
Destino_Vuelo varchar (30) not null,
Num_Plazas_Vuelo int (20) not null

);

Create table Hotel(
Id_Hotel int auto_increment Primary key,
Nombre_Hotel varchar (10) not null,
Direccion_Hotel varchar (10) NOT NULL,
Ciudad_Hotel varchar (50) not Null,
Provincia_Hotel varchar (30) not null,
Tell_Hotel int not Null,
Num_Estrellas int not nULL

);

create table Telefono_Sucursal(
Id_Telefono_Sucursal int auto_increment primary key,
Num_Tell int not nULL,
Id_Sucrusal_FK int not nULL

);

create table Telefono_Hotel(
Id_Telefono_Hotel int auto_increment primary key,
Numero_Telefono_Hotel int not nULL,
Id_Hotel_FK int not nULL
);

create table Tell_Cliente(
Id_Telefono_Cliente int auto_increment primary key,
Numero_Telefono_Cliente int not nULL,
Numero_Celular_Cliente int not nULL,
NIF_FK iNT not nULL

);

ALTER TABLE Telefono_Sucursal
ADD CONSTRAINT Id_Sucrusal_FK
FOREIGN KEY (Id_Sucrusal_FK)
REFERENCES Sucursal (Id_Sucursal);

ALTER TABLE Vuelo
ADD CONSTRAINT Id_Vuelo_FK
FOREIGN KEY (Id_Vuelo_FK)
REFERENCES Sucursal (Id_Sucursal);

ALTER TABLE Sucursal
ADD CONSTRAINT Direccio_Sucursal
FOREIGN KEY (Direccion_Sucursal )
REFERENCES Hotel (Direccion_Hotel);

ALTER TABLE Telefono_Hotel
ADD CONSTRAINT Id_Hotel_FK
FOREIGN KEY (Id_Hotel_FK)
REFERENCES Hotel (Id_Hotel);

ALTER TABLE Tell_Cliente
ADD CONSTRAINT Id_Telefono_Cliente
FOREIGN KEY (Id_Telefono_Cliente)
REFERENCES Ciente (Id_Cliente);


ALTER TABLE Sucursal
ADD CONSTRAINT Id_Cliente
FOREIGN KEY (Id_Cliente )
REFERENCES Ciente (Id_Cliente);

insert into Hotel value 
(005,'MT Hotel','crr 85 755','Underground','Core',4151585,4);

insert into Tell_Cliente value 
(019, 5555, 6666, 4444);

insert into Telefono_Hotel value 
(005,4151585,005);

insert into Telefono_Sucursal value 
(085,4151347,082);

insert into Vuelo value 
(099, 355, 600, 033, 044 , 4);

select * from vuelo;