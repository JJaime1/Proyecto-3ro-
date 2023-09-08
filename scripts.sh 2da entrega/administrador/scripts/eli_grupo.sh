#!/bin/bash
read -p "Ingrese el nombre del grupo " nomb
sudo groupdel $nomb && 
echo "Se ha eliminado correctamente un grupo"
