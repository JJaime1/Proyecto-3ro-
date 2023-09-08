#!/bin/bash
cd /home/gestorbd/aux
echo " "
echo "Eliga una opcion"
echo " "
var=`cat ./txt/opc_ingreso.txt`
select opc in $var
do
	case $REPLY in 
		1)./scripts/ges_serviciobd.sh
			break;;
		2)./scripts/respaldobd.sh
			break;;
	esac
done
