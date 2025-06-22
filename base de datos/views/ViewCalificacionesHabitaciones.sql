CREATE VIEW Calificaciones_Habitaciones AS
SELECT c.id_cal, c.num_habitacion, h.precio_hab, h.precio_tour,
       c.dinero_tours, c.cant_estrellas, C.fecha_salida
FROM Calificaciones c
JOIN Habitaciones h ON c.num_habitacion = h.num_habitacion;