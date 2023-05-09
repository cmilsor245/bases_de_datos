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
delimiter //
create trigger registro1_tcentr after insert on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('after insert');
  end//
delimiter ;

/*********************************************************************/

delimiter //
create trigger registro2_tcentr before insert on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('before insert');
  end//
delimiter ;

/*********************************************************************/

delimiter //
create trigger registro3_tcentr after update on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('after update');
  end//
delimiter ;

/*********************************************************************/

delimiter //
create trigger registro4_tcentr before update on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('before update');
  end//
delimiter ;

/*********************************************************************/

delimiter //
create trigger registro5_tcentr after delete on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('after delete');
  end//
delimiter ;

/*********************************************************************/

delimiter //
create trigger registro6_tcentr before delete on tcentr
for each row
  begin
    insert into tcentr_triggers(tipo) value('before delete');
  end//
delimiter ;

/*********************************************************************/

-- igual para las tablas "tdepto" y "temple"...
```

<p>Prueba de comportamiento correcto:</p>

```sql
insert into tcentr values(30, 'test', 'test');
```

<img src="img/2.png">

```sql
update tcentr set numce=40 where numce=30;
```

<img src="img/3.png">

```sql
delete from tcentr where numce=40;
```

<img src="img/4.png">

<p><b>Además, para cada una de las preguntas se deberá hacer lo siguiente (siempre que sea posible):</b></p>

<li><b>Crear una vista.</b></li>

<li><b>Crear un procedimiento.</b></li>

<li><b>Crear una función.</b></li>

<p><b>*Utilizar cursores y bucles siempre que sea posible.</b></p>

<hr>

<h2>BLOQUE 1</h2>

<p><b>1. Hallar, por orden alfabético, los nombres de los departamentos cuyo director lo es en funciones y no en propiedad.</b></p>

```sql
create view ej1b1 as 
select nomde from tdepto where tidir='f' order by 1;

/******************************/

select * from empresa.ej1b1;
```

<img src="img/5.png">

<p><b>2. Obtener un listín telefónico de los empleados del departamento 121, incluyendo nombre del empleado, número del empleado y extensión telefónica. Por orden alfabético descendente.</b></p>

```sql
create view ej2b1 as
select nomem, numem, extel from temple where numde=121 order by 1 desc;

/******************************/

select * from empresa.ej2b1;
```

<img src="img/6.png">

<p><b>3. Obtener por orden creciente una relación de todos los números de extensiones telefónicas de los empleados. Elimina las repeticiones.</b></p>

```sql
create view ej3b1 as
select distinct extel from temple order by 1;

/******************************/

select * from empresa.ej3b1;
```

<img src="img/7.png">

<p><b>4. Hallar la comisión, nombre y salario de los empleados con más de un hijo, clasificados por comisión, y dentro de la comisión por orden alfabético. El listado debe incluir también los empleados con más de un hijo aunque no tengan comisión.</b></p>

```sql
create view ej4b1 as
select ifnull(comis, 0), nomem, salar from temple where numhi>1 order by 1, 2;

/******************************/

select * from empresa.ej4b1;
```

<img src="img/8.png">ç

<p><b>5. Obtener salario y nombre de los empleados con dos hijos por orden decreciente de salario y por orden alfabético dentro del salario.</b></p>

```sql
create view ej5b1 as
select salar, nomem from temple where numhi=2 order by 1 desc, 2;

/******************************/

select * from empresa.ej5b1;
```

<img src="img/9.png">

<p><b>6. Obtener el nombre de los empleados cuya comisión es superior o igual al 50% de su salario, por orden alfabético.</b></p>

```sql
create view ej6b1 as
select nomem from temple where comis>=salar*0.5 order by 1;

/******************************/

select * from empresa.ej6b1;
```

<img src="img/10.png">

<p><b>7. En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 30 euros por hijo a partir del tercero inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar incluyendo esta paga extra.</b></p>

```sql
create view ej7b1 as
select nomem, salar+30*(numhi-2) from temple where numhi>2 order by 1;

/******************************/

select * from empresa.ej7b1;
```

<img src="img/11.png">

<p><b>7.1. En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 30 euros por hijo a partir del tercero inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar incluyendo esta paga extra. Para el resto de los empleados se debe mostrar el nombre y el salario que reciben siempre. Hacer este ejercicio de dos formas diferentes: con el operador "union" y con la expresión "case".</b></p>

```sql
create view ej71b1 as


/******************************/

select * from empresa.ej71b1;
```

<img src="img/12.png">

<p><b></b></p>

```sql
create view ejb1 as


/******************************/

select * from empresa.ejb1;
```

<img src="img/13.png">

<p><b></b></p>

```sql
create view ejb1 as


/******************************/

select * from empresa.ejb1;
```

<img src="img/14.png">

<p><b></b></p>

```sql
create view ejb1 as


/******************************/

select * from empresa.ejb1;
```

<img src="img/15.png">