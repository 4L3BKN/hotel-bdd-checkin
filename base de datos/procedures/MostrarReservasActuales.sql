DELIMITER //

CREATE PROCEDURE MostrarReservasActuales()
BEGIN
    SELECT * FROM reserva
    WHERE check_in = 1;  
END //

DELIMITER ;
