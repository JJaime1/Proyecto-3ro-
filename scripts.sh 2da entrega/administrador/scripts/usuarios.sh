#!/bin/bash
cd /home/administrador/aux
echo " "
echo "Ingrese una opcion"
echo " "
var=`cat txt/opc_usuarios.txt`
select opc in $var
do 
	case $REPLY in
		1)./scripts/agr_usuario.sh
			break;;
		2)./scripts/eli_usuario.sh
			break;;
		3)./scripts/mod_usuario.sh
			break;;
	esac
	  echo "Vuelva a ingresar una opcion"
done
