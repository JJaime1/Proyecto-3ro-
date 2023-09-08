create database CodingProyecto;
use CodingProyecto;

CREATE TABLE Viaje (
    Cod_viaje INT PRIMARY KEY,
    Origen VARCHAR(100),
    Destino VARCHAR(100)
);

CREATE TABLE Cliente (
    Cod_Cliente INT PRIMARY KEY,
    Correo VARCHAR(50) NULL
 );

CREATE TABLE Tel_cliente (
    Cod_cliente INT,
    Tel1 VARCHAR(20),
    Tel2 VARCHAR(20) NULL,
    PRIMARY KEY (Cod_cliente, Tel1),
    FOREIGN KEY (Cod_cliente) REFERENCES Cliente(Cod_Cliente)
);

CREATE TABLE Chofer (
    Cod_chofer INT PRIMARY KEY,
    Nombre VARCHAR(20),
    Dirección VARCHAR(75),
    Edad INT
);

CREATE TABLE Tel_chofer (
    Cod_chofer INT PRIMARY KEY,
    Tel1 VARCHAR(20),
    Tel2 VARCHAR(20) NULL,
    FOREIGN KEY (Cod_chofer) REFERENCES Chofer(Cod_chofer)
);

CREATE TABLE Coche (
    Matricula VARCHAR(15) PRIMARY KEY,
    Marca VARCHAR(20),
    Modelo VARCHAR(20),
    Color VARCHAR(25),
    Estado VARCHAR(15)
);

CREATE TABLE Mantenimiento (
    Cod_Mantenimiento INT PRIMARY KEY,
    Descripción VARCHAR(120)
);


CREATE TABLE Interno (
    CI INT,
	Cod_chofer INT,
    Apellido VARCHAR(100),
    Vencimiento_libreta DATE,
    FOREIGN KEY (Cod_chofer) REFERENCES Chofer (Cod_chofer),
    primary key (CI,Cod_chofer)
);

CREATE TABLE Externo (
    Cod_chofer INT PRIMARY KEY,
    Nombre_empresa VARCHAR(255),
    Comisión DECIMAL(10, 2),
    Cant_viajes INT
);

CREATE TABLE Particular (
    Cod_cliente INT PRIMARY KEY,
    Nombre VARCHAR(60),
    Apellido VARCHAR(60),
    Frecuente BOOLEAN,
     FOREIGN KEY (Cod_cliente ) REFERENCES Cliente(Cod_cliente )

);

CREATE TABLE Lista_Negra (
    Cod_lista INT PRIMARY KEY,
    Descripción VARCHAR(100)
);

CREATE TABLE Empresa (
    Cod_cliente INT PRIMARY KEY,
    RUT VARCHAR(35),
    Nombre_empresa VARCHAR(60),
    Nombre_de_razon_social VARCHAR(60)
);

CREATE TABLE Metodo_de_pago (
    Cod_metodo INT PRIMARY KEY
);

CREATE TABLE Contado (
    Cod_metodo INT PRIMARY KEY,
    FOREIGN KEY (Cod_metodo) REFERENCES Metodo_de_pago(Cod_metodo)
);

CREATE TABLE Cuenta_corriente (
    Cod_Metodo INT PRIMARY KEY,
    Nro_Cuentacorriente VARCHAR(50),
    FOREIGN KEY (Cod_Metodo) REFERENCES Metodo_de_pago(Cod_metodo)
);

CREATE TABLE Transferencia (
    Cod_Metodo INT PRIMARY KEY,
    Cod_transferencia VARCHAR(50),
    FOREIGN KEY (Cod_Metodo) REFERENCES Metodo_de_pago(Cod_metodo)
);

CREATE TABLE Tarjeta (
    Cod_Metodo INT PRIMARY KEY,
    Nro_tarjeta VARCHAR(30),
    FOREIGN KEY (Cod_Metodo) REFERENCES Metodo_de_pago(Cod_metodo)
);

