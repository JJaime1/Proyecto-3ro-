#!/bin/bash
cd /home/administrador/aux
echo " "
echo "Ingrese una opcion"
echo " "
var=`cat txt/opc_servicios.txt`
select opc in $var
do 
	case $REPLY in
		1)cd /home/gestorbd/aux/scripts
			./ges_serviciobd.sh
			break;;
		2)cd /home/gestorweb/aux/scripts/
			./ges_servicioweb.sh
			break;;
	esac
	  echo "Vuelva a ingresar una opcion"
done
