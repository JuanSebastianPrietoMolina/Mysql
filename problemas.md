# Mysqluse db_problemas;

create table articulos (
 código_integer integer, 
 nombre_artIculo varchar (20) , 
 descripcion varchar (30), 
 precio float
 );
 
 drop table articulos; 
 
 describe articulos;



 insert into articulos values 
(1,'impresora','Epson Stylus C45',400.80),
(2,'impresora','Epson Stylus C85',500),
(3,'monitor','Samsung 14',800); 

 insert into articulos values 
(1,'impresora','Epson Stylus C45',400.80),
(2,'impresora','Epson Stylus C85',500),
(3,'monitor','Samsung 14',800),
(4,'teclado','ingles Biswal',100),
(5,'teclado','español Biswal',90); 


Select*from articulos where nombre_artIculo ='Impresora';


SHOW COLUMNS FROM articulos;

select nombre_artIculo,descripcion,precio from ARTICULOS;

 select descripcion, precio from articulos where nombre_articulo ='teclado';
 
 


 create table medicamentos( 
  codigo int unsigned auto_increment, 
  nombre varchar(20), 
  laboratorio varchar(20), 
  precio decimal(5,2), 
  cantidad int unsigned,primary key(codigo)
  );
  
  describe medicamentos;
  
   insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Sertal','Roche',5.2,100); 
 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Buscapina','Roche',4.10,200); 
 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Amoxidal 500','Bayer',15.60,100); 
 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Paracetamol 500','Bago',1.90,200); 
 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Bayaspirina','Bayer',2.10,150);  
 insert into medicamentos (nombre, laboratorio,precio,cantidad) 
  values('Amoxidal jarabe','Bayer',5.10,250);  


select precio
from medicamentos
Order by precio desc;

select cantidad
from medicamentos
Order by cantidad Asc;

select codigo, nombre, laboratorio, precio, cantidad from medicamentos order by 5;
  
insert into medicamentos (nombre, laboratorio,precio,cantidad) values
('Sertal','Roche',5.2,100),
('Buscapina','Roche',4.10,200), 
('Amoxidal 500','Bayer',15.60,100),
('Paracetamol 500','Bago',1.90,200),
('Bayaspirina','Bayer',2.10,150),
('Amoxidal jarabe','Bayer',5.10,250);  
  

insert into medicamentos (nombre, laboratorio,precio,cantidad) 
values('Bayaspirina','Bayer',2.10,150);  
insert into medicamentos (nombre, laboratorio,precio,cantidad) 
values('Amoxidal jarabe','Bayer',5.10,250);  
  
  

Select*from medicamentos where nombre_artIculo ='Impresora';

select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;
  
 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Roche' and
  not cantidad=100;
  
 create table clientes ( 
  codigo int unsigned auto_increment, 
  nombre varchar(30) not null, 
  domicilio varchar(30), 
  ciudad varchar(20), 
  provincia varchar (20), 
  telefono varchar(11), 
  primary key(codigo) 
 ); 
 
  insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Lopez Marcos', 'Colon 111', 'Córdoba','Cordoba','null'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje','Cordoba','4578585'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria','Cordoba','4578445'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Perez Luis', 'Sarmiento 444', 'Rosario','Santa Fe',null); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono)  
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje','Cordoba','4253685'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe','Santa Fe','0345252525'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario','Cordoba','4554455'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje','Cordoba',null); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Ramos Betina', 'San Martin 999', 'Cordoba','Cordoba','4223366'); 
 insert into clientes (nombre,domicilio,ciudad,provincia,telefono) 
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas','Misiones','0457858745'); 

Select*from Clientes;

Select*from Clientes where telefono not like 'null';

select ciudad,provincia from Clientes Order by ciudad,provincia Asc;


drop table medicamentos;

 create table medicamentos( 
  codigo int unsigned auto_increment, 
  nombre varchar(20), 
  laboratorio varchar(20), 
  precio decimal(5,2), 
  cantidad int unsigned, 
  primary key(codigo) 
 ); 
