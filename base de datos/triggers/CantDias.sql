DELIMITER //

CREATE TRIGGER actualizar_cant_dias_insert
BEFORE INSERT ON reserva
FOR EACH ROW
BEGIN
    DECLARE diferencia INT;
    SET diferencia = DATEDIFF(NEW.fecha_salida, NEW.fecha_ingreso);
    SET NEW.cant_dias = diferencia + 1;
    SET NEW.precio_total = CalcularPrecioTotal(NEW.cant_dias,NEW.cant_tours, NEW.num_habitacion);
END //

CREATE TRIGGER actualizar_cant_dias_update
BEFORE UPDATE ON reserva
FOR EACH ROW
BEGIN
    IF NEW.fecha_salida IS NOT NULL AND (OLD.fecha_salida IS NULL OR OLD.fecha_salida != NEW.fecha_salida) THEN
        SET NEW.cant_dias = (DATEDIFF(NEW.fecha_salida, NEW.fecha_ingreso) + 1);
    END IF;
END //

DELIMITER ;