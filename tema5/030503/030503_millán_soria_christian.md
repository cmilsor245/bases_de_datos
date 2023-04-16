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

<h1>REPASO EXAMEN</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p><b>1. Creación del entorno de trabajo.</b></p>

<p><b>a. Crea un nuevo usuario.</b></p>

```bash
/as sysdba
```

<img src="img/1.png">

```bash
create user repaso_cms identified by "root"
```

```bash
default tablespace "USERS"
temporary tablespace "TEMP";
```

<img src="img/2.png">

```bash
alter user repaso_cms quota unlimited on users;
grant create session to repaso_cms;
grant "RESOURCE" to repaso_cms;
alter user usuario_christian default role "RESOURCE";
```

<img src="img/3.png">

```bash
grant create view to repaso_cms;
```

<img src="img/4.png">

<p><b>b. Crea una conexión a la base de datos con nombre "cn_< usuario >".</b></p>

