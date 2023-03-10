<style>
  h1{
    text-align: center;
    font-weight: bold;
    border: none;
    margin-bottom: 3px;
  }

  h3{
    font-weight: bold;
    font-size: 20px;
    margin-bottom: 1px;
  }

  h5{
    font-size: 17px;
    margin-bottom: 2px;
  }

  h6{
    font-size: 15px;
    margin-top: 2px;
  }

  img{
    border: 2px solid black;
  }

  .inline{
    background-color: lightgrey;
    padding: 2px;
    border-radius: 3px;
  }

  .exe{
    border: none;
  }

  .h1{
    border: none;
    height: 3px;
    color: black;
    background-color: black;
  }

  .line{
    border: none;
    height: 1px;
    color: black;
    background-color: black;
  }

  .line2{
    border: none;
    height: 2px;
    color: black;
    background-color: black;
  }
</style>

<h1>MANUAL LMD SQL</h1>

<hr class="h1">

<h3>SELECT basics</h3>

<hr class="line">

<h6>Introducing the world table of countries</h6>

<p><b>1. The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text area that are data) should be in 'single quotes'.</b></p>
<p><b>Modify it to show the population of Germany.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra la población en francia

select population from world where name='France';
```

<p>Corrección:</p>

```sql
-- muestra la población en alemania

select population from world where name='Germany';
```

<img src="img/apt1/ej1.png">

<hr class="line">

<h6>Scandinavia</h6>

<p><b>2. Checking a list with the word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.</b></p>

<p><b>Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el nombre del país y la población del campo "name" donde coincida con "brasil", "rusia", "india" y "china"

select name, population from world where name in('Brazil', 'Russia', 'India', 'China');
```

<p>Corrección:</p>

```sql
-- muestra el nombre del país y la población del campo "name" donde coincida con "suecia", "noruega" y "dinamarca"

select name, population from world where name in('Sweden', 'Norway', 'Denmark');
```

<img src="img/apt1/ej2.png">

<hr class="line">

<h6>Just the right size</h6>

<p><b>3. Which countries are not too small and not too big? <code class="inline">between</code> allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km.</b></p>

<p><b>Modify it to show the country and the area for countries with an area between 200,000 and 250,000.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el nombre de los países cuyo área esté entre 250000 y 300000

select name, area from world where area between 250000 and 300000;
```

<p>Corrección:</p>

```sql
-- muestra el nombre de los países cuyo área esté entre 200000 y 250000

select name, area from world where area between 200000 and 250000;
```

<img src="img/apt1/ej3.png">

<hr class="line">

<h5>SELECT basics - quiz</h5>

<hr class="line">

<p><b>1. Select the code which produces this table:</b></p>

<img class="exe" src="img/quiz1/table1.png">

<p>Respuesta:</p>

<img src="img/quiz1/ej1.png">

<p>Muestra el nombre y la población de aquellos países cuya población esté entre 1000000 y 1250000.</p>

<p><b>2. Pick the result you would obtain from this code:</b></p>

```sql
select name, population from world where name like "Al%"
```

<p>Respuesta:</p>

<img src="img/quiz1/ej2.png">

<p>Muestra el nombre y la población de aquellos países cuyo nombre empiece por "Al".</p>

<p><b>3. Select the code which shows the countries that end in A or L.</b></p>

<p><b>Respuesta:</b></p>

<img src="img/quiz1/ej3.png">

<p>Muestra el nombre de los países cuyo nombre termina por "a" o por "l".</p>

<p><b>4. Pick the result from the query:</b></p>

```sql
select name, length(name) from world where length(name)=5 and region='Europe';
```

<p><b>Respuesta:</b></p>

<img src="img/quiz1/ej4.png">

<p>Muestra el nombre y la longitud del nombre para aquellos países cuyo nombre tenga una longitud de 5 caracteres y correspondan a la región de "Europa".</p>

<p><b>5. Here are the first few rows of the world table:</b></p>

<img class="exe" src="img/quiz1/table5.png">

<p><b>Pick the result you would obtain from this code:</b></p>

```sql
select name, area*2 from world where population=64000;
```

<p>Respuesta:</p>

<img src="img/quiz1/ej5.png">

<p>Muestra el nombre y el area (multiplicada por 2) de aquellos países cuya población sea igual a 64000.</p>

<p><b>6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000.</b></p>

<p>Respuesta:</p>

<img src="img/quiz1/ej6.png">

<p>Muestra el nombre, el área y la población de aquellos países cuyo área sea mayor que 50000 y su población sea menor que 10000000.</p>

<p><b>7. Select the code that shows the population density of Chine, Australia, Nigeria and France.</b></p>

<p>Respuesta:</p>

<img src="img/quiz1/ej7.png">

<p>Muestra el nombre y la densidad de población (población/área) de aquellos países cuyo nombre coincida con "China", "Nigeria", "Francia" o "Australia" en el campo "name".</p>

<hr class="line2">

<h3>SELECT from world</h3>

<hr class="line">

<h6>Introduction</h6>

<p><b>1. Observe the result of running this SQL command to show the name, continent and population of all countries.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el nombre, el continente y la población de todos los países de la tabla

select name, continent, population from world;
```

<p>Corrección (es lo mismo):</p>

```sql
select name, continent, population from world;
```

<img src="img/apt2/ej1.png">

<hr class="line">

<h6>Large Countries</h6>

<p><b>2. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el nombre de aquellos países cuya población sea igual a 64105700

select name from world where population=64105700;
```

<p>Corrección:</p>

```sql
-- muestra el nombre de aquellos países cuya población sea mayor o igual a 200000000

select name from world where population>=200000000;
```

<img src="img/apt2/ej2.png">

<hr class="line">

<h6>Per capita GDP</h6>

<p><b>3. Give the <code class="inline">name</code> and the per capita GDP for those countries with a <code class="inline">population</code> of at least 200 million.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y el per capita de aquellos países cuya población sea mayor o igual a 200000000

select name, gdp/population from world where population>=200000000;
```

<img src="img/apt2/ej3.png">

<hr class="line">

<h6>South America In millions</h6>

<p><b>4. Show the <code class="inline">name</code> and <code class="inline">population</code> in millions for the countries of the <code class="inline">continent</code> 'South America'. Divide the population by 1000000 to get population in millions.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y la población (en millones) para cada país perteneciente al continente "sudamérica"

select name, population/1000000 from world where continent='South America';
```

<img src="img/apt2/ej4.png">

<hr class="line">

<h6>France, Germany, Italy</h6>

<p><b>5. Show the <code class="inline">name</code> and <code class="inline">population</code> for France, Germany, Italy.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y la población de cada país que coincide en nombre con "francia", "alemania" o "italia" en el campo "name"

select name, population from world where name in('France', 'Germany', 'Italy');
```

<img src="img/apt2/ej5.png">

<hr class="line">

<h6>United</h6>

