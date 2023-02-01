<style>
  h1{
    border: none;
    margin-bottom: 0px;
    text-align: center;
    font-weight: bold;
  }

  img{
    border: 2px solid black;
  }

  p{
    text-align: justify;
  }

  .slim-line{
    border: none;
    height: 1px;
    color: black;
    background-color: black;
  }

  h3{
    font-weight: bold;
  }
</style>

<h1>PUEBLOS DE ESPAÑA</h1>

<hr>

<p>Lo primero es crear la base de datos:</p>

```sql
create database tema4_ej6;

use tema4_ej6;
```

<p>Una vez seleccionada la base de datos, se crea la tabla "provincias".</p>

```sql
create table provincias(
	cod_prov int not null unique,
  provincia varchar(45) not null,
  cod_ca int not null,
  comunidad_autonoma varchar(35) not null,
  capital varchar(30) not null,
  primary key(cod_prov)
);
```

<img src="img/tabla_provincias.png">

<p>Se importan los datos en esta tabla desde el archivo csv que nos hemos descargado. Debido a errores con este paso, decidimos eliminar la tabla y crearla a la hora de importar, pero utilizando MySQL Workbench.</p>

<img src="img/import_provincias.png">

<p>Hay que tener en cuenta el tipo de codificación de los campos para admitir tildes, "ñ", etc. En mi caso, no he podido hacerlo de otra manera que no sea quitar absolutamente todos los caracteres que pudieran interferir del archivo csv.</p>

<img src="img/importado_prov.png">

<p>Por último, se importa la tabla "municipios":</p>

<img src="img/import_municipios.png">

<hr class="slim-line">

<h3>EJERCICIOS</h3>

<p><b>1. ¿Cuántos municipios tiene la provincia de Málaga?</b></p>

```sql
select count(*) from municipios where provincia="málaga";
```

<img src="img/ej1.png">

<p><b>2. ¿Cuántos municipios tiene la provincia de Cádiz?</b></p>

```sql
select count(*) from municipios where provincia="cádiz";
```

<img src="img/ej2.png">

<p><b>3. ¿Cuántos municipios tiene la provincia de Murcia?</b></p>

```sql
select count(*) from municipios where provincia="murcia";
```

<img src="img/ej3.png">

<p><b>4. ¿Cuántos municipios tiene la provincia de Pontevedra?</b></p>

```sql
select count(*) from municipios where provincia="pontevedra";
```

<img src="img/ej4.png">

<p><b>5. ¿Cuántos municipios tiene la provincia de La Rioja?</b></p>

```sql
select count(*) from municipios where provincia="la rioja";
```

<img src="img/ej5.png">

<p><b>6. ¿Cuántos municipios tiene la provincia de Burgos?</b></p>

```sql
select count(*) from municipios where provincia="burgos";
```

<img src="img/ej6.png">

<p><b>7. ¿Cuántos municipios tiene la provincia de Teruel?</b></p>

```sql
select count(*) from municipios where provincia="teruel";
```

<img src="img/ej7.png">

<p><b>8. ¿Cuántos municipios tiene la provincia de Madrid?</b></p>

```sql
select count(*) from municipios where provincia="madrid";
```

<img src="img/ej8.png">

<p><b>9. ¿Cuántos municipios tiene la provincia de Valencia?</b></p>

```sql
select count(*) from municipios where provincia="valència/valencia";
```

<img src="img/ej9.png">

<p><b>10. ¿Cuántos municipios tiene la provincia de Albacete?</b></p>

```sql
select count(*) from municipios where provincia="albacete";
```

<img src="img/ej10.png">

<p><b>11. Lista los municipios que tienen la provincia de Málaga que comienzan por la letra "A".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "a%";
```

<img src="img/ej11.png">

<p><b>12. Lista los municipios que tienen la provincia de Málaga que comienzan por la letra "B".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "b%";
```

<img src="img/ej12.png">

<p><b>13. Lista los municipios que tienen la provincia de Málaga que comienzan por la letra "C".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "c%";
```

<img src="img/ej13.png">

<p><b>14. Lista los municipios que tienen la provincia de Málaga que comienzan por la letra "M".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "m%";
```

<img src="img/ej14.png">

