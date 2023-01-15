<!-- style -->
  <style>
    /* título */
      h1{
        text-align: center;
        font-weight: bold;
      }

    /* subtítulos */
      h3{
        font-weight: bold;
      }
  </style>

<!---------------------------------------------------->

<!-- title -->
  <h1>RÍOS DE ESPAÑA</h1>

<!-- modelo conceptual -->
  <h3>MODELO CONCEPTUAL</h3>

  <img src="img/conceptual.png">

  <hr>

<!------------------------------------------->

<!-- modelo relacional -->
  <h3>MODELO RELACIONAL</h3>

  <img src="img/relacional.png">

  <hr>

<!------------------------------------------->

<!-- modelo físico -->
  <h3>MODELO FÍSICO</h3>

  ```sql
  create database tema4_ej1;

  use tema4_ej1;

  create table comunidades(
      comuni_id int primary key auto_increment,
      comunidades_nombre varchar(255) not null,
      comunidades_habitantes int not null
  );

  create table provincias(
      provi_id int primary key auto_increment,
      provincias_nombre varchar(255) not null,
      provincias_habitantes int not null,
      comuni_id int not null,
      foreign key(comuni_id) references comunidades(comuni_id)
  );

  create table rios(
      rio_id int primary key auto_increment,
      rios_nombre varchar(255) not null,
      rios_longitud int not null,
      rios_ciudad varchar(255) not null,
      rios_provincias varchar(255) not null,
      rios_comunidades varchar(255) not null,
      rios_km_comunidad int not null,
      comuni_id int not null,
      foreign key(comuni_id) references comunidades(comuni_id)
  );
  ```

  <hr>

<!------------------------------------------->

<!-- inserts de ríos -->
  <h3>INSERTS DE RÍOS</h3>

  ```sql
  insert into comunidades(comuni_id, comunidades_nombre, comunidades_habitantes) values 
    (1, "Andalucía", 8382999),
    (2, "Cataluña", 7555044),
    (3, "Galicia", 2719600),
    (4, "País Vasco", 2179000),
    (5, "Castilla y León", 2475000);

  insert into provincias(provi_id, provincias_nombre, provincias_habitantes, comuni_id) values 
      (1, "Málaga", 1743000, 1),
      (2, "Barcelona", 5460000, 2),
      (3, "A Coruña", 1039000, 3),
      (4, "Vitoria-Gasteiz", 233000, 4),
      (5, "Valladolid", 2341000, 5);

  insert into rios(rios_nombre, rios_longitud, rios_ciudad, rios_provincias, rios_comunidades, rios_km_comunidad, comuni_id) values
      ("Ebro", 910, "Zaragoza", "Zaragoza, Tarragona, Teruel", "Aragón, Cataluña", 200, 2),
      ("Segura", 480, "Murcia", "Murcia, Albacete, Alicante", "Murcia, Comunidad Valenciana", 150, 1),
      ("Duero", 897, "Soria", "Soria, Burgos, Valladolid, Zamora", "Castilla y León, Castilla-La Mancha", 250, 3),
      ("Guadiana", 1000, "Badajoz", "Badajoz, Cáceres", "Extremadura, Andalucía", 300, 4),
      ("Minho", 330, "Vigo", "Pontevedra, Ourense", "Galicia, Portugal", 100, 5),
      ("Bidasoa", 120, "Irun", "Guipúzcoa, Navarra", "País Vasco, Navarra", 50, 6);
  ```

  <hr>

<!------------------------------------------->

<!-- ejercicios -->
  <!-- ej1 -->
  <p><b>1. Muestra el nombre de todos los ríos.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej2 -->
  <p><b>2. Muestra las provincias por las que pasa uno de los ríos.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej3 -->
  <p><b>3. Muestra las provincias por las que pasa cada uno de los ríos.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej4 -->
  <p><b>4. Muestra las regiones por las que pasa un río que al menos pase por 2 comunidades autónomas.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej5 -->
  <p><b>5. Muestra las regiones por las que pasa cada río.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej6 -->
  <p><b>6. Muestra los ríos que pasan por cada comunidad y provincia agrupados por las provincias.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej7 -->
  <p><b>7. Muestra los ríos que pasan por cada comunidad agrupados por comunidad.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej8 -->
  <p><b>8. Muestra el nombre del río con mayor longitud.<b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej9 -->
  <p><b>9. Calcula la longitud de todos los ríos ordenados alfabéticamente.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej10 -->
  <p><b>10. Calcula la longitud de todos los ríos ordenados de menor a mayor longitud. Muestra el nombre del río y la longitud de cada uno.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">



  <!-- ej11 -->
  <p><b>11. Calcula la longitud de todos los ríos que corresponden a cada provincia. Se deben mostrar de mayor a menor, teniendo en cuenta la suma de los kilómetros que cada río recorre en cada provincia.</b></p>

  - Con producto cartesiano:

  ```sql

  ```

  - Sin producto cartesiano:

  ```sql

  ```

  - Resultado:

  <img src="">

  <hr>

<!---------------------------------------------------->

<h2><b>Anexo</b></h2>

```sql

```