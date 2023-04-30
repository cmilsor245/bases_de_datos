<style>
  h1, h2, h3, h4, h5, h6{
    text-align: center;
    font-weight: bold;
    border: none;
    margin-bottom: 0px;
  }

  p{
    text-align: justify;
  }

  img{
    border: 2px solid black;
  }
</style>

<h1>PROCEDIMIENTOS CON EXPRESIONES REPETITIVAS</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p><b>1.</b></p>

<p><b>a. Procedimiento "numeros" que muestre los 20 primeros números enteros.</b></p>

```sql
drop procedure if exists numeros;
delimiter //
create procedure numeros()
begin
declare i int default 1;
while i<=20 do
select i;
set i=i+1;
end while;
end//
delimiter ;
call numeros();
```

<img src="img/1.png">

<p><b>b. Realiza un procedimiento "numeros" que muestre los 20 primeros números enteros pero con la opción "repeat".</b></p>

```sql
drop procedure if exists numeros;
delimiter //
create procedure numeros()
begin
declare i int default 1;
repeat
select i;
set i=i+1;
until i>20 end repeat;
end//
delimiter ;
call numeros();
```

<img src="img/2.png">

<p><b>c. Explica qué está realizando este código.</b></p>

```sql
drop procedure if exists numeros;
delimiter //
create procedure numeros()
begin
declare i integer default 1;
declare nums varchar(100) default "";
while i<=20 DO
set nums=CONCAT(nums, " ", i);
set i=i+1;
end while;
select nums as numeros;
end//
delimiter ;
```

<p>Crea un procedimiento llamado "numeros" que genera una cadena de texto que contiene los números del 1 al 20 separados por un espacio.</p>

<p>El procedimiento comienza eliminando cualquier versión anterior del procedimiento "numeros" si existe. Luego, establece el delimitador en "//" para indicar el final del procedimiento y permitir el uso de múltiples sentencias SQL.</p>

<p>Después, se define una variable i con un valor inicial de 1 y otra variable llamada "nums" que se utilizará para almacenar los números. A continuación, se inicia un bucle WHILE que se ejecutará hasta que i sea mayor que 20.</p>

<p>Dentro del bucle, se concatena el valor actual de i a la variable "nums" utilizando la función CONCAT y se establece el valor de i en i + 1.</p>

<p>Una vez que el bucle se ha completado y se han agregado todos los números a la variable "nums", se selecciona la variable "nums" y se le da un alias de "numeros".</p>

<p>Por último, se restablece el delimitador a su valor predeterminado ";" para indicar el final de la sentencia SQL CREATE PROCEDURE.</p>