<p><b>15. Lista los municipios que tienen la provincia de Málaga que comienzan por "Al".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "al%";
```

<img src="img/ej15.png">

<p><b>16. Lista los municipios que tienen la provincia de Málaga que comienzan por "Bena".</b></p>

```sql
select nombre_actual from municipios where provincia="málaga" and nombre_actual like "bena%";
```

<img src="img/ej16.png">

<p><b>17. Lista los municipios que comienzan por "Al".</b></p>

```sql
select nombre_actual from municipios where nombre_actual like "al%";
```

<img src="img/ej17.png">

<p><b>18. ¿Cuántos municipios en España comienzan por "Al"?</b></p>

```sql
select count(*) from municipios where nombre_actual like "al%";
```

<img src="img/ej18.png">

<p><b>19. Lista los municipios que comienzan por "Bena".</b></p>

```sql
select nombre_actual from municipios where nombre_actual like "bena%";
```

<img src="img/ej19.png">

<p><b>20. ¿Cuántos municipios en España comienzan por "Bena"?</b></p>

```sql
select count(*) from municipios where nombre_actual like "h%";
```

<img src="img/ej20.png">

<p><b>21. Lista los municipios que contienen la palabra "puerto" por orden descendente, incluyendo su provincia.</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%puerto%" order by 1 desc;
```

<img src="img/ej21.png">

<p>* Terminé de importar las 3 tablas restantes.</p>

<p><b>22. Haz una consulta para cada una de las palabras que pone a continuación de manera que incluyan dentro del nombre del municipio la palabra "xx" incluyendo su provincia.</b></p>

<p><b>a. Jerez</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%jerez%"
```

<img src="img/ej22-1.png">

<p><b>b. Frontera</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%frontera%"
```

<img src="img/ej22-2.png">

<p><b>c. Marquesado</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%marquesado%"
```

<img src="img/ej22-3.png">

<p><b>d. Santa</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%santa%"
```

<img src="img/ej22-4.png">

<p><b>e. Casa</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%casa%"
```

<img src="img/ej22-5.png">

<p><b>f. Villa</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%villa%"
```

<img src="img/ej22-6.png">

<p><b>g. Cabeza</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%cabeza%"
```

<img src="img/ej22-7.png">

<p><b>h. Cuevas</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%cuevas%"
```

<img src="img/ej22-8.png">

<p><b>i. Dios</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%dios%"
```

<img src="img/ej22-9.png">

<p><b>j. Barco</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%barco%"
```

<img src="img/ej22-10.png">

<p><b>k. Pepe</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%pepe%"
```

<img src="img/ej22-11.png">

<p><b>l. Naval</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%naval%"
```

<img src="img/ej22-12.png">

<p><b>m. Pajares</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%pajares%"
```

<img src="img/ej22-13.png">

<p><b>n. Empiece por "San"</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "san%"
```

<img src="img/ej22-14.png">

<p><b>o. Santi</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%santi%"
```

<img src="img/ej22-15.png">

<p><b>p. María</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%maría%"
```

<img src="img/ej22-16.png">

<p><b>q. Zapa</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%zapa%"
```

<img src="img/ej22-17.png">

<p><b>r. Haba</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%haba%"
```

<img src="img/ej22-18.png">

<p><b>s. León</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%león%"
```

<img src="img/ej22-19.png">

<p><b>t. Torre</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%torre%"
```

<img src="img/ej22-20.png">

<p><b>u. Mata</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%mata%"
```

<img src="img/ej22-21.png">

<p><b>v. Verde</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%verde%"
```

<img src="img/ej22-22.png">

<p><b>w. Oliva</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%oliva%"
```

<img src="img/ej22-23.png">

<p><b>x. Puebla</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%puebla%"
```

<img src="img/ej22-24.png">

