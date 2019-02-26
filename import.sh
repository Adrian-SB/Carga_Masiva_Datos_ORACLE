#! \bin\bash

echo 'CARGA DE DATOS MASIVA EN ORACLE'
echo '-------------------------------'
echo 'Por favor, introduzca el nombre de usuario de Oracle y su contraseña(adri/adri): '
echo
echo 'Usuario: '
read user
echo 'Contraseña: '
read pwd
echo
#####Funcion importar
function importar(){
echo 'Introduca el nombre de la tabla a la que desea importar los datos: \n'
read tabla
echo 
sqlldr $user/$pwd control='Cargas/$tabla.ctl' data='Datos/$tabla.txt' log='/tmp/bd.log'
echo '\nImportación finalizada\n'
}
###
echo "¿Desea importar más datos?"
read result
	if [ $result == 'si' ]; then
		importar
	else
	echo 'Recuerde ojear el fichero de log que se encuentra en la ruta /tmp/bd.log' 
	fi
