#!/bin/bash
cd /home/administrador/aux
echo " "
echo "Ingrese una opcion"
echo " "
var=`cat txt/opc_respaldos.txt`
select opc in $var
do 
	case $REPLY in
		1)cd /home/gestorbd/aux/scripts
			./respaldobd.sh
			break;;
		2)cd /home/gestorweb/aux/scripts/
			./respaldoweb.sh
			break;;
	esac
	  echo "Vuelva a ingresar una opcion"
done
