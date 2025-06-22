CREATE TABLE Reserva_Tour
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT DEFAULT NULL,
    id_tour INT DEFAULT NULL,
    FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva),
    FOREIGN KEY (id_tour) REFERENCES tours(id_tour)
);