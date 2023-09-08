#!/bin/bash
read -p "Ingrese el nombre del grupo " nomb
read -s -p "Ingrese la contrasena del grupo " pass
sudo groupadd -p $pass $nomb && 
echo "Se ha agregado correctamente un grupo"	
