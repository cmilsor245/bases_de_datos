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