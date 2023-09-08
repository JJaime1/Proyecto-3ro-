#!/bin/bash
var=`cat /home/administrador/aux/txt/opc_modificar_gru.txt`
select opc in $var
do
	case $REPLY in
		1) read -p "Ingrese el nombre del grupo actual " nombA
		   read -p "Ingrese el nombre del grupo nuevo " nombB
			sudo groupmod -n $nombB $nombA &&
				echo "Se ha modificado correctamente el nombre del grupo"
			break;;
		2) read -p "Ingrese el nombre del grupo actual " nombA	
		   	sudo gpasswd $nombA &&
				echo "Se ha modificado correctamente la contrasena"
			break;;
	esac
	 echo "Vuelva a ingresar una opcion"
done
