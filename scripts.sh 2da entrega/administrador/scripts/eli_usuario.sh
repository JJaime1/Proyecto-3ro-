#!/bin/bash
read -p "Ingrese el nombre de usuario " nomb
sudo userdel -r $nomb &&
echo "Se ha eliminado correctamente al usuario " $nomb
