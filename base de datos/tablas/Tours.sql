CREATE TABLE Tours
(
	id_tour INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tour VARCHAR(100) NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    fecha DATE,
    medio_transporte VARCHAR(100),
    imagen BLOB
);