<p><b>6. Show the countries which have a <code class="inline">name</code> that includes the word 'United'.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre de todos los países cuyo nombre contenga "united" en alguna parte de su nombre

select name from world where name like '%United%';
```

<img src="img/apt2/ej6.png">

<hr class="line">

<h6>Two ways to be big</h6>

<p><b>7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.</b></p>

<p><b>Show the countries that are big by area or big by population. Show name, population and area.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre, la población y el área de los países con un área mayor que 3000000 o una población mayor que 250000000

select name, population, area from world where area>3000000 or population>250000000;
```

<img src="img/apt2/ej7.png">

<hr class="line">

<h6>One or the other (but not both)</h6>

<p><b>8. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.</b></p>

<p>Respuesta:</p>

```sql
/*
muestra el nombre, la población y el área de los países que cumplan una de estas dos condiciones:
  - que su area sea mayor que 3000000 y su población menor que 250000000
  - que su area sea menor que 3000000 y su población mayor que 250000000
*/

select name, population, area from world where (area>3000000 and population<250000000) or (area<3000000 and population>250000000);
```
<img src="img/apt2/ej8.png">

<hr class="line">

<h6>Rounding</h6>

<p><b>9. Show the <code class="inline">name</code> and <code class="inline">population</code> in millions and the GDP in billions for the countries of the <code class="inline">continent</code> 'South America'. Use the ROUND function to show the values to two decimal places.</b></p>

<p><b>For South America show population in millions and GDP in billions both to 2 decimal places.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre, la población (en millones y redondeada a 2 decimales) y el gdp (en billones y con 2 decimales) para los países que tengan como continente "sudamérica"

select name, round(population/1000000, 2), round(gdp/1000000000, 2) from world where continent='South America';
```

<img src="img/apt2/ej9.png">

<hr class="line">

<h6>Trillion dollar economies</h6>

<p><b>10. Show the <code class="inline">name</code> and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.</b></p>

<p><b>Show per-capita GDP for the trillion dollar countries to the nearest $1000.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y el per capita (el gdp entre la población, redondeado a los miles) de los países con un gdp más cercano a 1000000000000

select name, round(gdp/population, -3) from world where gdp>1000000000000;
```

<img src="img/apt2/ej10.png">

<hr class="line">

<h6>Name and capital have the same length</h6>

<p><b>11. Greece has capital Athens. Each of the strings 'Greece', and 'Athens' has 6 characters.</b></p>

<p><b>Show the name and capital where the name and the capital have the same number of characters.</b></p>

<p>Respuesta:</p>

```sql
-- la función LENGTH hay que cambiarla por LEN si se utiliza Microsoft SQL (arriba a la derecha en la tuerca)

-- muestra el nombre, la longitud del nombre, la capital y la longitud de la capital de los países cuyo nombre y capital sean iguales en longitud

select name, len(name), capital, len(capital) from world where len(name)=len(capital);
```

<img src="img/apt2/ej11.png">

<hr class="line">

<h6>Matching name and capital</h6>

<p><b>12. The capital of Sweden is Stockholm. Both words start with the letter 'S'.</b></p>

<p><b>Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y la capital de los países cuyo nombre y capital empiezan por la misma letra, y que además el nombre y la capital no son la misma palabra

select name, capital from world where left(name, 1)=left(capital, 1) and name<>capital;
```

<img src="img/apt2/ej12.png">

<hr class="line">

<h6>All the vowels</h6>

<p><b>13. Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.</b></p>

<p><b>Find the country that has all the vowels and no spaces in its name.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre de los países cuyo nombre solo tiene una palabra, es decir, no tiene espacios, y además contiene todas las vocales individualmente

select name from world where name not like '% %' and name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%';
```

<img src="img/apt2/ej13.png">

<hr class="line">

<h5>SELECT from world - quiz</h5>

<hr class="line">

<p><b>1. Select the code which gives the name of countries beginning with U.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej1.png">

<p>Muestra el nombre de aquellos países cuyo nombre empieza por "U".</p>

<p><b>2. Select the code which shows just the population of United Kingdom.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej2.png">

<p>Muestra la población de aquellos países cuyo nombre coincida con "Reino Unido".</p>

<p><b>3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France:</b></p>

```sql
select continent from world where 'name'='France';
```

<p>Respuesta:</p>

<img src="img/quiz2/ej3.png">

<p>Muestra el continente de cada país cuyo nombre sea "Francia".</p>

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select name, population/10 from world where population<10000;
```
<img src="img/quiz2/ej4.png">

<p>Muestra el nombre y la población (dividida entre 10) cuya población sea menor que 10000.</p>

<p><b>5. Select the code which would reveal the name and population of countries in Europe and Asia.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej5.png">

<p>Muestra el nombre y la población de los países cuyo campo "continent" coincida con "Europe" o "Asia".<></p>

<p><b>6. Select the code which would give two rows.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej6.png">

<p>Muestra el nombre de aquellos países cuyo campo "name" coincida con "Cuba" o "Togo".</p>

<p><b>7. Select the result that would be obtained from this code:</b></p>

```sql
select name from world where continent='South America' and population>40000000;
```

<p>Respuesta:</p>

<img src="img/quiz2/ej7.png">

<p>Muestra el nombre de los países que cumplen estas dos condiciones:</p>

<ul>
<li>que su continente sea "South America"</li>
<li>que su población sea mayor que 40000000</li>
</ul>

<hr class="line2">

<h3>SELECT from nobel</h3>

<hr class="line">

<h6>Winners from 1950</h6>

<p><b>1. Change the query shown so that it displays Nobel prizes for 1950.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el año, la materia y el ganador del año 1960

select yr, subject, winner from nobel where yr=1960;
```

<p>Corrección:</p>

```sql
-- muestra el año, la materia y el ganador del año 1950

select yr, subject, winner from nobel where yr=1950;
```

<img src="img/apt3/ej1.png">

<hr class="line">

<h6>1962 Literature</h6>

<p><b>2. Show who won the 1962 prize for literature.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el ganador del año 1960, cuya materia coincide con "physics"

select winner from nobel where yr=1960 and subject='physics';
```

<p>Corrección:</p>

```sql
-- muestra el ganador del año 1962, cuya materia coincide con "literature"

select winner from nobel where yr=1962 and subject='literature';
```

<img src="img/apt3/ej2.png">

<hr class="line">

<h6>Albert Einstein</h6>

<p><b>3. Show the year and subject that won 'Albert Einstein' his prize.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el año y la materia del ganador "Albert Einstein"

select yr, subject from nobel where winner like 'Albert Einstein';
```

<img src="img/apt3/ej3.png">

<hr class="line">

<h6>Recent Peace Prizes</h6>

<p><b>4. Give the name of the 'peace' winners since the year 2000, including 2000.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el ganador cuya materia coincide con "peace" y cuyo año coincide con el 2000 o un año posterior