CREATE TABLE Usuario (
    Cod_usuario INT PRIMARY KEY,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Contrasena VARCHAR(3),
    Rol VARCHAR(30)
);

-- Relaciones
CREATE TABLE Solicita (
    Cod_viaje INT,
    Cod_cliente INT,
    Comentario VARCHAR(100),
    Fecha_viaje DATE,
    PRIMARY KEY (Cod_viaje, Cod_cliente),
    FOREIGN KEY (Cod_viaje) REFERENCES Viaje(Cod_viaje),
    FOREIGN KEY (Cod_cliente) REFERENCES Cliente(Cod_Cliente)
);

CREATE TABLE Conduce (
    Cod_chofer INT,
    Matricula VARCHAR(10),
    PRIMARY KEY (Cod_chofer, Matricula),
    FOREIGN KEY (Cod_chofer) REFERENCES Chofer(Cod_chofer),
    FOREIGN KEY (Matricula) REFERENCES Coche(Matricula)
);


CREATE TABLE Necesita (
    Cod_mantenimiento INT,
    Matrícula VARCHAR(15),
    Importe INT,
    Tipo_Mantenimiento VARCHAR(50),
    Fecha_mantenimiento DATE,
    PRIMARY KEY (Cod_mantenimiento, Matrícula),
    FOREIGN KEY (Cod_mantenimiento) REFERENCES Mantenimiento(Cod_Mantenimiento),
    FOREIGN KEY (Matrícula) REFERENCES Coche(Matrícula)
);

CREATE TABLE Utiliza (
    Cod_metodo INT,
    Cod_factura INT,
    Cod_viaje INT,
    Monto INT,
    PRIMARY KEY (Cod_metodo, Cod_factura),
    FOREIGN KEY (Cod_metodo) REFERENCES Metodo_de_pago(Cod_metodo),
    FOREIGN KEY (Cod_viaje) REFERENCES Viaje(Cod_viaje)
);

CREATE TABLE Traslado (
    Cod_Viaje INT,
    Cod_cliente INT,
    Cod_chofer INT,
    PRIMARY KEY (Cod_Viaje, Cod_cliente),
    FOREIGN KEY (Cod_Viaje, Cod_cliente) REFERENCES Solicita(Cod_viaje, Cod_cliente),
    FOREIGN KEY (Cod_chofer) REFERENCES Conduce(Cod_chofer)
);

CREATE TABLE Crea (
    Cod_viaje INT,
    Cod_cliente INT,
    Cod_usuario INT,
    Fecha_creacion DATE,
    PRIMARY KEY (Cod_viaje, Cod_cliente, Cod_usuario),
    FOREIGN KEY (Cod_viaje) REFERENCES Viaje(Cod_viaje),
    FOREIGN KEY (Cod_cliente) REFERENCES Cliente(Cod_Cliente),
    FOREIGN KEY (Cod_usuario) REFERENCES Usuario(Cod_usuario)
);

CREATE TABLE Pertenece (
    Cod_cliente INT,
    Cod_lista INT,
    PRIMARY KEY (Cod_cliente, Cod_lista),
    FOREIGN KEY (Cod_cliente) REFERENCES Cliente(Cod_Cliente),
    FOREIGN KEY (Cod_lista) REFERENCES Lista_Negra(Cod_lista)
);

-- Inserciones para la tabla Viaje
INSERT INTO Viaje (Cod_viaje, Origen, Destino) VALUES
(1, 'Gabriel Pereira 2976', 'Estadio Centenario'),
(2, 'Talleres Don Bosco', 'Aeropuerto'),
(3, 'Acuña de Figeroa 5757', ' Yapeyú 5728'),
(4, 'Bv Artigas 3245', '8 de octubre 3105'),
(5, 'Tres Cruces', 'Rambla Buceo'),
(6, 'Nuevo Centro', '18 de julio 120');

-- Inserciones para la tabla Cliente
INSERT INTO Cliente (Cod_Cliente, Correo) VALUES
(1, 'cliente1@example.com'),
(2, 'cliente2@example.com'),
(3, 'cliente3@example.com'),
(4, 'cliente4@example.com'),
(5, 'cliente5@example.com');

