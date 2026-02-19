#!/bin/bash

echo "This script will install the programs and sway packages"

#creating a ,config file 
mkdir ~/.my/.config

#clonning my .config files 
git clone https://github.com/lahiru666/.config ~/.my/.config

#creating a syslink for .config file
ln -s ~/.my/.config ~/.config 

#packages for daily use
sudo apt install  gedit obsidian vlc gimp shotcut qbittorrent gedit zathura lollypop keepassxc 7zip geeqie thunar blueman -y

#packages i run on sway
sudo apt install sway sway-notification-center swayidle swaylock waybar wofi qt5ct nwg-look -y

#adding obs-repository
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

#brave browser
curl -fsS https://dl.brave.com/install.sh | sh


