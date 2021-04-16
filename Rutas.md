# Mysqlcreate database DB_RUTAS;
use DB_RUTAS; 



create table Tipo_Usuario(
Id_Usuario int primary key auto_increment not null, 
Nom_T_Usuario varchar (20) not null,
Estado_TU varchar (20) not null

);




create table Tipo_Doc(

ID_TD int primary key auto_increment not null,
Nom_TD varchar (20) not null,
Estado_TD varchar (20) not null
);

create table Usuario(
ID_Usuario	int	 Primary key AUTO_INCREMENT,
ID_TDFK	int	 NOT NULL,
Num_DocUsuario	int	 NOT NULL,
Nom_Usuario	Varchar	(15) NOT NULL,
Apellido_Usuario	Varchar	(30)	NOT NULL,
Telefono_Usuario int NOT NULL,
Correo_Usuario	Varchar	(40) NOT NULL,
direccionUsuario	Varchar	(40)	NOT NULL,
Fecha_Nac_Usuario	Datetime NOT NULL,
Ciudad_Nac	Varchar	(40)	NOT NULL,
ID_T_Usuario_FK	int ,
Num_Celular_Usuario	int	 	NOT NULL,
Password_Usuario	Varchar	(20)	NOT NULL,
Estado_Usuario	Varchar	(20)	NOT NULL	
);

create table Asig_Usuario_Curso(
ID_Asiguc	int	 	Primary key,
ID_Usuario_FK INT ,
ID_Curso_FK	int 
);

create table Curso(
ID_Curso	int	 Primary key,
Nom_Curso	Varchar	(30)	NOT NULL,
Estado_Curso	Varchar	(20)	NOT NULL	

);

create table Asig_Recorrido_Usuario(
ID_Asig_Vehiculo	int	 Primary key,
ID_Usuario_FK	int	,
ID_Recorrido_FK	int	
); 

create table Pago(
ID_Pago	int	 Primary key,
Fecha_Pago	Datetime NOT NULL,
ID_Usuario_FK int,
Total_Pago	int	NOT NULL,
EstadoPago	varchar	(20) NOT NULL

); 

create table Detalle_Pago(

ID_Detalle_Servicio	int	 Primary key,
ID_Pago_FK	int,
ID_Servicio_FK	int,
Descripcion	Varchar	(50) NOT NULL,
Sub_Total	int	 NOT NULL

); 

create table Recorrido(
ID_Recorrido int Primary key,
Nom_Recorrido	Varchar	(50)	NOT NULL,
localidad	Varchar	(30)	NOT NULL,
EstadoRuta	Varchar	(20)	NOT NULL
); 

create table Asig_Vehiculo_Recorrido(
ID_Asig_Vehiculo int Primary key,
ID_Vehiculo_FK	int,
ID_Recorrido_FK	int 
); 

create table Vehículo(
ID_vehiculo	int	 Primary key,
ID_Marca_Vehiculo_FK int ,
Modelo_Vehiculo	Varchar	(20)	NOT NULL,
Fecha_Matricula	Datetime NOT NULL,
Estado_Vehiculo	Varchar	(20)	NOT NULL
); 

create table Servicio(
ID_Servicio	int	 	Primary key,
Nom_Servicio	Varchar	(40)	NOT NULL,
Valor_Servicio	int	 NOT NULL,
Estado_Servicio	Varchar	(20)	NOT NULL
); 

create table  Doc_Vehiculo(

ID_DocVehi	int	 	Primary key,
Nom_Doc_Vehi Varchar	(50)	NOT NULL,
EstadoDoc	Varchar	(20)	NOT NULL
); 

create table  Cargue_Doc(
ID_Cargue_Doc	int	 Primary key,
ID_Doc_Vehi_FK	int ,
ID_Vehiculo_FK int ,
Fecha_Cargue	Datetime NOT NULL,
Archivo	Blob NOT NULL

); 

create table  Marca(
ID_Marca_Vehiculo	int	 Primary key,
NoM_Marca_Vehiculo	Varchar	(30) NOT NULL,
EstadoMarca	Varchar	(20) NOT NULL
); 


ALTER TABLE Tipo_Usuario
ADD CONSTRAINT ID_TDFK
FOREIGN KEY (Id_Usuario)
REFERENCES Usuario (Id_Usuario);

