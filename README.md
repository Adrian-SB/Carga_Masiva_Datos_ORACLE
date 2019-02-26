# Carga_Masiva_Datos_ORACLE
Importar datos de una base de datos postgres a una base de datos Oracle con un script.

Contenido:

- Carpeta Cargas, se almacenan los distintos ficheros de control de Oracle que sirven para la carga de datos, estos ficheros deberá de crearlo usted mismo. Nota, las tablas incluidas en estos fichero deben de estar creadas con anterioridad en la base de datos.

- Carpeta Datos, se almacena los distintos ficheros .txt que contiene los datos de las tablas que va a importar en la bd oracle. Estos ficheros los puede generar usted a mano o utilizando el script export.sh.

- Fichero export.sh, es un script que te permite exportar los datos de una base de datos postgres, tabla por tabla, a un fichero .txt utilizando como delimitador la tabulación, dichos ficheros se almacenan en la carpeta Datos.

- Fichero export.sh, es un script que te permite importar los datos que se incluyen en los fichero .txt a la base de datos Oracle.
