#!/bin/bash
var=`cat /home/administrador/aux/txt/opc_modificar_usu.txt`
select opc in $var
do
	case $REPLY in
		1) read -p "Ingrese el nombre de usuario actual " nombA
		   read -p "Ingrese el nombre de usuario nuevo " nombB
			sudo usermod -l $nombB $nombA && 
				echo "Se ha modificado correctamente el nombre de usuario"
			break;;
		2) read -p "Ingrese el nombre de usuario actual " nombA	
		   	sudo passwd $nombA && 
				echo "Se ha modificado correctamente la contrasena"
			break;;
	esac
	echo "Vuelva a ingresar una opcion"
done