select winner from nobel where subject like 'peace' and yr>=2000;
```

<img src="img/apt3/ej4.png">

<hr class="line">

<h6>Literature in the 1980's</h6>

<p><b>5. Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.</b></p>

<p>Respuesta:</p>

```sql
-- muestra todos los datos de los registros cuya materia coincida con "literature" y su año se sitúe entre el 1980 y el 1989, ambos inclusive

select * from nobel where subject like 'literature' and yr>=1980 and yr<=1989;
```

<img src="img/apt3/ej5.png">

<hr class="line">

<h6>Only Presidents</h6>

<p><b>6. Show all details of the presidential winners: Theodore Roosevelt, Thomas Woodrow Wilson, Jimmy Carter and Barack Obama.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra todos los datos de los registros cuyo año sea el 1970 y cuya materia coincida con "cookery", "chemistry" o "literature"

select * from nobel where yr=1970 and subject in('cookery', 'chemistry', 'literature');
```

<p>Corrección:</p>

```sql
-- el nombre completo de WoWoodrow Wilson no funciona, hay que quitar "Thomas"

-- muestra todos los datos de los registros cuyo campo "winner" sea igual a "Theodore Roosevelt", "Woodrow Wilson", "Jimmy Carter" o "Barack Obama"

select * from nobel where winner in('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');
```

<img src="img/apt3/ej6.png">

<hr class="line">

<h6>John</h6>

<p><b>7. Show the winners with first name John.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el ganador cuyo nombre (campo "winner") comienza por "John"

select winner from nobel where winner like 'John%';
```

<img src="img/apt3/ej7.png">

<hr class="line">

<h6>Chemistry and Physics from different years</h6>

<p><b>8. Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.</b></p>

<p>Respuesta:</p>

```sql
/*
muestra todos los datos de los registros que cumplen solo una de estas condiciones:
  - que la materia del registro sea "physics" y el año sea el 1980
  - que la materia del registro sea "chemistry" y el año sea el 1984
*/

select * from nobel where(subject like 'physics' and yr=1980) or (subject like 'chemistry' and yr=1984);
```

<img src="img/apt3/ej8.png">

<hr class="line">

<h6>Exclude Chemists and Medics</h6>

<p><b>9. Show the year, subject, and name of winners for 1980 excluding chemistry and medicine.</b></p>

<p>Respuesta:</p>

```sql
-- muestra todos los datos de los registros donde la materia no coincide con "chemistry" ni con "medicine", y además el año sea el 1980

select * from nobel where subject not in('chemistry', 'medicine') and yr=1980;
```

<img src="img/apt3/ej9.png">

<hr class="line">

<h6>Early Medicine, Late Literature</h6>

<p><b>10. Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004).</b></p>

<p>Respuesta:</p>

```sql
/*
muestra todos los datos de los registros que cumplen solo una de estas condiciones:
  - que su materia sea "medicine" y su año sea anterior al 1910
  - que su materia sea "literature" y su año el 2004 o posterior
*/

select * from nobel where (subject like 'medicine' and yr<1910) or (subject like 'literature' and yr>=2004);
```

<img src="img/apt3/ej10.png">

<hr class="line">

<h6>Umlaut</h6>

<p><b>11. Find all details of the prize won by Peter Grünberg.</b></p>

<p>Respuesta:</p>

```sql
-- muestra todos los datos de los registros que tienen como ganador a "Peter Grünberg"

select * from nobel where winner like 'Peter Grünberg';
```

<img src="img/apt3/ej11.png">

<hr class="line">

<h6>Apostrophe</h6>

<p><b>12. Find all details of the prize won by Eugene O'Neill.</b></p>

<p>Respuesta:</p>

```sql
-- para poder poner un "'" en la consulta esta se duplica

-- muestra todos los datos de los registros cuyo ganador es "Eugene O'Neill"

select * from nobel where winner like 'Eugene O''Neill';
```

<img src="img/apt3/ej12.png">

<hr class="line">

<h6>Knights of the realm</h6>

<p><b>13. List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el ganador, el año y la materia de los registros cuyo nombre de ganador comienza por "Sir" y los ordena primero por el año de forma descendente, y después por el nombre del ganador

select winner, yr, subject from nobel where winner like 'sir%' order by yr desc, winner;
```

<img src="img/apt3/ej13.png">

<hr class="line">

<h6>Chemistry and Physics last</h6>

<p><b>14. The expression subject IN ('chemistry','physics') can be used as a value - it will be 0 or 1.</b></p>

<p><b>Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.</b></p>

<p><b>Código:</b></p>

```sql
-- la expresión "subject in('physics', 'chemistry')" devuelve un valor boolean

-- muestra el ganador, la materia y el valor boolean (que es 1 si la materia del registro es una de las dos, y 0 si no es ninguna de las 2) de los registros cuyo año es el 1984 y los ordena primero por la materia y después por el ganador

select winner, subject, subject in('physics','chemistry') from nobel where yr=1984 order by subject,winner;
```

<p>Corrección:</p>

```sql
--! no sé por qué no funciona

-- muestra el ganador y la materia de los registros cuyo año es el 1984 y los ordena primero utilizando el boolean de la expresión "subject in('physics', 'chemistry')", después los ordena por la materia y, por último, los ordena por el ganador

select winner, subject from nobel where yr=1984 order by subject in('physics', 'chemistry'), subject, winner;
```

<img src="img/apt3/ej14.png">

<hr class="line">

<h5>SELECT from nobel - quiz</h5>

<hr class="line">

<p><b>1. Pick the code which shows the name of winner's names beginning with C and ending in n.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej1.png">

<p>Muestra los ganadores cuyo nombre comience por "C" y acaben por "n".</p>

<p><b>2. Select the code that shows how many Chemistry awards were given between 1950 and 1960.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej2.png">

<p>Muestra el número total de materias que coinciden con "chemistry" y cuyo año está entre el 1950 y el 1960.</p>

<p><b>3. Pick the code that shows the amount of years where no Medicine awards were given.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej3.png">

<p>Muestra el número de años (sin repetirse) donde se cumple la siguiente condición:</p>

