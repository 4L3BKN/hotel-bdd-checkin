DELIMITER //

CREATE TRIGGER actualizar_check_in_post_calificacion
AFTER INSERT ON calificaciones
FOR EACH ROW
BEGIN
    DECLARE reserva_id INT;
    
    SET reserva_id = (SELECT id_reserva FROM reserva WHERE num_habitacion = NEW.num_habitacion and check_in = 1);
    
    UPDATE Reserva
    SET check_in = 2
    WHERE id_reserva = reserva_id;
END //

DELIMITER ;
