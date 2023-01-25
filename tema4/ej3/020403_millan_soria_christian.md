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

  h2{
    font-weight: bold;
    margin-bottom: 0px;
  }
</style>

<h1>EMPRESA - RELACIÓN 1</h1>

<hr>

<p><b>1. Hallar por orden alfabético los nombres de los departamentos cuyo director lo es en funciones y no en propiedad.</b></p>

```sql
select nomde from tdepto where tidir='f' order by 1;
```

<img src="img/ej1.png">

<p><b>2. Obtener una lista telefónica de los empleados del departamento 121, incluyendo nombre del empleado, número del empleado y extensión telefónica. Por orden alfabético descendente.</b></p>

```sql
select nomem, numem, extel from temple where numde=121 order by 1 desc;
```

<img src="img/ej2.png">

<p><b>3. Obtener por orden creciente una relación de todos los números de extensiones telefónicas de los empleados. Elimina las repeticiones.</b></p>

```sql
select distinct extel from temple order by 1;
```

<img src="img/ej3.png">

<p><b>4. Hallar la comisión, nombre y salario de los empleados con más de un hijo, clasificados por comisión, y dentro de la comisión por orden alfabético. El listado debe incluir también los empleados con más de un hijo aunque no tengan comisión.</b></p>

```sql
select ifnull(comis, 0), nomem, salar from temple where numhi>1 order by 1, 2;
```

<img src="img/ej4.png">

<p><b>5. Obtener salario y nombre de los empleados con dos hijos por orden decreciente de salario y por orden alfabético dentro del salario.</b></p>

```sql
select salar, nomem from temple where numhi=2 order by 1 desc, 2;
```

<img src="img/ej5.png">

<p><b>6. Obtener el nombre de los empleados cuya comisión es superior o igual al 50% de su salario, por orden alfabético.</b></p>

```sql
select nomem from temple where comis>=salar*0.5 order by 1;
```

<img src="img/ej6.png">

<p><b>7. En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 30 euros por hijo a partir del tercero inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar incluyendo esta paga extra.</b></p>

```sql
select nomem, salar+30*(numhi-2) from temple where numhi>2 order by 1;
```

<img src="img/ej7.png">

```sql
select nomem, salar+30*(numhi-2) as 'Paga' from temple where numhi>=3 union select nomem, salar from temple where numhi<3 order by 1;
```

<img src="img/ej7-2.png">

<p><b>8. Hallar por orden alfabético los nombres de los empleados tales que, si se les da una gratificación de 60 euros por hijo, el total de esta gratificación no supera a la décima parte de su salario.</b></p>

```sql
select nomem from temple where 60*numhi<=salar/10 order by 1;
```

<img src="img/ej8.png">

<p><b>9. Obtener para los departamentos con un presupuesto superior a 5000 euros, su nombre junto con el nombre del centro donde está ubicado.</b></p>

```sql
select nomde, nomce from tcentr c join tdepto d on(c.numce=d.numce) where presu>5000;
```

<img src="img/ej9.png">

<p><b>10. Para los empleados del departamento de Nóminas, obtener el nombre, salario y número de hijos.</b></p>

```sql
select nomem, salar, numhi from temple e join tdepto d on(e.numde=d.numde) where nomde='nominas';
```

<img src="img/ej10.png">

<hr>

<h2>Anexo</h2>