<ul>
<li>en el registro, el año (sin repetirse) no debe aparecer cuando la materia es "medicine"</li>
</ul>

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select subject, winner from nobel where winner like 'sir%' and yr like '196%';
```

<p>Respuesta:</p>

<img src="img/quiz3/ej4.png">

<p>Muestra la materia y el ganador de los registros cuyo nombre g¡de ganador comienza por "Sir" y cuyo año pertenece a la década de los 60 (1960 inclusive).</p>

<p><b>5. Select the code which would show the year when neither a Physics or Chemistry award was given.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej5.png">

<p>El SELECT anidado muestra el año de los registros cuya materia es "chemistry" o "physics". De esta forma se puede establecer que lo que salga de esta subconsulta no debe aparecer en la consulta real.</p>

<p><b>6. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej6.png">

<p>La primera consulta anidada saca el año de los registros cuya materia es "literature". La segunda consulta anidada hace lo mismo con la materia "peace". Por último, la consulta principal muestra el año de los registros cuya materia es "medicine", eliminando los años que aparecen en las subconsultas.</p>

<p><b>7. Pick the result that would be obtained from the following code:</b></p>

```sql
select subject, count(subject) from nobel where yr ='1960' group by subject;
```

<p>Respuesta:</p>

<img src="img/quiz3/ej7.png">

<p>Muestra la materia y el número de materias cuyo año pertenece a la década de los 60 (1960 inclusive) y los agrupa por la materia.</p>

<hr class="line2">

<h3>SELECT in SELECT</h3>

<hr class="line">

<h6>Bigger than Russia</h6>

<p><b>1. List each country name where the population is larger than that of 'Russia'.</b></p>

<p><b>Código:</b></p>

```sql
-- muestra el nombre de los países cuya población es superior a la población que sale de la subconsulta, la cual saca la población del país cuyo nombre es "romania"

select name from world where population>(select population from world where name='romania');
```

<p>Corrección:</p>

```sql
-- hace lo mismo pero con el país "russia"

select name from world where population>(select population from world where name='russia');
```

<img src="img/apt4/ej1.png">

<hr class="line">

<h6>Richer than UK</h6>

<p><b>2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre de los países cuyo per capita es mayor que el per capita obtenido de la subconsulta, la cual obtiene el per capita del país "united kingdom". además, solo muestra los países que tienen como continente "europe"

select name from world where gdp/population>(select gdp/population from world where name='united kingdom') and continent='europe';
```

<img src="img/apt4/ej2.png">

<hr class="line">

<h6>Neighbours of Argentina and Australia</h6>

<p><b>3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.</b></p>

<p>Respuesta:</p>

```sql
-- muestra el nombre y el continente de los registros cuyo campo "continent" está en los resultados obtenidos de la subconsulta, la cual obtiene el continente de los países con nombre "argentina" y "australia". por último, los ordena por el nombre

select name, continent from world where continent in(select continent from world where name in('argentina', 'australia')) order by name;
```

<img src="img/apt4/ej3.png">

<hr class="line">

<h6>Between Canada and Poland</h6>

<p><b>4. Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.</b></p>

<p>Respuesta:</p>

```sql
/*
muestra el nombre y la población que cumplen las siguientes condiciones a la vez:
  - que su población sea mayor que la población obtenida en la primera subconsulta, la cual obtiene la población del país "united kingdom"
  - que su población sea menor que la población obtenida en la segunda subconsulta, la cual obtiene la población del país "germany"
*/

select name, population from world where population>(select population from world where name='united kingdom') and population<(select population from world where name='germany');
```

<img src="img/apt4/ej4.png">

<hr class="line">

<h6>Percentages of Germany</h6>

<p><b>5. Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.</b></p>

<p><b>Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.</b></p>

<p>Respuesta:</p>

```sql

```

<img src="img/apt4/ej5.png">

<hr class="line">

<h6>Bigger than every country in Europe</h6>

<p><b>6. Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values).</b></p>

<p>Respuesta:</p>

```sql
-- la subconsulta selecciona el gdp de los países cuyo gdp sea mayor o igual a 0 y cuyo continente es "europe". la condición de la consulta principal establece que, de los gdp obtenidos en la subconsulta, se seleccionan solo los países cuyo gdp sea mayor o igual al mayor gdp obtenido de la subconsulta, además de seleccionar solo los países cuyo continente no sea igual a "europe"

select name from world where gdp>=all(select gdp from world where gdp>=0 and continent='europe') and continent!='europe';
```

<img src="img/apt4/ej6.png">

<hr class="line">

<h6>Largest in each continent</h6>

<p><b>7. Find the largest country (by area) in each continent, show the continent, the name and the area:</b></p>

<p><b>Código:</b></p>

```sql
select continent, name, population from world x where population>=all(select population from world y where y.continent=x.continent and population>0);
```

<p>Corrección:</p>

```sql
select continent, name, area from world x where area >= all(select area from world y where y.continent=x.continent and area>0);
```

<img src="img/apt4/ej7.png">

<hr class="line">

<h6>First country of each continent (alphabetically)</h6>

<p><b>8. List each continent and the name of the country that comes first alphabetically.</b></p>

<p>Respuesta:</p>

```sql
select continent, name from world x where name <= all(select name from world y where y.continent = x.continent);
```

<img src="img/apt4/ej8.png">

<hr class="line">

<h6>Difficult Questions That Utilize Techniques Not Covered In Prior Sections</h6>

<p><b>9. Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.</b></p>

<p>Respuesta:</p>

```sql
select name, continent, population from world x where 25000000  > all(select population from world y where x.continent = y.continent and y.population > 0);
```

<img src="img/apt4/ej9.png">

<hr class="line">

<h6>Three time bigger</h6>

<p><b>10. Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents.</b></p>

<p>Respuesta:</p>

```sql
select name, continent from world x where population > all(select population*3 from world y where x.continent = y.continent and population > 0 and y.name != x.name);
```

<img src="img/apt4/ej10.png">

<hr class="line">

<h5>SELECT in SELECT - quiz</h5>

<hr class="line">

<p><b>1. Select the code that shows the name, region and population of the smallest country in each region.</b></p>

<p>Respuesta:</p>

<img src="img/quiz4/ej1.png">

<p><b>2. Select the code that shows the countries belonging to regions with all populations over 50000.</b></p>

<p>Respuesta:</p>

<img src="img/quiz4/ej2.png">

<p><b>3. Select the code that shows the countries with a less than a third of the population of the countries around it.</b></p>

<p>Respuesta:</p>

