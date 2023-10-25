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
    
    - 'id': 
    Es el nombre de la columna, en este caso es una columna que se utilizará para identificar de manera única a cada registro en la tabla.

    - 'INT':
     Este es un tipo de datos de la columna, que contendrá números enteros (sin decimales).

    - 'AUTO_INCREMENT': 
    Esta propiedad se aplica a la columna "id". Significa que MySql generará automáticamente un valor único y creciente para esta columna cada vez que se inserte un nuevo registro a la tabla.

    - 'PRIMARY KEY': 
    Esto declara que la columna "id" es la clave primaria de la tabla, lo que significa que se utilizará como identificador único y garantizará que no haya duplicados en esta columna.


3. 'nombre VARCHAR(50)':

    - 'nombre': 
    Es otra columna en la tabla que se usará para almacenar nombres de usuarios.

    - 'VARCHAR(50)':
    Es un tipo de datos que se utiliza para almacenar texto variable, como nombres, y "50" especifica la longitud máxima de caracteres permitida para esta columna, en este caso, 50 caracteres.


4. 'edad INT':

    - 'edad':
     Esta es otra columna de la tabla utilizada para 
     almacenar edades de usuarios.

    - 'INT':
     Al igual que en la columna "id", "INT" se utiliza para almacenar números enteros en la columna "edad".

