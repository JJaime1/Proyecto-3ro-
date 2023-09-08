#!/bin/bash
cd /home/gestorweb/aux
echo " "
echo "Eliga una opcion"
echo " "
var=`cat ./txt/opc_ingreso.txt`
select opc in $var
do
	case $REPLY in 
		1)./scripts/ges_servicioweb.sh
			break;;
		2)./scripts/respaldoweb.sh
			break;;
		3)./scripts/ver_cuentas.sh
			break;;
	esac
done
