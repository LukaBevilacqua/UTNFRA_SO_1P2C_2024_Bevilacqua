#! /bin/bash
echo "Mi IP Publica es: $(curl -s ifconfig.me | grep -oE '[0-9\.]+')" > ../RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> ../RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt
echo "El hash de mi Usuario es $(sudo grep "^$(whoami):" /etc/shadow)" >> ../RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> ../RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt

cat ../RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt
