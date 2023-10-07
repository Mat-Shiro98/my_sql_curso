*Base de datos*
    Conjunto de información (de un mismo contexto)
    Ordenada sistematicamente

//Registro
    Datos del producto

//Tablas    
    Almacena muchos registros con los datos de cada producto correspondiente

//Relación de tablas
    Las relaciones de tablas en una base de datos son como hojas de cálculo que se vinculan a través de identificadores únicos en lugar de duplicar información. Esto hace que la gestión de datos sea más eficiente y permite realizar consultas para obtener información completa de manera más sencilla.

//Servidores base de datos
    Recibe y envia datos de las consultas    


//Lenguaje SQL (Structured Query Language )
    Es un lenguaje de programación utilizado para gestionar y consultar bases de datos relacionales. 

// https://github.com/exegeses/introDB-68234

----------------------------------------------------------

>> Tener encuenta en darle refresh para que actualize el SCHEMAS con sus base de datos
# Crear y borrar una base de datos

# CREATE DATABASE
> Para crear una base de datos utilizamos
>Sintáxis (No se puede crear dos o más base de datos con el mismo nombre):
    CREATE DATABASE nombre;
>Ejemplo práctico:
    CREATE DATABASE introDB;


# DROP DATABASE
>Eliminar base de datos
>Sintáxis:
    DROP DATABASE nombre;
>Ejemplo práctico:
    DROP DATABASE introDB;


# USE
>Para activar base de datos
>Sintáxis:
    USE introDB;

--------------------------------------------------

# Crear tablas dentro de una base de Datos

>Para crear una tabla (NO SE PUEDE CREAR UNA TABLA SIN CREAR LAS COLUMNAS )
>(CUANDO CARGAR TODAS LAS COLUMNAS NECESARIOS, LA ULTIMA COLUMNA NO LLEVA COMA)
>Para los tipos de datos esta anotado en tipo_de_datos


# CREATE TABLE
>Sintáxis:

    CREATE TABLE nombreTabla
    (
        nombreColumna1 tipo caracteristicas,
        nombreColumna2 tipo caracteristicas,
        nombreColumna3 tipo caracteristicas,
        nombreColumna4 tipo caracteristicas       
    );

>Esto es para el orden 
    nombreColumna4   tipo       caracteristicas  
    --------------   ----       ---------------
            |           |                   |
            |           |                   |
            v           v                   v    
           id        tinyint unsigned      auto_increment primary key NOT NULL
                     varchar(100)
                     decimal(10,2)      

>Ejemplo práctico:

    CREATE TABLE productos_apple
    (
        id tinyint unsigned auto_increment primary key NOT NULL,
        nombre varchar(100) unique NOT NULL,
        precio decimal(10,2) unsigned NOT NULL,
        stock tinyint unsigned NOT NULL       
    );

* "unique"  esto hace q el producto no se repita

---------------------------------------------------------------------------------------------------------------------------------------

# Ver la tabla creadas
> Una vez creada la tabla podes ver la tabla con el siguiente comanda
>Sintázis:

    DESCRIBE nombreDeLaTabla;

>Ejemplo práctico:
    DESCRIBE productos_apple;


---------------------------------------------------------------------------------------------------------------
# Insertar datos en una tabla

> Hay 3 maneras de insertar datos en una tabla

# 1°: SET
>Sintaxis:

    INSERT INTO nombreTabla
        SET
            nombreColumna = valor,
            nombreColumna2 = valor2,
            nombreColumna3 = valor;

>Ejemplo:

    INSERT INTO productos_apple
        SET
            id = DEFAULT,
            nombre = "iPod",
            precio = 299,
            stock = 200;

# 2°: "completa" (Se mencionan la columna)
>Sintáxis:

    INSERT INTO nombreTabla
            (nombreCol2, nombreCol3, nombreCol5)
        VALUES
            (valor2, valor3, nombreCol5);

>Ejemplo:

    INSERT INTO productos_apple
            ( nombre, precio, stock )
        VALUES
            ("iPhone",199, 100);