<img src="img/quiz4/ej3.png">

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select name from bbc where population>(select population from bbc where name='united kingdom') and region in(select region from bbc where name='united kingdom');
```

<p>Respuesta:</p>

<img src="img/quiz4/ej4.png">

<p><b>5. Select the code that would show the countries with a greater GDP than any country in Africa (some countries may have NULL gdp values).</b></p>

<p>Respuesta:</p>

<img src="img/quiz4/ej5.png">

<p><b>6. Select the code that shows the countries with population smaller than Russia but bigger than Denmark.</b></p>

<p>Respuesta:</p>

<img src="img/quiz4/ej6.png">

<p><b>7. Select the result that would be obtained from the following code:</b></p>

```sql
select name from bbc where population>all(select max(population) from bbc where region='europe') and region='south asia';
```

<p>Respuesta:</p>

<img src="img/quiz4/ej7.png">

<hr class="line2">

<h3>SUM and COUNT</h3>

<hr class="line">

<h6>Total world population</h6>

<p><b>1. Show the total population of the world.</b></p>

<p>Respuesta:</p>

```sql
select sum(population) from world;
```

<img src="img/apt5/ej1.png">

<hr class="line">

<h6>List of continents</h6>

<p><b>2. List all the continents - just once each.</b></p>

<p>Respuesta:</p>

```sql
select distinct(continent) from world;
```

<img src="img/apt5/ej2.png">

<hr class="line">

<h6>GDP of Africa</h6>

<p><b>3. Give the total GDP of Africa.</b></p>

<p>Respuesta:</p>

```sql
select sum(gdp) from world where continent='africa';
```

<img src="img/apt5/ej3.png">

<hr class="line">

<h6>Count the big countries</h6>

<p><b>4. How many countries have an area of at least 1000000?</b></p>

<p>Respuesta:</p>

```sql
select count(name) from world where area>=1000000;
```

<img src="img/apt5/ej4.png">

<hr class="line">

<h6>Baltic states population</h6>

<p><b>5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')?</b></p>

<p>Respuesta:</p>

```sql
select sum(population) from world where name in('estonia', 'latvia', 'lithuania');
```

<img src="img/apt5/ej5.png">

<hr class="line">

<h6>Counting the countries of each continent</h6>

<p><b>6. For each continent, show the continent and number of countries.</b></p>

<p>Respuesta:</p>

```sql
select continent, count(name) from world group by continent;
```

<img src="img/apt5/ej6.png">

<hr class="line">

<h6>Counting big countries in each continent</h6>

<p><b>7. For each continent show the continent and number of countries with populations of at least 10 million.</b></p>

<p>Respuesta:</p>

```sql
select continent, count(name) from world where population>=10000000 group by continent;
```

<img src="img/apt5/ej7.png">

<hr class="line">

<h6>Counting big continents</h6>

<p><b>8. List the continents that have a total population of at least 100 million.</b></p>

<p>Respuesta:</p>

```sql
select continent from world group by continent having sum(population)>100000000;
```

<img src="img/apt5/ej8.png">

<hr class="line">

<h5>SUM and COUNT - quiz</h5>

<hr class="line">

<p><b>1. Select the statement that shows the sum of population of all countries in 'Europe'.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej1.png">

<p><b>2. Select the statement that shows the number of countries with population smaller than 150000.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej2.png">

<p><b>3. Select the list of core SQL aggregate functions.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej3.png">

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select region, sum(area) from bbc where sum(area)>15000000 group by region;
```

<p>Respuesta:</p>

<img src="img/quiz5/ej4.png">

<p><b>5. Select the statement that shows the average population of 'Poland', 'Germany' and 'Denmark'.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej5.png">

<p><b>6. Select the statement that shows the medium population density of each region.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej6.png">

<p><b>7. Select the statement that shows the name and population density of the country with the largest population.</b></p>

<p>Respuesta:</p>

<img src="img/quiz5/ej7.png">

<p><b>8. Pick the result that would be obtained from the following code:</b></p>

```sql
select region, sum(area) from bbc group by region having sum(area)<=20000000;
```

<p>Respuesta:</p>

<img src="img/quiz5/ej7.png">

<hr class="line2">

<h3>JOIN</h3>

<hr class="line">

<p><b>1. The first example shows the goal scored by a player with the last name 'Bender'. The <code class="inline">*</code> says to list all the columns in the table - a shorter way of saying <code class="inline">matchid, teamid, player, gtime</code>.</b></p>

<p><b>Código:</b></p>

```sql
select * from goal where player like '%bender';
```

<p>Corrección:</p>

```sql
select matchid, player from goal where teamid='ger';
```

<img src="img/apt6/ej1.png">

<hr class="line">

<p><b>2. From the previous query you can see that Lars Bender's scored a goal in game 1012. Now we want to know what teams were playing in that match.</b></p>

<p><b>Notice in the that the column <code class="inline">matchid</code> in the <code class="inline">goal</code> table corresponds to the <code class="inline">id</code> column in the <code class="inline">game</code> table. We can look up information about game 1012 by finding that row in the game table.</b></p>

<p><b>Código:</b></p>

```sql
select id,stadium,team1,team from game;
```

<p>Corrección:</p>

```sql
select id,stadium,team1,team2 from game where id=1012;
```

<img src="img/apt6/ej2.png">

<hr class="line">

<p><b>3. You can combine the two steps into a single query with a <code class="inline">JOIN</code>.</b></p>

