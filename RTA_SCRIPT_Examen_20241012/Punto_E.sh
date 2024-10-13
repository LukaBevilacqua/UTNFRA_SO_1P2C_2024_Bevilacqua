#!/bin/bash
cat /proc/meminfo | grep -i "MemTotal" > ../RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i "Manufacturer" >> ../RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt
