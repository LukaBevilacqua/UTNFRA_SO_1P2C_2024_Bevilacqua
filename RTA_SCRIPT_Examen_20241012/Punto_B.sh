#!/bin/bash
sudo parted /dev/sdc --script mklabel gpt

sudo parted /dev/sdc --script mkpart primary ext4 1GB 2GB
sudo parted /dev/sdc --script mkpart primary ext4 2GB 3GB
sudo parted /dev/sdc --script mkpart primary ext4 3GB 4GB
sudo parted /dev/sdc --script mkpart primary ext4 4GB 5GB
sudo parted /dev/sdc --script mkpart primary ext4 5GB 6GB
sudo parted /dev/sdc --script mkpart primary ext4 6GB 7GB
sudo parted /dev/sdc --script mkpart primary ext4 7GB 8GB
sudo parted /dev/sdc --script mkpart primary ext4 8GB 9GB
sudo parted /dev/sdc --script mkpart primary ext4 9GB 10GB

sudo fdisk /dev/sdc -l

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10

echo '/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0' | sudo tee -a /etc/fstab

cat /etc/fstab