-- Inserciones para la tabla Tel_cliente
INSERT INTO Tel_cliente (Cod_cliente, Tel1, Tel2) VALUES
(1, '095114507', '092845779'),
(2, '098280707', '091346679'),
(3, '095784215', '093598745'),
(4, '092587259', '24858962'),
(5, '091878598', '24801525');

-- Inserciones para la tabla Chofer
INSERT INTO Chofer (Cod_chofer, Nombre, Dirección) VALUES
(1, 'Chofer 1', 'Dirección Chofer 1'),
(2, 'Chofer 2', 'Dirección Chofer 2'),
(3, 'Chofer 3', 'Dirección Chofer 3'),
(4, 'Chofer 4', 'Dirección Chofer 4'),
(5, 'Chofer 5', 'Dirección Chofer 5');

-- Inserciones para la tabla Tel_chofer
INSERT INTO Tel_chofer (Cod_chofer, Tel1, Tel2) VALUES
(1, '9999999999', '8888888888'),
(2, '7777777777', '6666666666'),
(3, '5555555555', '4444444444'),
(4, '3333333333', '2222222222'),
(5, '1111111111', '0000000000');

-- Inserciones para la tabla Coche
INSERT INTO Coche (Matrícula, Marca, Modelo, Color, Estado) VALUES
('ABC123', 'Toyota', 'Corolla', 'Rojo', 'Disponible'),
('XYZ789', 'Honda', 'Civic', 'Azul', 'En reparación'),
('DEF456', 'Ford', 'Focus', 'Negro', 'Disponible'),
('GHI789', 'Chevrolet', 'Cruze', 'Blanco', 'Disponible'),
('JKL012', 'Nissan', 'Sentra', 'Plateado', 'En reparación');

-- Inserciones para la tabla Mantenimiento
INSERT INTO Mantenimiento (Cod_Mantenimiento, Descripción) VALUES
(1, 'Cambio de aceite y filtro'),
(2, 'Reparación de frenos'),
(3, 'Alineación y balanceo'),
(4, 'Cambio de neumáticos'),
(5, 'Revisión general');

-- Inserciones para la tabla Interno
INSERT INTO Interno (CI,Cod_chofer,Apellido, Vencimiento_libreta) VALUES
(1001,1000, 'Apellido1', '2024-12-31'),
(1002,2000, 'Apellido2', '2023-10-15'),
(1003,3000, 'Apellido3', '2025-05-20'),
(1004,4000, 'Apellido4', '2023-09-01'),
(1005,5000, 'Apellido5', '2024-11-30');

-- Inserciones para la tabla Externo
INSERT INTO Externo (Cod_chofer, Nombre_empresa, Comisión, Cant_viajes) VALUES
(2001, 'Empresa1', 0.1, 50),
(2002, 'Empresa2', 0.15, 30),
(2003, 'Empresa3', 0.12, 45),
(2004, 'Empresa4', 0.2, 25),
(2005, 'Empresa5', 0.18, 35);

-- Inserciones para la tabla Persona
INSERT INTO Particular (Cod_cliente, Nombre, Apellido, Frecuente) VALUES
(1, 'Persona1', 'Apellido1', true),
(2, 'Persona2', 'Apellido2', false),
(3, 'Persona3', 'Apellido3', true),
(4, 'Persona4', 'Apellido4', false),
(5, 'Persona5', 'Apellido5', true);

-- Inserciones para la tabla Lista_Negra
INSERT INTO Lista_Negra (Cod_lista, Descripción) VALUES
(1, 'Cliente con comportamiento inapropiado'),
(2, 'Incumplimiento de pagos reiterados'),
(3, 'Comportamiento agresivo en viajes'),
(4, 'Fraude en el sistema'),
(5, 'Daños a vehículos en múltiples ocasiones');

