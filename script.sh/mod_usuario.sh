#!/bin/bash
var=`cat /home/usu/script/aux/txt/opc_modificar_usu.txt`
select opc in $var
do
	case $REPLY in
		1) read -p "Ingrese el nombre de usuario actual " nombA
		   read -p "Ingrese el nombre de usuario nuevo " nombB
			usermod -l $nombB $nombA
  		   echo "admin modifico el nombre de usuario de $nombA a $nombB `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
			break;;
		2) read -p "Ingrese el nombre de usuario actual " nombA	
		   	passwd $nombA
		   echo "admin modifico la contrasena del usuario $nombA `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
			break;;
	esac
done
