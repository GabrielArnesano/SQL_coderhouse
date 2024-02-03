-- backup de tablas cliente, empleado, empleado_por_equipo, equipo, proyecto, proyecto_por_cliente, proyecto_por_equipo, tecnologia, tecnologia_por_empleado
--backup de vistas vw_proyecto, vw_vencimiento_tareas

CREATE DATABASE  IF NOT EXISTS `consultora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `consultora`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: consultora
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Oracle',12030440268,'Sujeto Exento','Automatización del Hogar y Dispositivos Conectados','321 Alameda del Algoritmo, Urbanización Cibernética','9'),('Microsoft',17479885902,'No Responsable','Entretenimiento Digital','321 Boulevard de la Información, Metrópolis Digital','4'),('Samsung',17660987151,'Sujeto No Categorizado','Hardware y Dispositivos','123 Avenida de la Inteligencia Artificial, Ciudad Tecnológica','7'),('HP (Hewlett-Packard)',24079853842,'Sujeto Exento','Electrónica Automotriz','543 Pasaje de la Innovación, Barrio Tecnológico','9'),('Twitter',26243658694,'Otro','Motor de Búsqueda','890 Paseo del Software, Urbanización Tecnológica','2'),('NVIDIA',26925170418,'Agente de Retención','Base de Datos y Software Empresarial','987 Sendero de la Programación, Ciudad Codificada','19'),('Intel',27118236988,'Sujeto No Categorizado','Tecnologías de Energía Renovable','890 Callejuela de la Innovación, Zona Electrónica','11'),('Cisco',30431706863,'Sujeto No Categorizado','Diseño Gráfico y Multimedia','876 Callejón del Futuro, Zona Digital','8'),('LinkedIn (Microsoft)',41583783941,'Responsable Inscripto','Tecnologías de la Información','210 Pasaje de la Programación, Metrópolis Digital','2'),('Adobe',47132091536,'Responsable No Inscripto','Automatización y Consultoría','876 Avenida de la Automatización, Ciudad Digital','2'),('Sony',58129109364,'Sujeto Exento','Servicios de CRM','543 Pasaje de la Innovación, Barrio Tecnológico','8'),('IBM',58374287872,'Exento','Entretenimiento Digital','567 Ruta del Desarrollo, Barrio Innovador','3'),('Tesla',59242807612,'Responsable Inscripto','Almacenamiento de Datos y Servicios','456 Avenida Tech, Distrito Tecnológico','20'),('Uber',68591829672,'Otro','Motor de Búsqueda','321 Boulevard de la Información, Metrópolis Digital','1'),('Airbnb',68849347320,'Sujeto No Alcanzado','Streaming de Contenidos','321 Alameda del Algoritmo, Urbanización Cibernética','1'),('Facebook (Meta)',73422079668,'Sujeto Liberado','Hardware y Dispositivos','234 Plaza de las Redes, Villa Virtual','9'),('Dropbox',74894215668,'Agente de Retención','Tecnologías de la Inteligencia Artificial','876 Plaza del Proyecto, Área Digitalizada','7'),('Dell',77773333735,'Agente de Retención','Servicios de CRM','987 Sendero de la Programación, Ciudad Codificada','13'),('Netflix',84079704708,'Sujeto Liberado','Hardware y Dispositivos','890 Callejuela de la Innovación, Zona Electrónica','13'),('Apple',88485663680,'Monotributista','Entretenimiento Digital','543 Pasaje de la Innovación, Barrio Tecnológico','4'),('Amazon',90892059772,'Sujeto No Categorizado','Entretenimiento Digital','789 Calle de la Ciberseguridad, Distrito Electrónico','13'),('Spotify',92877906835,'Sujeto Liberado','Base de Datos y Software Empresarial','543 Plaza de los Datos, Área Digital','9'),('Salesforce',97549328736,'Consumidor Final','Automatización y Consultoría','654 Camino de la Computación, Urbanización Digital','20'),('Google',99079748089,'Exento','Desarrollo de Software','210 Rincón de la Tecnología, Sector Digital','10'),('SAP',99771219108,'Sujeto Exento','Tecnologías de la Información','890 Callejuela de la Innovación, Zona Electrónica','1');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('0d9f9e59-4273-4b23-9f9d-7b348e6b2a83','María González',28464092,NULL,'Estudios Técnicos',NULL),('0f19274b-8a76-4f55-902c-350e18dc1c5a','Ana Gómez',10285234,NULL,'Técnico Superior',NULL),('2d3a6d8c-f9b7-4691-bdb1-2b367f28d230','Andrés Castro',40024430,NULL,'Cursos y Certificaciones',NULL),('32bed4dd-c71e-46bc-9a4f-ca87d5777232','Martín Silva',29296003,NULL,'Bachillerato',NULL),('410028d3-33a3-433b-b476-b14af2f8f1dc','Ricardo Medina',30737109,NULL,'Maestría',NULL),('4b6b63c1-d74f-4f58-a14e-0039c251355a','Isabel Torres',19942812,NULL,'Cursos y Certificaciones',NULL),('50219e6b-0bff-4f28-9a66-1d99ec9209f6','Gabriela Morales',35097385,NULL,'Licenciatura',NULL),('57e108ec-c5e5-453b-a3ee-9e51f463f8ee','Esteban Ruiz',23253225,NULL,'Doctorado',NULL),('6ea21e69-19dc-42a1-afa6-39644f27f642','Carlos Sánchez',29813624,NULL,'Técnico Superior',NULL),('790f8037-0a13-4e2d-9298-c22cf07e0ee5','Javier Herrera',13315419,NULL,'Maestría',NULL),('7dc04761-5c3e-4c59-9ef1-f8728c3ef5d6','Natalia Fernández',10177956,NULL,'Técnico Superior',NULL),('8ea424d7-4213-41ee-9de0-7cf6162db44e','Sergio Díaz',18976046,NULL,'Técnico Superior',NULL),('9220fac1-7330-4640-a88b-096607fbd15b','Juan Martínez',37741858,NULL,'Postdoctorado',NULL),('95044b3b-21ce-4cb0-b087-9a96b1d38bf0','Miguel Mendoza',28261883,NULL,'Técnico Superior',NULL),('960bef68-3936-4e0d-a612-1d7c1d6ef93d','Carmen Jiménez',23899012,NULL,'Estudios Técnicos',NULL),('abc123','rojas, marcos',42076555,'2024-01-27 15:46:12','primarios',NULL),('b0c01955-0078-4bdd-830f-d764a4ab7780','Daniela Ortega',10202401,NULL,'Maestría',NULL),('b18650da-9e7d-4968-aa2d-0ed8de1e0613','Adriana Chávez',27800197,NULL,'Doctorado',NULL),('b25834a7-9b1a-4702-9d89-f10f2396f39e','Valeria López',42433726,NULL,'Educación Básica Incompleta',NULL),('bf385a6a-a9aa-49cb-953e-5f659211f6b6','Laura Rodríguez',20167807,NULL,'Educación Básica Completa',NULL),('c73c9f8f-e26e-494b-b4e7-864f7bd17432','Camila Ríos',12973224,NULL,'Maestría',NULL),('c7b22b2d-b433-488c-9b85-65ddf56c56d2','Carolina Núñez',39741923,NULL,'Educación Básica Incompleta',NULL),('ea24800a-1146-451d-b899-0aed13fc2e30','Luis Vargas',38775721,NULL,'Bachillerato',NULL),('ec2a782a-6d40-4586-84b7-aa2e4c8eddda','Alejandro Ramírez',16425438,NULL,'Doctorado',NULL),('f4000952-c6d4-4f2d-8bcf-b43107c0f963','Diego Pérez',17075299,NULL,'Formación Profesional',NULL);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados_por_equipo`
--

