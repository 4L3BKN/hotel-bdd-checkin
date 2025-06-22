DELIMITER //

CREATE FUNCTION CalcularPrecioTotal(cant_dias INT, cant_tours INT, habitacion_num INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE precio_habitacion INT;
    DECLARE precio_tours INT;
    DECLARE total INT;
 
    SET precio_habitacion = (SELECT precio_hab FROM habitaciones WHERE num_habitacion = habitacion_num);
    SET precio_tours = (SELECT precio_tour FROM habitaciones WHERE num_habitacion = habitacion_num);    
    SET total = (cant_dias * precio_habitacion) + (cant_tours * precio_tours);

    RETURN total;
END//

DELIMITER ;