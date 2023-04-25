#!/bin/bash

# turn off crowsnest
sudo systemctl disable crowsnest.service

# install klipper config files
cp Firmware/*.cfg ~/printer_data/config/

# make the system auto-login the pi user
#sudo raspi-config nonint do_boot_behaviour B2

# install KlipperScreen
#cd ~
#git clone https://github.com/jordanruthe/KlipperScreen.git
#cd KlipperScreen
#./scripts/KlipperScreen-install.sh

sudo cp 99-user.conf /etc/sysctl.d/
