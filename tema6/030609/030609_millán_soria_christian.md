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

<h1>030609</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<h4>1º DAW TARDE</h4>

<hr>

<p><b>Crear en cada una de las tablas un disparador que registre los movimientos en la tabla para cada una de las siguientes circunstancias:</b></p>

<li><b>Antes de un INSERT.</b></li>

<li><b>Antes de un UPDATE.</b></li>

<li><b>Antes de un DELETE.</b></li>

<p><b>Para ello, se deberá insertar, actualizar y borrar datos para demostrar su correcto funcionamiento.</b></p>

<p>Creo una tabla secundaria para cada una de las tablas de la base de datos, donde se almacenarán los movimientos de su tabla correspondiente.</p>

```sql
create table `tcentr_triggers`(
  `id` int not null auto_increment,
  `tipo` varchar(45) null,
  `fecha` datetime null default current_timestamp,
  primary key (`id`)
);

/******************************************************/

create table `tdepto_triggers`(
  `id` int not null auto_increment,
  `tipo` varchar(45) null,
  `fecha` datetime null default current_timestamp,
  primary key (`id`)
);

/******************************************************/

create table `temple_triggers`(
  `id` int not null auto_increment,
  `tipo` varchar(45) null,
  `fecha` datetime null default current_timestamp,
  primary key (`id`)
);
```

<img src="img/1.png">

<p>Ahora creo los triggers de cada tipo para cada tabla.</p>

```sql

```

<p><b>Además, para cada una de las preguntas se deberá hacer lo siguiente (siempre que sea posible):</b></p>

<li><b>Crear una vista.</b></li>

<li><b>Crear un procedimiento.</b></li>

<li><b>Crear una función.</b></li>

<p><b>*Utilizar cursores y bucles siempre que sea posible.</b></p>

<hr>

<h2>BLOQUE 1</h2>

<p><b>1. Hallar, por orden alfabético, los nombres de los departamentos cuyo director lo es en funciones y no en propiedad.</b></p>

```sql

```

<img src="img/2.png">