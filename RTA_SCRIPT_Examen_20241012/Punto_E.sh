#!/bin/bash
cat /proc/meminfo | grep -i "MemTotal" > RTA_ARCHIVOS_Examen20241013/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i "Manufacturer" >> Filtro_Basico.txt
