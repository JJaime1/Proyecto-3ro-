#!/bin/bash
var=`cat /home/usu/script/aux/txt/opc_modificar_gru.txt`
select opc in $var
do
	case $REPLY in
		1) read -p "Ingrese el nombre del grupo actual " nombA
		   read -p "Ingrese el nombre del grupo nuevo " nombB
			groupmod -n $nombB $nombA
  		   echo "admin modifico el nombre del grupo de $nombA a $nombB `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
			break;;
		2) read -p "Ingrese el nombre del grupo actual " nombA	
		   	gpasswd $nombA
		   echo "admin modifico la contrasena del grupo $nombA `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
			break;;
	esac
done
