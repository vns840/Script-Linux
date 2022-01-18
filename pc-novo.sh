#!/bin/bash
sudo apt-get update
sudo apt --fix-broken install
sudo dpkg --configure -a
sudo apt-get upgrade -y
## upgrade system
sudo apt-get update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get install code -y
##Vscode
sudo snap install wps-2019-snap -y
sudo snap connect wps-2019-snap:cups-control :cups-control
sudo snap connect wps-2019-snap:alsa :alsa
sudo snap connect wps-2019-snap:pulseaudio :pulseaudio
sudo snap connect wps-2019-snap:removable-media :removable-media
#Wps 2019 Snap
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
##NodeJS
sudo apt-get update
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom -y
##DBeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt-get update
sudo apt-get install dbeaver-ce -y
##Atom
sudo apt-get update
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt install vivaldi-stable -y
##Vivaldi
sudo apt-get update
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get install google-chrome-stable -y
##GoogleChome
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
sudo apt-get install -f -y
##Discord
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt-get update
sudo apt-get install anydesk
##Anydesk
sudo apt-get update
sudo apt-get install gparted
##gparted
sudo apt-get install gnome-tweak-tool -y
##Gnome-tweak
sudo apt install gnome-shell-extensions -y
##Gnome-extensions

echo "Operação concluida com sucesso"
echo "Para Concluir a instalação estamos reniciando sua maquina"
echo "Reniciando a maquina........"

reboot