LOCK TABLES `empleados_por_equipo` WRITE;
/*!40000 ALTER TABLE `empleados_por_equipo` DISABLE KEYS */;
INSERT INTO `empleados_por_equipo` VALUES ('9220fac1-7330-4640-a88b-096607fbd15b','f7e975a3-3c3b-4473-92c6-ae1b7045ecaa'),('9220fac1-7330-4640-a88b-096607fbd15b','1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1'),('9220fac1-7330-4640-a88b-096607fbd15b','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('bf385a6a-a9aa-49cb-953e-5f659211f6b6','8a1b4201-e234-43dc-b2c6-92cbdddc34fa'),('bf385a6a-a9aa-49cb-953e-5f659211f6b6','5e57205d-3080-4713-ae4a-07dc3a38f613'),('6ea21e69-19dc-42a1-afa6-39644f27f642','5e57205d-3080-4713-ae4a-07dc3a38f613'),('0f19274b-8a76-4f55-902c-350e18dc1c5a','d0ec3ed8-5bf1-45ff-b76d-0665af2fc97e'),('0f19274b-8a76-4f55-902c-350e18dc1c5a','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('0f19274b-8a76-4f55-902c-350e18dc1c5a','e23c1625-f72c-4162-a663-357433127df3'),('f4000952-c6d4-4f2d-8bcf-b43107c0f963','d0ec3ed8-5bf1-45ff-b76d-0665af2fc97e'),('f4000952-c6d4-4f2d-8bcf-b43107c0f963','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('0d9f9e59-4273-4b23-9f9d-7b348e6b2a83','2127da32-6e9e-443d-8882-26f7aaf8a149'),('0d9f9e59-4273-4b23-9f9d-7b348e6b2a83','b2f7b15b-1eb8-4788-a5f6-3e00c90764c6'),('0d9f9e59-4273-4b23-9f9d-7b348e6b2a83','a65c0491-2aa0-41eb-a95c-29c7b4701a14'),('8ea424d7-4213-41ee-9de0-7cf6162db44e','a65c0491-2aa0-41eb-a95c-29c7b4701a14'),('b25834a7-9b1a-4702-9d89-f10f2396f39e','e23c1625-f72c-4162-a663-357433127df3'),('b25834a7-9b1a-4702-9d89-f10f2396f39e','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('b25834a7-9b1a-4702-9d89-f10f2396f39e','bde25be8-26c7-4dbe-8738-d2dbb9038e4b'),('790f8037-0a13-4e2d-9298-c22cf07e0ee5','8a1b4201-e234-43dc-b2c6-92cbdddc34fa'),('7dc04761-5c3e-4c59-9ef1-f8728c3ef5d6','e23c1625-f72c-4162-a663-357433127df3'),('ec2a782a-6d40-4586-84b7-aa2e4c8eddda','ff82abb7-dbfc-4c10-b346-04ab0bc5344b'),('4b6b63c1-d74f-4f58-a14e-0039c251355a','5e57205d-3080-4713-ae4a-07dc3a38f613'),('4b6b63c1-d74f-4f58-a14e-0039c251355a','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('410028d3-33a3-433b-b476-b14af2f8f1dc','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('410028d3-33a3-433b-b476-b14af2f8f1dc','6c3f01c9-7d68-4428-9fd4-3c45907a827c'),('c73c9f8f-e26e-494b-b4e7-864f7bd17432','1de08db8-0458-471b-bc20-58a3fc38fe9b'),('ea24800a-1146-451d-b899-0aed13fc2e30','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('ea24800a-1146-451d-b899-0aed13fc2e30','bde25be8-26c7-4dbe-8738-d2dbb9038e4b'),('ea24800a-1146-451d-b899-0aed13fc2e30','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('50219e6b-0bff-4f28-9a66-1d99ec9209f6','fadf8d3f-af3d-4253-a06e-0365c0fe580d'),('2d3a6d8c-f9b7-4691-bdb1-2b367f28d230','948e6d36-b660-4d3f-8c27-02ca8cacd8e1'),('2d3a6d8c-f9b7-4691-bdb1-2b367f28d230','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('b0c01955-0078-4bdd-830f-d764a4ab7780','fadf8d3f-af3d-4253-a06e-0365c0fe580d'),('b0c01955-0078-4bdd-830f-d764a4ab7780','fadf8d3f-af3d-4253-a06e-0365c0fe580d'),('b0c01955-0078-4bdd-830f-d764a4ab7780','6c3f01c9-7d68-4428-9fd4-3c45907a827c'),('32bed4dd-c71e-46bc-9a4f-ca87d5777232','39f84387-f8db-4805-83ad-9be741df9f97'),('960bef68-3936-4e0d-a612-1d7c1d6ef93d','a65c0491-2aa0-41eb-a95c-29c7b4701a14'),('960bef68-3936-4e0d-a612-1d7c1d6ef93d','b2f7b15b-1eb8-4788-a5f6-3e00c90764c6'),('960bef68-3936-4e0d-a612-1d7c1d6ef93d','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('57e108ec-c5e5-453b-a3ee-9e51f463f8ee','9e1f16ae-8fbb-4166-9286-6ff2a86192ec'),('57e108ec-c5e5-453b-a3ee-9e51f463f8ee','b9c54d56-4e1b-4f48-8a98-10f8b16a5b29'),('57e108ec-c5e5-453b-a3ee-9e51f463f8ee','84503d48-cb0c-4df3-9f76-70f5876604ae'),('c7b22b2d-b433-488c-9b85-65ddf56c56d2','b9c54d56-4e1b-4f48-8a98-10f8b16a5b29'),('c7b22b2d-b433-488c-9b85-65ddf56c56d2','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('c7b22b2d-b433-488c-9b85-65ddf56c56d2','948e6d36-b660-4d3f-8c27-02ca8cacd8e1'),('95044b3b-21ce-4cb0-b087-9a96b1d38bf0','b2f7b15b-1eb8-4788-a5f6-3e00c90764c6'),('95044b3b-21ce-4cb0-b087-9a96b1d38bf0','fadf8d3f-af3d-4253-a06e-0365c0fe580d'),('95044b3b-21ce-4cb0-b087-9a96b1d38bf0','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('b18650da-9e7d-4968-aa2d-0ed8de1e0613','5f543b3d-0c5b-497a-b54c-5f6a265fa211'),('b18650da-9e7d-4968-aa2d-0ed8de1e0613','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('b18650da-9e7d-4968-aa2d-0ed8de1e0613','9e1f16ae-8fbb-4166-9286-6ff2a86192ec');
/*!40000 ALTER TABLE `empleados_por_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES ('07e9819e-1a39-48cf-860a-2db6421a8edd',7,'Infinite Loopers','Consultoría en Salud y Bienestar Laboral'),('1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1',8,'Code Wizards','Gestión de Proyectos'),('1de08db8-0458-471b-bc20-58a3fc38fe9b',5,'Tech Explorers','Ciberseguridad'),('2127da32-6e9e-443d-8882-26f7aaf8a149',6,'Quantum Quotients','Analítica y Ciencia de Datos'),('39f84387-f8db-4805-83ad-9be741df9f97',5,'Tech Fusion','Consultoría Estratégica'),('4eb7b19e-2d5b-4b69-9502-0e6dae0685b7',4,'AI Avengers','Gestión del Cambio'),('5e57205d-3080-4713-ae4a-07dc3a38f613',8,'Ingeniería del Futuro','Consultoría en Salud y Bienestar Laboral'),('5f543b3d-0c5b-497a-b54c-5f6a265fa211',10,'Data Dynamos','Gestión de Proyectos'),('6c3f01c9-7d68-4428-9fd4-3c45907a827c',4,'CodeCrafters','Recursos Humanos'),('84503d48-cb0c-4df3-9f76-70f5876604ae',4,'Equipo Innovación Tech','Consultoría en Educación y Formación'),('8a1b4201-e234-43dc-b2c6-92cbdddc34fa',8,'CodeStorm Team','Estrategias de Negocios Internacionales'),('948e6d36-b660-4d3f-8c27-02ca8cacd8e1',4,'Data Mavericks','Gestión de Proyectos'),('9bad9ed6-36b5-47aa-8084-fe925f59843f',4,'CyberGuardians','Optimización de Procesos'),('9e1f16ae-8fbb-4166-9286-6ff2a86192ec',8,'Robotics R&D Crew','Optimización de Procesos'),('a65c0491-2aa0-41eb-a95c-29c7b4701a14',4,'DreamTeam Coders','Desarrollo Organizacional'),('b2f7b15b-1eb8-4788-a5f6-3e00c90764c6',5,'TechNinjas','Ingeniería de Datos'),('b9c54d56-4e1b-4f48-8a98-10f8b16a5b29',7,'CyberElite','Ingeniería de Datos'),('bc744bcc-6f89-4fcf-9337-04a4e26012ba',4,'NubeXplorers','Analítica y Ciencia de Datos'),('bde25be8-26c7-4dbe-8738-d2dbb9038e4b',9,'EcoInnovators','Ciberseguridad'),('d0ec3ed8-5bf1-45ff-b76d-0665af2fc97e',7,'Quantum Squad','Estrategias de Negocios Internacionales'),('e23c1625-f72c-4162-a663-357433127df3',7,'Byte Benders','Marketing Digital'),('e92450bd-22fb-4b02-97c5-b0364f16b62b',8,'InnoVision Team','Gestión de Proyectos'),('f7e975a3-3c3b-4473-92c6-ae1b7045ecaa',10,'Digital Pioneers','Consultoría Legal y Regulatoria'),('fadf8d3f-af3d-4253-a06e-0365c0fe580d',7,'Smart Creators','Gestión de Proyectos'),('ff82abb7-dbfc-4c10-b346-04ab0bc5344b',10,'Tech Titans','Gestión del Cambio');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES ('015f43bc-75bc-4a35-b68f-84fab6dc76ab','Realidad Aumentada en Educación','2023-11-18 00:00:00','2022-10-27 00:00:00',49981),('02bf9213-9d43-43d3-b6b8-49413a58c0f7','Sistema de Seguridad Bioinformática','2023-06-24 00:00:00','2024-01-18 00:00:00',19061),('03dded4c-8df5-45c3-b765-a7deda06d492','Innovación en Energía Solar','2022-12-12 00:00:00','2023-11-28 00:00:00',1210),('1aecd9e6-e283-4c73-95b2-fa8b6eb998df','Desarrollo de Drones Autónomos','2022-04-07 00:00:00','2023-06-22 00:00:00',42200),('2f6011b8-dc4e-4387-b313-7549246413c7','Innovación Digital','2022-05-23 00:00:00','2022-10-13 00:00:00',39775),('3be5fdc7-8a65-4346-88af-838c06a649a6','Sistema de Monitorización Global','2022-06-28 00:00:00','2022-05-17 00:00:00',34302),('3c6a0ace-2caa-40d7-be60-ab1903aeee8f','Redes Cibernéticas Avanzadas','2023-02-24 00:00:00','2023-06-11 00:00:00',16869),('41ad8835-5eba-4ae3-80e6-d057e871bb3d','Proyecto Cyberspace','2022-05-17 00:00:00','2023-11-14 00:00:00',41293),('4e31e3b1-4293-4af2-8b86-e70ba85fef51','Ciencia de Datos Aplicada','2023-02-08 00:00:00','2022-12-01 00:00:00',30537),('574779e0-dbe9-49a4-a413-90d3106b29b8','Automatización Total','2022-05-22 00:00:00','2023-09-24 00:00:00',39663),('5a3e6971-9544-4562-87c1-3864de5278af','Proyecto Stellar: Exploración del Universo','2023-11-23 00:00:00','2022-04-14 00:00:00',16304),('614b6a68-3d70-49a9-8977-aa6e91a9cd99','Plataforma de Aprendizaje Automático','2023-04-14 00:00:00','2023-08-14 00:00:00',48340),('66d25f78-c5e6-4b4f-8aec-f489ab520e13','Ingeniería de Datos en Tiempo Real','2022-04-28 00:00:00','2023-12-22 00:00:00',19711),('67f3bb65-b895-49ed-b3e1-aef32be569cf','Proyecto Helix: Genómica Avanzada','2023-11-24 00:00:00','2023-06-21 00:00:00',28188),('6be84a75-ad17-4793-880d-5adef17b05fb','Ecosistema Blockchain','2023-05-23 00:00:00','2023-03-14 00:00:00',42274),('71df4845-cdf2-4138-bbdb-0c64cac805b5','Plataforma de Telemedicina','2023-07-27 00:00:00','2023-06-11 00:00:00',15066),('791821b4-1f59-496f-b506-732bdb122c8b','Proyecto Quantum','2023-03-06 00:00:00','2024-01-13 00:00:00',8597),('8826df68-3345-4722-bcad-62b102bef86f','Hologramas Interactivos','2023-03-08 00:00:00','2022-12-25 00:00:00',43903),('9340c85f-2af2-40a3-9ed2-7381b33bc82d','Proyecto Aurora','2023-05-23 00:00:00','2023-05-01 00:00:00',33906),('94ca75a2-13b6-4db9-b445-93d043e08f58','Sistema Inteligente de Gestión','2023-10-05 00:00:00','2023-11-07 00:00:00',31984),('96cfe8fc-15d4-42a0-9e5a-6e75de88b5e3','Innovación en Movilidad Eléctrica','2022-08-01 00:00:00','2022-11-21 00:00:00',4831),('a4d59cf6-4df2-47cf-ad9e-00240151c9bc','Red de Energía Renovable','2022-08-20 00:00:00','2023-06-04 00:00:00',28423),('a4ed5911-5ce4-4759-80e9-62a68a908f43','Plataforma de Servicios en la Nube','2023-10-14 00:00:00','2022-06-23 00:00:00',7878),('a6bc688f-965a-4200-8268-486518262a3c','Simulador Cuántico','2023-01-03 00:00:00','2022-07-15 00:00:00',40354),('c3c45027-b860-4bb4-ac42-d8af1da02520','Internet de las Cosas Industrial','2022-02-24 00:00:00','2022-08-08 00:00:00',25906),('cbfb469b-6422-4d88-8a8e-6658a304b9b7','Sistema de Procesamiento de Lenguaje Natural','2023-04-18 00:00:00','2023-05-18 00:00:00',23391),('da5c338e-e526-4bd3-beea-6e70ddc92e7c','Plataforma de Realidad Virtual','2023-09-28 00:00:00','2022-08-22 00:00:00',13901),('e133a5ed-549c-46be-98a1-a5f1509dd12b','Inteligencia Artificial para la Salud','2022-01-01 00:00:00','2023-07-26 00:00:00',48917),('eb7f5fb9-5621-4656-a0d9-15923377b98d','Proyecto Nebula: Exploración Espacial','2023-01-13 00:00:00','2023-11-26 00:00:00',26151),('f44e6a6a-f49f-4217-8a71-326569bf894b','Proyecto Synthetics: Desarrollo de Materiales','2023-09-30 00:00:00','2023-02-12 00:00:00',7807);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proyectos_por_cliente`
--

LOCK TABLES `proyectos_por_cliente` WRITE;
/*!40000 ALTER TABLE `proyectos_por_cliente` DISABLE KEYS */;
INSERT INTO `proyectos_por_cliente` VALUES (99079748089,'791821b4-1f59-496f-b506-732bdb122c8b'),(17479885902,'2f6011b8-dc4e-4387-b313-7549246413c7'),(88485663680,'94ca75a2-13b6-4db9-b445-93d043e08f58'),(90892059772,'da5c338e-e526-4bd3-beea-6e70ddc92e7c'),(73422079668,'3c6a0ace-2caa-40d7-be60-ab1903aeee8f'),(58374287872,'9340c85f-2af2-40a3-9ed2-7381b33bc82d'),(27118236988,'574779e0-dbe9-49a4-a413-90d3106b29b8'),(30431706863,'6be84a75-ad17-4793-880d-5adef17b05fb'),(12030440268,'66d25f78-c5e6-4b4f-8aec-f489ab520e13'),(99771219108,'67f3bb65-b895-49ed-b3e1-aef32be569cf'),(26925170418,'02bf9213-9d43-43d3-b6b8-49413a58c0f7'),(47132091536,'1aecd9e6-e283-4c73-95b2-fa8b6eb998df'),(97549328736,'614b6a68-3d70-49a9-8977-aa6e91a9cd99'),(24079853842,'a4d59cf6-4df2-47cf-ad9e-00240151c9bc'),(77773333735,'eb7f5fb9-5621-4656-a0d9-15923377b98d'),(58129109364,'a6bc688f-965a-4200-8268-486518262a3c'),(17660987151,'c3c45027-b860-4bb4-ac42-d8af1da02520'),(59242807612,'cbfb469b-6422-4d88-8a8e-6658a304b9b7'),(26243658694,'a4ed5911-5ce4-4759-80e9-62a68a908f43'),(41583783941,'41ad8835-5eba-4ae3-80e6-d057e871bb3d'),(68591829672,'96cfe8fc-15d4-42a0-9e5a-6e75de88b5e3'),(68849347320,'e133a5ed-549c-46be-98a1-a5f1509dd12b'),(84079704708,'f44e6a6a-f49f-4217-8a71-326569bf894b'),(92877906835,'3be5fdc7-8a65-4346-88af-838c06a649a6'),(74894215668,'015f43bc-75bc-4a35-b68f-84fab6dc76ab');
/*!40000 ALTER TABLE `proyectos_por_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proyectos_por_equipo`
--

LOCK TABLES `proyectos_por_equipo` WRITE;
/*!40000 ALTER TABLE `proyectos_por_equipo` DISABLE KEYS */;
INSERT INTO `proyectos_por_equipo` VALUES ('791821b4-1f59-496f-b506-732bdb122c8b','5f543b3d-0c5b-497a-b54c-5f6a265fa211'),('791821b4-1f59-496f-b506-732bdb122c8b','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('2f6011b8-dc4e-4387-b313-7549246413c7','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('94ca75a2-13b6-4db9-b445-93d043e08f58','1de08db8-0458-471b-bc20-58a3fc38fe9b'),('da5c338e-e526-4bd3-beea-6e70ddc92e7c','5f543b3d-0c5b-497a-b54c-5f6a265fa211'),('da5c338e-e526-4bd3-beea-6e70ddc92e7c','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('3c6a0ace-2caa-40d7-be60-ab1903aeee8f','6c3f01c9-7d68-4428-9fd4-3c45907a827c'),('9340c85f-2af2-40a3-9ed2-7381b33bc82d','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('9340c85f-2af2-40a3-9ed2-7381b33bc82d','1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1'),('574779e0-dbe9-49a4-a413-90d3106b29b8','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('6be84a75-ad17-4793-880d-5adef17b05fb','5e57205d-3080-4713-ae4a-07dc3a38f613'),('6be84a75-ad17-4793-880d-5adef17b05fb','6c3f01c9-7d68-4428-9fd4-3c45907a827c'),('6be84a75-ad17-4793-880d-5adef17b05fb','b2f7b15b-1eb8-4788-a5f6-3e00c90764c6'),('66d25f78-c5e6-4b4f-8aec-f489ab520e13','39f84387-f8db-4805-83ad-9be741df9f97'),('67f3bb65-b895-49ed-b3e1-aef32be569cf','5e57205d-3080-4713-ae4a-07dc3a38f613'),('02bf9213-9d43-43d3-b6b8-49413a58c0f7','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('02bf9213-9d43-43d3-b6b8-49413a58c0f7','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('02bf9213-9d43-43d3-b6b8-49413a58c0f7','2127da32-6e9e-443d-8882-26f7aaf8a149'),('1aecd9e6-e283-4c73-95b2-fa8b6eb998df','bde25be8-26c7-4dbe-8738-d2dbb9038e4b'),('1aecd9e6-e283-4c73-95b2-fa8b6eb998df','5e57205d-3080-4713-ae4a-07dc3a38f613'),('614b6a68-3d70-49a9-8977-aa6e91a9cd99','8a1b4201-e234-43dc-b2c6-92cbdddc34fa'),('614b6a68-3d70-49a9-8977-aa6e91a9cd99','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('a4d59cf6-4df2-47cf-ad9e-00240151c9bc','1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1'),('a4d59cf6-4df2-47cf-ad9e-00240151c9bc','84503d48-cb0c-4df3-9f76-70f5876604ae'),('a4d59cf6-4df2-47cf-ad9e-00240151c9bc','948e6d36-b660-4d3f-8c27-02ca8cacd8e1'),('eb7f5fb9-5621-4656-a0d9-15923377b98d','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('a6bc688f-965a-4200-8268-486518262a3c','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('a6bc688f-965a-4200-8268-486518262a3c','8a1b4201-e234-43dc-b2c6-92cbdddc34fa'),('a6bc688f-965a-4200-8268-486518262a3c','1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1'),('c3c45027-b860-4bb4-ac42-d8af1da02520','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('c3c45027-b860-4bb4-ac42-d8af1da02520','5f543b3d-0c5b-497a-b54c-5f6a265fa211'),('c3c45027-b860-4bb4-ac42-d8af1da02520','9bad9ed6-36b5-47aa-8084-fe925f59843f'),('cbfb469b-6422-4d88-8a8e-6658a304b9b7','d0ec3ed8-5bf1-45ff-b76d-0665af2fc97e'),('cbfb469b-6422-4d88-8a8e-6658a304b9b7','1b4c3bd9-3e9e-42fb-833a-febc8cb05ab1'),('a4ed5911-5ce4-4759-80e9-62a68a908f43','4eb7b19e-2d5b-4b69-9502-0e6dae0685b7'),('41ad8835-5eba-4ae3-80e6-d057e871bb3d','39f84387-f8db-4805-83ad-9be741df9f97'),('41ad8835-5eba-4ae3-80e6-d057e871bb3d','9e1f16ae-8fbb-4166-9286-6ff2a86192ec'),('96cfe8fc-15d4-42a0-9e5a-6e75de88b5e3','5f543b3d-0c5b-497a-b54c-5f6a265fa211'),('e133a5ed-549c-46be-98a1-a5f1509dd12b','948e6d36-b660-4d3f-8c27-02ca8cacd8e1'),('e133a5ed-549c-46be-98a1-a5f1509dd12b','a65c0491-2aa0-41eb-a95c-29c7b4701a14'),('f44e6a6a-f49f-4217-8a71-326569bf894b','39f84387-f8db-4805-83ad-9be741df9f97'),('3be5fdc7-8a65-4346-88af-838c06a649a6','07e9819e-1a39-48cf-860a-2db6421a8edd'),('015f43bc-75bc-4a35-b68f-84fab6dc76ab','bc744bcc-6f89-4fcf-9337-04a4e26012ba'),('015f43bc-75bc-4a35-b68f-84fab6dc76ab','e92450bd-22fb-4b02-97c5-b0364f16b62b'),('5a3e6971-9544-4562-87c1-3864de5278af','8a1b4201-e234-43dc-b2c6-92cbdddc34fa'),('5a3e6971-9544-4562-87c1-3864de5278af','9e1f16ae-8fbb-4166-9286-6ff2a86192ec'),('5a3e6971-9544-4562-87c1-3864de5278af','84503d48-cb0c-4df3-9f76-70f5876604ae'),('4e31e3b1-4293-4af2-8b86-e70ba85fef51','b2f7b15b-1eb8-4788-a5f6-3e00c90764c6'),('4e31e3b1-4293-4af2-8b86-e70ba85fef51','2127da32-6e9e-443d-8882-26f7aaf8a149'),('4e31e3b1-4293-4af2-8b86-e70ba85fef51','5e57205d-3080-4713-ae4a-07dc3a38f613'),('8826df68-3345-4722-bcad-62b102bef86f','bde25be8-26c7-4dbe-8738-d2dbb9038e4b'),('8826df68-3345-4722-bcad-62b102bef86f','6c3f01c9-7d68-4428-9fd4-3c45907a827c'),('8826df68-3345-4722-bcad-62b102bef86f','e23c1625-f72c-4162-a663-357433127df3'),('71df4845-cdf2-4138-bbdb-0c64cac805b5','ff82abb7-dbfc-4c10-b346-04ab0bc5344b'),('03dded4c-8df5-45c3-b765-a7deda06d492','1de08db8-0458-471b-bc20-58a3fc38fe9b'),('03dded4c-8df5-45c3-b765-a7deda06d492','e92450bd-22fb-4b02-97c5-b0364f16b62b');
/*!40000 ALTER TABLE `proyectos_por_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tecnologia`
--

LOCK TABLES `tecnologia` WRITE;
/*!40000 ALTER TABLE `tecnologia` DISABLE KEYS */;
INSERT INTO `tecnologia` VALUES ('02d29c7e-2621-4ce6-83f3-24c64b928a04','VHDL',3),('06e7a76c-05bb-4b97-8daf-dd84bf9697d8','Express.js',10),('136956b5-460b-45b7-89ed-e3e4eabcad81','Ruby',4),('14281cbe-bf31-4ec5-90be-42f6c1d8b6d7','React',4),('2bbcf73e-5bdb-4b5a-9788-b33a5179600d','Shell Scripting',9),('2c06855b-85d6-45a3-a6a7-fcdb8ee86314','SQL',3),('2c4bdad4-6705-4aec-ae52-cacfb409f4ff','Bash',7),('2f706226-8013-4eff-801e-4ac2f7cb80fa','Swift',9),('32cf77d9-a873-4f98-ad05-fc10556732b7','Java',6),('348ca5cf-e1da-4044-9166-f89fe64aa16d','F#',9),('372fd035-9668-401a-bf80-b442b6d9cb80','Clojure',2),('3b327ac9-9a35-4f4a-8787-06be4604bc45','Laravel',7),('3e35a2fd-41e8-491b-95c5-42ef615b5688','Verilog',4),('4297ea08-2673-4daf-b320-17ddd31d54b5','MATLAB',6),('48b9c347-81a0-404c-ba87-6e6e187a678e','C++',6),('54c4a567-bd7f-4318-90a7-dc304554fb93','Groovy',5),('5819e1c0-e587-417e-aa6e-973eebe62830','Angular',2),('61c886b7-d4af-49a8-80f1-31cb658505ff','Vue.js',9),('69bf895d-3a92-410d-905c-99e4a836f825','Python',7),('6a686825-76db-48fc-8dce-027319137078','Lua',10),('6aff5709-becd-4ba5-9c61-1433478a3b8a','Rust',1),('83701ab4-4406-4b8a-8952-2e7dede79a9b','Django',8),('86616150-5d87-4247-aa9d-02faabefe69c','Node.js',7),('8eb369b8-5130-4125-b345-b0f59e353289','Go',1),('92e2c9ea-d914-49cc-9989-da0324cc109a','Arduino',6),('95abe701-27d9-4c41-ad8b-245f6a627558','Flask',9),('95b10b0c-aab3-4fd9-8176-8b4af1597373','PHP',8),('96cfd672-5ca0-4eb1-97c9-f2758d60956e','TypeScript',8),('a97bceb1-2957-487b-a981-b4d5b5f8197b','Raspberry Pi',8),('aab5f98a-c1a8-414d-b9d9-3aa52fed1094','Scala',1),('bea05db4-2e4c-4b5d-82f8-c39c364d363e','HTML/CSS',2),('ca592566-59d0-4674-ab45-522a5e20961e','Spring',4),('d148f3b3-c385-42af-bb49-ea5e7da991e8','Kotlin',4),('da096042-567f-4f18-9bb1-82e748695ff2','Haskell',2),('dc9353a2-909a-483c-8da8-08c502144559','Objective-C',7),('e1aa68ce-e480-4056-9ac1-4512b7a07036','Dart',3),('e6764cbf-4774-4af2-b587-f58b2e2962a8','Ruby on Rails',8),('ea597d7c-f137-4daa-9152-eaf733725604','Perl',5),('ea67f460-972f-4e52-ab17-0fd6a81811ac','JavaScript',7),('f3773396-1944-4b0f-8845-b7876606f07a','R',2),('fc6504b8-f517-4904-a381-346864f0a80c','Assembly',6),('fdfca317-04b2-47c9-9684-bc06c80031e4','C#',10);
/*!40000 ALTER TABLE `tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tecnologias_por_empleado`
--

LOCK TABLES `tecnologias_por_empleado` WRITE;
/*!40000 ALTER TABLE `tecnologias_por_empleado` DISABLE KEYS */;
INSERT INTO `tecnologias_por_empleado` VALUES ('3e35a2fd-41e8-491b-95c5-42ef615b5688','9220fac1-7330-4640-a88b-096607fbd15b'),('69bf895d-3a92-410d-905c-99e4a836f825','9220fac1-7330-4640-a88b-096607fbd15b'),('2c06855b-85d6-45a3-a6a7-fcdb8ee86314','9220fac1-7330-4640-a88b-096607fbd15b'),('2f706226-8013-4eff-801e-4ac2f7cb80fa','bf385a6a-a9aa-49cb-953e-5f659211f6b6'),('96cfd672-5ca0-4eb1-97c9-f2758d60956e','bf385a6a-a9aa-49cb-953e-5f659211f6b6'),('d148f3b3-c385-42af-bb49-ea5e7da991e8','6ea21e69-19dc-42a1-afa6-39644f27f642'),('ca592566-59d0-4674-ab45-522a5e20961e','0f19274b-8a76-4f55-902c-350e18dc1c5a'),('4297ea08-2673-4daf-b320-17ddd31d54b5','f4000952-c6d4-4f2d-8bcf-b43107c0f963'),('6aff5709-becd-4ba5-9c61-1433478a3b8a','f4000952-c6d4-4f2d-8bcf-b43107c0f963'),('5819e1c0-e587-417e-aa6e-973eebe62830','f4000952-c6d4-4f2d-8bcf-b43107c0f963'),('69bf895d-3a92-410d-905c-99e4a836f825','0d9f9e59-4273-4b23-9f9d-7b348e6b2a83'),('92e2c9ea-d914-49cc-9989-da0324cc109a','8ea424d7-4213-41ee-9de0-7cf6162db44e'),('2bbcf73e-5bdb-4b5a-9788-b33a5179600d','8ea424d7-4213-41ee-9de0-7cf6162db44e'),('83701ab4-4406-4b8a-8952-2e7dede79a9b','8ea424d7-4213-41ee-9de0-7cf6162db44e'),('d148f3b3-c385-42af-bb49-ea5e7da991e8','b25834a7-9b1a-4702-9d89-f10f2396f39e'),('69bf895d-3a92-410d-905c-99e4a836f825','b25834a7-9b1a-4702-9d89-f10f2396f39e'),('32cf77d9-a873-4f98-ad05-fc10556732b7','790f8037-0a13-4e2d-9298-c22cf07e0ee5'),('dc9353a2-909a-483c-8da8-08c502144559','7dc04761-5c3e-4c59-9ef1-f8728c3ef5d6'),('a97bceb1-2957-487b-a981-b4d5b5f8197b','ec2a782a-6d40-4586-84b7-aa2e4c8eddda'),('4297ea08-2673-4daf-b320-17ddd31d54b5','ec2a782a-6d40-4586-84b7-aa2e4c8eddda'),('fdfca317-04b2-47c9-9684-bc06c80031e4','ec2a782a-6d40-4586-84b7-aa2e4c8eddda'),('2c4bdad4-6705-4aec-ae52-cacfb409f4ff','4b6b63c1-d74f-4f58-a14e-0039c251355a'),('bea05db4-2e4c-4b5d-82f8-c39c364d363e','4b6b63c1-d74f-4f58-a14e-0039c251355a'),('14281cbe-bf31-4ec5-90be-42f6c1d8b6d7','4b6b63c1-d74f-4f58-a14e-0039c251355a'),('02d29c7e-2621-4ce6-83f3-24c64b928a04','410028d3-33a3-433b-b476-b14af2f8f1dc'),('a97bceb1-2957-487b-a981-b4d5b5f8197b','410028d3-33a3-433b-b476-b14af2f8f1dc'),('61c886b7-d4af-49a8-80f1-31cb658505ff','c73c9f8f-e26e-494b-b4e7-864f7bd17432'),('2c4bdad4-6705-4aec-ae52-cacfb409f4ff','ea24800a-1146-451d-b899-0aed13fc2e30'),('3e35a2fd-41e8-491b-95c5-42ef615b5688','ea24800a-1146-451d-b899-0aed13fc2e30'),('f3773396-1944-4b0f-8845-b7876606f07a','ea24800a-1146-451d-b899-0aed13fc2e30'),('3b327ac9-9a35-4f4a-8787-06be4604bc45','50219e6b-0bff-4f28-9a66-1d99ec9209f6'),('95b10b0c-aab3-4fd9-8176-8b4af1597373','50219e6b-0bff-4f28-9a66-1d99ec9209f6'),('48b9c347-81a0-404c-ba87-6e6e187a678e','50219e6b-0bff-4f28-9a66-1d99ec9209f6'),('96cfd672-5ca0-4eb1-97c9-f2758d60956e','2d3a6d8c-f9b7-4691-bdb1-2b367f28d230'),('348ca5cf-e1da-4044-9166-f89fe64aa16d','b0c01955-0078-4bdd-830f-d764a4ab7780'),('95abe701-27d9-4c41-ad8b-245f6a627558','32bed4dd-c71e-46bc-9a4f-ca87d5777232'),('136956b5-460b-45b7-89ed-e3e4eabcad81','32bed4dd-c71e-46bc-9a4f-ca87d5777232'),('fc6504b8-f517-4904-a381-346864f0a80c','960bef68-3936-4e0d-a612-1d7c1d6ef93d'),('61c886b7-d4af-49a8-80f1-31cb658505ff','57e108ec-c5e5-453b-a3ee-9e51f463f8ee'),('3e35a2fd-41e8-491b-95c5-42ef615b5688','c7b22b2d-b433-488c-9b85-65ddf56c56d2'),('d148f3b3-c385-42af-bb49-ea5e7da991e8','c7b22b2d-b433-488c-9b85-65ddf56c56d2'),('6aff5709-becd-4ba5-9c61-1433478a3b8a','c7b22b2d-b433-488c-9b85-65ddf56c56d2'),('372fd035-9668-401a-bf80-b442b6d9cb80','95044b3b-21ce-4cb0-b087-9a96b1d38bf0'),('5819e1c0-e587-417e-aa6e-973eebe62830','95044b3b-21ce-4cb0-b087-9a96b1d38bf0'),('83701ab4-4406-4b8a-8952-2e7dede79a9b','95044b3b-21ce-4cb0-b087-9a96b1d38bf0'),('3e35a2fd-41e8-491b-95c5-42ef615b5688','b18650da-9e7d-4968-aa2d-0ed8de1e0613'),('ea597d7c-f137-4daa-9152-eaf733725604','b18650da-9e7d-4968-aa2d-0ed8de1e0613'),('3e35a2fd-41e8-491b-95c5-42ef615b5688','b18650da-9e7d-4968-aa2d-0ed8de1e0613');
/*!40000 ALTER TABLE `tecnologias_por_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'consultora'
--

--
-- Dumping routines for database 'consultora'
--
/*!50003 DROP FUNCTION IF EXISTS `actualizar_presupuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `actualizar_presupuesto`(presupuesto int , porcentaje float, aumento boolean) RETURNS float
    DETERMINISTIC
BEGIN 
	DECLARE presupuesto_actualizado float;
    if aumento = TRUE then -- se suma el porcentaje al presupuesto
		SET presupuesto_actualizado = presupuesto + presupuesto * porcentaje /100;
	else -- se resta el porcentaje al presupuesto
		SET presupuesto_actualizado = presupuesto - (presupuesto * porcentaje / 100);
	END if;
	RETURN presupuesto_actualizado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `antiguedad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `antiguedad`(fecha_ingreso DATE) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE annos_antiguedad INT;
    SET annos_antiguedad = CONVERT (YEAR(now()) - YEAR(fecha_ingreso), SIGNED);
    RETURN annos_antiguedad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 15:55:16
