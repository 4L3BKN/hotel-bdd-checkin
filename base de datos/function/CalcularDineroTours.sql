DELIMITER //

CREATE FUNCTION CalcularDineroTours(cant_tours INT, habitacion_num INT)
RETURNS INT
DETERMINISTIC
BEGIN
    
    DECLARE precio_tours INT;
    DECLARE total INT;
 
    SET precio_tours = (SELECT precio_tour FROM habitaciones WHERE num_habitacion = habitacion_num);    
    SET total = (cant_tours * precio_tours);

    RETURN total;
END//

DELIMITER ;