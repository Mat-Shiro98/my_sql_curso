# Crear una base de datos
/*CREATE DATABASE introDB;*/

# Eliminar una base de datos
/* DROP DATABASE introDB; */

#Activa la base de datos
/* USE introDB; */

#Crear Tablas y la columnas
CREATE TABLE productos_apple
    (
        id tinyint unsigned auto_increment primary key NOT NULL,
        nombre varchar(100) unique NOT NULL,
        precio decimal(10,2) unsigned NOT NULL,
        stock tinyint unsigned NOT NULL       
    );
    
#Ver la tabla creada
DESCRIBE productos_apple;

#Trae todas las base de datos disponibles 
SHOW DATABASES;
