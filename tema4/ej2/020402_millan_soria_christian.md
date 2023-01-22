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
select population from world where name = 'France';
```

<p>Corrección:</p>

```sql
select population from world where name='Germany';
```

<img src="img/apt1/ej1.png">

<hr class="line">

<h6>Scandinavia</h6>

<p><b>2. Checking a list with the word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.</b></p>

<p><b>Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.</b></p>

<p><b>Código:</b></p>

```sql
select name, population from world where name in ('Brazil', 'Russia', 'India', 'China');
```

<p>Corrección:</p>

```sql
select name, population from world where name in('Sweden', 'Norway', 'Denmark');
```

<img src="img/apt1/ej2.png">

<hr class="line">

<h6>Just the right size</h6>

<p><b>3. Which countries are not too small and not too big? <code class="inline">between</code> allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km.</b></p>

<p><b>Modify it to show the country and the area for countries with an area between 200,000 and 250,000.</b></p>

<p><b>Código:</b></p>

```sql
select name, area from world where area between 250000 and 300000;
```

<p>Corrección:</p>

```sql
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

<p><b>2. Pick the result you would obtain from this code:</b></p>

```sql
select name, population from world where name like "Al%"
```

<p>Respuesta:</p>

<img src="img/quiz1/ej2.png">

<p><b>3. Select the code which shows the countries that end in A or L.</b></p>

<p><b>Respuesta:</b></p>

<img src="img/quiz1/ej3.png">

<p><b>4. Pick the result from the query:</b></p>

```sql
select name, length(name) from world where length(name)=5 and region='Europe';
```

<p><b>Respuesta:</b></p>

<img src="img/quiz1/ej4.png">

<p><b>5. Here are the first few rows of the world table:</b></p>

<img class="exe" src="img/quiz1/table5.png">

<p><b>Pick the result you would obtain from this code:</b></p>

```sql
select name, area*2 from world where population=64000;
```

<p>Respuesta:</p>

<img src="img/quiz1/ej5.png">

<p><b>6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000.</b></p>

<p>Respuesta:</p>

<img src="img/quiz1/ej6.png">

<p><b>7. Select the code that shows the population density of Chine, Australia, Nigeria and France.</b></p>

<p>Respuesta:</p>

<img src="img/quiz1/ej7.png">

<hr class="line2">

<h3>SELECT from world</h3>

<hr class="line">

<h6>Introduction</h6>

<p><b>1. Observe the result of running this SQL command to show the name, continent and population of all countries.</b></p>

<p><b>Código:</b></p>

```sql
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
select name from world where population=64105700;
```

<p>Corrección:</p>

```sql
select name from world where population>=200000000;
```

<img src="img/apt2/ej2.png">

<hr class="line">

<h6>Per capita GDP</h6>

<p><b>3. Give the <code class="inline">name</code> and the per capita GDP for those countries with a <code class="inline">population</code> of at least 200 million.</b></p>

<p>Respuesta:</p>

```sql
select name, gdp/population from world where population>=200000000;
```

<img src="img/apt2/ej3.png">

<hr class="line">

<h6>South America In millions</h6>

<p><b>4. Show the <code class="inline">name</code> and <code class="inline">population</code> in millions for the countries of the <code class="inline">continent</code> 'South America'. Divide the population by 1000000 to get population in millions.</b></p>

<p>Respuesta:</p>

```sql
select name, population/1000000 from world where continent='South America';
```

<img src="img/apt2/ej4.png">

<hr class="line">

<h6>France, Germany, Italy</h6>

<p><b>5. Show the <code class="inline">name</code> and <code class="inline">population</code> for France, Germany, Italy.</b></p>

<p>Respuesta:</p>

```sql
select name, population from world where name in('France', 'Germany', 'Italy');
```

<img src="img/apt2/ej5.png">

<hr class="line">

<h6>United</h6>

<p><b>6. Show the countries which have a <code class="inline">name</code> that includes the word 'United'.</b></p>

<p>Respuesta:</p>

```sql
select name from world where name like '%United%';
```

<img src="img/apt2/ej6.png">

<hr class="line">

<h6>Two ways to be big</h6>

<p><b>7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.</b></p>

<p><b>Show the countries that are big by area or big by population. Show name, population and area.</b></p>

<p>Respuesta:</p>

```sql
select name, population, area from world where area>3000000 or population>250000000;
```

<img src="img/apt2/ej7.png">

<hr class="line">

<h6>One or the other (but not both)</h6>

<p><b>8. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.</b></p>

<p>Respuesta:</p>

```sql
select name, population, area from world where (area>3000000 and population<250000000) or (area<3000000 and population>250000000);
```
<img src="img/apt2/ej8.png">

<hr class="line">

