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

<h1>PUEBLOS DE ESPAÑA V.4</h1>

<hr>

<p><b>1. ¿Cuál es el pueblo con la mayor población y la mayor superficie en la provincia de Cádiz?</b></p>

```sql
select nombre_actual as 'pueblo con mayor población y superficie de cádiz', poblacion_muni as 'población', superficie from municipios where provincia='cadiz' order by poblacion_muni desc, superficie desc limit 1;
```

<img src="img/1.png">

<p><b>2. ¿Cuáles son los 3 pueblos más altos sobre el nivel del mar y con una población mayor a 10000 habitantes en la provincia de Madrid?</b></p>

```sql
select nombre_actual as 'pueblos', altitud from municipios where provincia='madrid' and poblacion_muni>10000 order by altitud desc limit 3;
```

<img src="img/2.png">

<p><b>3. ¿Qué pueblo tiene la menor superficie y población en la provincia de Barcelona?</b></p>

```sql
select nombre_actual as 'pueblo', poblacion_muni as 'población', superficie from municipios where provincia='barcelona' order by poblacion_muni asc, superficie asc limit 1;
```

<img src="img/3.png">

<p><b>4. ¿Cuál es la suma de la población de los 10 municipios con mayor número de habitantes de la comunidad de Madrid?</b></p>

```sql
select sum(poblacion_muni) as 'población total' from municipios where provincia='madrid' order by poblacion_muni desc limit 10;
```

<img src="img/4.png">

<p><b>5. ¿Cuál es la suma de la población de los 10 municipios con mayor número de habitantes de la comunidad de Barcelona?</b></p>

```sql
select sum(poblacion_muni) as 'suma de población'from municipios where provincia='barcelona' order by poblacion_muni desc limit 10;
```

<img src="img/5.png">

<p><b>6. ¿Qué pueblo en Andalucía tiene la mayor altura sobre el nivel del mar y una población mayor a 20000 habitantes?</b></p>

```sql
select nombre_actual as 'pueblo', altitud from municipios where provincia in('málaga', 'cádiz', 'sevilla', 'huelva', 'córdoba', 'jaén', 'granada', 'almería') and poblacion_muni>20000 order by altitud desc limit 1;
```

<img src="img/6.png">

<p><b>7. ¿Cuántos pueblos en Castilla y León tienen una superficie mayor a 100 km<sup>2</sup> y una población mayor a 5000 habitantes?</b></p>

```sql

```

<img src="img/7.png">