<p><b>y. Higuera</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%higuera%"
```

<img src="img/ej22-25.png">

<p><b>z. Feria</b></p>

```sql
select nombre_actual, provincia from municipios where nombre_actual like "%feria%"
```

<img src="img/ej22-26.png">

<p><b>23. ¿Cuántos municipios hay que contengan las palabras que se indican? Haz una consulta para cada uno. Haz una consulta para cada una de las palabras que pone a continuación.</b></p>

<p><b>a. Jerez</b></p>

```sql
select count(*) from municipios where nombre_actual like "%jerez%";
```

<img src="img/ej23-1.png">

<p><b>b. Frontera</b></p>

```sql
select count(*) from municipios where nombre_actual like "%frontera%";
```

<img src="img/ej23-2.png">

<p><b>c. Marquesado</b></p>

```sql
select count(*) from municipios where nombre_actual like "%marquesado%";
```

<img src="img/ej23-3.png">

<p><b>d. Santa</b></p>

```sql
select count(*) from municipios where nombre_actual like "%santa%";
```

<img src="img/ej23-4.png">

<p><b>e. Casa</b></p>

```sql
select count(*) from municipios where nombre_actual like "%casa%";
```

<img src="img/ej23-5.png">

<p><b>f. Villa</b></p>

```sql
select count(*) from municipios where nombre_actual like "%villa%";
```

<img src="img/ej23-6.png">

<p><b>g. Cabeza</b></p>

```sql
select count(*) from municipios where nombre_actual like "%cabeza%";
```

<img src="img/ej23-7.png">

<p><b>h. Cuevas</b></p>

```sql
select count(*) from municipios where nombre_actual like "%cuevas%";
```

<img src="img/ej23-8.png">

<p><b>i. Dios</b></p>

```sql
select count(*) from municipios where nombre_actual like "%dios%";
```

<img src="img/ej23-9.png">

<p><b>j. Barco</b></p>

```sql
select count(*) from municipios where nombre_actual like "%barco%";
```

<img src="img/ej23-10.png">

<p><b>k. Pepe</b></p>

```sql
select count(*) from municipios where nombre_actual like "%pepe%";
```

<img src="img/ej23-11.png">

<p><b>l. Naval</b></p>

```sql
select count(*) from municipios where nombre_actual like "%naval%";
```

<img src="img/ej23-12.png">

<p><b>m. Pajares</b></p>

```sql
select count(*) from municipios where nombre_actual like "%pajares%";
```

<img src="img/ej23-13.png">

<p><b>n. Empiece por "San"</b></p>

```sql
select count(*) from municipios where nombre_actual like "san%";
```

<img src="img/ej23-14.png">

<p><b>o. Santi</b></p>

```sql
select count(*) from municipios where nombre_actual like "%santi%";
```

<img src="img/ej23-15.png">

<p><b>p. María</b></p>

```sql
select count(*) from municipios where nombre_actual like "%maría%";
```

<img src="img/ej23-16.png">

<p><b>q. Zapa</b></p>

```sql
select count(*) from municipios where nombre_actual like "%zapa%";
```

<img src="img/ej23-17.png">

<p><b>r. Haba</b></p>

```sql
select count(*) from municipios where nombre_actual like "%haba%";
```

<img src="img/ej23-18.png">

<p><b>s. León</b></p>

```sql
select count(*) from municipios where nombre_actual like "%león%";
```

<img src="img/ej23-19.png">

<p><b>t. Torre</b></p>

```sql
select count(*) from municipios where nombre_actual like "%torre%";
```

<img src="img/ej23-20.png">

<p><b>u. Mata</b></p>

```sql
select count(*) from municipios where nombre_actual like "%mata%";
```

<img src="img/ej23-21.png">

<p><b>v. Verde</b></p>

```sql
select count(*) from municipios where nombre_actual like "%verde%";
```

<img src="img/ej23-22.png">

<p><b>w. Vallès</b></p>

```sql
select count(*) from municipios where nombre_actual like "%vallès%";
```

<img src="img/ej23-23.png">

<p><b>x. Higuera</b></p>

```sql
select count(*) from municipios where nombre_actual like "%higuera%";
```

<img src="img/ej23-24.png">

<p><b>y. Puebla</b></p>

```sql
select count(*) from municipios where nombre_actual like "%puebla%";
```

<img src="img/ej23-25.png">

<p><b>z. Peña</b></p>

```sql
select count(*) from municipios where nombre_actual like "%peña%";
```

<img src="img/ej23-26.png">

<p><b>24. ¿Cuál es el municipio con mayor extensión de España?</b></p>

<p>Lo primero es cambiar el tipo de dato del campo "superficie", ya que es texto, y debe ser decimal.</p>

```sql
alter table `tema4_ej6`.`municipios` change column `superficie` `superficie` decimal(12, 2) null default null;
```

<p>Ahora se puede obtener el resultado correctamente:</p>

```sql
select nombre_actual, provincia, superficie from municipios order by 3 desc limit 1;
```

<img src="img/ej24.png">

<p><b>25. Haz una consulta para cada una de las provincias. Debes indicar el nombre del municipio, provincia y superficie. ¿Cuál es el municipio de mayor extensión de cada una de estas provincias?</b></p>

<p><b>a. Almería</b></p>
