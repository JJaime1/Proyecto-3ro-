#!/bin/bash
read -p "Ingrese el nombre del grupo " nomb
groupdel $nomb
echo "admin elimino al grupo $nomb `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
