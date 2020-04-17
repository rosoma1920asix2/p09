#!/bin/bash
clear
if (( EUID != 0 ))
then
	zenity --error --text="Aquest script s'ha d'executar amb privilegis de l'usuari root"
	exit 1 
fi
EXT=$(zenity --entry --text="Escriu l'extensió dels fitxers dels quals s'ha de fer un backup:" --title="dialog4.sh: Extensió dels fitxers" --width 100)
DIR_ORIG=$(zenity --file-selection --filename=$HOME --directory --title="dialog4.sh: Selecciona la carpeta a on es troben els fitxers dels quals s'ha de fer un backup:" --width 1000)
NOM_BACKUP=$(zenity --entry --text="Escriu el nom del fitxer de backup:" --title="dialog4.sh: Nom del backup" --width 100)
DATA=$(zenity --calendar --title="dialog4.sh: Seleciona la data del backup" --text="Click a sobre d'una data per seleccionar-la" --width=320 --height=100 --date-format=20%y%m%d)
DIR_DEST=$(zenity --file-selection --filename=$HOME --directory --title="dialog4.sh: Selecciona la carpeta a on es desarà el backup:" --width 1000)
cd $DIR_ORIG;tar cf $DIR_DEST/$NOM_BACKUP.$DATA.tar *.$EXT 
exit 15
