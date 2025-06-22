DELIMITER //

CREATE TRIGGER asignar_precio_total_update
BEFORE UPDATE ON reserva
FOR EACH ROW
BEGIN
    SET NEW.precio_total = CalcularPrecioTotal(NEW.cant_dias, NEW.cant_tours, NEW.num_habitacion);
END //

DELIMITER ;


