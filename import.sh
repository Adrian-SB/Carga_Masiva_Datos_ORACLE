#! \bin\bash

echo '-------------------------------'
echo 'CARGA DE DATOS MASIVA EN ORACLE'
echo '-------------------------------'
echo 'Por favor, introduzca el nombre de usuario de Oracle y su contraseña: '
echo 'Usuario: ' 
read user
echo 'Contraseña: ' 
read -s pwd
echo
#####Funcion importar
function importar(){
echo 'Introduca el nombre de la tabla a la que desea importar los datos: '
read tabla
echo
sqlldr $user/$pwd control='Cargas/'$tabla'.ctl' data='Datos/'$tabla'.txt' log='/tmp/bd.log' #comando sqlldr para importar
echo
echo 'Importación finalizada'
}
###
importar
echo
echo "¿Desea importar más datos?(si/no)"
read result
echo
	if [ $result == 'si' ]; then
		importar
	else
	echo 'Recuerde ojear el fichero de log que se encuentra en la ruta /tmp/bd.log' 
	fi
