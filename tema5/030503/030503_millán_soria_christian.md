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

<img src="img/5.png">

<p><b>c. Revisa que no tienes tablas desde ese perfil.</b></p>

<img src="img/6.png">

<p><b>d. Cierra la conexión que tienes abierta con el SYS.</b></p>

<p>No tengo ninguna conexión abierta con el SYS.</p>

<p><b>e. Importa los archivos CSV, necesarios para la práctica ("municipios", "centros", "provincias").</b></p>

<img src="img/7.png">

<p>*Establezco que el delimitador en los 3 archivos es ";".</p>

```sql
alter table muni rename to pueblo_cms;
```

<img src="img/8.png">

<p><b>2. Nuestro centro no se encuentra en el listado, ya que es el curso pasado, añádelo.</b></p>

<p><b>Datos:</b></p>

<li><b>Curso 22</b></li>

<li><b>Código: 29020231</b></li>

<li><b>Denominación: Centro Público Integrado de Formación Profesional</b></li>

<li><b>Especifica: Nuevo (desglose IES Campanillas)</b></li>

<li><b>Tipo: Público</b></li>

<li><b>Cod. municipio: 29067</b></li>

<li><b>Tlf. y email: 911 22 33 44 y nuevocampanillas@gmail.com</b></li>

<li><b>Dirección: C. Frederik Terman, 3, 29590, Málaga</b></li>

