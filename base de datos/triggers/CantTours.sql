DELIMITER //

CREATE TRIGGER actualizar_cant_tours_insert
AFTER INSERT ON reserva_tour
FOR EACH ROW
BEGIN
    UPDATE reserva
    SET cant_tours = cant_tours + 1
    WHERE id_reserva = NEW.id_reserva;
END //

CREATE TRIGGER actualizar_cant_tours_delete
AFTER DELETE ON reserva
FOR EACH ROW
BEGIN
    UPDATE reserva
    SET cant_tours = GREATEST(cant_tours - 1, 0)
    WHERE id_reserva = OLD.id_reserva and check_in = 1;
END//

DELIMITER ;