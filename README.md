# UnicornBook

## Configuración inicial

Es necesario crear los siguientes directorios en el equipo en el que se despliegue el aplicativo. Por ejemplo, podemos
ubicar los directorios que creemos en una carpeta llamada `unicornbook-deploy`

- Carpeta `unicornbook-deploy/config`: Contendrá el fichero `application.properties` se debe copiar el que está en la
  carpeta de recursos del proyecto y posteriormente editarlo con la configuración de la base de datos, puerto y path de
  despliegue este otros.
- Carpeta `unicornbook-deploy/log`: Contendrá los logs generados por la aplicación. Simplemente es necesario crear este
  directorio.
- Carpeta `unicornbook-deploy/resources`:  Contendrá recursos de gran tamaño generados a partir de la interactuación de
  los usuarios con la aplicación. Por ejemplo, deste directorio se creará la carpeta 'portadas' cuando se carguen libros
  por los ususarios y es donde se almacenarán las imagenes.

* Más adelante necesataremos estos directorios para configurar las propiedades de despliegue

## Configuración Base de datos

- Instalar MariaDB configurando el usuario root con usuario y contraseña.
- Crear el fichero my.cnf en el directorio de usuario del servidor.
  ```ssh
  [mysql]
  lower_case_sensitive = 2
  ```
- Arrancar MariaDb y acceder a la consola.
  - Crear usuario
    ```sql
    mysql> CREATE USER 'unicornbook' IDENTIFIED BY '***password***';
    ```
  - Crear base de datos
    ```sql
    mysql> CREATE DATABASE unicornbook;
    ```
  - Conceder permisos al usuario
    ```sql
    mysql> GRANT USAGE ON *.* TO 'unicornbook'@localhost IDENTIFIED BY '***password***';
    ```
  - Ejecutar los ficheros `1-UnicornBook_DDL.sql` y `2-UnicornBook_DML.sql` ubicados
    en `../UnicornBook/src/main/resources/scripts/`. Opcionalmente ejeuctar el fichero `3-UnicornBook_DML-opcional.sql`
    que creará registros tales como libros, compras, comentarios, etc.

## Compilación del proyecto

- Con maven instalado en el equipo, ejecutar la siguiente instrucción en la terminar en el directorio principal del
  proyecto

```shell
unicornbook@local:~/UnicornBook ⇒  mvn clean package
```

## Despliegue

- Tras compilar el proyecto y antes de arrancar este abrá que configurar la VM del entorno, estas se contruyen a partir
  de las rutas de nuestros directorios locales:
  ```sh
  -Dapp_config_path=ABSOLUTE_PATH/unicornbook-deploy/config
  -Dapp_log_path=ABSOLUTE_PATH/unicornbook-deploy/log
  -Dapp_resources_path=ABSOLUTE_PATH/unicornbook-deploy/resources
  ```
  
