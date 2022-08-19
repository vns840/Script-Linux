#!/bin/bash
sudo apt-get update
sudo apt --fix-broken install -y
sudo dpkg --configure -a
sudo apt-get upgrade -y
## upgrade system
sudo apt-get update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - -y
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt install code -y
##Vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom
##Atom
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
##NodeJS
sudo sh -c 'echo "deb http://repo.vivaldi.com/stable/deb/ stable main" >> /etc/apt/sources.list'
wget -q -O - http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt install vivaldi-stable
##Vivaldi
sudo apt-get update
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add - -y
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" -y
sudo apt install atom -y
##DBeaver
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y
sudo apt-get update
sudo apt-get install dbeaver-ce -y
##insomnia
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo apt-get update
sudo apt-get install insomnia -y    
##Atom
sudo apt-get update
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add - -y
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main" -y
sudo apt install vivaldi-stable -y
##Vivaldi
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
##GoogleChome
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
sudo apt-get install -f -y
##Discord
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt-get update
sudo apt-get install anydesk -y
##Anydesk
sudo apt-get update
sudo apt-get install gparted -y
##gparted
sudo apt install gnome-tweaks -y
##Gnome-tweak
sudo apt install gnome-shell-extensions -y
##Gnome-extensions

echo "Operação concluida com sucesso"
echo "Para Concluir a instalação estamos reniciando sua maquina"
echo "Reniciando a maquina........"

reboot