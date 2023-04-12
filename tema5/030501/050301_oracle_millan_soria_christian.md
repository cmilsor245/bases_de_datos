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

<h1>INSTALACIÓN DE ORACLE</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p>Lo primero que debemos hacer es visitar la <a href="https://www.oracle.com/es/database/technologies/xe-downloads.html">página web de descarga</a>. Nos encontramos distintos archivos disponibles, en mi caso elijo el de Windows.</p>

<img src="img/1.png">

<p>Una vez descargado, descomprimimos el archivo.</p>

<img src="img/2.png">

<p>Entre otros archivos, vemos un ".exe". Lo ejecutamos.</p>

<img src="img/3.png">

<p>Esto abre el instalador de Oracle.</p>

<img src="img/4.png">

<p>Avanzamos unos pasos aceptando la licencia del software y estableciendo la ubicación de instalación del mismo (dejamos la ubicación predeterminada) y añadimos una contraseña ("root") para la base de datos.</p>

<img src="img/5.png">

<p>Hacemos clic en "Instalar".</p>

<p>El proceso puede tardar un poco. Al terminar aparece el último aviso:</p>

<img src="img/6.png">

<p>Una vez instalado, podemos visitar la url "<a href="https://localhost:5500/em">https://localhost:5500/em</a>" para acceder a Oracle.</p>

<img src="img/7.png">

<p>Para iniciar sesión la primera vez se puede hacer con el usuario "system" y la contraseña que establecimos anteriormente.</p>

<img src="img/8.png">

<p>Lo siguiente es instalar el SQL Developer desde <a href="https://www.oracle.com/database/sqldeveloper/technologies/download/">este enlace</a>.</p>

<p>Se descarga el segundo archivo, al menos en mi caso, ya que ya tengo instalado JDK.</p>

<img src="img/9.png">

<p>Nos redirige al formulario de inicio de sesión con la cuentas de Oracle. En mi caso, debo crear una nueva.</p>

<img src="img/10.png">

<p>Relleno los datos y confirmo el correo electrónico.</p>

<img src="img/11.png">

<p>Ahora sí, volvemos al <a href="https://www.oracle.com/database/sqldeveloper/technologies/download/">enlace</a> y volvemos a darle al mismo archivo, solo que esta vez iniciamos sesión y no creamos una cuenta.</p>

<img src="img/12.png">

<p>Volvemos a descomprimir el nuevo archivo:</p>

<img src="img/13.png">

<p>Ejecutamos el archivo "sqldeveloper.exe".</p>

<img src="img/14.png">

<p>Se nos abre un cuadro donde debemos especificar la ruta de instalación de nuestro JDK.</p>

<img src="img/15.png">

<p>Comienza la instalación:</p>

<img src="img/16.png">

<p>Una vez termina podemos entrar al entorno gráfico.</p>

<img src="img/17.png">

<p>Creamos una nueva conexión.</p>

<img src="img/18.png">

<img src="img/19.png">

<img src="img/20.png">