<p><b>The FROM clause says to merge data from the goal table with that from the game table. The ON says how to figure out which rows in game go with which rows in goal - the matchid from goal must match id from game. (If we wanted to be more clear/specific we could say <code class="inline">ON (game.id=goal.matchid)</code>.
</b></p>

<p><b>The code below shows the player (from the goal) and stadium name (from the game table) for every goal scored.</b></p>

<p><b>Modify it to show the player, teamid, stadium and mdate for every German goal.</b></p>

<p><b>Código:</b></p>

```sql
select player, stadium from game join goal on(id=matchid);
```

<p>Corrección:</p>

```sql
select player, teamid, stadium, mdate from game join goal on(game.id = goal.matchid and goal.teamid='ger');
```

<img src="img/apt6/ej3.png">

<hr class="line">

<p><b>4. Show the team1, team2 and player for every goal scored by a player called Mario <code class="inline">player LIKE 'Mario%'</code>.</b></p>

<p>Respuesta:</p>

```sql
select team1, team2, player from game join goal on(id=matchid and player like 'mario%');
```

<img src="img/apt6/ej4.png">

<hr class="line">

<p><b>5. The table <code class="inline">eteam</code> gives details of every national team including the coach. You can <code class="inline">JOIN</code> <code class="inline">goal</code> to <code class="inline">eteam</code> using the phrase goal <code class="inline">JOIN eteam on teamid=id</code>.</b></p>

<p><b>Show <code class="inline">player</code>, <code class="inline">teamid</code>, <code class="inline">coach</code>, <code class="inline">gtime</code> for all goals scored in the first 10 minutes <code class="inline">gtime<=10</code>.</b></p>

<p><b>Código:</b></p>

```sql
select player, teamid, gtime from goal where gtime<=10;
```

<p>Corrección:</p>

```sql
select player, teamid, coach, gtime from goal join eteam on(teamid=id and gtime<=10);
```

<img src="img/apt6/ej5.png">

<hr class="line">

<p><b>6. To <code class="inline">JOIN</code> <code class="inline">game</code> with <code class="inline">eteam</code> you could use either <code class="inline">game JOIN eteam ON (team1=eteam.id)</code> or <code class="inline">game JOIN eteam ON (team2=eteam.id)</code>.</b></p>

<p><b>Notice that because <code class="inline">id</code> is a column name in both <code class="inline">game</code> and <code class="inline">eteam</code> you must specify <code class="inline">eteam.id</code> instead of just <code class="inline">id</code>.</b></p>

<p><b>List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.</b></p>

<p>Respuesta:</p>

```sql
select mdate, teamname from game join eteam on (team1=eteam.id and coach like '%santos');
```

<img src="img/apt6/ej6.png">

<hr class="line">

<p><b>7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'.</b></p>

<p>Respuesta:</p>

```sql
select player from goal join game on (id=matchid and stadium='national stadium, warsaw');
```

<img src="img/apt6/ej7.png">

<hr class="line">

<p><b>8. The example query shows all goals scored in the Germany-Greece quarterfinal.</b></p>

<p><b>Instead show the name of all players who scored a goal against Germany.</b></p>

<p><b>Código:</b></p>

```sql
select player, gtime from game join goal on matchid=id where(team1='ger' and team2='gre');
```

<p>Corrección:</p>

```sql
select distinct(player) from game join goal on matchid=id where((team1='ger' or team2='ger') and teamid!='ger');
```

<img src="img/apt6/ej8.png">

<hr class="line">

<p><b>9. Show teamname and the total number of goals scored.</b></p>

<p><b>Código:</b></p>

```sql
select teamname, player from eteam join goal on id=teamid order by teamname;
```

<p>Corrección:</p>

```sql
select teamname, count(player) from eteam join goal on id=teamid group by teamname;
```

<img src="img/apt6/ej9.png">

<hr class="line">

<p><b>10. Show the stadium and the number of goals scored in each stadium.</b></p>

<p>Respuesta:</p>

```sql
select stadium, count(player) as goals from game join goal on (id=matchid) group by stadium;
```

<img src="img/apt6/ej10.png">

<hr class="line">

<p><b>11. For every match involving 'POL', show the matchid, date and the number of goals scored.</b></p>

<p><b>Código:</b></p>

```sql
select matchid, mdate, team1, team2, teamid from game join goal on matchid=id where (team1='pol' or team2='pol');
```

<p>Corrección:</p>

```sql
select matchid, mdate, count(player) as goals from game join goal on(matchid=id and(team1='pol' or team2='pol')) group by matchid, mdate;
```

<img src="img/apt6/ej11.png">

<hr class="line">

<p><b>12. For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'.</b></p>

<p>Respuesta:</p>

```sql
select id, mdate, count(player) from game join goal on (id=matchid and (team1 = 'ger' or team2 = 'ger') and teamid='ger') group by id, mdate;
```

<img src="img/apt6/ej12.png">

<hr class="line">

<p><b>13. List every match with the goals scored by each team as shown. This will use "CASE WHEN" which has not been explained in any previous exercises.</b></p>

<p><b>Código:</b></p>

```sql
select mdate, team1, case when teamid=team1 then 1 else 0 end score1 from game join goal on matchid=id;
```

<p>Respuesta:</p>

```sql

```

<img src="img/apt6/ej13.png">

<hr class="line">

<h5>JOIN - quiz</h5>

<hr class="line">

<p><b>1. You want to find the stadium where player 'Dimitris Salpingidis' scored. Select the JOIN condition to use:</b></p>

<p>Respuesta:</p>

<img src="img/quiz6/ej1.png">

<p><b>2. You JOIN the tables goal and eteam in an SQL statement. Indicate the list of column names that may be used in the SELECT line:</b></p>

<p>Respuesta:</p>

<img src="img/quiz6/ej2.png">

<p><b>3. Select the code which shows players, their team and the amount of goals they scored against Greece(GRE).</b></p>

<p>Respuesta:</p>

<img src="img/quiz6/ej3.png">

<p><b>4. Select the result that would be obtained from this code:</b></p>

```sql
select distinct teamid, mdate from goal join game on (matchid=id) where mdate = '9 june 2012';
```

<p>Respuesta:</p>

<img src="img/quiz6/ej4.png">

<p><b>5. Select the code which would show the player and their team for those who have scored against Poland(POL) in National Stadium, Warsaw.</b></p>

<p>Respuesta:</p>

<img src="img/quiz6/ej5.png">

<p><b>6. Select the code which shows the player, their team and the time they scored, for players who have played in Stadion Miejski (Wroclaw) but not against Italy(ITA).</b></p>

<p>Respuesta:</p>

<img src="img/quiz6/ej6.png">

<p><b>7. Select the result that would be obtained from this code:</b></p>

```sql
select teamname, count(*) from eteam join goal on teamid=id group by teamname having count(*)<3;
```

<p>Respuesta:</p>

<img src="img/quiz6/ej7.png">

<hr class="line2">

<h3>More JOIN</h3>

<hr class="line">

<h6>1962 movies</h6>

<p><b>1. List the films where the yr is 1962 [Show id, title].</b></p>

<p>Respuesta:</p>

```sql
select id, title from movie where yr=1962;
```

<img src="img/apt7/ej1.png">

<hr class="line">

<h6>When was Citizen Kane released?</h6>

<p><b>2. Give year of 'Citizen Kane'.</b></p>

<p>Respuesta:</p>

```sql
select yr from movie where title='citizen kane';
```

<img src="img/apt7/ej2.png">

<hr class="line">

<h6>Star Trek movies</h6>

<p><b>3. List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.</b></p>

<p>Respuesta:</p>

```sql
select id, title, yr from movie where title like '%star trek%' order by yr;
```

<img src="img/apt7/ej3.png">

<hr class="line">

<h6>id for actor Glenn Close</h6>

<p><b>4. What id number does the actor 'Glenn Close' have?</b></p>

<p>Respuesta:</p>

```sql
select id from actor where name like 'Glenn Close';
```

<img src="img/apt7/ej4.png">

<hr class="line">

<h6>id for Casablanca</h6>

<p><b>5. What is the id of the film 'Casablanca'.</b></p>

<p>Respuesta:</p>

```sql
select id from movie where title='casablanca';
```

<img src="img/apt7/ej5.png">

<hr class="line">

<h6>Cast list for Casablanca</h6>

<p><b>6. Obtain the cast list for 'Casablanca'. Use movieid=11768, (or whatever value you got from the previous question).</b></p>

<p>Respuesta:</p>

```sql
select name from actor, casting where id=actorid and movieid=(select id from movie where title='casablanca');
```

<img src="img/apt7/ej6.png">

<hr class="line">

<h6>Alien cast list</h6>

<p><b>7. Obtain the cast list for the film 'Alien'.</b></p>

<p>Respuesta:</p>

```sql
select name from actor join casting on(id=actorid and movieid=(select id from movie where title='alien'));
```

<img src="img/apt7/ej7.png">

<hr class="line">

<h6>Harrison Ford movies</h6>

<p><b>8. List the films in which 'Harrison Ford' has appeared.</b></p>

<p>Respuesta:</p>

```sql
select title from movie join casting on(id=movieid and actorid=(select id from actor where name='harrison ford'));
```

<img src="img/apt7/ej8.png">

<hr class="line">

<h6>Harrison Ford as a supporting actor</h6>

<p><b>9. List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role].</b></p>

<p>Respuesta:</p>

