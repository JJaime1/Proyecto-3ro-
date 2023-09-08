#!/bin/bash
cd /home/administrador/aux/txt
read -p "Ingrese el nombre del conductor que desea habilitar " nomb

if grep -iq "$nomb" lista_de_baja.txt; then
	sed "/$nomb/d" lista_de_baja.txt > temporal.txt
	mv temporal.txt "lista_de_baja.txt"
 	echo "El conductor $nomb fue habilitado exitosamente"	
else 
	echo "El conductor $nomb ya esta habilitado"
fi
