#!/bin/bash
read -p "Ingrese el nombre de usuario " nomb
userdel -r $nomb
echo "admin elimino al usuario $nomb `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
