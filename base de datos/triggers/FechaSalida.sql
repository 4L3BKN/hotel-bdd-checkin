DELIMITER //

CREATE TRIGGER actualizar_fecha_salida_insert
BEFORE INSERT ON calificaciones
FOR EACH ROW
BEGIN
    SET NEW.fecha_salida = (SELECT fecha_salida FROM reserva WHERE num_habitacion = NEW.num_habitacion and check_in = 1);
END //

DELIMITER ;