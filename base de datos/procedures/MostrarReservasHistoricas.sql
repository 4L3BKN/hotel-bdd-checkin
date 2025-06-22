DELIMITER //

CREATE PROCEDURE MostrarReservasHistoricas()
BEGIN
    SELECT * FROM reserva
    WHERE check_in = 2;  
END //

DELIMITER ;