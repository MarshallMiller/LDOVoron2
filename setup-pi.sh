#!/bin/bash

# replace config.txt (sets up btt pi tft43 v2 touchscreen)
sudo cp /boot/config.txt /boot/config.txt.orig
sudo cp pi/config.txt /boot/

# disable USB
sudo cp pi/turn_off_usb.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable turn_off_usb.service

# turn off crowsnest
sudo systemctl disable crowsnest.service

# install klipper config files
cp Firmware/*.cfg ~/printer_data/config/

# make the system auto-login the pi user
sudo raspi-config nonint do_boot_behaviour B2

# install KlipperScreen
cd ~
git clone https://github.com/jordanruthe/KlipperScreen.git
cd KlipperScreen
./scripts/KlipperScreen-install.sh
