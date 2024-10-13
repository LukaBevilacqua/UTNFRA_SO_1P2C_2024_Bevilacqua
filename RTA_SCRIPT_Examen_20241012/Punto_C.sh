#!/bin/bash
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -c "usuario p1c2_2024_A1" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -c "usuario p1c2_2024_A2" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -c "usuario p1c2_2024_A3" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -c "usuario p1c2_2024_P1" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_2
sudo chmod 750 /Examenes-UTN/alumno_3
sudo chmod 773 /Examenes-UTN/profesores

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

sudo su - p1c2_2024_A1 -c "whoami > /Examenes-UTN/alumno_1/validar.txt"
sudo su - p1c2_2024_A2 -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo su - p1c2_2024_A3 -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo su - p1c2_2024_P1 -c "whoami > /Examenes-UTN/profesores/validar.txt"
