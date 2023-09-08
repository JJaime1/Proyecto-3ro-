#!/bin/bash
cd /home/administrador/aux/txt
read -p "Ingrese el nombre del conductor que desea deshabilitar " nomb
read -p "Ingrese la cantidad de dias que desea deshabilitar " dias

if ! grep -iq "$nomb" lista_de_baja.txt; then
	echo $nomb >> lista_de_baja.txt 
	
	echo "El conductor $nomb fue deshabilitado exitosamente"

	sleep "$((dias * 86400))" &&
		sed -i "/$nomb/d" "lista_de_baja.txt" &
	
else
	echo "El conductor $nomb ya esta deshabilitado"
fi
