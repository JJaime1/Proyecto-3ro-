#!/bin/bash
cd /home/administrador/aux/txt
read -p "Ingrese el nombre del conductor que desea deshabilitar " nomb

if ! grep -iq "$nomb" lista_de_baja.txt; then
	echo $nomb >> lista_de_baja.txt 
	echo "El conductor $nomb fue deshabilitado exitosamente"
else
	echo "El conductor $nomb ya esta deshabilitado"
fi