<h6>Rounding</h6>

<p><b>9. Show the <code class="inline">name</code> and <code class="inline">population</code> in millions and the GDP in billions for the countries of the <code class="inline">continent</code> 'South America'. Use the ROUND function to show the values to two decimal places.</b></p>

<p><b>For South America show population in millions and GDP in billions both to 2 decimal places.</b></p>

<p>Respuesta:</p>

```sql
select name, round(population/1000000, 2), round(gdp/1000000000, 2) from world where continent='South America';
```

<img src="img/apt2/ej9.png">

<hr class="line">

<h6>Trillion dollar economies</h6>

<p><b>10. Show the <code class="inline">name</code> and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.</b></p>

<p><b>Show per-capita GDP for the trillion dollar countries to the nearest $1000.</b></p>

<p>Respuesta:</p>

```sql
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

select name, len(name), capital, len(capital) from world where len(name)=len(capital);


```

<img src="img/apt2/ej11.png">

<hr class="line">

<h6>Matching name and capital</h6>

<p><b>12. The capital of Sweden is Stockholm. Both words start with the letter 'S'.</b></p>

<p><b>Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.</b></p>

<p>Respuesta:</p>

```sql
select name, capital from world where left(name, 1)=left(capital, 1) and name<>capital;
```

<img src="img/apt2/ej12.png">

<hr class="line">

<h6>All the vowels</h6>

<p><b>13. Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.</b></p>

<p><b>Find the country that has all the vowels and no spaces in its name.</b></p>

<p>Respuesta:</p>

```sql
select name from world where name not like '% %' and name like '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%';
```

<img src="img/apt2/ej13.png">

<hr class="line">

<h5>SELECT from world - quiz</h5>

<hr class="line">

<p><b>1. Select the code which gives the name of countries beginning with U.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej1.png">

<p><b>2. Select the code which shows just the population of United Kingdom.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej2.png">

<p><b>3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France:</b></p>

```sql
select continent from world where 'name'='France';
```

<p>Respuesta:</p>

<img src="img/quiz2/ej3.png">

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select name, population/10 from world where population<10000;
```
<img src="img/quiz2/ej4.png">

<p><b>5. Select the code which would reveal the name and population of countries in Europe and Asia.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej5.png">

<p><b>6. Select the code which would give two rows.</b></p>

<p>Respuesta:</p>

<img src="img/quiz2/ej6.png">

<p><b>7. Select the result that would be obtained from this code:</b></p>

```sql
select name from world where continent='South America' and population>40000000;
```

<p>Respuesta:</p>

<img src="img/quiz2/ej7.png">

<hr class="line2">

<h3>SELECT from nobel</h3>

<hr class="line">

<h6>Winners from 1950</h6>

<p><b>1. Change the query shown so that it displays Nobel prizes for 1950.</b></p>

<p><b>Código:</b></p>

```sql
select yr, subject, winner from nobel where yr=1960;
```

<p>Corrección:</p>

```sql
select yr, subject, winner from nobel where yr=1950;
```

<img src="img/apt3/ej1.png">

<hr class="line">

<h6>1962 Literature</h6>

<p><b>2. Show who won the 1962 prize for literature.</b></p>

<p><b>Código:</b></p>

```sql
select winner from nobel where yr=1960 and subject='physics';
```

<p>Corrección:</p>

```sql
select winner from nobel where yr=1962 and subject='literature';
```

<img src="img/apt3/ej2.png">

<hr class="line">

<h6>Albert Einstein</h6>

<p><b>3. Show the year and subject that won 'Albert Einstein' his prize.</b></p>

<p>Respuesta:</p>

```sql
select yr, subject from nobel where winner like 'Albert Einstein';
```

<img src="img/apt3/ej3.png">

<hr class="line">

<h6>Recent Peace Prizes</h6>

<p><b>4. Give the name of the 'peace' winners since the year 2000, including 2000.</b></p>

<p>Respuesta:</p>

```sql
select winner from nobel where subject like 'peace' and yr>=2000;
```

<img src="img/apt3/ej4.png">

<hr class="line">

<h6>Literature in the 1980's</h6>

<p><b>5. Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where subject like 'literature' and yr>=1980 and yr<=1989;
```

<img src="img/apt3/ej5.png">

<hr class="line">

<h6>Only Presidents</h6>

<p><b>6. Show all details of the presidential winners: Theodore Roosevelt, Thomas Woodrow Wilson, Jimmy Carter and Barack Obama.</b></p>

<p><b>Código:</b></p>

```sql
select * from nobel where yr=1970 and subject in('cookery', 'chemistry', 'literature');
```

<p>Corrección:</p>

