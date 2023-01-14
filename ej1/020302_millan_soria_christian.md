<style>
  /* title */
    h1{
      text-align: center;
      font-weight: bold;
    }
</style>

<h1>CÁLCULO RELACIONAL</h1>

<!-- database creation -->
  <p>Dadas las siguientes tablas:</p>

  <img src="img/tablas.png">

  1. Crea la base de datos.
  2. Crea las tablas correspondientes.
  3. Introduce los datos que se adjuntan en las tablas.

---

<!-- activities -->
  <p>1. Nombres de los proveedores que suministran la pieza T2.</p>

---

<!-- anexo -->
  <h2><b>Anexo</b></h2>

  ```sql
    create database ejercicio1;

    use ejercicio1;

    -----------------------------------------------

    -- creación de tablas
      -- primera tabla
        create table t(
          t_id varchar(2) not null,
          talla int not null,
          color varchar(10) not null,

          primary key(t_id)
        );

      -- segunda tabla
        create table p(
          p_id varchar(2) not null,
          nombre varchar(20) not null,
          ciudad varchar(25) not null,

          primary key(p_id)
        );

      -- tercera tabla
        create table tp(
          p_id varchar(2) not null,
          t_id varchar(2) not null,
          
          foreign key(p_id) references p(p_id),
          foreign key(t_id) references t(t_id)
        );

    -----------------------------------------------

    -- inserción de datos
      -- primera tabla
        insert into t(t_id, talla, color)
	      values
    	      ('T1', '1', 'Blanco'),
            ('T2', '1', 'Negro'),
            ('T3', '1', 'Rojo'),
            ('T4', '2', 'Blanco'),
            ('T5', '2', 'Negro'),
            ('T6', '3', 'Blanco');

      -- segunda tabla
        insert into p(p_id, nombre, ciudad)
	      values
    	      ('P1', 'Juan', 'Madrid'),
            ('P2', 'Ana', 'Barcelona'),
            ('P3', 'José', 'Málaga');

      -- tercera tabla
        insert into tp(p_id, t_id)
	      values
    	      ('P1', 'T1'),
            ('P1', 'T2'),
            ('P1', 'T6'),
            ('P2', 'T1'),
            ('P2', 'T4'),
            ('P3', 'T2');
  ```