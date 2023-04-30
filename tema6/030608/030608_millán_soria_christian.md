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

<h1>JARDINERÍA</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<h4>1º DAW TARDE</h4>

<hr>

<p><b>1. Mostrar el nombre de un cliente dado su código.</b></p>

```sql
drop procedure if exists nombre_cliente;
delimiter //
create procedure nombre_cliente(codigo int)
begin
select nombre_cliente, codigo_cliente from cliente where codigo_cliente=codigo;
end//
delimiter ;
call nombre_cliente(1);
```

<img src="img/1.png">

<p><b>2. Mostrar el precioVenta y la gama de un producto dado su código.</b></p>

```sql
drop procedure if exists precio_venta;
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>3. Mostrar toda la información de un pedido dado su código (fechaEsperada, fechaEntrega, fechaPedido, estado y comentarios).</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>4. Realizar una función que me devuelva la suma de pagos que ha realizado un cliente. Pasa el código por parámetro.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>5. Realizar un método o procedimiento que muestre el total en euros de un pedido. Pasa el código por parámetro.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>6. Mostrar el nombre de un cliente dado su código. Controla en caso de que no se encuentre, mostrando un mensaje por ejemplo.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>7. Realizar una función que me devuelva la suma de pagos que ha realizado un cliente. Pasa el código por parámetro. Controla en caso de que no se encuentre, en ese caso devuelve un -1.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>8. Realizar un método o procedimiento que muestre el total en euros de un pedido. Pasa el código por parámetro. Controla en caso de que no se encuentre, devolviendo un 0. Pasa otro parámetro como límite, si lo supera, se lanza una excepción propia y devuelve un 0.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```

<p><b>9. Realiza un resumen con informe de las estadísticas de los pedidos realizados por meses y por años.</b></p>

```sql
drop procedure if exists 
delimiter //
create procedure ()
begin

end//
delimiter ;
call ();
```