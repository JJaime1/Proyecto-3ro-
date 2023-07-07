#!/bin/bash
echo " "
echo "Eliga una opcion"
echo " "
var=`cat /home/usu/script/aux/txt/opc_usuarios.txt`
select opc in $var
do
	case $REPLY in
		1)aux/ing_usuario.sh
			break;;
		2)aux/eli_usuario.sh
			break;;
		3)aux/mod_usuario.sh
			break;;
	esac
done	
