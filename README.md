# Proyecto realizado para el curso de OCTOBER CMS

Los pasos para instalar el proyecto localmente son:

### Descargar el proyecto
Pueden descargar el proyecto desde el repositorio de GitHub

### Descargar las dependencias
Se posicionan en la carpeta del proyecto desde la consola de comandos de Windows o el SO que usen, y ejecutan el siguiente comando composer

```
composer install
```

Si les sale un mensaje de error lo ignoran ..

### Restaurar la base de datos
Se adjunta en la carpeta del proyecto descargado el script de mysql, deberán crear la base de datos antes de continuar.

El archivo se llama database-script.sql.

### Cambiar los archivos de configuración
Deberán actualizar los siguientes archivos por su configuración de su servidor local:

* config/app.php: modificar la url por la url donde han publicado su proyecto.
* config/database.php: modificar la cadena de conexión de mysql por la cadena de conexión de su localhost.

## ¿Dónde puedo aprender a usar October CMS?
A través de nuestro canal de YouTube, apóyanos con suscribiéndote al canal.

https://www.youtube.com/playlist?list=PL9prAn3zOWZ5n6qO6tybskPglGe2b8dOF
