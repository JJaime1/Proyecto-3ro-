#!/bin/bash
clear
echo "Probando la conexion a internet..."
ping -c 2 8.8.8.8 > /dev/null

if [ $? -eq 0 ] 
then
	echo "Hay conexion a internet"
else
	echo "No hay conexion a internet"

fi
