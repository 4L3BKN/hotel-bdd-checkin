CREATE VIEW Detalles_Reserva AS
SELECT r.id_reserva, h.nombre AS nombre_huesped, h.telefono, 
       hab.num_habitacion, hab.precio_hab, hab.precio_tour, 
       r.fecha_ingreso, r.fecha_salida, r.cant_dias, r.cant_tours, r.precio_total,
       t.nombre_tour, t.lugar, t.fecha AS fecha_tour, t.medio_transporte
FROM Reserva r
JOIN huespedes h ON r.rut_huesped = h.rut
JOIN habitaciones hab ON r.num_habitacion = hab.num_habitacion
LEFT JOIN reserva_tour rt ON r.id_reserva = rt.id_reserva
LEFT JOIN tours t ON rt.id_tour = t.id_tour;