```sql
-- el nombre completo de WoWoodrow Wilson no funciona, hay que quitar Thomas

select * from nobel where winner in('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');
```

<img src="img/apt3/ej6.png">

<hr class="line">

<h6>John</h6>

<p><b>7. Show the winners with first name John.</b></p>

<p>Respuesta:</p>

```sql
select winner from nobel where winner like 'John%';
```

<img src="img/apt3/ej7.png">

<hr class="line">

<h6>Chemistry and Physics from different years</h6>

<p><b>8. Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where(subject like 'physics' and yr=1980) or (subject like 'chemistry' and yr=1984);
```

<img src="img/apt3/ej8.png">

<hr class="line">

<h6>Exclude Chemists and Medics</h6>

<p><b>9. Show the year, subject, and name of winners for 1980 excluding chemistry and medicine.</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where subject not in('chemistry', 'medicine') and yr=1980;
```

<img src="img/apt3/ej9.png">

<hr class="line">

<h6>Early Medicine, Late Literature</h6>

<p><b>10. Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004).</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where (subject like 'medicine' and yr<1910) or (subject like 'literature' and yr>=2004);
```

<img src="img/apt3/ej10.png">

<hr class="line">

<h6>Umlaut</h6>

<p><b>11. Find all details of the prize won by Peter Grünberg.</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where winner like 'Peter Grünberg';
```

<img src="img/apt3/ej11.png">

<hr class="line">

<h6>Apostrophe</h6>

<p><b>12. Find all details of the prize won by Eugene O'Neill.</b></p>

<p>Respuesta:</p>

```sql
select * from nobel where winner like 'Eugene O''Neill';
```

<img src="img/apt3/ej12.png">

<hr class="line">

<h6>Knights of the realm</h6>

<p><b>13. List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.</b></p>

<p>Respuesta:</p>

```sql
select winner, yr, subject from nobel where winner like 'sir%' order by yr desc, winner;
```

<img src="img/apt3/ej13.png">

<hr class="line">

<h6>Chemistry and Physics last</h6>

<p><b>14. The expression subject IN ('chemistry','physics') can be used as a value - it will be 0 or 1.</b></p>

<p><b>Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.</b></p>

<p><b>Código:</b></p>

```sql
select winner, subject, subject in ('physics','chemistry') from nobel where yr=1984 order by subject,winner;
```

<p>Corrección:</p>

```sql
select winner, subject from nobel where yr=1984 order by subject in('physics', 'chemistry'), subject, winner;
```

<img src="img/apt3/ej14.png">

<hr class="line">

<h5>SELECT from nobel - quiz</h5>

<hr class="line">

<p><b>1. Pick the code which shows the name of winner's names beginning with C and ending in n.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej1.png">

<p><b>2. Select the code that shows how many Chemistry awards were given between 1950 and 1960.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej2.png">

<p><b>3. Pick the code that shows the amount of years where no Medicine awards were given.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej3.png">

<p><b>4. Select the result that would be obtained from the following code:</b></p>

```sql
select subject, winner from nobel where winner like 'sir%' and yr like '196%';
```

<p>Respuesta:</p>

<img src="img/quiz3/ej4.png">

<p><b>5. Select the code which would show the year when neither a Physics or Chemistry award was given.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej5.png">

<p><b>6. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was.</b></p>

<p>Respuesta:</p>

<img src="img/quiz3/ej6.png">

<p><b>7. Pick the result that would be obtained from the following code:</b></p>

```sql
select subject, count(subject) from nobel where yr ='1960' group by subject;
```

<p>Respuesta:</p>

<img src="img/quiz3/ej7.png">

<hr class="line2">

<h3>SELECT in SELECT</h3>

<hr class="line">

<h6>Bigger than Russia</h6>

<p><b>1. List each country name where the population is larger than that of 'Russia'.</b></p>

<p><b>Código:</b></p>

```sql
select name from world where population>(select population from world where name='romania');
```

<p>Corrección:</p>

```sql
select name from world where population>(select population from world where name='russia');
```

<img src="img/apt4/ej1.png">

<hr class="line">

<h6>Richer than UK</h6>

<p><b>2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.</b></p>

<p>Respuesta:</p>

```sql
select name from world where gdp/population>(select gdp/population from world where name='united kingdom') and continent='europe';
```

<img src="img/apt4/ej2.png">

<hr class="line">

<h6>Neighbours of Argentina and Australia</h6>

<p><b>3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.</b></p>

<p>Respuesta:</p>

```sql
select name, continent from world where continent in(select continent from world where name in('argentina', 'australia')) order by name;
```

<img src="img/apt4/ej3.png">

<hr class="line">

<h6>Between Canada and Poland</h6>

<p><b>4. Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.</b></p>

<p>Respuesta:</p>

```sql
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