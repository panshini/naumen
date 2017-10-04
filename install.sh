#!/bin/bash
# Создаем пользователя(oper) задаем ему пароль (Qwerty) 
useradd -d /home/oper -m -s /bin/bash oper
echo "oper:Qwerty" | chpasswd

# Удаляем не нужные пакеты
apt-get update -y
apt-get purge totem -y
apt-get purge rhythmbox -y 
apt-get purge gnome-orca -y 
apt-get purge deja-dup -y
apt-get purge gnome-sudoku -y 
apt-get purge aisleriot  -y
apt-get purge gnome-mahjongg -y
apt-get purge gnome-mines -y

sleep 3 s

echo "Все,грохнули ))))"

sleep 2s 

# Добавляем возможность выбора пользователя 
echo "greeter-show-manual-login=true" >> /etc/lightdm/users.conf

echo "Добавили "

echo "устанавливаем необходимый минимальный набор програм"
apt-get install mc nano unzip openssh-server openssh-client -y 

apt-get update -y

echo "deb http://cz.archive.ubuntu.com/ubuntu trusty main" >> /etc/apt/sources.list

apt-get update -y

apt-get install libboost1.54-dev -y

apt-get install libboost1.54 -y

apt-get -f install -y

#wget http://owncloud.doctormore.net/owncloud/index.php/s/JinA1E14wvKXzPe/download

#mv download download.zip

#unzip download.zip

#cd 6.3.28.1\ trusty/
 
sleep 5s  

dpkg -i  nausoftphone_6.3.28.1-1468232603-trusty_amd64.deb

apt-get -f install -y