-- Inserciones para la tabla Empresa
INSERT INTO Empresa (Cod_cliente, RUT, Nombre_empresa, Nombre_de_razon_social) VALUES
(3001, '123456789', 'Empresa A', 'Razón Social A'),
(3002, '987654321', 'Empresa B', 'Razón Social B'),
(3003, '111222333', 'Empresa C', 'Razón Social C'),
(3004, '555666777', 'Empresa D', 'Razón Social D'),
(3005, '999888777', 'Empresa E', 'Razón Social E');

-- Inserciones para la tabla Metodo_de_pago
INSERT INTO Metodo_de_pago (Cod_metodo) VALUES
(1),
(2),
(3),
(4),
(5);

-- Inserciones para la tabla Contado
INSERT INTO Contado (Cod_metodo) VALUES
(1),
(2),
(3),
(4),
(5);

-- Inserciones para la tabla Cuenta_corriente
INSERT INTO Cuenta_corriente (Cod_Metodo, Nro_Cuentacorriente) VALUES
(1, '12345678'),
(2, '87654321'),
(3, '56789012'),
(4, '43210987'),
(5, '98765432');

-- Inserciones para la tabla Transferencia
INSERT INTO Transferencia (Cod_Metodo, Cod_transferencia) VALUES
(1, 'TR12345678'),
(2, 'TR87654321'),
(3, 'TR56789012'),
(4, 'TR43210987'),
(5, 'TR98765432');

-- Inserciones para la tabla Tarjeta
INSERT INTO Tarjeta (Cod_Metodo, Nro_tarjeta) VALUES
(1, '1234-5678-9012-3456'),
(2, '9876-5432-1098-7654'),
(3, '5678-9012-3456-7890'),
(4, '4321-0987-6543-2109'),
(5, '9876-5432-1098-7654');

-- Inserciones para la tabla Solicita
INSERT INTO Solicita (Cod_viaje, Cod_cliente, Comentario, Fecha_viaje) VALUES
(1, 1001, 'Solicitud de viaje de prueba 1', '2023-08-10'),
(2, 1002, 'Solicitud de viaje de prueba 2', '2023-08-15'),
(3, 1003, 'Solicitud de viaje de prueba 3', '2023-08-20'),
(4, 1004, 'Solicitud de viaje de prueba 4', '2023-08-25'),
(5, 1005, 'Solicitud de viaje de prueba 5', '2023-08-30'),
(6, 1006, 'Solicitud de viaje de prueba 6', '2023-08-30');

-- Inserciones para la tabla Usuario
INSERT INTO Usuario (Cod_usuario, Nombre, Apellido, Contrasena, Rol) VALUES
(10001, 'Admin', 'Apellido1', '123', 'administrador'),
(10002, 'Usuario2', 'Apellido2', '456', 'Empleado'),
(10003, 'Usuario3', 'Apellido3', '789', 'Empleado'),
(20001, 'Usuario4', 'Apellido4', 'abc', 'administrador'),
(20002, 'Usuario5', 'Apellido5', 'def', 'Empleado');

-- Inserciones para la tabla Utiliza
INSERT INTO Utiliza (Cod_metodo, Cod_factura, Cod_viaje, Monto) VALUES
(1, 1001, 1, 50.00),
(2, 1002, 2, 75.00),
(3, 1003, 3, 60.00),
(4, 1004, 4, 45.00),
(5, 1005, 5, 80.00);

-- Inserciones para la tabla Traslado
INSERT INTO Traslado (Cod_Viaje, Cod_cliente) VALUES
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005);

-- Inserciones para la tabla Crea
INSERT INTO Crea (Cod_viaje, Cod_cliente, Cod_usuario, Fecha_creacion) VALUES
(1, 1001, 10001, '2023-01-15'),
(2, 1002, 10002, '2023-02-20'),
(3, 1003, 10003, '2023-03-25'),
(4, 1004, 10004, '2023-04-30'),
(5, 1005, 10005, '2023-05-05');

-- Inserciones para la tabla Pertenece
INSERT INTO Pertenece (Cod_cliente, Cod_lista) VALUES
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5);