```sql
CREATE DATABASE tema4_empresa_relaciones;
USE tema4_empresa_relaciones;

CREATE TABLE tcentr(
  NUMCE INT NOT NULL,
  NOMCE VARCHAR(45) NOT NULL,
  SEÑAS VARCHAR(45) NOT NULL,
  PRIMARY KEY (NUMCE)
);

CREATE TABLE tdepto(
  NUMDE INT NOT NULL,
  NOMDE VARCHAR(45) NOT NULL,
  PRESU DECIMAL(7,2) NOT NULL,
  TIDIR CHAR(1) NULL,
  DIREC INT NULL,
  DEPDE INT NULL,
  NUMCE INT NULL,
  PRIMARY KEY (NUMDE),
  FOREIGN KEY (NUMCE) REFERENCES tcentr (NUMCE)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  FOREIGN KEY (DEPDE)
  REFERENCES tdepto (NUMDE)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
);

CREATE TABLE temple(
  NUMEM INT NOT NULL,
  NOMEM VARCHAR(45) NOT NULL,
  FECNA DATE NOT NULL,
  FECIN DATE NOT NULL,
  NUMHI SMALLINT NOT NULL,
  SALAR DECIMAL(6,2) NOT NULL,
  COMIS DECIMAL(6,2) NULL,
  EXTEL VARCHAR(4) NOT NULL,
  NUMDE INT NULL,
  PRIMARY KEY (NUMEM),
  FOREIGN KEY (NUMDE) REFERENCES tdepto (NUMDE)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
);

ALTER TABLE tdepto ADD CONSTRAINT restriccion1 FOREIGN KEY (DIREC) REFERENCES temple (NUMEM) ON DELETE NO ACTION ON UPDATE NO ACTION;

INSERT INTO tcentr (NUMCE, NOMCE,SEÑAS) VALUES (10, 'SEDE CENTRAL','C. ALCALA, 820, MADRID'), (20, 'RELACION CON CLIENTES','C. ATOCHA, 405, MADRID');

INSERT INTO tdepto (NUMDE, NUMCE, DIREC, TIDIR, PRESU, DEPDE, NOMDE) VALUES (100, 10, NULL, 'P', 12000.00, NULL, 'DIRECCIÓN GENERAL'), (110, 20, NULL, 'P', 5000.00, NULL, 'NOMINAS'), (111, 20, NULL, 'F', 11000.00, 110, 'SECTOR INDUSTRIAL'), (112, 20, NULL, 'P', 9000.00, 110, 'SECTOR SERVICIOS'), (120, 10, NULL, 'F', 3000.00, 100, 'ORGANIZACION'), (121, 10, NULL, 'P', 2000.00, 120, 'PERSONAL');

UPDATE tdepto SET DEPDE=120 WHERE NUMDE=110;

INSERT INTO temple (NUMEM, NUMDE, EXTEL, FECNA, FECIN, SALAR, COMIS, NUMHI, NOMEM) VALUES(110, 121, 350, '1989-11-10', '2011-02-15', 1000.00, NULL, 3, 'PONS, CESAR'), (130, 112, 810, '1966-09-09', '2011-02-01' ,1200.00, 1100.00 , 2, 'TEROL, LUCIANO'),	(150, 121, 340, '1971-01-10', '2010-01-15', 2200.00, NULL, 1, 'PEREZ, JULIO'), (180, 110, 508, '1980-01-18','2011-03-18', 1800.00, 500.00, 2, 'PEREZ, MARCOS'), (190, 110, 350, '1982-05-12','2010-02-11', 1500.00, NULL, 4, 'VEIGA, JULIANA'), (240, 111, 760, '1984-02-26','2010-02-24', 2200.00, 1000.00, 3, 'SANZ, LAVINIA'), (260, 100, 220, '1979-12-03','2010-07-12', 2200.00, NULL	, 6, 'LOPEZ, ANTONIO'), (270, 112, 800, '1978-05-21', '2010-09-10', 2200.00, 800.00, 3, 'GARCIA, OCTAVIO'), (280, 120, 410, '1973-01-11','2010-10-08', 1500.00, NULL, 5, 'FLOR, DOROTEA'), (290, 120, 910, '1974-11-30', '2010-02-14', 2200.00, NULL, 3, 'GIL, GLORIA'), (330, 112, 850, '1984-08-19', '2011-03-01', 1500.00, 900.00, 0, 'DIEZ, AMELIA'), (360, 111, 750, '1980-10-29', '2011-10-10', 1800.00, 1000.00, 2, 'LARA, LUCRECIA'), (370, 121, 360, '1985-06-22', '2022-01-20', 1800.00, NULL, 1, 'RUIZ, FABIOLA'), (380, 112, 880, '1980-03-30', '2022-01-01' ,1800.00, NULL, 0, 'MARTÍN, MICAELA');

UPDATE tdepto SET DIREC=260 WHERE NUMDE=100;
UPDATE tdepto SET DIREC=290 WHERE NUMDE=110;
UPDATE tdepto SET DIREC=240 WHERE NUMDE=111;
UPDATE tdepto SET DIREC=270 WHERE NUMDE=112;
UPDATE tdepto SET DIREC=150 WHERE NUMDE=121;
```