```sql
select title from movie join casting on(id=movieid and actorid=(select id from actor where name='harrison ford') and ord!=1);
```

<img src="img/apt7/ej9.png">

<hr class="line">

<h6>Lead actors in 1962 movies</h6>

<p><b>10. List the films together with the leading star for all 1962 films.</b></p>

<p>Respuesta:</p>

```sql
select title, name from movie join casting on (id=movieid) join actor on (actor.id=actorid) where ord=1 and yr=1962;
```

<img src="img/apt7/ej10.png">

<hr class="line">

<h6>Busy years for Rock Hudson</h6>

<p><b>11. Which were the busiest years for 'Rock Hudson', show the year and the number of movies he made each year for any year in which he made more than 2 movies.</b></p>

<p><b>Código:</b></p>

```sql
select yr,count(title) from movie join casting on movie.id=movieid join actor on actorid=actor.id where name='doris day' group by yr having count(title)>1;
```

<p>Respuesta:</p>

```sql

```

<img src="img/apt7/ej11.png">

<hr class="line">

<h6>Lead actor in Julie Andrews movies</h6>

<p><b>12. List the film title and the leading actor for all of the films 'Julie Andrews' played in.</b></p>

<p><b>Código:</b></p>

```sql
select movieid from casting where actorid in (select id from actor where name='julie andrews');
```

<p>Respuesta:</p>

```sql
select title, name from movie join casting x on movie.id=movieid join actor on actor.id=actorid where ord=1 and movieid in(select movieid from casting y join actor on actor.id=actorid where name='julie andrews');
```

<img src="img/apt7/ej12.png">

<hr class="line">

<h6>Actors with 15 leading roles</h6>

<p><b>13. Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.</b></p>

<p>Respuesta:</p>

```sql
select name from actor join casting on actor.id=casting.actorid where casting.ord=1 group by name having count(*)>=15 order by name asc;
```

<img src="img/apt7/ej13.png">

<hr class="line">

<h6>released in the year 1978</h6>

<p><b>14. List the films released in the year 1978 ordered by the number of actors in the cast, then by title.</b></p>

<p>Respuesta:</p>

```sql
select title, count(actorid) as cast from movie join casting on id=movieid where yr=1978 group by title order by cast desc, title;
```

<img src="img/apt7/ej14.png">

<hr class="line">

<h6>with 'Art Garfunkel'</h6>

<p><b>15. List all the people who have worked with 'Art Garfunkel'.</b></p>

<p>Respuesta:</p>

```sql
select distinct name from actor join casting on id=actorid where movieid in(select movieid from casting join actor on(actorid=id and name='art garfunkel')) and name!='art garfunkel' group by name;
```

<img src="img/apt7/ej15.png">

<hr class="line">

<h5>More JOIN - quiz</h5>

<hr class="line">

<p><b>1. Select the statement which lists the unfortunate directors of the movies which have caused financial loses (gross < budget).</b></p>

<p>Respuesta:</p>

<img src="img/quiz7/ej1.png">

<p><b>2. Select the correct example of JOINing three tables.</b></p>

<p>Respuesta:</p>

<img src="img/quiz7/ej2.png">

<p><b>3. Select the statement that shows the list of actors called 'John' by order of number of movies in which they acted.</b></p>

<p>Respuesta:</p>

<img src="img/quiz7/ej3.png">

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select title from movie join casting on(movieid=movie.id) join actor on(actorid=actor.id) where name='paul hogan' and ord=1;
```

<p>Respuesta:</p>

<img src="img/quiz7/ej4.png">

<p><b>5. Select the statement that lists all the actors that starred in movies directed by Ridley Scott who has id 351.</b></p>

<p>Respuesta:</p>

<img src="img/quiz7/ej5.png">

<p><b>6. There are two sensible ways to connect movie and actor. They are:</b></p>

<p>Respuesta:</p>

<img src="img/quiz7/ej6.png">

<p><b>7. Select the result that would be obtained from the following code:</b></p>

```sql
select title, yr from movie, casting, actor  where name='robert de niro' and movieid=movie.id and actorid=actor.id and ord=3;
```

<p>Respuesta:</p>

<img src="img/quiz7/ej7.png">

<hr class="line2">

<h3>Using NULL</h3>

<hr class="line">

<h6>NULL, INNER JOIN, LEFT JOIN, RIGHT JOIN</h6>

<p><b>1. List the teachers who have NULL for their department.</b></p>

<p>Respuesta:</p>

```sql
select name from teacher where dept is null;
```

<img src="img/apt8/ej1.png">

<hr class="line">

<p><b>2. Note the INNER JOIN misses the teachers with no department and the departments with no teacher.</b></p>

<p>Respuesta:</p>

```sql
select teacher.name, dept.name from teacher inner join dept on(teacher.dept=dept.id);
```

<img src="img/apt8/ej2.png">

<hr class="line">

<p><b>3. Use a different JOIN so that all teachers are listed.</b></p>

<p>Respuesta:</p>

```sql
select teacher.name, dept.name from teacher left join dept on(teacher.dept=dept.id);
```

<img src="img/apt8/ej3.png">

<hr class="line">

<p><b>4. Use a different JOIN so that all departments are listed.</b></p>

<p>Respuesta:</p>

```sql
select teacher.name, dept.name from teacher right join dept on(teacher.dept=dept.id);
```

<img src="img/apt8/ej4.png">

<hr class="line">

<p><b>5. Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'.</b></p>

<p>Respuesta:</p>

```sql
select name, coalesce(mobile, '07986 444 2266') from teacher;
```

<img src="img/apt8/ej5.png">

<hr class="line">

<p><b>6. Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. Use the string 'None' where there is no department.</b></p>

<p>Respuesta:</p>

```sql
select coalesce(teacher.name, 'none'), coalesce(dept.name, 'none') from teacher left join dept on(teacher.dept=dept.id);
```

<img src="img/apt8/ej6.png">

<hr class="line">

<p><b>7. Use COUNT to show the number of teachers and the number of mobile phones.</b></p>

<p>Respuesta:</p>

```sql
select count(name), count(mobile) from teacher;
```

<img src="img/apt8/ej7.png">

<hr class="line">

<p><b>8. Use COUNT and GROUP BY dept.name to show each department and the number of staff. Use a RIGHT JOIN to ensure that the Engineering department is listed.</b></p>

<p>Respuesta:</p>

```sql
select dept.name, count(teacher.name) from teacher right join dept on(teacher.dept=dept.id) group by dept.name;
```

<img src="img/apt8/ej8.png">

<hr class="line">

<p><b>9. Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.</b></p>

<p>Respuesta:</p>

```sql
select teacher.name, case when dept.id=1 then 'sci' when dept.id=2 then 'sci' else 'art' end from teacher left join dept on(teacher.dept=dept.id);
```

<img src="img/apt8/ej9.png">

<hr class="line">

<p><b>10. Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2, show 'Art' if the teacher's dept is 3 and 'None' otherwise.</b></p>

<p>Respuesta:</p>

```sql
select teacher.name, case when dept.id=1 then 'sci' when dept.id=2 then 'sci' when dept.id=3 then 'art' else 'none' end from teacher left join dept on(dept.id=teacher.dept);
```

<img src="img/apt8/ej10.png">

<hr class="line">

<h5>Using NULL - quiz</h5>

<hr class="line">

<p><b>1. Select the code which uses an outer join correctly.</b></p>

<p>Respuesta:</p>

<img src="img/quiz8/ej1.png">

<p><b>2. Select the correct statement that shows the name of department which employs Cutflower.</b></p>

<p>Respuesta:</p>

<img src="img/quiz8/ej2.png">

<p><b>3. Select out of following the code which uses a JOIN to show a list of all the departments and number of employed teachers.</b></p>

<p>Respuesta:</p>

<img src="img/quiz8/ej3.png">

<p><b>4. Using <code class="inline">SELECT name, dept, COALESCE(dept, 0) AS result FROM teacher</code> on <code class="inline">teacher</code> table will:</b></p>

<p>Respuesta:</p>

<img src="img/quiz8/ej4.png">

<p><b>5. Query:</b></p>

```sql
select name, case when phone=2752 then 'two' when phone=2753 then 'three' when phone=2754 then 'four' end as digit from teacher;
```

<p>Respuesta:</p>

<img src="img/quiz8/ej5.png">

<p><b>6. Select the result that would be obtained from the following code:</b></p>

```sql
select name, case when dept in(1) then 'computing' else 'other' end from teacher;
```

<p>Respuesta:</p>

<img src="img/quiz8/ej6.png">

<hr class="line2">

<h3>Self JOIN</h3>

<hr class="line">

<p><b>1. How many stops are in the database.</b></p>

<p>Respuesta:</p>

```sql
select count(*) from stops;
```

<img src="img/apt9/ej1.png">

<hr class="line">

<p><b>2. Find the id value for the stop 'Craiglockhart'.</b></p>

<p>Respuesta:</p>

```sql
select id from stops where name='craiglockhart';
```

<img src="img/apt9/ej2.png">

<hr class="line">

<p><b>3. Give the id and the name for the stops on the '4' 'LRT' service.</b></p>

<p>Respuesta:</p>

```sql
-- este apartado no me funcionaba correctamente. las consultas no se ejecutaban
```

<img src="img/apt9/ej3.png">

<hr class="line">

<p><b>4. The query shown gives the number of routes that visit either London Road (149) or Craiglockhart (53). Run the query and notice the two services that link these stops have a count of 2. Add a HAVING clause to restrict the output to these two routes.</b></p>

<p><b>Código:</b></p>

```sql
select company, num, count(*) from route where stop=149 or stop=53 group by company, num;
```

<p>Corrección:</p>

```sql

