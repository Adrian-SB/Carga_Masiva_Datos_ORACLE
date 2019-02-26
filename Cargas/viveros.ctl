LOAD DATA
INFILE 'Datos/viveros.txt'
INTO TABLE viveros
FIELDS TERMINATED BY x'09'
(
	codigo,
	direccion,
	telefono
)