ALTER TABLE Tipo_Doc
ADD CONSTRAINT ID_TD
FOREIGN KEY (ID_TD)
REFERENCES Usuario (Id_Usuario);

ALTER TABLE Asig_Usuario_Curso
ADD CONSTRAINT ID_Asiguc
FOREIGN KEY (ID_Asiguc)
REFERENCES Usuario (Id_Usuario);

ALTER TABLE Recorrido
ADD CONSTRAINT ID_Recorrido
FOREIGN KEY (ID_Recorrido)
REFERENCES Asig_Usuario_Curso (Id_Asiguc);

ALTER TABLE Asig_Vehiculo_Recorrido
ADD CONSTRAINT ID_Asig_Vehiculo 
FOREIGN KEY (ID_Asig_Vehiculo )
REFERENCES Recorrido (ID_Recorrido);

ALTER TABLE Vehículo
ADD CONSTRAINT ID_Vehiculo 
FOREIGN KEY (ID_Vehiculo )
REFERENCES Marca (ID_Marca_Vehiculo);


ALTER TABLE Vehículo
ADD CONSTRAINT ID_Marca_Vehiculo_FK
FOREIGN KEY (ID_Marca_Vehiculo_FK)
REFERENCES  Cargue_Doc (ID_Cargue_Doc);

ALTER TABLE Vehículo
ADD CONSTRAINT ID_Marca_Vehiculo_FK
FOREIGN KEY (ID_Marca_Vehiculo_FK)
REFERENCES  Cargue_Doc (ID_Cargue_Doc);

ALTER TABLE Vehículo
ADD CONSTRAINT ID_Marca_Vehiculo_FK
FOREIGN KEY (ID_Marca_Vehiculo_FK)
REFERENCES  Cargue_Doc (ID_Cargue_Doc);

ALTER TABLE Doc_Vehiculo
ADD CONSTRAINT ID_DocVehi
FOREIGN KEY (ID_DocVehi)
REFERENCES  Cargue_Doc (ID_Cargue_Doc);

ALTER TABLE Usuario
ADD CONSTRAINT Num_DocUsuario
FOREIGN KEY (Num_DocUsuario)
REFERENCES  Pago (ID_Pago);

ALTER TABLE Usuario
ADD CONSTRAINT Num_DocUsuario
FOREIGN KEY (Num_DocUsuario)
REFERENCES  Pago (ID_Pago);


ALTER TABLE Pago
ADD CONSTRAINT ID_Pago
FOREIGN KEY (ID_Pago)
REFERENCES  Detalle_Pago (ID_Detalle_Servicio);

ALTER TABLE Servicio
ADD CONSTRAINT ID_Servicio
FOREIGN KEY (ID_Servicio)
REFERENCES  Detalle_Pago (ID_Detalle_Servicio);

ALTER TABLE  Asig_Vehiculo_Recorrido
ADD CONSTRAINT ID_Vehiculo_FK
FOREIGN KEY (ID_Vehiculo_FK)
REFERENCES Vehículo (ID_vehiculo);

ALTER TABLE Curso
ADD CONSTRAINT ID_Curso
FOREIGN KEY (ID_Curso)
REFERENCES Asig_Usuario_Curso (ID_Asiguc);


ALTER TABLE Curso
ADD CONSTRAINT ID_Curso
FOREIGN KEY (ID_Curso)
REFERENCES Asig_Usuario_Curso (ID_Asiguc);

ALTER TABLE Asig_Recorrido_Usuario
ADD CONSTRAINT ID_Usuario_FK
FOREIGN KEY (ID_Usuario_FK)
REFERENCES Usuario (ID_Usuario);

ALTER TABLE Asig_Recorrido_Usuario
ADD CONSTRAINT ID_Usuario_FK
FOREIGN KEY (ID_Usuario_FK)
REFERENCES Usuario (ID_Usuario);

ALTER TABLE Asig_Recorrido_Usuario
ADD CONSTRAINT ID_Usuario_FK
FOREIGN KEY (ID_Usuario_FK)
REFERENCES Usuario (ID_Usuario);

ALTER TABLE Asig_Recorrido_Usuario
ADD CONSTRAINT ID_Recorrido_FK
FOREIGN KEY (ID_Recorrido_FK)
REFERENCES Recorrido (ID_Recorrido);

