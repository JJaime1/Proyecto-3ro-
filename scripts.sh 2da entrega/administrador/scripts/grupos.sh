#/bin/bash
cd /home/administrador/aux
echo " "
echo "Ingrese una opcion"
echo " "
var=`cat txt/opc_grupo.txt`
select opc in $var
do
	case $REPLY in
		1)./scripts/agr_grupo.sh
			break;;
		2)./scripts/eli_grupo.sh
			break;;
		3)./scripts/mod_grupo.sh
			break;;
	esac
	 echo "Vuelva a ingresar una opcion"
done	
