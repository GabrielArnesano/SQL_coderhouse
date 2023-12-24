use sys; 

create schema consultora; 

use consultora; 

create table Cliente (
nombre varchar (50),
cuil_cuit int, 
razon_social varchar (50),
rubro varchar (50),
direccion varchar(50),
antiguedad varchar (50),
constraint cuil_cuit_pk primary key (cuil_cuit),
constraint cuil_cuit_not_null check (cuil_cuit is not null)
);

create table proyecto ( 
id_proyecto varchar (50),
nombre varchar (50),
fecha_solic datetime,
fecha_estim datetime,
presupuesto float,
constraint id_proyecto_pk primary key (id_proyecto),
constraint id_proyecto_not_null check (id_proyecto is not null),
constraint presupuesto_not_neg check (presupuesto > 0) -- un ejemplo de restr. distinta 
);

create table equipo (
id_equipo varchar (50),
n_integrantes int,
nombre varchar (50),
area varchar (50),
constraint id_equipo_pk primary key (id_equipo),
constraint id_equipo_not_null check (id_equipo is not null)
);

create table empleado (
id_empleado varchar (50) not null, -- otra forma de restringir 
nombre_apell varchar (50),
dni int,
fecha_ingreso datetime,
estudios varchar (50),
constraint id_empleado_pk primary key (id_empleado)
);

create table tecnologia ( 
id_tecnologia varchar (50) primary key not null,
nombre varchar (50),
demanda_mercado int
);

create table proyectos_por_cliente ( 
cuil_cuit int,
id_proyecto varchar (50),
constraint id_cliente_fk_ppc foreign key (cuil_cuit) references Cliente(cuil_cuit),
constraint id_proyecto_fk_ppc foreign key (id_proyecto) references proyecto (id_proyecto)
);

create table proyectos_por_equipo ( 
id_proyecto varchar (50),
id_equipo varchar (50),
constraint id_proyecto_fk_ppe foreign key (id_proyecto) references proyecto(id_proyecto),
constraint id_equipo_fk_ppe foreign key (id_equipo) references equipo(id_equipo)
);

create table empleados_por_equipo ( 
id_empleado varchar (50),
id_equipo varchar (50),
constraint id_empleado_fk_epe foreign key (id_empleado) references empleado(id_empleado),
constraint id_equipo_fk_epe foreign key (id_equipo) references equipo(id_equipo)
);

create table tecnologias_por_empleado ( 
id_tecnologia varchar (50),
id_empleado varchar (50),
constraint id_tecnologia_fk_tpe foreign key (id_tecnologia) references tecnologia(id_tecnologia),
constraint id_empleado_fk_tpe foreign key (id_empleado) references empleado(id_empleado)
);




