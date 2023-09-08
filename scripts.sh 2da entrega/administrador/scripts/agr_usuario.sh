#!/bin/bash
read -p "Ingrese el nombre de usuario " nomb
sudo useradd $nomb -m -d /home/$nomb -s /bin/bash && 
echo "Ingrese la contrasena de usuario" && 
sudo passwd $nomb && 
echo "Se ha agregado correctamente al usuario " $nomb
