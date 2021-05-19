CREATE DATABASE gss;
USE gss;

CREATE TABLE carro (
cod_carro INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
placa VARCHAR(8) NOT NULL,
marca VARCHAR(15) NOT NULL,
modelo INT NOT NULL,
costo FLOAT NOT NULL,
disponible CHAR(2)
);

CREATE TABLE cliente (
cod_cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
cedula VARCHAR(15) NOT NULL,
nombre VARCHAR(50) NOT NULL,
telefono1 VARCHAR(20) NOT NULL,
telefono2 VARCHAR(20)
);

CREATE TABLE alquiler(
cod_alquiler INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
fecha DATE NOT NULL,
tiempo INT NOT NULL,
vlrTotal FLOAT NOT NULL,
saldo FLOAT NOT NULL,
abono_ini FLOAT NOT NULL,
devuelto CHAR(2),
carro INT,
cliente INT,
FOREIGN KEY(carro) REFERENCES carro(cod_carro),
FOREIGN KEY(cliente) REFERENCES cliente(cod_cliente)
);

CREATE TABLE pagos (
cod_pago INT PRIMARY KEY NOT NULL,
fecha DATE NOT NULL,
valor FLOAT NOT NULL,
alquiler INT,
FOREIGN KEY(alquiler) REFERENCES alquiler(cod_alquiler)
);

#===================
#INSERCION DE DATOS
#TABLA CARRO
#===================
INSERT INTO carro (placa, marca, modelo, costo, disponible)
VALUES ('HUH-333', 'MAZDA', 1985, 100000, 'SI');

INSERT INTO carro (placa, marca, modelo, costo, disponible)
VALUES ('QFG-555', 'HYUNDAI', 2010, 320000, 'SI');

INSERT INTO carro (placa, marca, modelo, costo, disponible)
VALUES ('CAA-360', 'MAZDA', 1989, 135000, 'NO');

#================
#TABLA CLIENTE
#================

INSERT INTO cliente (cedula, nombre, telefono1, telefono2)
VALUES ('1085323564', 'Juan Felipe Riascos', '3146231192', '7202020');

INSERT INTO cliente (cedula, nombre, telefono1, telefono2)
VALUES ('4562235656', 'Melissa Bonilla', '3185563225', '');

INSERT INTO cliente (cedula, nombre, telefono1, telefono2)
VALUES ('31999658', 'Rocio del Pilar', '3152487585', '');

#================
#TABLA ALQUILER
#================
INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-05-18', 2, 200000, 180000, 20000, 'NO', 1, 1);

INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-05-15', 15, 1500000, 800000, 700000, 'SI', 2, 2);

INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-05-15', 3, 405000, 405000, 0, 'SI', 3, 3);

INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-05-01', 1, 320000, 320000, 0, 'SI', 2, 3);

INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-05-03', 8, 1080000, 0, 1080000, 'SI', 3, 3);

INSERT INTO alquiler (fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, carro, cliente)
VALUES ('2021-04-05', 1, 100000, 0, 100000, 'NO', 1, 2);


#==================
#TABLA PAGOS
#==================
INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-05-18', 200000, 1);

INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-05-15', 1500000, 2);

INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-05-01', 320000, 3);

INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-05-03', 1080000, 4);

INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-04-05', 100000, 5);

INSERT INTO pagos (fecha, valor, alquiler)
VALUES ('2021-05-18', 405000, 6);


#===========================================
#                CONSULTAS
#===========================================

# CONSULTAR CANTIDAD  DE ALQUILERES DE UN CARRO DESDE UNA FECHA

SELECT marca, placa, (COUNT(cod_alquiler)) AS CANTIDAD FROM alquiler
INNER JOIN carro ON carro = cod_carro
WHERE fecha BETWEEN '2021-04-05' AND '2021-05-18'
GROUP BY carro


#TOTAL DE UN SALDO EN UN DIA EN ESPECÍFICO
SELECT SUM(saldo) AS Total_Saldo FROM alquiler
WHERE fecha LIKE '2021-05-15'


# REALICE UNA CONSULTA ASI: CEDULA-NOMBRE-FECHA ALQUILER-TIEMPO ALQUILADO-SALDO-PLACA-MARCA
SELECT cedula, nombre, fecha,tiempo,saldo,placa,marca
FROM cliente INNER JOIN alquiler ON cod_cliente = cliente
INNER JOIN carro ON carro = cod_carro


#LOS CLIENTES QUE NO HAN ALQUILADO EN UN TIEMPO EN ESPECIFICO
SELECT cedula, nombre FROM cliente
INNER JOIN alquiler ON cod_cliente = cliente
WHERE fecha != '2021-05-23'
GROUP BY cliente


#REALICE UNA CONSULTA DESDE UNA FECHA EN ESPECIFICA: FECHA ALQUILER-CUANTOS PAGOS-TOTAL PAGADO-MAXIMO VALOR
SELECT al.fecha, (COUNT(p.cod_pago)) AS CANTIDAD_PAGOS, (SUM(p.valor)) AS TOTAL_PAGADO, (MAX(p.valor)) AS MAX_VALOR
FROM alquiler AS al INNER JOIN pagos AS p ON cod_alquiler = alquiler
WHERE p.fecha LIKE '2021-05-18'


#UNA CONSULTA ASI: COD_CARRO-MODELO-MARCA-COSTO-CUANTOS ALQUILERES-TOTAL EN ALQUILERES
SELECT cod_carro, modelo, marca, costo, (COUNT(cod_alquiler)) AS TOTAL_ALQUILERES, (SUM(vlrTotal)) AS VALOR_TOTAL
FROM carro INNER JOIN alquiler ON cod_carro = carro
GROUP BY cod_carro


#EL PRIMER ALQUILER DE UN CLIENTE
SELECT cod_alquiler cedula, nombre, fecha, tiempo, vlrTotal, saldo, abono_ini, devuelto, placa, marca FROM cliente 
INNER JOIN alquiler ON cliente = cod_cliente
INNER JOIN carro ON carro = cod_carro
LIMIT 1



#SELECT @@version
