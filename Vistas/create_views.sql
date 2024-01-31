USE consultora; 

-- se restringe el dato de presupuesto con una vista

CREATE VIEW vw_proyecto AS 

	(SELECT id_proyecto
		  ,nombre
		  ,fecha_solic
		  ,fecha_estim
	FROM proyecto);

-- vista para ver los proyectos cuya entrega debe ser este mes o el proximo

CREATE VIEW vw_vencimiento_tareas AS 

	(SELECT e.nombre_apell,
			eq.nombre as nombre_equipo,
			p.nombre as nombre_proyecto,
			p.fecha_estim
	FROM (SELECT ee.id_empleado,
				 ee.id_equipo,
				 pe.id_proyecto
		  FROM empleados_por_equipo as ee
		  LEFT JOIN proyectos_por_equipo as pe
		  ON ee.id_equipo = pe.id_equipo) as subquery
	LEFT JOIN empleado as e
	ON e.id_empleado = subquery.id_empleado
	LEFT JOIN equipo as eq
	ON eq.id_equipo = subquery.id_equipo
	LEFT JOIN proyecto as p
	ON p.id_proyecto = subquery.id_proyecto
	WHERE month(fecha_estim) - month(now()) <2);

-- otra posible vista
-- antiguedad por cada empleado

create view antiguedad_empleados AS
	(select nombre_apell
		  ,antiguedad(fecha_ingreso)
	from empleado);


-- si quiero cambiar el nombre de la primera vista

rename table vw_proyecto to vw_proyecto_sin_presup;

-- puedo agregar la columna de antiguedad a la tabla 

alter table empleado 
add column antiguedad int;

update empleado
set antiguedad = antiguedad(fecha_ingreso)
where id_empleado ; -- safo del safe mode
