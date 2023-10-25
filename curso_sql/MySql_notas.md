# Crear Base de datos
>Para crear una base de datos en MySQL, puedes usar el siguiente comando:

    CREATE DATABE mi_base_de_datos;   ---> (mi_base_de_datos) es donde se agrega el nombre

# Crear una tabla
>Las tablas se utilizan para organizar los datos.
>Por ejemplo, una tabla para "usuarios" con columnas para nombres y edades

    CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT
    );

1. 'CREATE TABLE usuarios': Esto inicia la creación de una nueva tabla llamada "usuarios".

2. 'id INT AUTO_INCREMENT PRIMARY KEY': 