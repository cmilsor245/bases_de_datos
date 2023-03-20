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

  #ex{
    border: none;
  }
</style>

<h1>CENTROS ESCOLARES</h1>

<hr>

<p><b>1. ¿Cuántos centros educativos tiene la provincia de Málaga?</b></p>

```sql
select count(*) as "nº de centros educativos en málaga" from da_centros where d_provincia="málaga";
```

<img src="img/1.png">

<p><b>2. ¿Cuántos centros educativos públicos tiene la provincia de Málaga?</b></p>

```sql
select count(*) as "nº de centros educativos en málaga" from da_centros where d_provincia="málaga" and d_denomina in("colegio público rural", "centro público integrado de formación profesional");
```

<img src="img/2.png">

<p><b>3. ¿Cuántos centros educativos tiene la provincia de Málaga en cada municipio?</b></p>

```sql

```

<img src="img/3.png">