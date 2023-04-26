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
delimiter //
create procedure numeros()
begin
declare i int default 1;
while i<=20 do
select i;
set i=i+1;
end while;
end//
delimiter ;
call numeros();
```

<img src="img/1.png">

<p><b>b. Realiza un procedimiento "numeros" que muestre los 20 primeros números enteros pero con la opción "repeat".</b></p>

```sql
drop procedure if exists numeros;
delimiter //
create procedure numeros()
begin
declare i int default 1;
repeat
select i;
set i=i+1;
until i>20 end repeat;
end//
delimiter ;
call numeros();
```

<img src="img/2.png">