CREATE TABLE Reserva
(
	id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    rut_huesped INT DEFAULT NULL,
    num_habitacion INT DEFAULT NULL,
    fecha_ingreso DATE DEFAULT NULL,
    fecha_salida DATE DEFAULT NULL,
    cant_tours INT DEFAULT 0,
    cant_dias INT DEFAULT 0,
    precio_total INT DEFAULT 0,
    check_in TINYINT DEFAULT NULL,
    FOREIGN KEY (num_habitacion) REFERENCES habitaciones(num_habitacion)
);