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

# Tener encuenta en darle refresh para que actualize el SCHEMAS con sus base de datos
# Crear y borrar una base de datos

## Crear una base de datos

> Para crear una base de datos utilizamos
> El comando ** CREATE DATABASE **
>Sintáxis (No se puede crear dos o más base de datos con el mismo nombre):
    CREATE DATABASE nombre;
>Ejemplo práctico:
    CREATE DATABASE introDB;



>Eliminar base de datos
>El comando ** DROP DATABASE **
>Sintáxis:
    DROP DATABASE nombre;
>Ejemplo práctico:
    DROP DATABASE introDB;


>Para activar base de datos
>Sintáxis:
    USE introDB;

--------------------------------------------------

# Crear tablas dentro de una base de Datos

>Para crear una tabla (NO SE PUEDE CREAR UNA TABLA SIN CREAR LAS COLUMNAS )
>(CUANDO CARGAR TODAS LAS COLUMNAS NECESARIOS, LA ULTIMA COLUMNA NO LLEVA COMA)
>Para los tipos de datos esta anotado en tipo_de_datos


>El comando ** CREATE TABLE **
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

-----------------------------------

# Ver la tabla creadas
> Una vez creada la tabla podes ver la tabla con el siguiente comanda
>Sintázis:

    DESCRIBE nombreDeLaTabla;

>Ejemplo práctico:
    DESCRIBE productos_apple;