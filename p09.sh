#!/bin/bash
clear
if (( EUID != 0 ))
then
	zenity --error --text="Aquest script s'ha d'executar amb privilegis de l'usuari root"
	exit 1 
fi
echo -n "Escriu un fitxer del directori /etc"

exit 15
