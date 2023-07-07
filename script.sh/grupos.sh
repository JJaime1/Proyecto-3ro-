#!/bin/bash
echo " "
echo "Eliga una opcion"
echo " "
var=`cat /home/usu/script/aux/txt/opc_grupo.txt`
select opc in $var
do
	case $REPLY in
		1)aux/ing_grupo.sh
			break;;
		2)aux/eli_grupo.sh
			break;;
		3)aux/mod_grupo.sh
			break;;
	esac
done	
