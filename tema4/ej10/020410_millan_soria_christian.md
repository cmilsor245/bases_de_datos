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
select count(*) from da_centros where `col 10` in('almería', 'cádiz', 'córdoba', 'granada', 'huelva', 'jaén', 'málaga', 'sevilla');
```

<img src="img/1.png">

<p><b>2. ¿Cuántos centros tiene cada una de las provincias?</b></p>

```sql
select `col 10` as provincia, count(*) as cantidad_centros from da_centros group by provincia;
```