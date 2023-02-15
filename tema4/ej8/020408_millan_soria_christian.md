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
select provincia from municipios where provincia="cuenca" order by superficie desc limit 1;
```

<img src="img/5.png">

<p><b>6. ¿Cuál es la altura en metros sobre el nivel del mar del pueblo de Albarracín, en Teruel?</b></p>

```sql
select altitud as "altura en metros" from municipios where nombre_actual="albarracin";
```

<img src="img/6.png">

<p><b>7. ¿En qué provincia se encuentra el pueblo de Güéjar Sierra?</b></p>

```sql
select provincia from municipios where nombre_actual="guejar sierra";
```

<img src="img/7.png">

<p><b>8. ¿Cuál es la superficie aproximada del pueblo de Estepona?</b></p>

```sql
select superficie from municipios where nombre_actual="estepona";
```

<img src="img/8.png">

<p><b>9. ¿Qué altura alcanza el pueblo de La Granja de San Ildefonso, en Segovia?</b></p>

```sql
select altitud from municipios where nombre_actual="real sitio de san ildefonso";
```

<img src="img/9.png">

<p><b>10. ¿Cuál es el nombre del pueblo con mayor población en la provincia de Almería?</b></p>

```sql
select nombre_actual as "nombre del pueblo" from municipios where provincia="almeria" order by poblacion_muni desc limit 1;
```

<img src="img/10.png">

<p><b>11. ¿Cuál es la superficie aproximada del pueblo de Calahorra, en la provincia de Lar Rioja?</b></p>

```sql
select superficie as "superficie aproximada" from municipios where nombre_actual="calahorra" and provincia="la rioja";
```

<img src="img/11.png">

<p><b>12. ¿Qué provincia alberga al pueblo de Haro con mayor altura sobre el nivel del mar?</b></p>

```sql
select provincia from municipios where nombre_actual="haro" order by altitud desc limit 1;
```

<img src="img/12.png">

<p><b>13. ¿Cuántos habitantes tiene Cádiz?</b></p>

```sql
select sum(poblacion_muni) as "población cádiz" from municipios where provincia="cadiz";
```

<img src="img/13.png">

<p><b>14. ¿Qué altura alcanza el pueblo de Peñafiel, en la provincia de Valladolid?</b></p>

```sql
select altitud as "altitud peñafiel" from municipios where nombre_actual="peñafiel" and provincia="valladolid";
```

<img src="img/14.png">

<p><b>15. ¿Cuál es el nombre del pueblo con mayor superficie en la provincia de Zaragoza?</b></p>

```sql
select nombre_actual as "pueblo con mayor superficie de zaragoza" from municipios where provincia="zaragoza" order by superficie desc limit 1;
```

<img src="img/15.png">

<p><b>16. ¿Cuál es la población aproximada del pueblo de Santander? Indica la provincia.</b></p>

```sql
select poblacion_muni as "población aproximada de santander", provincia from municipios where nombre_actual="santander";
```

<img src="img/16.png">

<p><b>17. ¿Qué provincia alberga al pueblo de Galicia con mayor altura sobre el nivel del mar?</b></p>

```sql
select provincia from municipios where provincia="galicia" order by altitud desc limit 1;
```

<img src="img/17.png">

<p><b>18. ¿Cuántos habitantes tiene el pueblo de Girona?</b></p>

```sql
select poblacion_muni as "población girona" from municipios where nombre_actual="girona";
```

<img src="img/18.png">

<p><b>19. ¿Qué altura alcanza el pueblo de Ávila?</b></p>

```sql
select altitud as "altitud ávila" from municipios where nombre_actual="avila";
```

<img src="img/19.png">

<p><b>20. ¿Cuál es el nombre del pueblo con mayor población en la provincia de Alicante?</b></p>

```sql
select nombre_actual as "pueblo con mayor población de alicante" from municipios where provincia="alacant/alicante" order by poblacion_muni desc limit 1;
```

<img src="img/20.png">

<p><b>21. ¿Cuáles son los 5 pueblos más grandes en términos de población en la provincia de Valencia?</b></p>

```sql

```

<img src="img/21.png">