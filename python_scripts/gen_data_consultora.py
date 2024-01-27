import pandas as pd  
import uuid
import random
from datetime import datetime
import datos_random_coder as drc

# vamos a generar las queries para insertar datos en la tabla cliente: 

query_cliente = ''
cuil_cuit_list = []
for nombre in drc.empresas_tecnologicas: 
    cuil_cuit = random.randint(11111111111,99999999999)
    query_cliente += f"USE consultora;\nINSERT INTO Cliente(nombre, cuil_cuit, razon_social, rubro, direccion, antiguedad) VALUES ('{nombre}', {cuil_cuit}, '{random.choice(drc.condiciones_iva)}', '{random.choice(drc.rubros_empresas_tecnologicas)}', '{random.choice(drc.direcciones)}',{random.randint(1,20)});\n"
    cuil_cuit_list.append(cuil_cuit)

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_cliente.sql', 'w', encoding = 'utf8') as f:
    f.write(query_cliente)


# vamos a generar las queries para insertar datos en la tabla proyecto:
    

def generar_fechas_random(fecha_inicio, fecha_fin):
    diferencia = fecha_fin - fecha_inicio
    diferencia_dias = diferencia.days
    fecha_solic = fecha_inicio + pd.Timedelta(days = random.randrange(diferencia_dias))
    fecha_estim = fecha_solic + pd.Timedelta(days = random.randrange(10,60,1))
    return (fecha_solic, fecha_estim)

query_proyecto = ''
inicio = datetime(2022,1,1)
fin = datetime(2023,12,31)
id_proyecto_list = []

for nombre in drc.nombres_proyectos_tecnologicos:
    id_proyecto = uuid.uuid4()
    query_proyecto += f"USE consultora;\nINSERT INTO Proyecto(id_proyecto, nombre, fecha_solic, fecha_estim, presupuesto) VALUES ('{id_proyecto}','{nombre}', '{generar_fechas_random(inicio,fin)[0]}', '{generar_fechas_random(inicio,fin)[1]}','{random.randint(1000, 50000)}');\n"
    id_proyecto_list.append(id_proyecto)
with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_proyecto.sql', 'w', encoding = 'utf8') as f:
   f.write(query_proyecto)

# vamos a generar las queries para insertar datos en la tabla equipo: 

query_equipo = ''
id_equipo_list = []

for nombre in drc.nombres_equipos:
    id_equipo = uuid.uuid4()
    query_equipo += f"USE consultora;\nINSERT INTO Equipo(id_equipo, n_integrantes, nombre, area) VALUES ('{id_equipo}', '{random.randint(3,10)}', '{nombre}', '{random.choice(drc.areas_de_trabajo)}');\n"
    id_equipo_list.append(id_equipo)
with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_equipo.sql', 'w', encoding = 'utf8') as f:
   f.write(query_equipo)

# vamos a generar las queries para insertar datos en la tabla empleado: 

query_empleado = ''
id_empleado_list = []

for nombre in drc.nombres_personas_random:
    id_empleado = uuid.uuid4()
    query_empleado += f"USE consultora;\nINSERT INTO Empleado(id_empleado, nombre_apell, dni, antiguedad, estudios) VALUES ('{id_empleado}', '{nombre}', '{random.randint(10000000,45000000)}', '{random.randint(1,20)}', '{random.choice(drc.grados_estudios)}');\n"
    id_empleado_list.append(id_empleado)
with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_empleado.sql', 'w', encoding = 'utf8') as f:
   f.write(query_empleado)

# vamos a generar las queries para insertar datos en la tabla tecnologia:

query_tecnologia = ''
id_tecnologia_list = []
for nombre in drc.tecnologias_programacion:
    id_tecnologia = uuid.uuid4()
    query_tecnologia += f"USE consultora;\nINSERT INTO tecnologia(id_tecnologia, nombre, demanda_mercado) VALUES ('{id_tecnologia}', '{nombre}', '{random.randint(1,10)}');\n"
    id_tecnologia_list.append(id_tecnologia)

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_tecnologia.sql', 'w', encoding = 'utf8') as f:
   f.write(query_tecnologia)

# vamos a generar las queries para insertar datos en la tabla puente proyecto por cliente:

query_proyecto_por_cliente = ''   # relación uno a uno entre cliente y proyecto
for n,id_cliente in enumerate(cuil_cuit_list):
    query_proyecto_por_cliente += f"USE consultora;\nINSERT INTO proyectos_por_cliente(cuil_cuit, id_proyecto) VALUES ({id_cliente}, '{id_proyecto_list[n]}');\n"

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_proyecto_por_cliente.sql', 'w', encoding = 'utf8') as f:
   f.write(query_proyecto_por_cliente)

# vamos a generar las queries para insertar datos en la tabla puente proyecto por equipo

query_proyectos_por_equipo = ''   # relacion muchos a muchos entre proyecto y equipo

for id_proyecto in id_proyecto_list:
    for i in range (random.randint(1,3)): # como mucho un proyecto se asocia a 3 equipos, posibles registros duplicados
        query_proyectos_por_equipo += f"USE consultora;\nINSERT INTO proyectos_por_equipo(id_proyecto, id_equipo) VALUES ('{id_proyecto}', '{random.choice(id_equipo_list)}');\n"

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_proyectos_por_equipo.sql', 'w', encoding = 'utf8') as f:
    f.write(query_proyectos_por_equipo)

# vamos a generar las queries para insertar datos en la tabla puente empleados por equipo:

query_empleados_por_equipo = ''   # relacion muchos a muchos entre empleado y equipo

for id_empleado in id_empleado_list:
    for i in range (random.randint(1,3)): # como mucho un empleado se asocia a 3 equipos, posibles registros duplicados
        query_empleados_por_equipo += f"USE consultora;\nINSERT INTO empleados_por_equipo(id_empleado, id_equipo) VALUES ('{id_empleado}', '{random.choice(id_equipo_list)}');\n"

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_empleados_por_equipo.sql', 'w', encoding = 'utf8') as f:
    f.write(query_empleados_por_equipo)

# vamos a generar las queries para insertar datos en la tabla puente tecnologia por equipo:

query_tecnologias_por_empleado = ''   # relacion muchos a muchos entre tecnologia y empleado

for id_empleado in id_empleado_list:
    for i in range (random.randint(1,3)): # como mucho un empleado se asocia a 3 tecnologias, posibles registros duplicados
        query_tecnologias_por_empleado += f"USE consultora;\nINSERT INTO tecnologias_por_empleado(id_empleado, id_tecnologia) VALUES ('{id_empleado}', '{random.choice(id_tecnologia_list)}');\n"

with open('C:\\Users\\arsan\\OneDrive\\Documents\\queries_consultora\\query_tecnologias_por_empleado.sql', 'w', encoding = 'utf8') as f:
    f.write(query_tecnologias_por_empleado)
