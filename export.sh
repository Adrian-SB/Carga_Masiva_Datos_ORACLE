#! \bin\bash

echo '---------------------------------------'
echo 'EXPORTACIÓN DE DATOS MASIVA EN POSTGRES'
echo '---------------------------------------'
echo 'Por favor, introduzca el nombre de la base de datos a la que desea conectarse: '
read bd
echo 'Por favor, introduzca el nombre de usuario de postgres y su contraseña: '
echo 'Usuario: '
read user
echo 'Contraseña: '
read -s pwd
echo
#concetarse con un usuario
PGPASSWORD=$pwd psql -h localhost -U $user -d $bd
###
exportar(){
	#creacion de fichero datos
	echo 'Por favor, introduzca el nombre de la tabla de la cual desea exportar los datos: '
	read tabla
	COPY $tabla TO 'Datos/'$tabla'.txt' WITH (DELIMITER E'\t');
	echo
	echo 'Exportación finalizada'
}
###
exportar
echo "¿Desea exportar más datos?(si/no)"
read result
echo
	if [ $result == 'si' ]; then
		exportar
	else
	echo 'Hasta pronto...' 
fi


