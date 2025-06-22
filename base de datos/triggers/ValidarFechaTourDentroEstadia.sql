DELIMITER //

CREATE TRIGGER validar_fecha_tour_dentro_estadia
BEFORE INSERT ON reserva_Tour
FOR EACH ROW
BEGIN
    DECLARE ingreso_fecha DATE;
    DECLARE salida_fecha DATE;
    DECLARE tour_fecha DATE;
    
    SELECT fecha_ingreso, fecha_salida
    INTO ingreso_fecha, salida_fecha
    FROM reservaMostrarReservasActuales
    WHERE id_reserva = NEW.id_reserva;
    
    SELECT fecha
    INTO tour_fecha
    FROM tours
    WHERE id_tour = NEW.id_tour;  
    
    IF tour_fecha < ingreso_fecha OR tour_fecha > salida_fecha THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El tour no se puede reservar fuera del período de estadía';
    END IF;
END //

DELIMITER ;
