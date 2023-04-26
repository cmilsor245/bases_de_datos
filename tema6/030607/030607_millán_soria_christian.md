<style>
  h1, h2, h3, h4, h5, h6{
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

<h1>PROCEDIMIENTOS CON EXPRESIONES REPETITIVAS</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p><b>1.</b></p>

<p><b>a. Procedimiento "numeros" que muestre los 20 primeros números enteros.</b></p>

```sql
drop procedure if exists numeros;
DELIMITER //
create procedure numeros()
begin
declare i integer; -- Opción alternativa: DECLARE i INTEGER DEFAULT 1;
set i=1;
while i<=20 DO
select i;
set i=i+1;
end while;
end//
DELIMITER ;
```

<p>Y después...</p>

```sql
call numeros();
```

