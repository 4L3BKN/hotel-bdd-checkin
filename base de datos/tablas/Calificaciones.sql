CREATE TABLE Calificaciones
(
	id_cal INT AUTO_INCREMENT PRIMARY KEY,
    num_habitacion INT DEFAULT NULL,
    dinero_tours INT DEFAULT 0,
    cant_estrellas INT DEFAULT NULL,
    fecha_salida DATE DEFAULT NULL,
    FOREIGN KEY (num_habitacion) REFERENCES habitaciones(num_habitacion)
);