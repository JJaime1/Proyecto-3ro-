#!/bin/bash
cd /home/administrador/aux
echo " "
echo "Ingrese una opcion"
echo " "
var=`cat txt/opc_conductores.txt`
select opc in $var
do 
	case $REPLY in
		1)./scripts/conduc_des.sh
			break;;
		2)./scripts/conduc_hab.sh
			break;;
		3)./scripts/conduc_des_dia.sh
			break;;
	esac
	  echo "Vuelva a ingresar una opcion"
done
