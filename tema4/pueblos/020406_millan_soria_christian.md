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