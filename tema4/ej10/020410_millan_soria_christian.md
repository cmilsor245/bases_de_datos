<style>
  h1{
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

<h1>PUEBLOS DE ESPAÑA V.5</h1>

<hr>

<p>Una vez importada la nueva tabla...</p>

<p><b>1. ¿Cuántos centros educativos tiene Andalucía?</b></p>

```sql
select count(*) as "nº de centros educativos" from da_centros;
```

<img src="img/1.png">

<p><b>2. ¿Cuántos centros tiene cada una de las provincias?</b></p>

```sql
select `col 10` as "provincia", count(*) as "cantidad de centros" from da_centros group by 1;
```

<img src="img/2.png">

<p><b>3. ¿Cuántos centros hay de "Educación Infantil y Primaria"?</b></p>

```sql
select count(*) as "centros de educación infantil y primaria" from da_centros where `col 3`='colegio de educación infantil y primaria';
```

<img src="img/3.png">

<p><b>4. ¿Cuántos centros rurales existen?</b></p>

```sql
select count(*) as "nº de centros rurales" from da_centros where `col 3` like "colegio público rural";
```

<img src="img/4.png">

<p><b>5. ¿Cuántos centros instituto de secundaria existen?</b></p>

```sql
select count(*) as "nº de institutos de secundaria" from da_centros where `col 3` like "instituto de educación secundaria";
```

<img src="img/5.png">

<p><b>6. ¿Cuántos colegios de infantil y primaria existen?</b></p>

```sql
select count(*) as "nº de colegios de infantil y primaria" from da_centros where `col 3` like "colegio de educación infantil y primaria";
```

<img src="img/6.png">

<p><b>7. ¿Cuántas escuelas elementales de música existen?</b></p>

```sql
select count(*) as "nº de escuelas elementales de música" from da_centros where `col 3` like "conservatorio elemental de música";
```

<img src="img/7.png">

<p><b>8. ¿Cuántos centros autorizados de enseñanzas deportivas existen?</b></p>

```sql

```

<img src="img/8.png">