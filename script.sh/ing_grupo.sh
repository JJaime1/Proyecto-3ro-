#!/bin/bash
read -p "Ingrese el nombre del grupo " nomb
read -s -p "Ingrese la contrasena del grupo " pass
groupadd -p $pass $nomb 
echo "admin agrego al grupo $nomb `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
