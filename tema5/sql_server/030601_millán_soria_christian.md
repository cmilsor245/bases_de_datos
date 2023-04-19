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

<h1>SQL SERVER EN AWS</h1>

<h4>CHRISTIAN MILLÁN SORIA</h4>

<hr>

<p>Accedemos primero a nuestra cuenta de AWS. Entramos en el "laboratorio" de AWS.</p>

<img src="img/1.png">

<img src="img/2.png">

<p>Encendemos el entorno de trabajo.</p>

<img src="img/3.png">

<img src="img/4.png">

<p>Accedemos al panel de control.</p>

<img src="img/5.png">

<p>En el apartado de "Servicios", hacemos clic en la opción "Base de datos".</p>

<img src="img/6.png">

<p>Dentro de esta opción, entramos en la de "RDS".</p>

<img src="img/7.png">

<p>Nos encontramos con otro panel de control:</p>

<img src="img/8.png">

<p>Hacemos clic en la opción "Crear base de datos".</p>

<img src="img/9.png">

<p>De esta forma, entramos a la configuración de la nueva base de datos a crear.</p>

<img src="img/10.png">

<p>Para empezar, dejamos el método de creación de la base de datos en tipo "Estándar".</p>

<img src="img/11.png">

<p>Seleccionamos el tipo de servidor que vamos a crear:</p>

<img src="img/12.png">

<p>Dejamos el Amazon RDS por defecto.</p>

<img src="img/13.png">

<p>Hacemos lo mismo con la edición a instalar.</p>

<img src="img/14.png">

<p>De igual manera, la versión del motor será la que viene por defecto (la más actualizada).</p>

<img src="img/15.png">

<p>Establecemos un nombre para la base de datos.</p>

<img src="img/16.png">

<p>Elegimos un nombre para el usuario administrador de la base de datos.</p>

<img src="img/17.png">

<p>Y le establecemos una contraseña.</p>

<img src="img/18.png">

<p>Dejamos el hardware dedicado a la base de datos por defecto.</p>

<img src="img/19.png">

<p>Dejamos también el tamaño de la base de datos en 20GB.</p>

<img src="img/20.png">

<p>Habilitamos el acceso público a la misma.</p>

<img src="img/21.png">

<p>Una vez hecho todo esto, creamos la base de datos.</p>

<img src="img/22.png">

<p>Si es la primera vez, se producirá un error en la creación. Esto se debe a la configuración del firewall.</p>

<img src="img/23.png">

<p>Para arreglar esto, primero debemos entrar al resumen de instalación de la base de datos haciendo clic en la propia base de datos en la lista de bases de datos creadas.</p>

<img src="img/24.png">

<p>En el apartado de resumen de todos los elementos de la misma, vemos un apartado de seguridad. Entramos a la configuración de seguridad del VPC de nuestra base de datos.</p>

<img src="img/25.png">

<p>Se nos abre un panel con los grupos de seguridad que existen.</p>

<img src="img/26.png">

<p>Entramos en la pestaña de "Reglas de entrada" y hacemos clic en el botón de edición.</p>

<img src="img/27.png">

<p>Primero borramos la única regla de seguridad que aparece. Acto seguido creamos una nueva.</p>

<img src="img/28.png">

<p>Establecemos conexión con todos los TCP y agregamos el rango de IP general para que pueda establecer conexión con cualquier IP.</p>

<img src="img/29.png">

<img src="img/30.png">

<p>Guardamos los cambios una vez la regla se ve tal que así:</p>

<img src="img/31.png">

<p>Podemos ver los cambios realizados en la lista nada más guardar:</p>

<img src="img/32.png">

<p>Ahora aparecerá esta nueva regla en el resumen de la base de datos.</p>

<img src="img/33.png">

<p>Volvemos al panel de RDS.</p>

<img src="img/34.png">

<p>Esta vez entramos en la opción de "Bases de datos" en el menú lateral izquierdo.</p>

<img src="img/35.png">

<p>Entramos en nuestra recién creada base de datos.</p>

<img src="img/36.png">

<p>Podemos ver en el resumen de la base de datos que aparecen una credenciales de conexión. Copiamos el token de endpoint.</p>

<img src="img/37.png">

<p>Nos dirigimos a un navegador web y buscamos lo siguiente:</p>

<img src="img/38.png">

<p>Entramos en el enlace oficial de Microsoft y descargamos el siguiente archivo.</p>

<img src="img/39.png">

<p>Una vez instalado mediante el archivo con extensión ".exe" que se descarga, ejecutamos el programa.</p>

<img src="img/40.png">

<p>Se nos presenta un cuadro donde podemos ingresar las credenciales anteriormente copiadas del resumen de la base de datos.</p>

<p>Debemos dejar el tipo de servidor por defecto. En el nombre del servidor ingresamos el token copiado anteriormente y añadimos ",1433" al final, ya que es el puerto de conexión que se nos muestra en el resumen.</p>

<p>En el apartado de autentificación seleccionamos "SQL Server Authentication" y escribimos el usuario administrador que establecimos en la creación de la base de datos y su contraseña.</p>

<img src="img/41.png">

<p>Finalmente, hemos establecido conexión con la base de datos recién creada.</p>

<img src="img/42.png">

<p>Para detener la base de datos hay que seguir los siguientes paso, debido a que apagar el laboratorio no sirve, ya que se vuelve a encender sola y gasta dinero del que pertenece a nuestra cuenta de AWS:</p>

<li>En el resumen de la base de datos, hacemos clic en la opción "Acciones" en la esquina superior derecha y en la sub-opción "Parar temporalmente".</li>

<img src="img/43.png">

<li>Marcamos las dos casillas del cuadro de aviso que se abre y escribimos el nombre de la base de datos a apagar.</li>

<img src="img/44.png">

<li>Mientras se queda cargando intentando apagarse, apagamos el laboratorio.</li>

<img src="img/45.png">

<img src="img/46.png">