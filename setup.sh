#!/bin/bash
echo "SCRIPT ACTUALLY IN TESTING AND MAYBE IT HAS A LOT OF BUGS"
echo "YOU NEED SUDO TO USE THIS!"
sleep 3

sudo pacman -S --noconfirm neofetch xorg xorg-xinit sddm sddm-kcm mesa
sudo systemctl enable sddm
sudo pacman -S --noconfirm i3-wm i3 i3status dmenu polybar 
sudo localectl set-locale ru_RU.UTF-8
sudo localectl set-x11-keymap --no-convert us,ru pc105 "" grp:alt_shift_toggle
sudo pacman -S --noconfirm doas bsd-games kitty polybar
cd ~/
git clone https://aur.archlinux.org/packages/yay
cd ~/yay 
makepkg -si
yay -S screenfetch-git
cd ..
yay -S google-chrome
cd u
sudo pacman -S --noconfirm virtualbox-host-modules-arch
sudo pacman -S --noconfirm virtualbox
sudo pacman -S --noconfirm firefox
sudo pacman -S --noconfirm jdk-openjdk
sudo pacman -S --noconfirm obs-studio ncdu vim gimp mplayer mpg123
sudo pacman -S --noconfirm zip unzip imagemagick scrot wget curl

modprobe vboxdrv 


echo "FONT=cyr-sun16" >> /etc/vconsole.conf
sleep 5

cat ./pig

echo "installation complete"
sleep 2
echo "now reboot pc"
# - зачем нужно ставить PigOS?
# - там есть интернет. 




