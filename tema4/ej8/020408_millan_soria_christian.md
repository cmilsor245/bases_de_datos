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

<p><b>5. ¿Qué pueblo de Cuenca tiene mayor superficie?</b></p>

```sql
select nombre_actual as "pueblo más grande de cuenca" from municipios where provincia="cuenca" order by superficie desc limit 1;
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
select provincia from municipios where provincia in("la coruña", "lugo", "orense", "pontevedra") order by altitud desc limit 1;
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
select nombre_actual as "5 pueblos con mayor población de valencia" from municipios where provincia="valencia/valencia" order by poblacion_muni desc limit 5;
```

<img src="img/21.png">

<p><b>22. ¿Cuáles son los 3 pueblos más altos sobre el nivel del mar en la provincia de Madrid?</b></p>

```sql
select nombre_actual as "3 pueblos más altos de madrid" from municipios where provincia="madrid" order by altitud desc limit 3;
```

<img src="img/22.png">

<p><b>23. ¿Qué pueblo tiene la menor superficie en la provincia de Barcelona?</b></p>

```sql
select nombre_actual as "pueblo con menor superficie de barcelona" from municipios where provincia="barcelona" order by superficie asc limit 1;
```

<img src="img/23.png">

<p><b>24. ¿Cuál es la suma de la población de los pueblos de La Rioja con mayor número de habitantes?</b></p>

```sql
-- he tomado como "los pueblos de La Rioja con mayo número de habitantes" los 5 pueblos con mayor población

select sum(poblacion_muni) as "suma de la población de los 5 pueblos más habitados de la rioja" from municipios where provincia="la rioja" order by poblacion_muni desc limit 5;
```

<img src="img/24.png">

<p><b>25. ¿Qué pueblo en Andalucía tiene la mayor altura sobre el nivel del mar?</b></p>

```sql
select nombre_actual as "pueblo más alto de andalucía" from municipios where provincia in("almeria", "granada", "malaga", "jaen", "cordoba", "sevilla", "cadiz", "huelva") order by altitud desc limit 1;
```

<img src="img/25.png">

<p><b>26. ¿Cuántos pueblos en Castilla y León tienen una superficie mayor a 100 km<sup>2</sup>?</b></p>

```sql
select count(nombre_actual) as "nº de pueblos de castilla y león con más de 100 km cuadrados" from municipios where provincia in("araba/alava", "burgos", "leon", "palencia", "salamanca", "segovia", "soria", "valladolid", "zamora") and superficie>100;
```

<img src="img/26.png">

<p><b>27. ¿Cuáles son los 2 pueblos más grandes en términos de población en la provincia de Alicante?</b></p>

```sql
select nombre_actual as "2 pueblos más poblados de alicante" from municipios where provincia="alacant/alicante" order by poblacion_muni desc limit 2;
```

<img src="img/27.png">

<p><b>28. ¿Qué porcentaje de la población de la provincia de Zaragoza vive en pueblos con una superficie menor a 50 km<sup>2</sup>?</b></p>

```sql
select (sum(poblacion_muni)/(select sum(poblacion_muni) from municipios where provincia="zaragoza"))*100 as "porcentaje de población" from (select poblacion_muni from municipios where provincia="zaragoza" order by 1 desc) t1;
```

<img src="img/28.png">

<p><b>29. ¿Cuántos pueblos en Galicia tienen una altura sobre el nivel del mar mayor a 800 metros?</b></p>

```sql
select count(*) as "nº de pueblos de galicia por encima de los 800 metros" from municipios where provincia in("la coruña", "lugo", "orense", "pontevedra") and altitud>800;
```

<img src="img/29.png">

<p><b>30. ¿Qué pueblo en Cantabria tiene la menor población?</b></p>

```sql
select nombre_actual as "pueblo con menor población de cantabria" from municipios where provincia="cantabria" order by poblacion_muni desc limit 1;
```

<img src="img/30.png">

<p><b>31. ¿Cuáles son los 3 pueblos con mayor superficie en la provincia de Girona?</b></p>

```sql
select nombre_actual as "3 pueblos con mayor superficie de girona" from municipios where provincia="girona" order by superficie desc limit 3;
```

<img src="img/31.png">

<p><b>32. ¿Qué pueblo en la provincia de Ávila tiene la mayor altura sobre el nivel del mar?</b></p>

```sql
select nombre_actual as "pueblo con mayor altura de ávila" from municipios where provincia="avila" order by altitud desc limit 1;
```

<img src="img/32.png">

<p><b>33. ¿Cuántos pueblos en la provincia de Alicante tienen una población mayor a 10,000 habitantes?</b></p>

```sql
select count(*) as "nº de pueblos de alicante con más de 10,000 habitantes" from municipios where provincia="alacant/alicante" and poblacion_muni>10000;
```

<img src="img/33.png">

<p><b>34. ¿Cuáles son los 2 pueblos más pequeños en términos de superficie en la provincia de La Rioja?</b></p>

```sql
select nombre_actual as "2 pueblos más pequeños de la rioja" from municipios where provincia="la rioja" order by superficie asc limit 2;
```

<img src="img/34.png">

<p><b>35. ¿Qué porcentaje de la superficie total de la provincia de Valladolid es ocupado por pueblos con una población menor a 5,000 habitantes?</b></p>

```sql

```

<img src="img/35.png">

<p><b>36. ¿Cuántos pueblos en Asturias tienen una altura sobre el nivel del mar mayor a 600 metros?</b></p>

```sql
select count(*) as "nª de pueblos en asturias con más de 600 metros de altura" from municipios where provincia="asturias" and altitud>600;
```

<img src="img/36.png">

<p><b>37. ¿Cuáles son los 3 pueblos con mayor población en la provincia de Teruel?</b></p>

```sql
select nombre_actual as "3 pueblos con mayor población de teruel" from municipios where provincia="teruel" order by poblacion_muni desc limit 3;
```

<img src="img/37.png">

<p><b>38. ¿Qué pueblo en la provincia de Cáceres tiene la menor altura sobre el nivel del mar?</b></p>

```sql
select nombre_actual as "pueblo de cáceres más bajo" from municipios where provincia="caceres" order by altitud asc limit 1;
```

<img src="img/38.png">

<p><b>39. ¿Cuántos pueblos en la provincia de Jaén tienen una superficie mayor a 75 km<sup>2</sup>?</b></p>

```sql
select count(*) as "nº de pueblos de jaén con más de 75 km cuadrados" from municipios where provincia="jaen" and superficie>75;
```

<img src="img/39.png">

<p><b>40. ¿Qué porcentaje de la población total de la provincia de Cantabria vive en pueblos con una superficie menor a 50 km<sup>2</sup>?</b></p>

```sql

```

<img src="img/40.png">