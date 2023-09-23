# Tipo de datos en SQL

## Numericos
>Los SIGNED y UNSIGNED ---> SIGNED -128 a 127 y UNSIGNED 0 a 255
>Uno usa desde numeros negativos y el otro solo positivos

    tinyint -128 a 127 | 255 (unsigned)
    sallint -32768 a 32767 | 65535 (unsigned)
    mediumint -8388608 a 8388607 | 16777215
    int -2147483648 to 2147483647 | 4294967295
    bigint 18446744073709551615
    

    boolean | 1 o 0    --- tiniynt(1)


    float 0.402823466
    double 0.402823466402823466


    decimal


    bit 1 0


## Alfanuméricos (El más usado es el varchar)

    char 255
    varchar 65535
    tinyText 255
    smallText 65535
    mediumText 4294967295
    Text

>Sintáxis:

    nombre char(20)     'marcos          '   ---> consume tal cual que se le asigna con un max de 20 en este caso (Ocupa más memoria)
    nombre varchar(20)  'marcos'   ---> consume lo necesario del dato ingresado (Ocupa menos memoria)


## Fechas

    date    '2020-05-04'   yyyy-mm-dd
    datetime '2022-02-03 11:13:42' yyyy-mm-dd-hh-mm-ss
    timestamp 
    year
