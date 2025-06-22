DELIMITER //

CREATE TRIGGER actualizar_dinero_tours_insert
BEFORE INSERT ON calificaciones
FOR EACH ROW
BEGIN
    DECLARE cantidad_tours INT;
    DECLARE total INT;
    
    
    SET cantidad_tours = (SELECT cant_tours FROM reserva WHERE num_habitacion = NEW.num_habitacion and check_in = 1);
    
    SET total = CalcularDineroTours(cantidad_tours, NEW.num_habitacion);
    
    SET NEW.dinero_tours = total;
END //

DELIMITER ;
