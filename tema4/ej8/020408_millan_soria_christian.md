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

<h1>PUEBLOS DE ESPAÑA V.3</h1>

<hr>

<p><b>1. ¿Cuántos habitantes tiene el pueblo de Ronda, en la provincia de Málaga?</b></p>

```sql
select poblacion_muni as "habitantes ronda" from municipios where nombre_actual="ronda";
```

<img src="img/1.png">

<p><b>2. ¿Qué altitud alcanza el pueblo de Requena en la provincia de Valencia?</b></p>

```sql
select altitud as "altitud requena" from municipios where nombre_actual="requena";
```

<img src="img/2.png">

<p><b>3. ¿Cuál es el nombre del pueblo más pequeño en términos de población en la provincia de Cáceres?</b></p>

```sql
select nombre_actual as "nombre pueblo" from municipios where provincia="caceres" order by altitud asc limit 1;
```

<img src="img/3.png">

<p><b>4. ¿Cuál es la superficie del pueblo de Cazorla, en la provincia de Jaén?</b></p>

```sql
select superficie as "superficie cazorla" from municipios where nombre_actual="cazorla"
```

<img src="img/4.png">

<p><b>5. ¿Qué provincia alberga al pueblo de Cuenca con mayor superficie?</b></p>

```sql
select provincia from municipios order by superficie desc limit 1;
```

<img src="img/5.png">