```

<img src="img/apt9/ej4.png">

<hr class="line">

<p><b>5. Execute the self join shown and observe that b.stop gives all the places you can get to from Craiglockhart, without changing routes. Change the query so that it shows the services from Craiglockhart to London Road.</b></p>

<p><b>Código:</b></p>

```sql
select a.company, a.num, a.stop, b.stop from route a join route b on(a.company=b.company and a.num=b.num) where a.stop=53;
```

<p>Corrección:</p>

```sql
select a.company, a.num, a.stop, b.stop from route a join route b on(a.company=b.company and a.num=b.num) where a.stop=53 and b.stop=149;
```

<img src="img/apt9/ej5.png">

<hr class="line">

<p><b>6. The query shown is similar to the previous one, however by joining two copies of the stops table we can refer to stops by name rather than by number. Change the query so that the services between 'Craiglockhart' and 'London Road' are shown. If you are tired of these places try 'Fairmilehead' against 'Tollcross'.</b></p>

<p><b>Código:</b></p>

```sql
select a.company, a.num, stopa.name, stopb.name from route a join route b on(a.company=b.company and a.num=b.num) join stops stopa on (a.stop=stopa.id) join stops stopb on(b.stop=stopb.id) where stopa.name='craiglockhart';
```

<p>Corrección:</p>

```sql
select a.company, a.num, stopa.name, stopb.name from route a join route b on(a.company=b.company and a.num=b.num) join stops stopa on(a.stop=stopa.id) join stops stopb on(b.stop=stopb.id) where stopa.name='craiglockhart'and stopb.name = 'london road';
```

<img src="img/apt9/ej6.png">

<hr class="line">

<p><b>7. Give a list of all the services which connect stops 115 and 137 ('Haymarket' and 'Leith').</b></p>

<p>Respuesta:</p>

```sql
select distinct a.company, a.num from route a join route b on(a.company =b.company and a.num=b.num) join stops stopa on (a.stop=stopa.id) join stops stopb on(b.stop=stopb.id) where stopa.name='haymarket' and stopb.name='leith';
```

<img src="img/apt9/ej7.png">

<hr class="line">

<p><b>8. Give a list of the services which connect the stops 'Craiglockhart' and 'Tollcross'.</b></p>

<p>Respuesta:</p>

```sql
select distinct a.company, a.num from route a join route b on(a.num=b.num and a.company=b.company) join stops stopa on(a.stop=stopa.id) join stops stopb on(b.stop=stopb.id) where stopa.name='craiglockhart' and stopb.name='tollcross';
```

<img src="img/apt9/ej8.png">

<hr class="line">

<p><b>9. Give a distinct list of the stops which may be reached from 'Craiglockhart' by taking one bus, including 'Craiglockhart' itself, offered by the LRT company. Include the company and bus no. of the relevant services.</b></p>

<p>Respuesta:</p>

```sql
select stopa.name, a.company, a.num from route a join route b on(a.num=b.num and a.company=b.company) join stops stopa on(a.stop=stopa.id) join stops stopb on(b.stop=stopb.id) where stopb.name='craiglockhart';
```

<img src="img/apt9/ej9.png">

<hr class="line">

<p><b>10. Find the routes involving two buses that can go from Craiglockhart to Lochend. Show the bus no. and company for the first bus, the name of the stop for the transfer, and the bus no. and company for the second bus.</b></p>

<p>Respuesta:</p>

```sql

```

<img src="img/apt9/ej10.png">

<hr class="line">

<h5>Self JOIN - quiz</h5>

<hr class="line">

<p><b>1. Select the code that would show it is possible to get from Craiglockhart to Haymarket.</b></p>

<p>Respuesta:</p>

<img src="img/quiz9/ej1.png">

<p><b>2. Select the code that shows the stops that are on route.num '2A' which can be reached with one bus from Haymarket?</b></p>

<p>Respuesta:</p>

<img src="img/quiz9/ej2.png">

<p><b>3. Select the code that shows the services available from Tollcross?</b></p>

<p>Respuesta:</p>

<img src="img/quiz9/ej3.png">