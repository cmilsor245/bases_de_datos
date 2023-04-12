<style>
  h1, h4{
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

  #ex{
    border: none;
  }
</style>

<h1>POKÉMON</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p>Para empezar, es necesario crear un usuario personal con el que se va a trabajar. Abro el SQL Plus.</p>

<img src="img/1.png">

<p>Una vez dentro del terminal, ejecuto la siguiente línea para entrar como el usuario "sysdba":</p>

```bash
/as sysdba
```

<img src="img/2.png">

<p>Modifico la sesión para que me permita trabajar de la forma correcta.</p>

```bash
alter session set "_oracle_script"=true;
```

<img src="img/3.png">

<p>Comienzo creando el usuario nuevo con contraseña "root".</p>

```bash
create user usuario_christian identified by "root"
```

<img src="img/4.png">

<p>Ejecuto las siguientes instrucciones por separado para terminar la configuración del usuario:</p>

```bash
default tablespace "USERS"
```

```bash
temporary tablespace "TEMP";
```

<img src="img/5.png">

<p>Lo siguiente es darle privilegios/permisos al usuario nuevo.</p>

```bash
alter user usuario_christian quota unlimited on USERS;
```
<img src="img/6.png">

<p>Modifico la accesibilidad del usuario.</p>

```bash
grant create session to usuario_christian;
```

<img src="img/7.png">

<p>Establecemos algunas configuraciones adicionales:</p>

```bash
grant "RESOURCE" to usuario_christian;
```

<img src="img/8.png">

```bash
alter user usuario_christian default role "RESOURCE";
```

<img src="img/9.png">

<p>Una vez creado y configurado el usuario, genero la conexión en el entorno gráfico.</p>

<img src="img/10.png">