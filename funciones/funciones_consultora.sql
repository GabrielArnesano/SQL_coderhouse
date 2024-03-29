USE consultora;

DELIMITER //

CREATE FUNCTION antiguedad (fecha_ingreso DATE) RETURNS INT -- esta funcion recibe la fecha de ingreso de un empleado y calcula su antiguedad
DETERMINISTIC
BEGIN
    DECLARE annos_antiguedad INT;
    SET annos_antiguedad = CONVERT (YEAR(now()) - YEAR(fecha_ingreso), SIGNED);
    RETURN annos_antiguedad;
END;

//

DELIMITER actualizar_presupuesto //

CREATE FUNCTION actualizar_presupuesto (presupuesto int , porcentaje float, aumento boolean) returns float
DETERMINISTIC 
BEGIN 
	DECLARE presupuesto_actualizado float;
    if aumento = TRUE then -- se suma el porcentaje al presupuesto
		SET presupuesto_actualizado = presupuesto + presupuesto * porcentaje /100;
	else -- se resta el porcentaje al presupuesto
		SET presupuesto_actualizado = presupuesto - (presupuesto * porcentaje / 100);
	END if;
	RETURN presupuesto_actualizado;
END

//

delimiter ; 


