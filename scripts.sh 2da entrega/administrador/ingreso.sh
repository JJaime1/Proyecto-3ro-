#!/bin/bash
cd /home/administrador/aux
echo " "
echo "Eliga una opcion"
echo " "
var=`cat txt/opc_ingreso.txt`
select opc in $var
do
	case $REPLY in 
		1)./scripts/usuarios.sh
			break;;
		2)./scripts/grupos.sh
			break;;
		3)./scripts/conductores.sh
			break;;
		4)./scripts/ges_servicios.sh
			break;;
		5)./scripts/ges_respaldos.sh
			break;;
		6)./scripts/actualizar.sh
			break;;
		7)./scripts/conexion.sh
			break;;
		8)cd /home/gestorweb/aux/scripts
		 ./ver_cuentas.sh
			break;;
	esac
done
