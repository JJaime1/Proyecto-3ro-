#!/bin/bash
read -p "Ingrese el nombre de usuario " nomb
echo "Ingrese la contrasena de usuario "
useradd $nomb -m -d /home/$nomb -s /bin/bash
passwd $nomb
echo "admin agrego al usuario $nomb `date`" >> /home/usu/script/aux/txt/historial_de_cambios.txt