-- Facturacion por coche 
SELECT co.Matricula, u.Cod_metodo, SUM(u.Monto) AS Facturacion
FROM Utiliza u
JOIN Viaje v ON v.Cod_viaje = u.Cod_viaje
JOIN Traslado t ON t.Cod_viaje = v.Cod_viaje
JOIN Chofer c ON c.Cod_chofer = t.Cod_chofer
JOIN Conduce co ON c.Cod_chofer = co.Cod_chofer
JOIN Coche ch ON co.Matricula = ch.Matricula
GROUP BY co.Matricula, u.Cod_metodo;
 
--  Facturacion por chofer  
SELECT c.Cod_chofer, c.Nombre, SUM(u.Monto) AS facturacion
FROM Utiliza u
JOIN viaje v ON v.Cod_viaje = u.Cod_viaje
JOIN traslado t ON t.Cod_viaje = v.Cod_viaje
JOIN chofer c ON c.Cod_chofer = t.Cod_chofer
GROUP BY c.Cod_chofer, c.Nombre;

-- Datos de los viajes de un cliente determinado 
SELECT v.Cod_viaje, v.Origen, v.Destino, s.Fecha_viaje
FROM Viaje v
JOIN Solicita s ON v.Cod_viaje = s.Cod_viaje
WHERE s.Cod_cliente = cod_cliente ;

-- Datos de un viaje determinado 
SELECT *
FROM Viaje
WHERE Cod_viaje = cod_viaje;

-- Datos de los últimos 5 viajes realizados 
SELECT *
FROM Viaje
ORDER BY Cod_viaje DESC
LIMIT 5;

-- Búsqueda de viajes por fecha 
SELECT *
FROM Solicita
WHERE Fecha_viaje ='2023-08-10';

-- Consultas realizadas para hacer un login efectivo 
SELECT *
FROM Usuario
WHERE Nombre = 'nombre_usuario' AND Contrasena = 'contrasena';

SELECT DATE('2023-08-10') AS fecha, SUM(Monto) AS facturacion_diaria
FROM Utiliza
GROUP BY DATE('2023-08-10');

-- Facturacion mensual por coche 

SELECT DATE_FORMAT(s.Fecha_viaje, '%Y-%m') AS fecha , SUM(u.Monto) AS facturacion_mensual
FROM Utiliza u
JOIN Viaje v ON u.Cod_viaje = v.Cod_viaje
join Solicita s on v.Cod_viaje = S.Cod_viaje
GROUP BY DATE_FORMAT(Fecha_viaje, '%Y-%m');

-- Facturacion diaria por coche 
SELECT DATE(s.Fecha_viaje) AS fecha, SUM(Monto) AS facturacion_diaria
FROM Utiliza u
JOIN Viaje v ON u.Cod_viaje = v.Cod_viaje
join Solicita s on v.Cod_viaje = S.Cod_viaje
GROUP BY DATE(Fecha_viaje);

-- Facturacion anual por coche 
SELECT DATE_FORMAT(s.Fecha_viaje, '%Y-') AS fecha , SUM(u.Monto) AS facturacion_mensual
FROM Utiliza u
JOIN Viaje v ON u.Cod_viaje = v.Cod_viaje
join Solicita s on v.Cod_viaje = S.Cod_viaje
GROUP BY DATE_FORMAT(Fecha_viaje, '%Y');

-- Cantidad de viajes realizados por cada chofer entre dos fechas.
SELECT c.Cod_chofer, ch.Nombre, COUNT(t.Cod_viaje) AS cantidad_viajes
FROM Conduce c
JOIN Traslado t ON c.Cod_chofer = t.Cod_chofer
JOIN Viaje v ON t.Cod_viaje = v.Cod_viaje
JOIN Solicita s ON s.Cod_viaje = v.Cod_viaje
JOIN Chofer ch ON t.Cod_chofer = ch.Cod_chofer
WHERE s.Fecha_viaje BETWEEN '2023-08-10' AND '2023-08-10'
GROUP BY c.Cod_chofer, ch.Nombre;	




