# MysqlUSE db_hoteles;
select * from vuelo; 

select Origen,FechaHoraLlegada,FechaHoraSalida
from vuelo;

select FechaHoraSalida
from vuelo
order by FechaHoraSalida ASC;

select * from vuelo
where NumeroPlazaTotales>10;

SELECT * FROM vuelo WHERE Destino = 'Cali' AND IdentificadorVuelo >=4;

SELECT *FROM vuelo where Origen <> 'Bogota';

select count(origen),(destino)
from vuelo group by NumeroPlazaTotales;

select count(FechaHoraSalida)
from vuelo
where NumeroPlazaTotales;

select Identificadorvuelo AS 'Prueba Alias' from vuelo;

SELECT *FROM cliente
WHERE NifCliente BETWEEN '1' AND '4';

SELECT * FROM cliente WHERE NombreCliente LIKE '%O';

SELECT NombreCliente, ApellidosCliente
FROM cliente
WHERE ApellidosCliente NOT LIKE '%Castro%';

SELECT MAX(NifCliente) FROM cliente;
SELECT MIN(NifCliente) FROM cliente;

SELECT AVG(IdentificadorSucursal) FROM sucursal;

SELECT SUM(IdentificadorSucursal + TelefonoSucursal) FROM sucursal;