# 3°: "simplificada" (NO se mencionan la columna)
>Sintáxis:

    INSERT INTO nombreTabla
        VALUES
            (id, valor2, valor3, valor4);

>Ejemplo:

    INSERT INTO productos_apple
        VALUES
            (DEFAULT,"iPad",99, 100);

--------------------------------------------------------------------------------------------------------------------------------

# Mostrar la tabla " SELECT * FROM nombre_de_la_tabla "
>Sintáxis:
    SELECT * FROM productos_apple;

# Para mirar TODAS las tablas creadas "SHOW TABLE"
>Sintáxis:
     SHOW TABLE


------------------------------------------------------------------------------------------
# PRIMARY_KEY
>Tabla principal

# FORENKEY
> Union con otra tabla
>Sintáxis:
     CREATE TABLE destino
     (
        idDestino smallint unsigned auto_increment primary key NOT NULL,
        destNombre varchar(100) unique NOT NULL,

        idRegion tinyint unsigned not null,
        foreign key (idRegion) references regiones (idRegion),

        destPrecio decimal(10,2) unsigned NOT NULL,
        destAsientos tinyint unsigned NOT NULL,
        destDisponible tinyint unsigned NOT NULL,
        destActivo boolean NOT NULL default(1)
     );

----------------------------------------------------------------------------------------------------------------
# UPDATE
>Para modificar datos en una tabla
>Sintáxis:

    UPDATE nombreTabla
       SET nombreCol = valor
       WHERE colID = valorID;

>Ejemplo:

    UPDATE destinos
       SET destPrecio = 8710;
       WHERE idDestino = 4;


    UPDATE destinos
        SET destPrecio = destPrecio * 1.05
        WHERE idDestino = 1;



>Ejemplo:

    INSERT INTO destinos
    ( idDestino, destNombre, idRegion,
        destPrecio,destAsientos, destDisponibles, destActivo )
    VALUES
    ( default, 'Toronto (Pearson)', 4, 6879, 5, 5, 1 );

----------------------------------------------------------
# DELETE FROM

    DELETE FROM nombreTable
        WHERE colID = valoreID;

>Ejemplo:

    DELETE FROM destinos
        WHERE idDestino = 10;

# Conusultas en SQL

## Consultas al SERVER de la Base de Datos

>Intruscciones vistas
    -- Listar las base dedatos 
    sintáxis:
        SHOW DATABASES;

    -- Listar las tablas de una base
    sintáxis:
    SHOW TABLES;

    -- mostrar la estructura de una tabla
    sintáxis:
    DESCRIBE nombreTabla;

>PAra hacer consultas al server utilizamos
>La palabra reservada **SELECT**

    -- consultar la fecha actual
    sintáxis:
    SELECT now(), current_date();

    -- consultar fecha actual, fecha actual + 30 días
    sintáxis:
    SELECT current_date(), DATE_ADD(curdate(), INTERVAL 30 day);

## Consultas a tablas de una base

> Para consultas a tablas de una base utilizamos
> El comando **SELECT** y además debemos espicificar
>A qué tabla queremos consultar con la palabra reservada **FROM**

> sintáxis:

    SELECT * FROM nombreTabla;

>Ejemplo práctico:

    SELECT * FROM destinos;

>Trae la tabla de destinos


> Si queremos traes solo los datos de algunas columnas
>Sintáxis:

    SELECT nCol2, nCol4
        FROM nombreTabla;

>Ejemplo Práctico:

    SELECT destNombre, destPrecio
        FROM destinos;



## Orden de los resultados:

>Para ordenar los resultados utilizamos
> La pablra reservada **ORDER BY**

> Ejemplo práctico:

    SELECT destNombre. destPrecio
        FROM destinos
        ORDER BY destPrecio;

## Filtrado de registros

> Filtrar registros significa traer sólamente
> los registros que cumplan una condición


>Para poder implementar un filtro,
>utilizamos la palabra reservada **WHERE**

>Ejemplo práctico:
>Traer nombre y precio de la tabla destinos
>con un precio que no sure los 8000

    SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio <= 8000;
















